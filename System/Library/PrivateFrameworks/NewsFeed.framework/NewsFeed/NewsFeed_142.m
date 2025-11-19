uint64_t sub_1D6845AE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D62FF50C(v7);
      v7 = result;
    }

    v92 = (v7 + 16);
    v93 = *(v7 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v7 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1D68460D4((*a3 + 56 * *v94), (*a3 + 56 * *v96), *a3 + 56 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 56 * v6 + 16);
      v10 = *a3 + 56 * v8;
      v11 = *(v10 + 16);
      v12 = v8 + 2;
      v13 = (v10 + 128);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 7;
        v16 = (v11 < v9) ^ (v14 >= v15);
        ++v12;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 56 * v6 - 16;
        v18 = 56 * v8 + 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v30 + v18);
            v22 = *(v30 + v18 - 40);
            v23 = v30 + v17;
            v24 = *(v21 - 3);
            v25 = *(v21 - 1);
            v26 = *v21;
            v27 = *(v23 - 24);
            v28 = *(v23 - 8);
            v29 = *(v23 + 8);
            *(v21 - 40) = *(v23 - 40);
            *(v21 + 1) = v29;
            *(v21 - 8) = v28;
            *(v21 - 24) = v27;
            *(v23 - 40) = v22;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
            *v23 = v26;
          }

          ++v20;
          v17 -= 56;
          v18 += 56;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1D698BA94((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v46;
    v47 = v7 + 32;
    v48 = (v7 + 32 + 16 * v45);
    *v48 = v8;
    v48[1] = v6;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 32);
          v51 = *(v7 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v7 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v7 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1D68460D4((*a3 + 56 * *v87), (*a3 + 56 * *v89), *a3 + 56 * v90, v101);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v7 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v7 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v7 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v99;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 56 * v6 - 56;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 56 * v6 + 16);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (*(v36 + 16) >= v34)
    {
LABEL_29:
      ++v6;
      v32 += 56;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 56);
    v37 = *(v36 + 64);
    v39 = *(v36 + 16);
    v40 = *(v36 + 48);
    *(v36 + 56) = *v36;
    v41 = *(v36 + 80);
    v42 = *(v36 + 96);
    *(v36 + 72) = v39;
    *(v36 + 88) = *(v36 + 32);
    *(v36 + 104) = v40;
    *v36 = v38;
    *(v36 + 8) = v37;
    *(v36 + 16) = v34;
    *(v36 + 24) = v41;
    *(v36 + 40) = v42;
    v36 -= 56;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D68460D4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 56;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 56;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v5 -= 56;
    do
    {
      v18 = (v5 + 56);
      if (*(v6 - 5) < *(v12 - 5))
      {
        v23 = v6 - 56;
        if (v18 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 40);
          v26 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 56, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v12 - 56;
      if (v18 != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 40);
        v22 = *(v12 - 24);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 56;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v27 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v28 = (v27 >> 4) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v28])
  {
    memmove(v6, v4, 56 * v28);
  }

  return 1;
}

unint64_t sub_1D6846338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = MEMORY[0x1E69E7CD0];
  v58 = MEMORY[0x1E69E7CD0];
  v59 = MEMORY[0x1E69E7CD0];
  v57[0] = a1;
  v57[1] = a2;
  sub_1D5BF4D9C();

  v7 = sub_1D7263ACC();

  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v52 = v4;
    v53 = v3;
    v54 = a3;
    v51 = v8;
    v10 = (v8 + 56);
    v55 = MEMORY[0x1E69E7CC0];
    v56 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = *(v10 - 3);
      v17 = *(v10 - 2);
      v19 = *(v10 - 1);
      v18 = *v10;

      if (v17 >> 14 != v16 >> 14)
      {
        if (sub_1D726399C() == 33 && v20 == 0xE100000000000000)
        {

LABEL_14:
          result = sub_1D726396C();
          if (v24)
          {
            result = v17;
          }

          if (v17 >> 14 < result >> 14)
          {
            __break(1u);
            return result;
          }

          v25 = sub_1D72639BC();
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v11 = MEMORY[0x1DA6F97E0](v25, v27, v29, v31);
          v13 = v32;

          v33 = sub_1D5E2D720(v11, v13);
          if (v34)
          {
            v42 = v33;
            v43 = v34;

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v37 = v55;
            }

            else
            {
              v37 = sub_1D6995180(0, *(v55 + 2) + 1, 1, v55);
            }

            v39 = *(v37 + 2);
            v44 = *(v37 + 3);
            if (v39 >= v44 >> 1)
            {
              v47 = sub_1D6995180((v44 > 1), v39 + 1, 1, v37);
              v40 = v43;
              v37 = v47;
            }

            else
            {
              v40 = v43;
            }

            v41 = v42;
            *(v37 + 2) = v39 + 1;
            v55 = v37;
LABEL_31:
            v45 = &v37[16 * v39];
            *(v45 + 4) = v41;
            *(v45 + 5) = v40;
            goto LABEL_5;
          }

          goto LABEL_4;
        }

        v22 = sub_1D72646CC();

        if (v22)
        {
          goto LABEL_14;
        }
      }

      v11 = MEMORY[0x1DA6F97E0](v16, v17, v19, v18);
      v13 = v12;

      v14 = sub_1D5E2D720(v11, v13);
      if (v15)
      {
        v35 = v14;
        v36 = v15;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v56;
        }

        else
        {
          v37 = sub_1D6995180(0, *(v56 + 2) + 1, 1, v56);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v39 >= v38 >> 1)
        {
          v46 = sub_1D6995180((v38 > 1), v39 + 1, 1, v37);
          v40 = v36;
          v37 = v46;
        }

        else
        {
          v40 = v36;
        }

        v41 = v35;
        *(v37 + 2) = v39 + 1;
        v56 = v37;
        goto LABEL_31;
      }

LABEL_4:
      sub_1D5B860D0(v57, v11, v13);

LABEL_5:
      v10 += 4;
      if (!--v9)
      {
        v6 = v58;
        v48 = v59;
        v4 = v52;
        v9 = *(v51 + 16);
        v3 = v53;
        a3 = v54;
        v49 = v55;
        v50 = v56;
        goto LABEL_38;
      }
    }
  }

  v49 = MEMORY[0x1E69E7CC0];
  v48 = v6;
  v50 = MEMORY[0x1E69E7CC0];
LABEL_38:

  *a3 = v4;
  a3[1] = v3;
  a3[2] = v9;
  a3[3] = v48;
  a3[4] = v6;
  a3[5] = v50;
  a3[6] = v49;
  return result;
}

uint64_t FeedChannelRecipesCluster.replacing(recipes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  *a2 = v4;
  a2[1] = a1;
  a2[2] = v5;
  swift_unknownObjectRetain();
  v6 = v5;
}

uint64_t FeedChannelRecipesCluster.recipeItems.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      v6 = v5;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t FeedChannelRecipesCluster.minClusterSize.getter()
{
  result = [*(v0 + 16) minClusterSize];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedChannelRecipesCluster.init(tag:scoredRecipeItems:clusteringRules:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_1D6846830()
{
  result = [*(v0 + 16) minClusterSize];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6846894()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6846900()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6846974(uint64_t a1)
{
  v27 = a1;
  v2 = MEMORY[0x1E695C070];
  sub_1D6847064(0, &qword_1EC88C8B8, sub_1D68470FC, MEMORY[0x1E695C070]);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v25 - v5;
  sub_1D6847064(0, &qword_1EC88C8A8, sub_1D68470C8, v2);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - v11;
  sub_1D6847064(0, &qword_1EC88C8A0, sub_1D6847030, v2);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v25 - v17;
  v19 = OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree__decorations;
  v20 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D6847030(0);
  sub_1D726009C();
  (*(v15 + 32))(v1 + v19, v18, v14);
  v21 = OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree__packages;
  v28 = v20;
  sub_1D68470C8(0);
  sub_1D726009C();
  (*(v9 + 32))(v1 + v21, v12, v8);
  v22 = OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree__selection;
  v28 = 0;
  sub_1D68470FC(0);
  sub_1D726009C();
  (*(v25 + 32))(v1 + v22, v6, v26);
  v23 = (v1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_onDidTapTreeItem);
  *v23 = 0;
  v23[1] = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_editor) = v27;
  return v1;
}

uint64_t sub_1D6846C74()
{
  v1 = OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree__decorations;
  v2 = MEMORY[0x1E695C070];
  sub_1D6847064(0, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree__packages;
  sub_1D6847064(0, &qword_1EC88C8A8, sub_1D68470C8, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree__selection;
  sub_1D6847064(0, &qword_1EC88C8B8, sub_1D68470FC, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  sub_1D5B74328(*(v0 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_onDidTapTreeItem));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatLayoutTree()
{
  result = qword_1EC88C890;
  if (!qword_1EC88C890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6846E84()
{
  sub_1D6847064(319, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1D6847064(319, &qword_1EC88C8A8, sub_1D68470C8, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1D6847064(319, &qword_1EC88C8B8, sub_1D68470FC, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D6847064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FormatPluginFactory.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*FormatPluginFactory.delegate.modify(uint64_t *a1))()
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
  return sub_1D6847260;
}

void sub_1D68472A0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_unknownObjectWeakAssign();
  v4 = *(v3 + 184);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v3 + 40);
  swift_beginAccess();
  *(v4 + 24) = v6;
  swift_unknownObjectWeakAssign();
}

void FormatPluginFactory.pluginContainerController.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + 184);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v2 + 40);

  swift_beginAccess();
  *(v5 + 24) = v7;
  swift_unknownObjectWeakAssign();
}

void (*FormatPluginFactory.pluginContainerController.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D6847460;
}

void sub_1D6847460(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 40);
    swift_endAccess();

    v6 = *(v5 + 184);
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *(v5 + 40);
    swift_beginAccess();
    *(v6 + 24) = v8;
    swift_unknownObjectWeakAssign();
  }

  free(v3);
}

uint64_t FormatPluginFactory.createPlugin(with:layoutOptionsProvider:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v6 = type metadata accessor for FormatPluginData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
  sub_1D6847EA4();
  result = sub_1D725AABC();
  if (result)
  {
    v12 = result;
    v13 = v3[9];
    v26 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 6, v13);
    sub_1D5B483C4(0, qword_1EDF40A18);
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    sub_1D6848168(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatPluginData);
    v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    sub_1D5E2B7A8(v10, v16 + v14);
    *(v16 + v15) = v12;

    sub_1D725AAAC();
    swift_unownedRelease();

    if (v31)
    {
      sub_1D5B63F14(&v30, v32);
      v17 = a1[1];
      v26 = *a1;
      v18 = v33;
      v19 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      sub_1D6848168(a1, v10, type metadata accessor for FormatPluginData);
      v20 = type metadata accessor for FormatPluginConfig();
      v21 = objc_allocWithZone(v20);
      sub_1D6848168(v10, v21 + OBJC_IVAR____TtC8NewsFeed18FormatPluginConfig_pluginData, type metadata accessor for FormatPluginData);
      v29.receiver = v21;
      v29.super_class = v20;
      v22 = objc_msgSendSuper2(&v29, sel_init);
      sub_1D6847FC0(v10, type metadata accessor for FormatPluginData);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v24 = (*(v19 + 8))(v26, v17, v27, v28, v22, Strong, v4[3], v18, v19);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(v32);
      return v24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6847854(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_1D5B68374(a2 + 88, v8);

  sub_1D5B483C4(0, &qword_1EDF0DAA8);
  sub_1D725A85C();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  type metadata accessor for WebEmbedManager();
  sub_1D725A87C();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatPluginData();
  sub_1D725A85C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A84C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  v5 = *(a2 + 128);
  swift_unknownObjectRetain();

  v8[0] = v5;
  sub_1D5B483C4(0, &unk_1EDF405A0);
  sub_1D725A85C();
  swift_unknownObjectRelease();
  swift_unownedRetainStrong();
  sub_1D6848168(a2 + 144, &v6, sub_1D6848020);

  if (!v7)
  {
    return sub_1D6847FC0(&v6, sub_1D6848020);
  }

  sub_1D5B63F14(&v6, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF076C0);
  sub_1D725A85C();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t FormatPluginFactory.deinit()
{
  sub_1D5B87E10(v0 + 16);
  sub_1D5B87E10(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  swift_unknownObjectRelease();
  sub_1D6847FC0(v0 + 144, sub_1D6848020);

  return v0;
}

uint64_t FormatPluginFactory.__deallocating_deinit()
{
  sub_1D5B87E10(v0 + 16);
  sub_1D5B87E10(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  swift_unknownObjectRelease();
  sub_1D6847FC0(v0 + 144, sub_1D6848020);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D6847C4C(uint64_t *a1))()
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
  return sub_1D68481D4;
}

void sub_1D6847CE0(uint64_t a1, char a2)
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

void (*sub_1D6847DA0(uint64_t **a1))(void *a1)
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
  v2[4] = FormatPluginFactory.pluginContainerController.modify(v2);
  return sub_1D5FE8C5C;
}

uint64_t sub_1D6847E14(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();

  return sub_1D5BC5B88(a1, a2, a3, a4, a5, v15, a7, a8);
}

void sub_1D6847EA4()
{
  if (!qword_1EDF439B0)
  {
    sub_1D5B4E1A4();
    sub_1D5B53E88();
    v0 = sub_1D725E48C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF439B0);
    }
  }
}

uint64_t sub_1D6847F20(void *a1)
{
  type metadata accessor for FormatPluginData();
  v3 = *(v1 + 16);

  return sub_1D6847854(a1, v3);
}

uint64_t sub_1D6847FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6848020()
{
  if (!qword_1EDF076B0)
  {
    sub_1D5B483C4(255, &qword_1EDF076C0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF076B0);
    }
  }
}

uint64_t sub_1D6848168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D68481D8(void *a1, void *a2)
{
  v3 = &v2[OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_metricsView];
  v4 = *&v2[OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_metricsView];
  *v3 = a1;
  v3[1] = a2;
  v8 = a1;

  v5 = *v3;
  if (*v3)
  {
    swift_getObjectType();
    v6 = v5;
    v7 = v2;
    sub_1D726064C();
  }
}

char *sub_1D6848274(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_identifier];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_contentView;
  type metadata accessor for FormatAdMetricsContentView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_metricsView];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_privacyMarker] = 0;
  v13 = OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_onCollapse;
  sub_1D5BFDBB4();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  [v15 addSubview_];
  return v15;
}

uint64_t sub_1D6848478()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_identifier);

  return v1;
}

void sub_1D684863C()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_contentView;
  type metadata accessor for FormatAdMetricsContentView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_metricsView);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_privacyMarker) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed19FormatAdMetricsView_onCollapse;
  sub_1D5BFDBB4();
  *(v0 + v4) = [objc_allocWithZone(v5) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6848714(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D7257A4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  if (a3)
  {
    sub_1D72579DC();
    sub_1D5BF4D9C();
    v11 = sub_1D7263A4C();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    v18 = v11;
    v19 = v13;
    v16 = 10;
    v17 = 0xE100000000000000;
    v14 = sub_1D72639FC();

    return v14;
  }

  else
  {
    v16 = 10;
    v17 = 0xE100000000000000;
    sub_1D5BF4D9C();
    return sub_1D72639FC();
  }
}

BOOL sub_1D68488DC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1D7263D0C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1D68489D4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        goto LABEL_13;
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        goto LABEL_13;
      }
    }

    else if (a6 == 5)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_13:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D6848A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7257A4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  v9 = sub_1D7263A4C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = sub_1D5C73AB0(v9, v11);
  if (!v13)
  {
    goto LABEL_7;
  }

  if (v12 == 35 && v13 == 0xE100000000000000)
  {

    goto LABEL_21;
  }

  v15 = sub_1D72646CC();

  if ((v15 & 1) == 0)
  {
LABEL_7:
    v16 = sub_1D5B86020(&unk_1F51185D0);
    swift_arrayDestroy();
    v17 = sub_1D5BE240C(v9, v11, v16);

    if ((v17 & 1) == 0)
    {
      v18 = v9 == 1702195828 && v11 == 0xE400000000000000;
      if (!v18 && (sub_1D72646CC() & 1) == 0)
      {
        v19 = v9 == 0x65736C6166 && v11 == 0xE500000000000000;
        if (!v19 && (sub_1D72646CC() & 1) == 0)
        {
          v22 = 0;
          sub_1D68488DC(v9, v11);

          return a1;
        }
      }
    }
  }

LABEL_21:

  return a1;
}

unint64_t sub_1D6848CF8(unint64_t a1, unint64_t a2)
{
  v139 = sub_1D7257A4C();
  v5 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v6);
  v138 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 0;
  if (!v8)
  {
    v141 = MEMORY[0x1E69E7CC0];
    v13 = 0xE000000000000000;
    goto LABEL_151;
  }

  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v143 = a2 & 0xFFFFFFFFFFFFFFLL;
  v144 = 4 * v8;
  v142 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v136 = (v5 + 8);
  v141 = MEMORY[0x1E69E7CC0];
  v12 = 15;
  v134 = xmmword_1D72F7ED0;
  v133 = xmmword_1D72F7EE0;
  v13 = 0xE000000000000000;
  v137 = v8;
  v145 = 4 << v10;
  v146 = a2;
  while (2)
  {
    v135 = v141 + 8;
    while (1)
    {
      v16 = v12 & 0xC;
      v17 = (v12 & 1) == 0 || v16 == v11;
      v18 = v17;
      if (v17)
      {
        v19 = v12;
        if (v16 == v11)
        {
          v65 = v9;
          v19 = sub_1D6BA2080(v12, a1, a2);
          v9 = v65;
        }

        v20 = (v19 >> 16);
        if (v19 >> 16 >= v8)
        {
          goto LABEL_161;
        }

        if ((v19 & 1) == 0)
        {
          v21 = v9;
          v22 = sub_1D6BA2208(v19, a1, a2);
          v9 = v21;
          v20 = (v22 >> 16);
        }
      }

      else
      {
        v20 = (v12 >> 16);
        if (v12 >> 16 >= v8)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v24 = a1;
        v63 = v9;
        v64 = sub_1D7263D3C();
        v9 = v63;
        v26 = v64;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24 = a1;
          v147 = a1;
          v148 = v143;
          v25 = &v147 + v20;
        }

        else
        {
          v23 = v142;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v66 = v9;
            v23 = sub_1D7263E5C();
            v9 = v66;
          }

          v24 = a1;
          v25 = v20 + v23;
        }

        v26 = *v25;
        if (*v25 < 0)
        {
          v34 = (__clz(v26 ^ 0xFF) - 24);
          if (v34 > 2)
          {
            if (v34 == 3)
            {
              v26 = ((v26 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F;
            }

            else
            {
              v26 = ((v26 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F;
            }
          }

          else if (v34 != 1)
          {
            v26 = v25[1] & 0x3F | ((v26 & 0x1F) << 6);
          }
        }
      }

      if (v26 <= 44)
      {
        break;
      }

      if (v26 == 45)
      {
        v2 = v9;
        v147 = v9;
        v148 = v13;

        v35 = v138;
        sub_1D725795C();
        sub_1D5BF4D9C();
        v36 = sub_1D7263A4C();
        v38 = v37;
        (*v136)(v35, v139);

        if (v36 || v38 != 0xE000000000000000)
        {
          v39 = sub_1D72646CC();

          v8 = v137;
          v9 = v2;
          if (v39)
          {
            goto LABEL_112;
          }

          goto LABEL_77;
        }

        v8 = v137;
LABEL_112:

        v94 = v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1D69940F0(0, *(v94 + 2) + 1, 1, v94);
        }

        a1 = v24;
        v96 = *(v94 + 2);
        v95 = *(v94 + 3);
        v141 = v94;
        a2 = v146;
        if (v96 >= v95 >> 1)
        {
          v123 = sub_1D69940F0((v95 > 1), v96 + 1, 1, v141);
          v97 = v2;
          v141 = v123;
        }

        else
        {
          v97 = v2;
        }

        v2 = v141;
        *(v141 + 2) = v96 + 1;
        v98 = &v2[24 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v13;
        v98[48] = 2;

        v100 = *(v2 + 2);
        v99 = *(v2 + 3);
        if (v100 >= v99 >> 1)
        {
          v141 = sub_1D69940F0((v99 > 1), v100 + 1, 1, v141);
        }

        v101 = v141;
        *(v141 + 2) = v100 + 1;
        v79 = &v101[24 * v100];
        v80 = v134;
LABEL_119:
        *(v79 + 2) = v80;
        v79[48] = 0;
        v102 = sub_1D6BA20FC(v12, a1, a2);
        if ((a2 & 0x1000000000000000) != 0)
        {
          v12 = sub_1D726218C();
          v9 = 0;
        }

        else
        {
          v103 = v102 >> 16;
          v104 = sub_1D7263D2C();
          v9 = 0;
          v12 = ((v104 + v103) << 16) | 5;
        }

        v13 = 0xE000000000000000;
        v11 = v145;
        goto LABEL_144;
      }

      if (v26 != 58)
      {
        goto LABEL_77;
      }

      v27 = v9;

      v28 = sub_1D6848A80(v27, v13);
      if (v30 != 3)
      {

        v9 = v27;
LABEL_58:
        v40 = *(v141 + 2);
        if (v40)
        {
          v41 = &v135[24 * v40];
          if (v41[16])
          {
            goto LABEL_77;
          }

          if (*v41 != 45 || *(v41 + 1) != 0xE100000000000000)
          {
            v43 = v9;
            v44 = sub_1D72646CC();
            v9 = v43;
            if ((v44 & 1) == 0)
            {
              goto LABEL_77;
            }
          }
        }

        v69 = v9;

        v70 = v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_1D69940F0(0, v40 + 1, 1, v70);
        }

        a1 = v24;
        v71 = v70;
        v72 = *(v70 + 2);
        v141 = v71;
        v73 = *(v71 + 3);
        a2 = v146;
        if (v72 >= v73 >> 1)
        {
          v124 = sub_1D69940F0((v73 > 1), v72 + 1, 1, v141);
          v74 = v69;
          v141 = v124;
        }

        else
        {
          v74 = v69;
        }

        v2 = v141;
        *(v141 + 2) = v72 + 1;
        v75 = &v2[24 * v72];
        *(v75 + 4) = v74;
        *(v75 + 5) = v13;
        v75[48] = 2;

        v77 = *(v2 + 2);
        v76 = *(v2 + 3);
        if (v77 >= v76 >> 1)
        {
          v141 = sub_1D69940F0((v76 > 1), v77 + 1, 1, v141);
        }

        v78 = v141;
        *(v141 + 2) = v77 + 1;
        v79 = &v78[24 * v77];
        v80 = v133;
        goto LABEL_119;
      }

      if (v28 == v27 && v29 == v13)
      {

        v9 = v27;
        goto LABEL_77;
      }

      v53 = v27;
      v54 = sub_1D72646CC();

      v9 = v53;
      if ((v54 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_77:
      v147 = v9;
      v148 = v13;
      v20 = &v147;
      sub_1D72621BC();
      v9 = v147;
      v13 = v148;
      if (v18)
      {
        v11 = v145;
        a1 = v24;
        if (v16 == v145)
        {
          v67 = v24;
          v20 = v147;
          a2 = v146;
          v68 = sub_1D6BA2080(v12, v67, v146);
          v9 = v20;
          v12 = v68;
          if (v8 <= v68 >> 16)
          {
            goto LABEL_163;
          }
        }

        else
        {
          a2 = v146;
          if (v8 <= v12 >> 16)
          {
            goto LABEL_163;
          }
        }

        if ((v12 & 1) == 0)
        {
          v56 = v9;
          v57 = sub_1D6BA2208(v12, a1, a2);
          v9 = v56;
          v12 = v12 & 0xC | v57 & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        a1 = v24;
        v11 = v145;
        a2 = v146;
        if (v8 <= v12 >> 16)
        {
          goto LABEL_162;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v14 = v9;
        v15 = sub_1D726218C();
        v9 = v14;
        v12 = v15;
      }

      else
      {
        v58 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v147 = a1;
          v148 = v143;
          v60 = *(&v147 + v58);
        }

        else
        {
          v59 = v142;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v2 = v9;
            v59 = sub_1D7263E5C();
            v9 = v2;
          }

          v60 = *(v59 + v58);
        }

        v61 = v60;
        v62 = __clz(v60 ^ 0xFF) - 24;
        if (v61 >= 0)
        {
          LOBYTE(v62) = 1;
        }

        v12 = ((v58 + v62) << 16) | 5;
      }

      if (v144 <= v12 >> 14)
      {
        goto LABEL_151;
      }
    }

    if (v26 != 35)
    {
      if (v26 != 10)
      {
        goto LABEL_77;
      }

      v147 = v9;
      v148 = v13;
      sub_1D72621BC();
      v81 = sub_1D6848A80(v147, v148);
      v83 = v82;
      v85 = v84;
      sub_1D5EA77BC(v81, v82, v84);
      v86 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = sub_1D69940F0(0, *(v86 + 2) + 1, 1, v86);
      }

      v88 = v86;
      v89 = *(v86 + 2);
      v90 = v88;
      v91 = *(v88 + 3);
      v2 = (v89 + 1);
      if (v89 >= v91 >> 1)
      {
        v90 = sub_1D69940F0((v91 > 1), v89 + 1, 1, v90);
      }

      *(v90 + 2) = v2;
      v141 = v90;
      v92 = &v90[24 * v89];
      *(v92 + 4) = v81;
      *(v92 + 5) = v83;
      v92[48] = v85;

      if (v18)
      {
        v11 = v145;
        v8 = v137;
        a1 = v24;
        if (v16 == v145)
        {
          v125 = v24;
          a2 = v146;
          result = sub_1D6BA2080(v12, v125, v146);
          v12 = result;
          if (v8 > result >> 16)
          {
LABEL_109:
            if ((v12 & 1) == 0)
            {
              v12 = v12 & 0xC | sub_1D6BA2208(v12, a1, a2) & 0xFFFFFFFFFFFFFFF3 | 1;
            }

            goto LABEL_124;
          }
        }

        else
        {
          a2 = v146;
          if (v137 > v12 >> 16)
          {
            goto LABEL_109;
          }
        }

        __break(1u);
      }

      else
      {
        v8 = v137;
        a1 = v24;
        v11 = v145;
        a2 = v146;
        if (v137 > v12 >> 16)
        {
LABEL_124:
          if ((a2 & 0x1000000000000000) != 0)
          {
            v12 = sub_1D726218C();
            v9 = 0;
          }

          else
          {
            v105 = v12 >> 16;
            if ((a2 & 0x2000000000000000) != 0)
            {
              v147 = a1;
              v148 = v143;
              v107 = *(&v147 + v105);
            }

            else
            {
              v106 = v142;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v106 = sub_1D7263E5C();
              }

              v107 = *(v106 + v105);
            }

            v9 = 0;
            v121 = v107;
            v122 = __clz(v107 ^ 0xFF) - 24;
            if (v121 >= 0)
            {
              LOBYTE(v122) = 1;
            }

            v12 = ((v105 + v122) << 16) | 5;
          }

          v13 = 0xE000000000000000;
          goto LABEL_144;
        }
      }

      __break(1u);
      return result;
    }

    v31 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v31 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      goto LABEL_77;
    }

    v32 = v9;
    sub_1D726223C();
    v140 = v32;
    if (sub_1D726233C() == 32 && v33 == 0xE100000000000000)
    {

      v9 = v140;
    }

    else
    {
      v45 = sub_1D72646CC();

      v9 = v140;
      if ((v45 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v147 = v9;
    v148 = v13;

    v46 = v138;
    sub_1D725795C();
    sub_1D5BF4D9C();
    v47 = sub_1D7263A4C();
    v49 = v48;
    (*v136)(v46, v139);

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v51 = sub_1D726233C();
      v2 = v52;

      if (v51 == 34 && v2 == 0xE100000000000000)
      {

        v8 = v137;
        v9 = v140;
      }

      else
      {
        v55 = sub_1D72646CC();

        v8 = v137;
        v9 = v140;
        if ((v55 & 1) == 0)
        {
          goto LABEL_131;
        }
      }

      goto LABEL_77;
    }

    v9 = v140;
LABEL_131:
    v108 = sub_1D6848A80(v9, v13);
    v110 = v109;
    v112 = v111;
    sub_1D5EA77BC(v108, v109, v111);
    v113 = v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_1D69940F0(0, *(v113 + 2) + 1, 1, v113);
    }

    v114 = v113;
    v115 = *(v113 + 2);
    v116 = v114;
    v117 = *(v114 + 3);
    v2 = (v115 + 1);
    if (v115 >= v117 >> 1)
    {
      v116 = sub_1D69940F0((v117 > 1), v115 + 1, 1, v116);
    }

    *(v116 + 2) = v2;
    v141 = v116;
    v118 = &v116[24 * v115];
    *(v118 + 4) = v108;
    *(v118 + 5) = v110;
    v118[48] = v112;

    a1 = v24;
    v119 = v24;
    a2 = v146;
    v120 = sub_1D6BA20FC(v12, v119, v146);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = sub_1D726218C();
    }

    else
    {
      v12 = ((sub_1D7263D2C() + (v120 >> 16)) << 16) | 5;
    }

    v13 = 0xE100000000000000;
    v9 = 35;
    v8 = v137;
    v11 = v145;
LABEL_144:
    if (v144 > v12 >> 14)
    {
      continue;
    }

    break;
  }

LABEL_151:
  v126 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v126 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v126)
  {
    v20 = sub_1D6848A80(v9, v13);
    v18 = v127;
    v128 = v141;
    LOBYTE(v2) = v129;
    sub_1D5EA77BC(v20, v127, v129);
    a1 = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_164:
      a1 = sub_1D69940F0(0, *(a1 + 16) + 1, 1, a1);
    }

    v131 = *(a1 + 16);
    v130 = *(a1 + 24);
    if (v131 >= v130 >> 1)
    {
      a1 = sub_1D69940F0((v130 > 1), v131 + 1, 1, a1);
    }

    *(a1 + 16) = v131 + 1;
    v132 = a1 + 24 * v131;
    *(v132 + 32) = v20;
    *(v132 + 40) = v18;
    *(v132 + 48) = v2;
  }

  else
  {

    a1 = v141;
  }

  return a1;
}

_BYTE *sub_1D6849A44@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D6849AD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6849B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

id SportsInjuryReportDataVisualization.leagueTag.getter()
{
  v1 = [*(v0 + 48) eventLeagueTag];

  return v1;
}

uint64_t SportsInjuryReportDataVisualization.competitorTags.getter()
{
  v1 = [*(v0 + 48) eventCompetitorTags];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D5B5534C(0, &qword_1EDF04500);
  v3 = sub_1D726267C();

  return v3;
}

void *SportsInjuryReportDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v36 = a1[3];
  v37 = v10;
  v13 = a1[4];
  v12 = a1[5];
  v34 = v9;
  v35 = v13;
  v41 = v12;
  v42 = v11;
  v15 = *(v2 + 5);
  v38 = *(v2 + 4);
  v14 = v38;
  v39 = v4;
  v33 = *(v2 + 6);
  v16 = v33;
  v17 = *(v40 + 16);
  v17(v8, &v2[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl], v4, v6);
  v18 = *&v2[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources];
  v19 = *&v2[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster];
  v20 = swift_allocObject();
  v20[4] = v14;
  v20[5] = v15;
  v21 = v15;
  v20[6] = v16;
  (v17)(v20 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl, v8, v4);
  *(v20 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources) = v18;
  *(v20 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster) = v19;
  v22 = (v20 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
  v24 = v34;
  v23 = v35;
  v26 = v36;
  v25 = v37;
  *v22 = v34;
  v22[1] = v25;
  v27 = v41;
  v22[2] = v42;
  v22[3] = v26;
  v22[4] = v23;
  v22[5] = v27;
  v43 = 14906;
  v44 = 0xE200000000000000;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  MEMORY[0x1DA6F9910](v24, v25);
  v28 = v43;
  v29 = v44;
  v43 = sub_1D72583DC();
  v44 = v30;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v38, v21);
  MEMORY[0x1DA6F9910](v28, v29);

  v31 = v44;
  v20[2] = v43;
  v20[3] = v31;
  v43 = v24;
  v44 = v25;
  v45 = v42;
  v46 = v26;
  v47 = v23;
  v48 = v41;
  sub_1D692133C(v8, &v43, 0xD00000000000001DLL, 0x80000001D73D8B90, v20 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl);
  (*(v40 + 8))(v8, v39);

  swift_unknownObjectRelease();

  return v20;
}

uint64_t SportsInjuryReportDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsInjuryReportDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsInjuryReportDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3);
}

char *SportsInjuryReportDataVisualization.__allocating_init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = swift_allocObject();
  v15 = *a7;
  v14 = a7[1];
  v16 = a7[3];
  v29 = a7[2];
  v30 = *a6;
  v18 = a7[4];
  v17 = a7[5];
  v32 = a1;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v34 = a2;
  v19 = v14;
  *(v13 + 6) = a3;
  v20 = OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl;
  v21 = sub_1D72585BC();
  v22 = *(v21 - 8);
  v33 = v21;
  (*(v22 + 16))(&v13[v20], a4);
  *&v13[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources] = a5;
  *&v13[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster] = v30;
  v23 = &v13[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config];
  *v23 = v15;
  v23[1] = v19;
  v23[2] = v29;
  v23[3] = v16;
  v23[4] = v18;
  v23[5] = v17;

  swift_unknownObjectRetain();
  if (v19)
  {
    sub_1D5F8B638(v15, v19);
    MEMORY[0x1DA6F9910](v15, v19);
    v25 = 14906;
    v24 = 0xE200000000000000;
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v35 = sub_1D72583DC();
  v36 = v26;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v32, v34);

  MEMORY[0x1DA6F9910](v25, v24);

  v27 = v36;
  *(v13 + 2) = v35;
  *(v13 + 3) = v27;
  v35 = v15;
  v36 = v19;
  v37 = v29;
  v38 = v16;
  v39 = v18;
  v40 = v17;
  sub_1D692133C(a4, &v35, 0xD00000000000001DLL, 0x80000001D73D8B90, &v13[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  (*(v22 + 8))(a4, v33);
  sub_1D5F8BBC8(v15, v19);
  return v13;
}

char *SportsInjuryReportDataVisualization.init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v58 = a5;
  v15 = sub_1D72585BC();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v56 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a6;
  v20 = *a7;
  v21 = a7[1];
  v22 = a7[2];
  v23 = a7[3];
  v25 = a7[4];
  v24 = a7[5];
  v53 = a1;
  v54 = v26;
  *(v8 + 4) = a1;
  *(v8 + 5) = a2;
  v27 = v20;
  v28 = a3;
  *(v8 + 6) = a3;
  v29 = v22;
  v30 = *(v26 + 16);
  v55 = a4;
  v31 = a4;
  v32 = v23;
  v57 = v33;
  v30(&v8[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl], v31, v17);
  *&v8[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources] = v58;
  *&v8[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster] = v19;
  v34 = &v8[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config];
  v58 = v27;
  *v34 = v27;
  v34[1] = v21;
  v35 = v21;
  v34[2] = v29;
  v34[3] = v32;
  v34[4] = v25;
  v34[5] = v24;
  v51 = v32;
  v52 = v25;
  v49 = v24;
  v50 = v28;
  if (v21)
  {
    v59 = 14906;
    v60 = 0xE200000000000000;

    swift_unknownObjectRetain();
    v36 = v58;
    sub_1D5F8B638(v58, v21);
    v37 = v29;
    MEMORY[0x1DA6F9910](v36, v21);
    v39 = v59;
    v38 = v60;
  }

  else
  {

    swift_unknownObjectRetain();
    v39 = 0;
    v38 = 0xE000000000000000;
    v37 = v29;
  }

  v48[1] = v37;
  v40 = v55;
  v59 = sub_1D72583DC();
  v60 = v41;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v53, a2);

  MEMORY[0x1DA6F9910](v39, v38);

  v42 = v60;
  *(v8 + 2) = v59;
  *(v8 + 3) = v42;
  v43 = v58;
  v59 = v58;
  v60 = v35;
  v61 = v37;
  v62 = v51;
  v63 = v52;
  v64 = v49;
  v44 = v56;
  sub_1D692133C(v40, &v59, 0xD00000000000001DLL, 0x80000001D73D8B90, v56);
  swift_unknownObjectRelease();
  v45 = v54;
  v46 = v57;
  (*(v54 + 8))(v40, v57);
  sub_1D5F8BBC8(v43, v35);
  (*(v45 + 32))(&v8[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl], v44, v46);
  return v8;
}

uint64_t SportsInjuryReportDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsInjuryReportDataVisualization.init(from:)(a1);
  return v2;
}

void *SportsInjuryReportDataVisualization.init(from:)(void *a1)
{
  v47 = a1;
  v2 = v1;
  v48 = *v2;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v38 - v10;
  sub_1D5F8C77C();
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D684B4E4(0, &qword_1EC88C8F8, MEMORY[0x1E69E6F48]);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D684ADE4();
  v45 = v21;
  v22 = v46;
  v23 = v2;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v13;
    v46 = v11;
    v39 = v7;
    LOBYTE(v49) = 0;
    v26 = v42;
    v25 = v43;
    v23[4] = sub_1D72642BC();
    v23[5] = v27;
    LOBYTE(v49) = 1;
    sub_1D5F8C838(&unk_1EDF176A0, sub_1D5F8C77C);
    sub_1D726431C();
    sub_1D725BF7C();
    (v26[1])(v16, v24);
    v23[6] = v49;
    LOBYTE(v49) = 2;
    v28 = sub_1D5F8C838(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
    v29 = v46;
    v30 = v41;
    sub_1D726431C();
    v42 = v23;
    v38[1] = v28;
    v31 = *(v40 + 32);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl, v29, v30);
    sub_1D67FFC54(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    v52 = 3;
    sub_1D67FEC04(&unk_1EDF04AB0, &unk_1EDF065B0);
    v32 = v45;
    v46 = 0;
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources) = v49;
    v52 = 6;
    sub_1D5F8C880();
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster) = v49;
    v52 = 5;
    sub_1D5F8C8D4();
    sub_1D726427C();
    v33 = (v23 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
    v34 = v50;
    *v33 = v49;
    v33[1] = v34;
    v33[2] = v51;
    LOBYTE(v49) = 4;
    v23[2] = sub_1D72642BC();
    v23[3] = v35;
    LOBYTE(v49) = 7;
    v36 = v39;
    sub_1D726431C();
    (*(v44 + 8))(v32, v25);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl, v36, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v23;
}

unint64_t sub_1D684ADE4()
{
  result = qword_1EC88C900;
  if (!qword_1EC88C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C900);
  }

  return result;
}

uint64_t SportsInjuryReportDataVisualization.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D725ABEC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8C77C();
  v8 = v7;
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D684B4E4(0, &qword_1EC88C910, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v35 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D684ADE4();
  sub_1D7264B5C();
  LOBYTE(v43) = 0;
  v18 = v42;
  sub_1D72643FC();
  if (v18)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v20 = v38;
  v21 = v39;
  v36 = v2;
  v37 = 0;
  v22 = *(v2 + 48);
  v42 = v14;
  v43 = v22;
  v23 = qword_1EDF17E30;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v21, qword_1EDF17E38);
  v25 = (*(v20 + 16))(v40, v24, v21);
  MEMORY[0x1EEE9AC00](v25, v26);
  *(&v35 - 2) = sub_1D5B5534C(0, &qword_1EDF1A870);
  swift_getKeyPath();
  sub_1D725BF6C();
  LOBYTE(v43) = 1;
  sub_1D5F8C838(&unk_1EDF176B0, sub_1D5F8C77C);
  v27 = v37;
  sub_1D726443C();
  (*(v41 + 8))(v11, v8);
  if (v27)
  {
    return (*(v42 + 8))(v17, v13);
  }

  LOBYTE(v43) = 2;
  sub_1D72585BC();
  sub_1D5F8C838(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
  v28 = v36;
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources);
  v49 = 3;
  sub_1D67FFC54(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D67FEC04(&qword_1EDF04AC0, &qword_1EDF065C0);
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster);
  v49 = 6;
  sub_1D5F8D78C();

  sub_1D726443C();

  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 8);
  v30 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 16);
  v31 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 24);
  v32 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 32);
  v33 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 40);
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v49 = 5;
  sub_1D5F8B638(v43, v29);
  sub_1D5F8D7E0();
  sub_1D72643BC();
  v34 = v42;
  sub_1D5F8BBC8(v43, v44);
  LOBYTE(v43) = 4;
  sub_1D72643FC();
  LOBYTE(v43) = 7;
  sub_1D726443C();
  return (*(v34 + 8))(v17, v13);
}

void sub_1D684B4E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D684ADE4();
    v7 = a3(a1, &type metadata for SportsInjuryReportDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D684B548@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D684C740();
  *a1 = result;
  return result;
}

uint64_t sub_1D684B578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D684C740();
  *a1 = result;
  return result;
}

uint64_t sub_1D684B5A0(uint64_t a1)
{
  v2 = sub_1D684ADE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D684B5DC(uint64_t a1)
{
  v2 = sub_1D684ADE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsInjuryReportDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 8));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsInjuryReportDataVisualization.__deallocating_deinit()
{
  SportsInjuryReportDataVisualization.deinit();

  return swift_deallocClassInstance();
}

void *sub_1D684B754@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsInjuryReportDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsInjuryReportDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t type metadata accessor for SportsInjuryReportDataVisualization()
{
  result = qword_1EDF1D420;
  if (!qword_1EDF1D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D684B854()
{
  result = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D684B980()
{
  result = qword_1EC88C918;
  if (!qword_1EC88C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C918);
  }

  return result;
}

unint64_t sub_1D684B9D8()
{
  result = qword_1EC88C920;
  if (!qword_1EC88C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C920);
  }

  return result;
}

unint64_t sub_1D684BA30()
{
  result = qword_1EC88C928;
  if (!qword_1EC88C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C928);
  }

  return result;
}

void *sub_1D684BA84(uint64_t a1, uint64_t a2)
{
  v116 = sub_1D72585BC();
  v3 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v93 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v112 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v86 - v14;
  if (a2)
  {
    v120 = v13;
    v119 = v3;
    v16 = MEMORY[0x1E69E6F90];
    sub_1D67FFC54(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D67FFC54(0, &qword_1EC880490, sub_1D5EA74B8, v16);
    v18 = v17;
    sub_1D5EA74B8();
    v113 = v19;
    v20 = *(*(v19 - 8) + 72);
    v21 = *(*(v19 - 8) + 80);
    v22 = (v21 + 32) & ~v21;
    v108 = 3 * v20;
    v110 = v21;
    v111 = v18;
    v23 = swift_allocObject();
    v107 = xmmword_1D7279970;
    *(v23 + 16) = xmmword_1D7279970;
    v88 = v23;
    v109 = v22;
    v24 = (v23 + v22);
    v26 = *(a2 + 32);
    v25 = *(a2 + 40);
    v27 = a2;
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = &v24[*(v28 + 24)];
    *v29 = v26;
    *(v29 + 1) = v25;
    v30 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v106 = v30;
    v105 = v32;
    v104 = v31 + 56;
    v32(v29, 0, 1, v30);
    *v24 = 0xD000000000000010;
    *(v24 + 1) = 0x80000001D73C4840;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v33 = &v24[*(v28 + 28)];
    *v33 = 0;
    *(v33 + 1) = 0;
    v33[16] = -1;
    v34 = *(v28 - 8);
    v35 = *(v34 + 56);
    v36 = v34 + 56;
    v35(v24, 0, 1, v28);
    v37 = v119;
    v38 = *(v119 + 16);
    v39 = v116;
    v103 = v119 + 16;
    v102 = v38;
    v38(v15, v27 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl, v116);
    v40 = *(v37 + 56);
    v101 = v37 + 56;
    v100 = v40;
    v40(v15, 0, 1, v39);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v15, &v24[v20]);
    v87 = v24;
    v115 = v20;
    v114 = v28;
    v122 = v35;
    v121 = v36;
    v35(&v24[v20], 0, 1, v28);
    v41 = *(v27 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources);
    if (v41 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
    {
      v43 = inited;
      if (!i)
      {
        break;
      }

      v123 = MEMORY[0x1E69E7CC0];
      result = sub_1D6997EC0(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v86 = v27;
      v45 = 0;
      v46 = v123;
      v47 = v41;
      v99 = v41 & 0xC000000000000001;
      v90 = v41 & 0xFFFFFFFFFFFFFF8;
      v48 = 2 * v115;
      v94 = (v119 + 48);
      v92 = (v119 + 32);
      v91 = (v119 + 8);
      v98 = xmmword_1D7287CC0;
      v97 = v41;
      v96 = i;
      v95 = 2 * v115;
      while (!__OFADD__(v45, 1))
      {
        v119 = v45;
        v118 = v45 + 1;
        v117 = v46;
        if (v99)
        {
          v49 = MEMORY[0x1DA6FB460](v45);
        }

        else
        {
          if (v45 >= *(v90 + 16))
          {
            goto LABEL_25;
          }

          v49 = *(v47 + 8 * v45 + 32);
        }

        v50 = v109;
        v51 = swift_allocObject();
        *(v51 + 16) = v107;
        v52 = (v51 + v50);
        v53 = v49[2];
        v54 = v49[3];
        sub_1D5F8E840(v53, v54);
        sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v53, v54, v52);
        v55 = v114;
        v56 = v122;
        v122(v52, 0, 1, v114);
        v57 = v49[4];
        v58 = v49[5];

        v59 = v115;
        sub_1D711F844(7955787, 0xE300000000000000, v57, v58, &v52[v115]);
        v56(&v52[v59], 0, 1, v55);
        v60 = &v52[v48];
        v61 = v112;
        v62 = v116;
        v63 = v102;
        v102(v112, v49 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v116);
        v100(v61, 0, 1, v62);
        v27 = v120;
        sub_1D5EB84C0(v61, v120);
        if ((*v94)(v27, 1, v62) == 1)
        {
          sub_1D5B6F13C(v61, sub_1D5B4D3E0);
          v105(&v60[*(v55 + 24)], 1, 1, v106);
          *v60 = v98;
          *(v60 + 2) = 0;
          *(v60 + 3) = 0;
          v64 = &v60[*(v55 + 28)];
          *v64 = 0;
          *(v64 + 1) = 0;
          v64[16] = -1;
        }

        else
        {
          v27 = v116;
          v65 = v93;
          v63(v93, v120, v116);
          sub_1D5B6F13C(v61, sub_1D5B4D3E0);
          v66 = *(v55 + 24);
          (*v92)(&v60[v66], v65, v27);
          v67 = v106;
          swift_storeEnumTagMultiPayload();
          v105(&v60[v66], 0, 1, v67);
          *v60 = v98;
          *(v60 + 2) = 0;
          *(v60 + 3) = 0;
          v68 = &v60[*(v55 + 28)];
          *v68 = 0;
          *(v68 + 1) = 0;
          v68[16] = -1;
          (*v91)(v120, v27);
        }

        v122(v60, 0, 1, v55);
        sub_1D6795150(0, 0xE000000000000000, 0, 0, v51, v127);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        *(&v125 + 1) = &type metadata for FormatInspectionGroup;
        v126 = &off_1F518B2C0;
        v69 = swift_allocObject();
        *&v124 = v69;

        *(v69 + 48) = v128;
        v70 = v127[1];
        *(v69 + 16) = v127[0];
        *(v69 + 32) = v70;
        v123 = v117;
        v41 = *(v117 + 16);
        v71 = *(v117 + 24);
        v48 = v95;
        if (v41 >= v71 >> 1)
        {
          sub_1D6997EC0((v71 > 1), v41 + 1, 1);
        }

        v72 = *(&v125 + 1);
        v73 = v126;
        v74 = __swift_mutable_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
        v75 = MEMORY[0x1EEE9AC00](v74, v74);
        v77 = &v86 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v78 + 16))(v77, v75);
        sub_1D5BD0BE4(v41, v77, &v123, v72, v73);
        __swift_destroy_boxed_opaque_existential_1(&v124);
        v46 = v123;
        v45 = v119 + 1;
        v47 = v97;
        if (v118 == v96)
        {
          v43 = inited;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v48 = 2 * v115;
    v46 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v80 = sub_1D5F62BFC(v46);

    v81 = sub_1D7073500(v80);

    v82 = v87;
    sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v81, 0, 0, &v87[v48]);
    v122(&v82[v48], 0, 1, v114);
    sub_1D6795150(0x726F635320786F42, 0xE900000000000065, 0, 0, v88, &v124);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v43[7] = &type metadata for FormatInspectionGroup;
    v43[8] = &off_1F518B2C0;
    v83 = swift_allocObject();
    v43[4] = v83;
    *(v83 + 48) = v126;
    v84 = v125;
    *(v83 + 16) = v124;
    *(v83 + 32) = v84;
    v85 = sub_1D7073500(v43);
    swift_setDeallocating();
    sub_1D5B6F13C((v43 + 4), sub_1D5E4F358);

    return v85;
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v79);
  }
}

uint64_t sub_1D684C740()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D684C78C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D5D313C0(*a1);
  v5 = v4;
  if (v3 == sub_1D5D313C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D684C814()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5D313C0(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D684C878()
{
  sub_1D5D313C0(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D684C8CC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5D313C0(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatNodeStyle.class.getter()
{
  v0 = sub_1D684CF5C();

  return v0;
}

uint64_t sub_1D684C97C()
{
  v1 = *(v0 + 48) >> 59;
  if (((1 << v1) & 0x3F7FE) != 0)
  {
    return 1;
  }

  if (v1)
  {
    v3 = sub_1D6008478();
  }

  else
  {
    v3 = sub_1D6798DBC();
  }

  return v3 & 1;
}

BOOL _s8NewsFeed15FormatNodeStyleO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a2[1];
  v55 = *a2;
  v56 = v2;
  v3 = a2[3];
  v57 = a2[2];
  v58 = v3;
  v4 = a1[1];
  v51 = *a1;
  v52 = v4;
  v59[0] = v51;
  v59[1] = v4;
  v5 = a1[3];
  v53 = a1[2];
  v54 = v5;
  v59[2] = v53;
  v59[3] = v5;
  v6 = a2[3];
  v59[6] = v57;
  v59[7] = v6;
  v59[4] = v55;
  v59[5] = v2;
  switch(v5 >> 59)
  {
    case 1uLL:
      if (v58 >> 59 != 1)
      {
        goto LABEL_39;
      }

      v29 = v55;
      v30 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v30, v29);
      goto LABEL_38;
    case 2uLL:
      if (v58 >> 59 != 2)
      {
        goto LABEL_39;
      }

      v21 = v55;
      v22 = v51;
      type metadata accessor for FormatImageNodeStyle();
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = static FormatImageNodeStyle.== infix(_:_:)(v22, v21);
      goto LABEL_38;
    case 3uLL:
      if (v58 >> 59 != 3)
      {
        goto LABEL_39;
      }

      v25 = v55;
      v26 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed19FormatItemNodeStyleC2eeoiySbAC_ACtFZ_0(v26, v25);
      goto LABEL_38;
    case 4uLL:
      if (v58 >> 59 != 4)
      {
        goto LABEL_39;
      }

      v15 = v55;
      v16 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed23FormatWebEmbedNodeStyleC2eeoiySbAC_ACtFZ_0(v16, v15);
      goto LABEL_38;
    case 5uLL:
      if (v58 >> 59 != 5)
      {
        goto LABEL_39;
      }

      v33 = v55;
      v34 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed21FormatCustomNodeStyleC2eeoiySbAC_ACtFZ_0(v34, v33);
      goto LABEL_38;
    case 6uLL:
      if (v58 >> 59 != 6)
      {
        goto LABEL_39;
      }

      v37 = v55;
      v38 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed28FormatSupplementaryNodeStyleC2eeoiySbAC_ACtFZ_0(v38, v37);
      goto LABEL_38;
    case 7uLL:
      if (v58 >> 59 != 7)
      {
        goto LABEL_39;
      }

      v27 = v55;
      v28 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed19FormatMicaNodeStyleC2eeoiySbAC_ACtFZ_0(v28, v27);
      goto LABEL_38;
    case 8uLL:
      if (v58 >> 59 != 8)
      {
        goto LABEL_39;
      }

      v41 = v55;
      v42 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed27FormatLayeredMediaNodeStyleC2eeoiySbAC_ACtFZ_0(v42, v41);
      goto LABEL_38;
    case 9uLL:
      if (v58 >> 59 != 9)
      {
        goto LABEL_39;
      }

      v19 = v55;
      v20 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = sub_1D665104C(v20, v19);
      goto LABEL_38;
    case 0xAuLL:
      if (v58 >> 59 != 10)
      {
        goto LABEL_39;
      }

      v39 = v55;
      v40 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed25FormatIssueCoverNodeStyleC2eeoiySbAC_ACtFZ_0(v40, v39);
      goto LABEL_38;
    case 0xBuLL:
      if (v58 >> 59 != 11)
      {
        goto LABEL_39;
      }

      v13 = v55;
      v14 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed20FormatGroupNodeStyleC2eeoiySbAC_ACtFZ_0(v14, v13);
      goto LABEL_38;
    case 0xCuLL:
      if (v58 >> 59 != 12)
      {
        goto LABEL_39;
      }

      v17 = v55;
      v18 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed24FormatGroupNodeMaskStyleC2eeoiySbAC_ACtFZ_0(v18, v17);
      goto LABEL_38;
    case 0xDuLL:
      if (v58 >> 59 != 13)
      {
        goto LABEL_39;
      }

      v35 = v55;
      v36 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v36, v35);
      goto LABEL_38;
    case 0xEuLL:
      if (v58 >> 59 != 14)
      {
        goto LABEL_39;
      }

      v11 = v55;
      v12 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = sub_1D665100C(v12, v11);
      goto LABEL_38;
    case 0xFuLL:
      if (v58 >> 59 != 15)
      {
        goto LABEL_39;
      }

      v23 = v55;
      v24 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed27FormatProgressViewNodeStyleC2eeoiySbAC_ACtFZ_0(v24, v23);
      goto LABEL_38;
    case 0x10uLL:
      if (v58 >> 59 != 16)
      {
        goto LABEL_39;
      }

      v48[0] = v51;
      v48[1] = v52;
      v48[2] = v53;
      v49 = v5 & 0x7FFFFFFFFFFFFFFLL;
      v50 = *(&v5 + 1);
      v45[0] = v55;
      v45[1] = v56;
      v45[2] = v57;
      v46 = v58 & 0x7FFFFFFFFFFFFFFLL;
      v47 = *(&v58 + 1);
      sub_1D5C8C900(&v55, v44);
      sub_1D5C8C900(&v51, v44);
      sub_1D5C8C900(&v55, v44);
      sub_1D5C8C900(&v51, v44);
      v10 = _s8NewsFeed26FormatPuzzleEmbedNodeStyleV2eeoiySbAC_ACtFZ_0(v48, v45);
      sub_1D684D224(v59);
      sub_1D5C8C974(&v55);
      sub_1D5C8C974(&v51);
      return v10;
    case 0x11uLL:
      if (v58 >> 59 != 17)
      {
        goto LABEL_39;
      }

      v31 = v55;
      v32 = v51;
      sub_1D5C8C900(&v55, v48);
      sub_1D5C8C900(&v51, v48);
      v9 = _s8NewsFeed30FormatSponsoredBannerNodeStyleC2eeoiySbAC_ACtFZ_0(v32, v31);
      goto LABEL_38;
    default:
      if (v58 >> 59)
      {
LABEL_39:
        sub_1D5C8C900(&v55, v48);
        sub_1D5C8C900(&v51, v48);
        sub_1D684D224(v59);
        return 0;
      }

      else
      {
        v7 = v55;
        v8 = v51;
        type metadata accessor for FormatViewNodeStyle();
        sub_1D5C8C900(&v55, v48);
        sub_1D5C8C900(&v51, v48);
        v9 = static FormatViewNodeStyle.== infix(_:_:)(v8, v7);
LABEL_38:
        v10 = v9;
        sub_1D684D224(v59);
      }

      return v10;
  }
}

uint64_t sub_1D684CF5C()
{
  if (v0[6] >> 59 == 16)
  {
    return v0[2];
  }

  else
  {
    return *(*v0 + 32);
  }
}

unint64_t sub_1D684CFA8(uint64_t a1)
{
  result = sub_1D684CFD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D684CFD0()
{
  result = qword_1EC88C930;
  if (!qword_1EC88C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C930);
  }

  return result;
}

unint64_t sub_1D684D024(void *a1)
{
  a1[1] = sub_1D5C2E688();
  a1[2] = sub_1D5C2E6DC();
  result = sub_1D684D05C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D684D05C()
{
  result = qword_1EC88C938;
  if (!qword_1EC88C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C938);
  }

  return result;
}

unint64_t sub_1D684D0B0(uint64_t a1)
{
  *(a1 + 16) = sub_1D5C2E688();
  result = sub_1D5C2E6DC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1D684D124()
{
  result = qword_1EC88C940;
  if (!qword_1EC88C940)
  {
    sub_1D684D17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C940);
  }

  return result;
}

void sub_1D684D17C()
{
  if (!qword_1EC88C948)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C948);
    }
  }
}

unint64_t sub_1D684D1D0()
{
  result = qword_1EC88C950;
  if (!qword_1EC88C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C950);
  }

  return result;
}

uint64_t sub_1D684D224(uint64_t a1)
{
  sub_1D684D280();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D684D280()
{
  if (!qword_1EC88C958)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88C958);
    }
  }
}

uint64_t ProcessedImageRequestType.isDownloaded.getter()
{
  v0 = sub_1D725EADC();
  v1 = v0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      sub_1D5B68374(*(v1 + 56) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), v12);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      sub_1D725D2CC();
      if (!v10)
      {
        break;
      }

      v5 &= v5 - 1;

      result = __swift_destroy_boxed_opaque_existential_1(v12);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    v11 = 0;
LABEL_12:

    return v11;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        v11 = 1;
        goto LABEL_12;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D684D434(void *a1)
{
  v3 = v1;
  sub_1D684FC80(0, &qword_1EC88C9F0, sub_1D684FC2C, &type metadata for A6_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D684FC2C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D684F608(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5BD484C(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D684D690(uint64_t a1)
{
  v2 = sub_1D684FC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D684D6CC(uint64_t a1)
{
  v2 = sub_1D684FC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D684D708@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D684F978(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D684D768()
{
  sub_1D684F6CC();

  return sub_1D725A24C();
}

uint64_t sub_1D684D7E4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D684FC80(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D684D8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v93 = a2;
  v82 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v102 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v96 = &v82 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for GroupLayoutContext();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v18);
  v92 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v82 - v22;
  v86 = &v82 - v22;
  v95 = type metadata accessor for GroupLayoutBindingContext();
  v87 = *(v95 - 1);
  MEMORY[0x1EEE9AC00](v95, v24);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v91 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v88 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v93, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v85 = sub_1D725893C();
  v84 = v29;
  (*(v14 + 8))(v17, v13);
  v100 = &type metadata for A6_V2;
  v30 = sub_1D5C0F754();
  v101 = v30;
  LOBYTE(v98) = v27;
  LOBYTE(v23) = v27;
  *(&v98 + 1) = v28;
  v31 = v5;
  v99 = v5;
  type metadata accessor for GroupLayoutKey();
  v32 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v97[0] = sub_1D7264C5C();
  v97[1] = v33;
  v97[9] = 95;
  v97[10] = 0xE100000000000000;
  v97[7] = 45;
  v97[8] = 0xE100000000000000;
  sub_1D5BF4D9C();
  v34 = sub_1D7263A6C();
  v36 = v35;

  *(v32 + 16) = v34;
  *(v32 + 24) = v36;
  v37 = (v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v38 = v84;
  *v37 = v85;
  v37[1] = v38;
  sub_1D5B68374(&v98, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v26, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v87 + 56))(v32 + v39, 0, 1, v95);
  v40 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v86, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v41 = *(v89 + 56);
  v89 = v32;
  v41(v32 + v40, 0, 1, v90);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  v100 = &type metadata for A6_V2;
  v101 = v30;
  LOBYTE(v98) = v23;
  *(&v98 + 1) = v28;
  v99 = v5;
  sub_1D5BE3ED8(v93, v92, v88);
  v42 = swift_allocObject();
  *(v42 + 16) = 4;
  sub_1D5BD39E8(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v44 = MEMORY[0x1E69E7CC0];
  v93 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v45 = (inited + 16);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1D613DB68;
  *(v46 + 24) = v42;
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v31);

  v47 = sub_1D5C0F8FC(0, 1, 1, v44);
  v49 = v47[2];
  v48 = v47[3];
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v47[2] = v50;
    v51 = &v47[2 * v49];
    v51[4] = sub_1D613DB70;
    v51[5] = v46;
    *v45 = v47;
    swift_endAccess();

    if (!*(*&v91[v95[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v52 & 1) == 0) || (v53 = , v50 = sub_1D5C14D80(v53), , !v50))
    {
      sub_1D5BEE168(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
      v62 = swift_allocObject();
      v63 = _swift_stdlib_malloc_size(v62);
      v64 = v63 - 32;
      if (v63 < 32)
      {
        v64 = v63 - 25;
      }

      v62[2] = 6;
      v62[3] = 2 * (v64 >> 3);
      if (sub_1D5C10670(v97, (v62 + 4), 6, 1, 6) == 6)
      {
        v97[0] = v62;
        v4 = v83;
        sub_1D5E239F4(v97);
        if (v4)
        {
          goto LABEL_41;
        }

        if (*(v97[0] + 2))
        {
LABEL_19:
          v65 = *(v97[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v66, "FeedHeadline");
          v66[13] = 0;
          *(v66 + 7) = -5120;
          *(v66 + 2) = 0;
          *(v66 + 3) = 0;
          *(v66 + 4) = 0;
          *(v66 + 5) = v65;
          *(v66 + 6) = 0;
          *(v66 + 7) = 0;
          v66[64] = 0;
          swift_willThrow();
          swift_setDeallocating();

          sub_1D5BE798C(v92, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v98);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

    v49 = *(v50 + 16);
    if (!v49)
    {
      break;
    }

    v46 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v55 = v94;
    while (1)
    {
      v48 = *(v50 + 16);
      if (v46 >= v48)
      {
        break;
      }

      v56 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v57 = *(v102 + 72);
      v58 = v96;
      sub_1D5BE3ED8(v50 + v56 + v57 * v46, v96, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v58, v55, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97[0] = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v54 + 2) + 1, 1);
        v55 = v94;
        v54 = v97[0];
      }

      v61 = *(v54 + 2);
      v60 = *(v54 + 3);
      v45 = (v61 + 1);
      if (v61 >= v60 >> 1)
      {
        sub_1D5C0F91C(v60 > 1, v61 + 1, 1);
        v55 = v94;
        v54 = v97[0];
      }

      ++v46;
      *(v54 + 2) = v45;
      sub_1D5BDA904(v55, &v54[v56 + v61 * v57], type metadata accessor for FeedHeadline);
      if (v49 == v46)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_35:
    v47 = sub_1D5C0F8FC((v48 > 1), v50, 1, v47);
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v68 = v91;
  if ((*v91 & 1) == 0)
  {

    v69 = sub_1D62F071C(v54);

    v54 = v69;
  }

  v70 = *&v68[v95[18]];
  v71 = *&v68[v95[19]];
  if (__OFSUB__(v70, v71))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v72 = sub_1D5C0FAD4(v54, v70 - v71);
  v73 = sub_1D5C1009C(1, 6, v72, v50);

  if (v73)
  {

    goto LABEL_27;
  }

  v73 = sub_1D5C1009C(1, 6, v54, v50);

  if (v73)
  {
LABEL_27:
    strcpy(v97, "FeedHeadline");
    BYTE5(v97[1]) = 0;
    HIWORD(v97[1]) = -5120;
    v97[2] = 0;
    v97[3] = 0;

    v75 = sub_1D5C107C4(v74);

    sub_1D5BDACA8(v97, v75);
    swift_setDeallocating();

    v76 = type metadata accessor for A6_V2.Bound();
    v77 = v82;
    v82[3] = v76;
    v77[4] = sub_1D684F608(&qword_1EC88C960, type metadata accessor for A6_V2.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
    *boxed_opaque_existential_1 = v89;
    sub_1D5B63F14(&v98, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v92, boxed_opaque_existential_1 + *(v76 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v76 + 28)) = v73;
    return result;
  }

  sub_1D5BEE168(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
  v79 = swift_allocObject();
  v80 = _swift_stdlib_malloc_size(v79);
  v81 = v80 - 32;
  if (v80 < 32)
  {
    v81 = v80 - 25;
  }

  v79[2] = 6;
  v79[3] = 2 * (v81 >> 3);
  if (sub_1D5C10670(v97, (v79 + 4), 6, 1, 6) != 6)
  {
    goto LABEL_39;
  }

  v97[0] = v79;
  v4 = v83;
  sub_1D5E239F4(v97);
  if (v4)
  {
    goto LABEL_41;
  }

  if (*(v97[0] + 2))
  {
    goto LABEL_19;
  }

LABEL_40:
  __break(1u);
LABEL_41:

  __break(1u);
  return result;
}

uint64_t sub_1D684E4D4@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A6_V2.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v40);
  sub_1D5B68374(v11 + 56, v39);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v40, inited + 16);
  sub_1D5B63F14(v39, inited + 56);
  *(inited + 96) = v13;
  v38[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v38, v42);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v37[2] = v2;
  v37[3] = v42;
  v16 = sub_1D5ECA650(sub_1D684F650, v37, v15);
  v17 = *MEMORY[0x1E69D7130];
  v18 = sub_1D7259D1C();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v34 = v16;
  v36 = v16;
  sub_1D684F774(0, &qword_1EC88C980, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v33 = sub_1D725A4CC();
  sub_1D725A4DC();
  v19 = v41;
  sub_1D5BD39E8(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v32 = v20;
  v21 = MEMORY[0x1E69E62F8];
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  sub_1D5BD48FC();
  v22 = sub_1D5BD49DC(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v30 = v40[1];
  v31 = v40[0];
  *&v40[0] = v34;
  *&v39[0] = v19;
  MEMORY[0x1EEE9AC00](v22, v23);

  v24 = sub_1D725C00C();

  v25 = v35;
  *v35 = 0;
  v26 = v31;
  *(v25 + 24) = v30;
  *(v25 + 8) = v26;
  *&v40[0] = v24;
  sub_1D5BEE168(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v21);
  sub_1D5BD49DC(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v27 = sub_1D72623BC();

  v28 = MEMORY[0x1E69E7CC0];
  *(v25 + 5) = v27;
  *(v25 + 6) = v28;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1D684E964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D684EA3C(uint64_t a1, uint64_t a2)
{
  sub_1D684FC80(0, &qword_1EC88C998, sub_1D684F678, &type metadata for A6_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D684F774(0, &qword_1EC88C9A0, MEMORY[0x1E69D7150]);
  sub_1D684F730(&qword_1EC88C9A8, &qword_1EC88C9A0, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D684EC28(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v64 = sub_1D725A36C();
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v4);
  v63 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D725A19C();
  v6 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v7);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v60, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D684FC80(0, &qword_1EC88C998, sub_1D684F678, &type metadata for A6_V2.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v48 - v16);
  v18 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 16);
  if (v23)
  {
    v59 = *MEMORY[0x1E69DDC70];
    v24 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v58 = *(v20 + 72);
    v57 = *MEMORY[0x1E69D6F50];
    v56 = *MEMORY[0x1E69D73C0];
    v55 = (v14 + 104);
    v25 = (v14 + 8);
    v54 = *MEMORY[0x1E69D74A8];
    v53 = *MEMORY[0x1E69D7348];
    v52 = *MEMORY[0x1E69D7378];
    v50 = (v6 + 8);
    v51 = (v3 + 104);
    v48 = v13;
    v49 = v22;
    do
    {
      v69 = v23;
      v67 = v24;
      sub_1D5BE3ED8(v24, v22, type metadata accessor for HeadlineViewLayout.Context);
      v26 = v65;
      v70 = v65;
      v27 = sub_1D725994C();
      v28 = swift_allocBox();
      (*(*(v27 - 8) + 104))(v29, v57, v27);
      *v17 = v28;
      v30 = *v55;
      (*v55)(v17, v56, v13);
      v31 = MEMORY[0x1E69D6F38];
      sub_1D684F774(0, &qword_1EC88C9B0, MEMORY[0x1E69D6F38]);
      v32 = v17;
      v34 = v33;
      sub_1D684F730(&qword_1EC88C9B8, &qword_1EC88C9B0, v31);
      v68 = v34;
      v17 = v32;
      sub_1D7259A9C();
      v66 = *v25;
      v66(v32, v13);
      v70 = v26;
      swift_getKeyPath();
      v30(v32, v54, v13);
      v35 = v60;
      v36 = *(v60 + 20);
      v37 = sub_1D725A34C();
      v38 = *(v37 - 8);
      (*(v38 + 104))(&v11[v36], v53, v37);
      (*(v38 + 56))(&v11[v36], 0, 1, v37);
      *v11 = 0;
      *&v11[*(v35 + 24)] = 0;
      v39 = v59;
      *&v11[*(v35 + 28)] = v59;
      v40 = qword_1EDF386E8;
      v41 = v39;
      if (v40 != -1)
      {
        swift_once();
      }

      v42 = v61;
      sub_1D725972C();

      v45 = MEMORY[0x1EEE9AC00](v43, v44);
      v46 = v49;
      *(&v48 - 4) = v49;
      *(&v48 - 3) = v11;
      v47 = v42;
      (*v51)(v63, v52, v64, v45);
      sub_1D5BED904();
      swift_allocObject();
      sub_1D725A4CC();
      (*v50)(v42, v62);
      sub_1D5BE798C(v11, type metadata accessor for HeadlineViewLayout.Options);
      v47 = sub_1D5BE8850();
      sub_1D7259A4C();

      v13 = v48;
      v66(v32, v48);
      sub_1D5BE798C(v46, type metadata accessor for HeadlineViewLayout.Context);
      v24 = v67 + v58;
      v23 = v69 - 1;
      v22 = v46;
    }

    while (v69 != 1);
  }
}

uint64_t sub_1D684F344@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A6_V2.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

uint64_t type metadata accessor for A6_V2.Bound()
{
  result = qword_1EC88C968;
  if (!qword_1EC88C968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D684F4CC()
{
  type metadata accessor for GroupLayoutKey();
  if (v0 <= 0x3F)
  {
    sub_1D5C10AB0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext();
      if (v2 <= 0x3F)
      {
        sub_1D5BD39E8(319, &qword_1EDF1B460, type metadata accessor for FeedHeadline, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D684F5B0(uint64_t a1)
{
  result = sub_1D684F608(&qword_1EC88C978, type metadata accessor for A6_V2.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D684F608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D684F678()
{
  result = qword_1EC88C988;
  if (!qword_1EC88C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C988);
  }

  return result;
}

unint64_t sub_1D684F6CC()
{
  result = qword_1EC88C990;
  if (!qword_1EC88C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C990);
  }

  return result;
}

uint64_t sub_1D684F730(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D684F774(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D684F774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A6_V2.Layout;
    v8[1] = &type metadata for A6_V2.Layout.Attributes;
    v8[2] = sub_1D684F678();
    v8[3] = sub_1D684F6CC();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D684F81C()
{
  result = qword_1EC88C9C0;
  if (!qword_1EC88C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C9C0);
  }

  return result;
}

unint64_t sub_1D684F874()
{
  result = qword_1EC88C9C8;
  if (!qword_1EC88C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C9C8);
  }

  return result;
}

unint64_t sub_1D684F8CC()
{
  result = qword_1EC88C9D0;
  if (!qword_1EC88C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C9D0);
  }

  return result;
}

unint64_t sub_1D684F924()
{
  result = qword_1EC88C9D8;
  if (!qword_1EC88C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C9D8);
  }

  return result;
}

uint64_t sub_1D684F978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D684FC80(0, &qword_1EC88C9E0, sub_1D684FC2C, &type metadata for A6_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D684FC2C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D684F608(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D5BD484C(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D684FC2C()
{
  result = qword_1EC88C9E8;
  if (!qword_1EC88C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C9E8);
  }

  return result;
}

void sub_1D684FC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D684FCFC()
{
  result = qword_1EC88C9F8;
  if (!qword_1EC88C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C9F8);
  }

  return result;
}

unint64_t sub_1D684FD54()
{
  result = qword_1EC88CA00;
  if (!qword_1EC88CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CA00);
  }

  return result;
}

unint64_t sub_1D684FDAC()
{
  result = qword_1EC88CA08;
  if (!qword_1EC88CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CA08);
  }

  return result;
}

NewsFeed::SportsDataVisualizationResponseEmbedType_optional __swiftcall SportsDataVisualizationResponseEmbedType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SportsDataVisualizationResponseEmbedType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 == 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
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
    v2 = 0x535F5354524F5053;
    v3 = 0x425F5354524F5053;
    if (v1 == 2)
    {
      v3 = 0x535F5354524F5053;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
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

void sub_1D684FFB4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v9 = 0x80000001D73BCEC0;
    v10 = 0xD000000000000013;
    if (v2 == 6)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x80000001D73BCEE0;
    }

    v11 = 0xD000000000000010;
    v12 = 0x80000001D73BCE80;
    if (v2 != 4)
    {
      v11 = 0xD000000000000011;
      v12 = 0x80000001D73BCEA0;
    }

    if (*v1 <= 5u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    if (*v1 <= 5u)
    {
      v9 = v12;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0x535F5354524F5053;
    v4 = 0xEC00000045524F43;
    v5 = 0xEF474E49444E4154;
    v6 = 0x425F5354524F5053;
    if (v2 == 2)
    {
      v6 = 0x535F5354524F5053;
    }

    else
    {
      v5 = 0xEE0054454B434152;
    }

    if (*v1)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000001D73BCF90;
    }

    if (*v1 <= 1u)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 <= 1u)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

unint64_t sub_1D68501A0()
{
  result = qword_1EC88CA10;
  if (!qword_1EC88CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CA10);
  }

  return result;
}

uint64_t sub_1D6850200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 16))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 8) >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*(a1 + 8) >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6850254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t FeedUserInfo.layoutSelectors.getter()
{
  v7 = FeedUserInfo.contextSelectors.getter();
  v1 = [*(v0 + 16) shortcutsOnboardingState];
  if (!v1)
  {
    v4 = "ssive-personalization-opted-in";
    v3 = 0xD000000000000021;
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v4 = "uts-not-onboarded";
    v3 = 0xD000000000000022;
LABEL_7:
    v2 = v4 | 0x8000000000000000;
    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v2 = 0x80000001D73D8D40;
    v3 = 0xD00000000000001DLL;
LABEL_8:
    sub_1D5B860D0(&v6, v3, v2);
  }

  return v7;
}

uint64_t FeedUserInfo.__allocating_init(userInfo:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t type metadata accessor for DebugFormatSidebarViewController()
{
  result = qword_1EC88CA28;
  if (!qword_1EC88CA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D685049C()
{
  sub_1D6850B4C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1D6850534()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  sub_1D6851144();
  swift_unknownObjectRetain();
  sub_1D725E6CC();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  [v1 setSearchResultsUpdater_];
  [v1 setObscuresBackgroundDuringPresentation_];
  [v1 setHidesNavigationBarDuringPresentation_];
  v2 = [v1 searchBar];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor_];

  v4 = [v1 searchBar];
  v5 = sub_1D726203C();
  [v4 setPlaceholder_];

  v6 = [v1 searchBar];
  v7 = [v6 searchTextField];

  [v7 setAutocorrectionType_];
  v8 = [v1 searchBar];
  v9 = [v8 searchTextField];

  [v9 setAutocapitalizationType_];
  v10 = sub_1D726203C();
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = [v1 searchBar];
  [v12 setImage:v11 forSearchBarIcon:0 state:0];

  v13 = [v1 searchBar];
  [v13 setImage:v11 forSearchBarIcon:0 state:2];

  v14 = [v1 searchBar];
  [v14 setShowsCancelButton_];

  v15 = [v0 navigationItem];
  [v15 setSearchController_];

  v16 = [v0 navigationItem];
  [v16 setHidesSearchBarWhenScrolling_];

  v17 = [v0 navigationItem];
  [v17 setPreferredSearchBarPlacement_];
}

void sub_1D685089C(void *a1)
{
  v1 = a1;
  sub_1D6850534();
}

id sub_1D68508E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1D726207C();
    a3 = v8;
  }

  sub_1D67C5854();
  v9 = a4;
  sub_1D725A96C();
  if (a3)
  {
    v10 = sub_1D726203C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = a1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, v9);

  return v11;
}

id sub_1D68509D0(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_1D67C5854();
  v6 = a3;
  sub_1D725A96C();
  v9.receiver = a1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1D6850A78()
{
  v1 = qword_1EC88CA20;
  sub_1D6850B4C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1D6850AE0(uint64_t a1)
{
  v2 = qword_1EC88CA20;
  sub_1D6850B4C();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void sub_1D6850B4C()
{
  if (!qword_1EC88CA40)
  {
    sub_1D67C5854();
    v0 = sub_1D725A97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CA40);
    }
  }
}

void sub_1D6850BB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = a1;
  v5 = sub_1D725E67C();
  if (v5)
  {
    v6 = v5;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      [v7 updateSearchResultsForSearchController_];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1D6850C8C(void *a1)
{
  v2 = v1;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    a1;
    v4 = [v2 navigationItem];
    v5 = [v4 searchController];

    if (v5)
    {
      v6 = [v5 searchBar];

      v7 = [v6 text];
      if (v7)
      {
        sub_1D726207C();
      }
    }

    swift_beginAccess();
    sub_1D6850B4C();
    sub_1D725A99C();
    swift_endAccess();
  }

  v8 = [v2 navigationItem];
  v9 = [v8 searchController];

  if (v9)
  {
    v10 = [v9 searchBar];

    v11 = sub_1D726203C();
    [v10 setText_];
  }

  v12 = [v2 navigationItem];
  v13 = [v12 searchController];

  if (v13)
  {
    v14 = [v13 searchBar];

    [v14 resignFirstResponder];
  }
}

void sub_1D6850EBC(void *a1)
{
  v2 = v1;
  v4 = swift_dynamicCastObjCProtocolConditional();
  v5 = [v2 navigationItem];
  v6 = [v5 searchController];

  if (v4)
  {
    if (v6)
    {
      v7 = [v6 searchBar];

      [v7 setEnabled_];
    }

    v8 = [v2 navigationItem];
    v9 = [v8 searchController];

    if (v9)
    {
      v10 = [v9 searchBar];

      swift_beginAccess();
      sub_1D6850B4C();
      v11 = a1;
      sub_1D725A98C();

      swift_endAccess();
      v12 = sub_1D726203C();

LABEL_10:
      [v10 setText_];
    }
  }

  else
  {
    if (v6)
    {
      v13 = [v6 searchBar];

      [v13 setEnabled_];
    }

    v14 = [v2 navigationItem];
    v15 = [v14 searchController];

    if (v15)
    {
      v10 = [v15 searchBar];

      v12 = sub_1D726203C();
      goto LABEL_10;
    }
  }

  type metadata accessor for DebugFormatDockViewController();
  v16 = sub_1D7262FEC();
  if (v16)
  {
    v17 = v16;
    sub_1D6E91200();
  }
}

unint64_t sub_1D6851144()
{
  result = qword_1EC88CA48;
  if (!qword_1EC88CA48)
  {
    type metadata accessor for DebugFormatSidebarViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CA48);
  }

  return result;
}

id PuzzleActivityItemsConfiguration.__allocating_init(puzzle:puzzleImageShareAttributeProvider:puzzleRankProvider:puzzleDifficultyDescriptionProvider:userHasAccess:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v37[1] = v13;
    v37[2] = v15;
    v38 = objc_allocWithZone(v5);
    sub_1D5E42B34();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D728AF30;
    v17 = type metadata accessor for SharingPuzzleImageActivityItemSource();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image] = 0;
    v46.receiver = v18;
    v46.super_class = v17;
    swift_unknownObjectRetain();
    v19 = objc_msgSendSuper2(&v46, sel_init);
    MEMORY[0x1EEE9AC00](v19, v20);
    v40 = a4;
    v37[-2] = v21;
    v37[-1] = a1;
    sub_1D6851ABC();
    v39 = a2;
    v22 = v19;
    v41 = a3;
    v23 = v22;
    sub_1D725BDCC();
    v24 = sub_1D725B92C();
    sub_1D725BAAC();

    swift_unknownObjectRelease();

    *(v16 + 32) = v23;
    sub_1D5C3AE10(v41, v44, qword_1EDF27B30, qword_1EDF3F7F0);
    sub_1D5C3AE10(v40, v43, qword_1EDF1C510, &qword_1EDF3CDC0);
    v25 = type metadata accessor for SharingPuzzleTextActivityItemSource();
    v26 = objc_allocWithZone(v25);
    v27 = &v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___defaultText];
    *v27 = 0;
    *(v27 + 1) = 0;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithTimeText] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithRankText] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithMovesText] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedPuzzleTypeText] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithTimeText] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedDifficultyText] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithRank] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithMovesText] = xmmword_1D7279980;
    *&v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle] = a1;
    sub_1D5C3AE10(v44, &v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleRankProvider], qword_1EDF27B30, qword_1EDF3F7F0);
    sub_1D5C3AE10(v43, &v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleDifficultyDescriptionProvider], qword_1EDF1C510, &qword_1EDF3CDC0);
    v28 = &v26[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData];
    *v28 = 0u;
    *(v28 + 1) = 0u;
    *(v28 + 5) = 0;
    *(v28 + 6) = 0;
    *(v28 + 4) = 1;
    *(v28 + 28) = 0;
    v42.receiver = v26;
    v42.super_class = v25;
    a2 = v39;
    swift_unknownObjectRetain();
    v29 = objc_msgSendSuper2(&v42, sel_init);
    sub_1D5BFB774(v43, qword_1EDF1C510, &qword_1EDF3CDC0);
    sub_1D5BFB774(v44, qword_1EDF27B30, qword_1EDF3F7F0);
    *(v16 + 40) = v29;
    sub_1D5C3AE10(a2, v44, qword_1EDF1CE10, &qword_1EDF3CFD0);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    v31 = v44[1];
    *(v30 + 24) = v44[0];
    *(v30 + 40) = v31;
    *(v30 + 56) = v45;
    *&v44[0] = MEMORY[0x1E69E7CC0];
    sub_1D5B64898(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
    sub_1D5B5F3E0();
    sub_1D5B64898(&qword_1EDF1B5A0, sub_1D5B5F3E0);
    swift_unknownObjectRetain();
    a4 = v40;
    a3 = v41;
    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
    v32 = sub_1D725B7AC();
    v33 = objc_allocWithZone(type metadata accessor for SharingPuzzleURLActivityItemSource());
    *(v16 + 48) = sub_1D6815A84(a1, v32);
    sub_1D5B5534C(0, &unk_1EC88CA50);
    v34 = sub_1D726265C();

    v35 = [v38 initNAWithActivityItemSources_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v35 = 0;
  }

  sub_1D5BFB774(a4, qword_1EDF1C510, &qword_1EDF3CDC0);
  sub_1D5BFB774(a3, qword_1EDF27B30, qword_1EDF3F7F0);
  sub_1D5BFB774(a2, qword_1EDF1CE10, &qword_1EDF3CFD0);
  return v35;
}

id sub_1D68517FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  v10 = objc_allocWithZone(v5);
  a4(0, a2, a3);
  v11 = sub_1D726265C();

  v12 = [v10 *a5];

  return v12;
}

id sub_1D68518C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  ObjectType = swift_getObjectType();
  a4(0, a2, a3);
  v11 = sub_1D726265C();

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, *a5, v11);

  return v12;
}

id PuzzleActivityItemsConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D68519AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D5C3AE10(a2, v10, qword_1EDF1CE10, &qword_1EDF3CFD0);
  v5 = type metadata accessor for PuzzleLinkPresentationSource();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8NewsFeed28PuzzleLinkPresentationSource_puzzle] = a1;
  sub_1D5C3AE10(v10, &v6[OBJC_IVAR____TtC8NewsFeed28PuzzleLinkPresentationSource_puzzleImageShareAttributeProvider], qword_1EDF1CE10, &qword_1EDF3CFD0);
  v9.receiver = v6;
  v9.super_class = v5;
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  result = sub_1D5BFB774(v10, qword_1EDF1CE10, &qword_1EDF3CFD0);
  *a3 = v7;
  return result;
}

void sub_1D6851ABC()
{
  if (!qword_1EC893530)
  {
    sub_1D5B5A498(255, &qword_1EDF1A690);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893530);
    }
  }
}

uint64_t FormatLayoutModel.layoutData.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &type metadata for FeedItemLayoutAttributes;
  *a1 = v2;
}

uint64_t sub_1D6851C40@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &type metadata for FeedItemLayoutAttributes;
  *a1 = v2;
}

uint64_t sub_1D6851CC4(uint64_t a1)
{
  v2 = sub_1D685234C();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

void FormatLayoutModel.adFrame.getter(uint64_t a1@<X8>)
{
  v3 = sub_1D7260C5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 60 == 3)
  {
    sub_1D5EF31B8();
    v9 = v8;
    v10 = swift_projectBox();
    (*(v4 + 16))(v7, v10 + *(v9 + 48), v3);
    sub_1D7260C2C();
    v14 = v16;
    v15 = v17;
    v11 = v18;
    (*(v4 + 8))(v7, v3);
    v12 = v14;
    v13 = v15;
  }

  else
  {
    v12 = 0uLL;
    v11 = 1;
    v13 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v11;
}

void sub_1D6852084(uint64_t a1@<X8>)
{
  v3 = sub_1D7260C5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 60 == 3)
  {
    sub_1D5EF31B8();
    v9 = v8;
    v10 = swift_projectBox();
    (*(v4 + 16))(v7, v10 + *(v9 + 48), v3);
    sub_1D7260C2C();
    v14 = v16;
    v15 = v17;
    v11 = v18;
    (*(v4 + 8))(v7, v3);
    v12 = v14;
    v13 = v15;
  }

  else
  {
    v12 = 0uLL;
    v11 = 1;
    v13 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v11;
}

unint64_t sub_1D685234C()
{
  result = qword_1EDF10C30;
  if (!qword_1EDF10C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10C30);
  }

  return result;
}

uint64_t FormatFixedColor.rawValue.getter()
{
  result = 0x6B63616C62;
  switch(*v0)
  {
    case 1:
      result = 1702194274;
      break;
    case 2:
      result = 0x6E776F7262;
      break;
    case 3:
      result = 1851881827;
      break;
    case 4:
      result = 0x796172476B726164;
      break;
    case 5:
      result = 2036429415;
      break;
    case 6:
      result = 0x6E65657267;
      break;
    case 7:
      result = 0x617247746867696CLL;
      break;
    case 8:
      result = 0x61746E6567616DLL;
      break;
    case 9:
      result = 0x65676E61726FLL;
      break;
    case 0xA:
      result = 0x656C70727570;
      break;
    case 0xB:
      result = 0x6574696877;
      break;
    case 0xC:
      result = 0x776F6C6C6579;
      break;
    default:
      return result;
  }

  return result;
}

id FormatFixedColor.color.getter()
{
  v1 = [objc_opt_self() *off_1E84CE718[*v0]];

  return v1;
}

uint64_t sub_1D6852514()
{
  sub_1D7264A0C();
  FormatFixedColor.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D685257C()
{
  FormatFixedColor.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D68525E0()
{
  sub_1D7264A0C();
  FormatFixedColor.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6852644@<X0>(uint64_t *a1@<X8>)
{
  result = FormatFixedColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D685266C(uint64_t a1)
{
  *(a1 + 8) = sub_1D685269C();
  result = sub_1D5CDA9CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D685269C()
{
  result = qword_1EC88CAC8;
  if (!qword_1EC88CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CAC8);
  }

  return result;
}

uint64_t sub_1D68526F0()
{
  v0 = FormatFixedColor.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFixedColor.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D685278C(uint64_t a1)
{
  result = sub_1D5CDA754();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatFocusPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FormatFocusPosition.description.getter()
{
  v1 = 0x6564697374754FLL;
  if (*v0 != 1)
  {
    v1 = 0x656469736E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747541;
  }
}

unint64_t sub_1D68528F4()
{
  result = qword_1EC88CAD0;
  if (!qword_1EC88CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CAD0);
  }

  return result;
}

unint64_t sub_1D6852948(uint64_t a1)
{
  result = sub_1D6852970();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6852970()
{
  result = qword_1EC88CAD8;
  if (!qword_1EC88CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CAD8);
  }

  return result;
}

unint64_t sub_1D68529C4(void *a1)
{
  a1[1] = sub_1D668A5C0();
  a1[2] = sub_1D668A7B8();
  result = sub_1D68528F4();
  a1[3] = result;
  return result;
}

uint64_t sub_1D68529FC()
{
  v1 = 0x6564697374754FLL;
  if (*v0 != 1)
  {
    v1 = 0x656469736E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747541;
  }
}

unint64_t sub_1D6852A78()
{
  result = qword_1EC88CAF0;
  if (!qword_1EC88CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CAF0);
  }

  return result;
}

uint64_t sub_1D6852ACC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6852BB4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6852C88()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6852D6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D68553EC();
  *a1 = result;
  return result;
}

void sub_1D6852D9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6F69647561;
  v5 = 0xE900000000000073;
  v6 = 0x656E697A6167616DLL;
  v7 = 0xE800000000000000;
  v8 = 0x7374726F7073796DLL;
  if (v2 != 3)
  {
    v8 = 0x756F79726F66;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E69776F6C6C6F66;
    v3 = 0xE900000000000067;
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

unint64_t sub_1D6852E44()
{
  result = qword_1EC88CAF8;
  if (!qword_1EC88CAF8)
  {
    sub_1D5B49714(255, &qword_1EC88CB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CAF8);
  }

  return result;
}

uint64_t sub_1D6852EBC()
{
  v1 = *v0;
  v2 = 0x6F69647561;
  v3 = 0x656E697A6167616DLL;
  v4 = 0x7374726F7073796DLL;
  if (v1 != 3)
  {
    v4 = 0x756F79726F66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69776F6C6C6F66;
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

uint64_t sub_1D6852F5C@<X0>(_BYTE *a1@<X8>)
{

  result = sub_1D68553EC();
  *a1 = result;
  return result;
}

unint64_t sub_1D6852FA8()
{
  result = qword_1EC88CB08;
  if (!qword_1EC88CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB08);
  }

  return result;
}

unint64_t sub_1D6853000()
{
  result = qword_1EC88CB10;
  if (!qword_1EC88CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB10);
  }

  return result;
}

unint64_t sub_1D6853054()
{
  result = qword_1EC88CB18;
  if (!qword_1EC88CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB18);
  }

  return result;
}

uint64_t sub_1D68530A8(unsigned __int8 a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D6856260(0, &qword_1EDF3C488, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - v5;
  sub_1D6856260(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], v2);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_1D72582DC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  if (a1 <= 1u)
  {
    sub_1D72582AC();
    (*(v12 + 56))(v10, 1, 1, v11);
    v15 = sub_1D725744C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_1D6856260(0, &qword_1EDF02480, MEMORY[0x1E6968E10], MEMORY[0x1E69E6F90]);
    if (a1)
    {
      *(swift_allocObject() + 16) = xmmword_1D7270C10;
    }

    else
    {
      *(swift_allocObject() + 16) = xmmword_1D7279970;
      sub_1D72582AC();
    }

    sub_1D72582AC();
  }

  else if (a1 == 2)
  {
    sub_1D72582AC();
    (*(v12 + 56))(v10, 1, 1, v11);
    v16 = sub_1D725744C();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_1D6856260(0, &qword_1EDF02480, MEMORY[0x1E6968E10], MEMORY[0x1E69E6F90]);
    *(swift_allocObject() + 16) = xmmword_1D7279970;
    sub_1D72582AC();
    sub_1D72582AC();
  }

  else
  {
    sub_1D72582AC();
    (*(v12 + 56))(v10, 1, 1, v11);
    v14 = sub_1D725744C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_1D6856260(0, &qword_1EDF02480, MEMORY[0x1E6968E10], MEMORY[0x1E69E6F90]);
    if (a1 == 3)
    {
      *(swift_allocObject() + 16) = xmmword_1D7279960;
      sub_1D72582AC();
      sub_1D72582AC();
    }

    else
    {
      *(swift_allocObject() + 16) = xmmword_1D7279970;
    }

    sub_1D72582AC();
    sub_1D72582AC();
  }

  sub_1D72582AC();
  return sub_1D725745C();
}

uint64_t sub_1D685392C()
{
  sub_1D6856260(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = sub_1D72582DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = sub_1D72575BC();
  __swift_allocate_value_buffer(v7, qword_1EC9BA938);
  __swift_project_value_buffer(v7, qword_1EC9BA938);
  sub_1D72582AC();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1D72575AC();
}

uint64_t sub_1D6853AC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5BAFDD0;

  return sub_1D6855730(a1);
}

uint64_t sub_1D6853B68(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D685632C;

  return sub_1D6855438();
}

unint64_t sub_1D6853C0C()
{
  result = qword_1EC88CB20;
  if (!qword_1EC88CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB20);
  }

  return result;
}

uint64_t sub_1D6853C60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D6853D04;

  return sub_1D6855958();
}

uint64_t sub_1D6853D04(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1D6853E1C()
{
  result = qword_1EC88CB28;
  if (!qword_1EC88CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB28);
  }

  return result;
}

unint64_t sub_1D6853E70()
{
  result = qword_1EC88CB30;
  if (!qword_1EC88CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB30);
  }

  return result;
}

unint64_t sub_1D6853EC8()
{
  result = qword_1EC88CB38;
  if (!qword_1EC88CB38)
  {
    sub_1D5B49714(255, &qword_1EC88CB40);
    sub_1D6853E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB38);
  }

  return result;
}

uint64_t sub_1D6853F50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1D6853C0C();
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1D685404C()
{
  result = qword_1EC88CB48;
  if (!qword_1EC88CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB48);
  }

  return result;
}

uint64_t sub_1D68540A0()
{
  sub_1D68562C4(0, &qword_1EC88CC20, sub_1D6853054, &type metadata for NewsTabDeepLink, MEMORY[0x1E695A4E0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v9 - v4;
  sub_1D68562C4(0, &qword_1EC88CC28, sub_1D6853054, &type metadata for NewsTabDeepLink, MEMORY[0x1E695A4E8]);
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1D6853054();
  sub_1D725755C();
  sub_1D725754C();
  (*(v2 + 104))(v5, *MEMORY[0x1E695A4D8], v1);
  sub_1D725753C();
  (*(v2 + 8))(v5, v1);
  sub_1D725754C();
  return sub_1D725756C();
}

uint64_t sub_1D68542B0()
{
  v0 = *aComAppleNews;

  return v0;
}

unint64_t sub_1D68542E8()
{
  result = qword_1EC88CB50;
  if (!qword_1EC88CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB50);
  }

  return result;
}

unint64_t sub_1D6854340()
{
  result = qword_1EC88CB58;
  if (!qword_1EC88CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB58);
  }

  return result;
}

unint64_t sub_1D6854398()
{
  result = qword_1EC88CB60;
  if (!qword_1EC88CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB60);
  }

  return result;
}

unint64_t sub_1D68543F0()
{
  result = qword_1EC88CB68;
  if (!qword_1EC88CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB68);
  }

  return result;
}

uint64_t sub_1D6854444()
{
  sub_1D68560E0();
  v1 = sub_1D725750C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1D68544B4()
{
  result = qword_1EC88CB70;
  if (!qword_1EC88CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB70);
  }

  return result;
}

unint64_t sub_1D6854508()
{
  result = qword_1EC88CB78;
  if (!qword_1EC88CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB78);
  }

  return result;
}

unint64_t sub_1D6854560()
{
  result = qword_1EC88CB80;
  if (!qword_1EC88CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB80);
  }

  return result;
}

unint64_t sub_1D68545B8()
{
  result = qword_1EC88CB88;
  if (!qword_1EC88CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB88);
  }

  return result;
}

unint64_t sub_1D6854648()
{
  result = qword_1EC88CB90;
  if (!qword_1EC88CB90)
  {
    sub_1D68562C4(255, &qword_1EC88CB98, sub_1D6853E70, &type metadata for NewsTabDeepLink, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CB90);
  }

  return result;
}

uint64_t sub_1D68546D8(uint64_t a1)
{
  v2 = sub_1D6853054();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1D6854728()
{
  result = qword_1EC88CBA0;
  if (!qword_1EC88CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBA0);
  }

  return result;
}

uint64_t sub_1D6854784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1D6854848(uint64_t a1)
{
  v2 = sub_1D6854560();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_1D6854898()
{
  result = qword_1EC88CBA8;
  if (!qword_1EC88CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBA8);
  }

  return result;
}

uint64_t sub_1D68548EC()
{
  v0 = sub_1D72582DC();
  __swift_allocate_value_buffer(v0, qword_1EC9BA950);
  __swift_project_value_buffer(v0, qword_1EC9BA950);
  return sub_1D72582AC();
}

uint64_t sub_1D685495C()
{
  sub_1D6856260(0, &qword_1EC88CC00, MEMORY[0x1E695A200], MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EC9BA968);
  v2 = __swift_project_value_buffer(v1, qword_1EC9BA968);
  sub_1D725741C();
  v3 = sub_1D725742C();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 0, 1, v3);
}

uint64_t sub_1D6854A64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D72573BC();
  *a1 = v3;
  return result;
}

void (*sub_1D6854AD8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D72573AC();
  return sub_1D6854B4C;
}

void sub_1D6854B4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1D6854B98()
{
  result = qword_1EC88CBB0;
  if (!qword_1EC88CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBB0);
  }

  return result;
}

uint64_t sub_1D6854BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6856038();
  v5 = sub_1D68560E0();

  return MEMORY[0x1EEDB3C88](a1, v4, a2, v5);
}

unint64_t sub_1D6854C64()
{
  result = qword_1EC88CBB8;
  if (!qword_1EC88CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBB8);
  }

  return result;
}

unint64_t sub_1D6854CBC()
{
  result = qword_1EC88CBC0;
  if (!qword_1EC88CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBC0);
  }

  return result;
}

unint64_t sub_1D6854D14()
{
  result = qword_1EC88CBC8;
  if (!qword_1EC88CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBC8);
  }

  return result;
}

uint64_t sub_1D6854DBC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1D6854E6C()
{
  sub_1D68562C4(0, &qword_1EC88CC08, sub_1D6854B98, &type metadata for OpenStaticFeed, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D68562C4(0, &qword_1EC88CC10, sub_1D6854B98, &type metadata for OpenStaticFeed, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D72574EC();
  sub_1D72574DC();
  swift_getKeyPath();
  sub_1D68561C8();
  sub_1D72574CC();

  sub_1D72574DC();
  sub_1D72574FC();
  return sub_1D72574BC();
}

uint64_t sub_1D685503C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D830 != -1)
  {
    swift_once();
  }

  sub_1D6856260(0, &qword_1EC88CC00, MEMORY[0x1E695A200], MEMORY[0x1E69E6720]);
  v3 = __swift_project_value_buffer(v2, qword_1EC9BA968);

  return sub_1D6856134(v3, a1);
}

uint64_t sub_1D68550E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1D6856038();
  v6 = sub_1D685608C();
  v7 = sub_1D68560E0();
  *v4 = v2;
  v4[1] = sub_1D68551B0;

  return MEMORY[0x1EEDB3C90](a2, v5, v6, v7);
}

uint64_t sub_1D68551B0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1D68552B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6855B54();
  *a1 = result;
  return result;
}

uint64_t sub_1D68552E0(uint64_t a1)
{
  v2 = sub_1D6854B98();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1D685535C()
{
  result = qword_1EC88CBD0;
  if (!qword_1EC88CBD0)
  {
    sub_1D68562C4(255, &qword_1EC88CBD8, sub_1D6854B98, &type metadata for OpenStaticFeed, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBD0);
  }

  return result;
}

uint64_t sub_1D68553EC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6855454()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (v2 != 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D69997E8(0, 1, 1);
    v4 = v24;
    v6 = *(v24 + 16);
    v5 = *(v24 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_1D69997E8((v5 > 1), v6 + 1, 1);
      v4 = v24;
    }

    *(v4 + 16) = v6 + 1;
    *(v4 + v6 + 32) = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D69997E8(0, *(v4 + 16) + 1, 1);
  }

  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    sub_1D69997E8((v7 > 1), v8 + 1, 1);
    v7 = *(v4 + 24);
    v9 = v7 >> 1;
  }

  *(v4 + 16) = v10;
  *(v4 + v8 + 32) = 1;
  v11 = v8 + 2;
  if (v9 < (v8 + 2))
  {
    sub_1D69997E8((v7 > 1), v8 + 2, 1);
  }

  v12 = v4;
  *(v4 + 16) = v11;
  *(v4 + v10 + 32) = 2;
  v13 = *(v4 + 24);
  v14 = v13 >> 1;
  v15 = v8 + 3;
  if ((v13 >> 1) < (v8 + 3))
  {
    sub_1D69997E8((v13 > 1), v8 + 3, 1);
    v12 = v4;
    v13 = *(v4 + 24);
    v14 = v13 >> 1;
  }

  *(v12 + 16) = v15;
  *(v12 + v11 + 32) = 3;
  v16 = v8 + 4;
  if (v14 < (v8 + 4))
  {
    sub_1D69997E8((v13 > 1), v8 + 4, 1);
    v12 = v4;
  }

  *(v12 + 16) = v16;
  *(v12 + v15 + 32) = 4;
  sub_1D69997C8(0, v8 + 4, 0);
  v17 = v3;
  v18 = *(v3 + 16);
  v19 = 32;
  do
  {
    v20 = *(v12 + v19);
    v21 = *(v17 + 24);
    if (v18 >= v21 >> 1)
    {
      sub_1D69997C8((v21 > 1), v18 + 1, 1);
    }

    *(v17 + 16) = v18 + 1;
    *(v17 + v18 + 32) = v20;
    ++v19;
    ++v18;
    --v16;
  }

  while (v16);

  v22 = *(v0 + 8);

  return v22(v17);
}

uint64_t sub_1D6855750()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v8 = *v4++;
      v7 = v8;
      if (v8 || (v9 = [objc_opt_self() currentDevice], v10 = objc_msgSend(v9, sel_userInterfaceIdiom), v9, v10 != 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D69997E8(0, *(v3 + 16) + 1, 1);
        }

        v6 = *(v3 + 16);
        v5 = *(v3 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1D69997E8((v5 > 1), v6 + 1, 1);
        }

        *(v3 + 16) = v6 + 1;
        *(v3 + v6 + 32) = v7;
      }

      --v2;
    }

    while (v2);
  }

  v11 = *(v3 + 16);
  if (v11)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D69997C8(0, v11, 0);
    v12 = v20;
    v13 = *(v20 + 16);
    v14 = 32;
    do
    {
      v15 = *(v3 + v14);
      v16 = *(v20 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_1D69997C8((v16 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      *(v20 + v13 + 32) = v15;
      ++v14;
      ++v13;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v19 + 8);

  return v17(v12);
}

uint64_t sub_1D6855974()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D69997C8(0, 5, 0);
  v1 = v14;
  v3 = *(v14 + 16);
  v2 = *(v14 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    sub_1D69997C8((v2 > 1), v3 + 1, 1);
    v1 = v14;
    v2 = *(v14 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  *(v1 + v3 + 32) = 0;
  v6 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    sub_1D69997C8((v2 > 1), v3 + 2, 1);
    v1 = v14;
    v2 = *(v14 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v6;
  *(v1 + v5 + 32) = 1;
  v7 = v3 + 3;
  if (v4 < (v3 + 3))
  {
    sub_1D69997C8((v2 > 1), v3 + 3, 1);
  }

  v8 = v14;
  *(v14 + 16) = v7;
  *(v14 + v6 + 32) = 2;
  v9 = *(v14 + 24);
  v10 = v9 >> 1;
  v11 = v3 + 4;
  if ((v9 >> 1) < (v3 + 4))
  {
    sub_1D69997C8((v9 > 1), v3 + 4, 1);
    v8 = v14;
    v9 = *(v14 + 24);
    v10 = v9 >> 1;
  }

  *(v8 + 16) = v11;
  *(v8 + v7 + 32) = 3;
  if (v10 < (v3 + 5))
  {
    sub_1D69997C8((v9 > 1), v3 + 5, 1);
    v8 = v14;
  }

  *(v8 + 16) = v3 + 5;
  *(v8 + v11 + 32) = 4;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D6855B54()
{
  v0 = sub_1D725757C();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1D6856260(0, &unk_1EC89CD80, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - v9;
  v11 = sub_1D72582BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v18 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  sub_1D6856260(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v31 - v22;
  v24 = sub_1D72582DC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  sub_1D68562C4(0, &qword_1EC88CBE0, sub_1D6853E70, &type metadata for NewsTabDeepLink, MEMORY[0x1E695A1A0]);
  v31 = v27;
  sub_1D72582AC();
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v12 + 104))(v15, *MEMORY[0x1E6968DF0], v11);
  sub_1D72582EC();
  (*(v25 + 56))(v23, 0, 1, v24);
  v36 = 5;
  v28 = sub_1D725731C();
  v29 = *(*(v28 - 8) + 56);
  v29(v10, 1, 1, v28);
  v29(v32, 1, 1, v28);
  (*(v34 + 104))(v33, *MEMORY[0x1E695A500], v35);
  sub_1D6853054();
  return sub_1D72573FC();
}

unint64_t sub_1D6856038()
{
  result = qword_1EC88CBE8;
  if (!qword_1EC88CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBE8);
  }

  return result;
}

unint64_t sub_1D685608C()
{
  result = qword_1EC88CBF0;
  if (!qword_1EC88CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBF0);
  }

  return result;
}

unint64_t sub_1D68560E0()
{
  result = qword_1EC88CBF8;
  if (!qword_1EC88CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CBF8);
  }

  return result;
}

uint64_t sub_1D6856134(uint64_t a1, uint64_t a2)
{
  sub_1D6856260(0, &qword_1EC88CC00, MEMORY[0x1E695A200], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D68561C8()
{
  if (!qword_1EC88CC18)
  {
    sub_1D68562C4(255, &qword_1EC88CBE0, sub_1D6853E70, &type metadata for NewsTabDeepLink, MEMORY[0x1E695A1A0]);
    v0 = sub_1D7264B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CC18);
    }
  }
}

void sub_1D6856260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D68562C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6856354()
{
  result = qword_1EC88CC30;
  if (!qword_1EC88CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CC30);
  }

  return result;
}

uint64_t sub_1D6856490(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D68564B4, 0, 0);
}

uint64_t sub_1D68564B4()
{
  sub_1D72571DC();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D68565F4;
  v4 = v0[7];

  return v6(v4, &unk_1F5118ED0, v1, v2);
}

uint64_t sub_1D68565F4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D685676C;
  }

  else
  {
    v2 = sub_1D6856708;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6856708()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D685676C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D68567D4()
{
  result = qword_1EC88CC40;
  if (!qword_1EC88CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CC40);
  }

  return result;
}

unint64_t sub_1D685682C()
{
  result = qword_1EC88CC48;
  if (!qword_1EC88CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CC48);
  }

  return result;
}

uint64_t sub_1D68568B8()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BA980);
  __swift_project_value_buffer(v9, qword_1EC9BA980);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D6856A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725E84C();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v33 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedEntity();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EC87D908 != -1)
  {
    swift_once();
  }

  v13 = sub_1D725C42C();
  __swift_project_value_buffer(v13, qword_1EC9BAB18);

  v14 = sub_1D725C3FC();
  v15 = sub_1D7262EDC();

  v16 = os_log_type_enabled(v14, v15);
  v32 = a3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29[2] = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29[1] = a2;
    v20 = v19;
    v34 = v19;
    *v18 = 136315138;
    sub_1D72573BC();
    v21 = *v12;
    v22 = v12[1];

    sub_1D6857FAC(v12);
    v23 = sub_1D5BC5100(v21, v22, &v34);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1D5B42000, v14, v15, "Following feed through intent, id=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1DA6FD500](v20, -1, -1);
    MEMORY[0x1DA6FD500](v18, -1, -1);
  }

  if (qword_1EDF3AB00 != -1)
  {
    swift_once();
  }

  sub_1D72573BC();
  v24 = *(v12 + *(v9 + 32));
  swift_unknownObjectRetain();
  sub_1D6857FAC(v12);
  sub_1D72571DC();
  swift_getObjectType();
  v34 = v24;
  LOWORD(v35) = 256;
  sub_1D5B61274();
  swift_unknownObjectRetain_n();
  sub_1D725D96C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v41 == 2)
  {
    goto LABEL_8;
  }

  if ((v41 & 1) == 0)
  {
    swift_unknownObjectRelease();
    sub_1D6858008();
    swift_allocError();
    *v27 = 1;
    goto LABEL_13;
  }

  sub_1D72571DC();
  swift_getObjectType();
  v34 = v24;
  LOWORD(v35) = 256;
  swift_unknownObjectRetain();
  v26 = sub_1D725D9AC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v26 & 1) == 0)
  {
LABEL_8:
    swift_unknownObjectRelease();
    sub_1D6858008();
    swift_allocError();
    *v25 = 0;
LABEL_13:
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  (*(v30 + 104))(v33, *MEMORY[0x1E69D7FE8], v31);
  sub_1D72571DC();
  v36 = sub_1D725A60C();
  v37 = sub_1D685805C(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
  v38 = 0u;
  v39 = 0u;
  v40 = 1;
  sub_1D725E36C();
  swift_allocObject();
  sub_1D725E34C();
  sub_1D72571DC();
  swift_getObjectType();
  v34 = v24;
  LOWORD(v35) = 256;

  sub_1D725D97C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D6857010@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BA980);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D68570B8()
{
  sub_1D68580A4(0, &qword_1EC88CC88, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D68580A4(0, &qword_1EC88CC90, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D72574EC();
  sub_1D72574DC();
  swift_getKeyPath();
  sub_1D6858108();
  sub_1D72574CC();

  sub_1D72574DC();
  sub_1D72574FC();
  return sub_1D72574BC();
}

uint64_t sub_1D6857264(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D6857294, 0, 0);
}

uint64_t sub_1D6857294()
{
  sub_1D726290C();
  *(v0 + 48) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6857328, v2, v1);
}

uint64_t sub_1D6857328()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_1D6856A98(v3, v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1D68573EC, 0, 0);
}

uint64_t sub_1D68573EC()
{
  sub_1D725733C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6857450@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D68576C0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1D685747C(uint64_t a1)
{
  v2 = sub_1D685754C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1D68574D8()
{
  result = qword_1EC88CC50;
  if (!qword_1EC88CC50)
  {
    sub_1D68580A4(255, &qword_1EC88CC58, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CC50);
  }

  return result;
}

unint64_t sub_1D685754C()
{
  result = qword_1EC88CC60;
  if (!qword_1EC88CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CC60);
  }

  return result;
}

void sub_1D68575A0()
{
  if (!qword_1EC88CD20)
  {
    sub_1D6857618();
    sub_1D685766C();
    v0 = sub_1D725748C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CD20);
    }
  }
}

unint64_t sub_1D6857618()
{
  result = qword_1EC89CE00;
  if (!qword_1EC89CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89CE00);
  }

  return result;
}

unint64_t sub_1D685766C()
{
  result = qword_1EC88CD30;
  if (!qword_1EC88CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CD30);
  }

  return result;
}

uint64_t sub_1D68576C0()
{
  v0 = sub_1D725757C();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v41 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1D6857DF8(0, &unk_1EC89CD80, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = v37 - v9;
  sub_1D6857DF8(0, &unk_1EC88CD40, type metadata accessor for FeedEntity, v3);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v38 = v37 - v12;
  sub_1D6857DF8(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v37[0] = v37 - v15;
  v16 = sub_1D72582BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v25 = sub_1D72582DC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  sub_1D6857E5C(0, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
  v37[1] = v28;
  sub_1D7261FDC();
  sub_1D7258A4C();
  v29 = *MEMORY[0x1E6968DF0];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_1D72582EC();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v30(v20, v29, v16);
  v31 = v37[0];
  sub_1D72582EC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for FeedEntity();
  (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
  v33 = sub_1D725731C();
  v34 = *(*(v33 - 8) + 56);
  v34(v39, 1, 1, v33);
  v34(v40, 1, 1, v33);
  sub_1D6857EF8(0, &qword_1EC88CC68, &qword_1EC88CD60);
  sub_1D725724C();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_1D725723C();
  *&v44 = sub_1D72571EC();
  (*(v42 + 104))(v41, *MEMORY[0x1E695A500], v43);
  sub_1D6857F58();
  sub_1D685805C(&qword_1EDF12F50, type metadata accessor for FeedEntity);
  v35 = sub_1D72573EC();
  sub_1D6857EF8(0, &qword_1EC88CD70, &qword_1EDF439E0);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D725723C();
  sub_1D72571EC();
  sub_1D6857DF8(0, &qword_1EC88CC78, MEMORY[0x1E698AAC8], MEMORY[0x1E6959D18]);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D725723C();
  sub_1D72571EC();
  return v35;
}

void sub_1D6857DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6857E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FeedEntity();
    v7 = sub_1D685805C(&qword_1EDF12F48, type metadata accessor for FeedEntity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6857EF8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B483C4(255, a3);
    v4 = sub_1D72571FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6857F58()
{
  result = qword_1EC88CC70;
  if (!qword_1EC88CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CC70);
  }

  return result;
}

uint64_t sub_1D6857FAC(uint64_t a1)
{
  v2 = type metadata accessor for FeedEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6858008()
{
  result = qword_1EC88CC80;
  if (!qword_1EC88CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CC80);
  }

  return result;
}

uint64_t sub_1D685805C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D68580A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D685754C();
    v7 = a3(a1, &type metadata for FollowIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D6858108()
{
  if (!qword_1EC88CC98)
  {
    sub_1D6857E5C(255, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
    v0 = sub_1D7264B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CC98);
    }
  }
}

unint64_t sub_1D6858198()
{
  result = qword_1EC88CCA0;
  if (!qword_1EC88CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCA0);
  }

  return result;
}

unint64_t sub_1D68581F0()
{
  result = qword_1EC88CCA8;
  if (!qword_1EC88CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCA8);
  }

  return result;
}

unint64_t sub_1D6858248()
{
  result = qword_1EC88CCB0;
  if (!qword_1EC88CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCB0);
  }

  return result;
}

unint64_t sub_1D6858308()
{
  result = qword_1EC88CCB8;
  if (!qword_1EC88CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCB8);
  }

  return result;
}

uint64_t sub_1D6858378()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BA998);
  __swift_project_value_buffer(v9, qword_1EC9BA998);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D6858558()
{
  if (qword_1EC87D908 != -1)
  {
    swift_once();
  }

  v0 = sub_1D725C42C();
  __swift_project_value_buffer(v0, qword_1EC9BAB18);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D5B42000, v1, v2, "Decrease Text Size through intent", v3, 2u);
    MEMORY[0x1DA6FD500](v3, -1, -1);
  }

  if (qword_1EDF3B058 != -1)
  {
    swift_once();
  }

  sub_1D72571DC();
  swift_getObjectType();
  v4 = sub_1D725D9BC();
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1D72571DC();
    swift_getObjectType();
    sub_1D725D9DC();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D6858AAC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1D6858720@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D840 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BA998);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D68587CC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D68587F0, 0, 0);
}

uint64_t sub_1D68587F0()
{
  sub_1D726290C();
  *(v0 + 32) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6858884, v2, v1);
}

uint64_t sub_1D6858884()
{

  sub_1D6858558();

  return MEMORY[0x1EEE6DFA0](sub_1D68573EC, 0, 0);
}

uint64_t sub_1D685893C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D68589F4();
  sub_1D725724C();
  sub_1D725723C();
  result = sub_1D72571EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D68589A8(uint64_t a1)
{
  v2 = sub_1D6858308();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_1D68589F4()
{
  if (!qword_1EC88CD70)
  {
    sub_1D6858A4C();
    v0 = sub_1D72571FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CD70);
    }
  }
}

unint64_t sub_1D6858A4C()
{
  result = qword_1EDF439E0;
  if (!qword_1EDF439E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF439E0);
  }

  return result;
}

unint64_t sub_1D6858AAC()
{
  result = qword_1EC88CCC0;
  if (!qword_1EC88CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCC0);
  }

  return result;
}

unint64_t sub_1D6858B14()
{
  result = qword_1EC88CCC8;
  if (!qword_1EC88CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCC8);
  }

  return result;
}

unint64_t sub_1D6858B6C()
{
  result = qword_1EC88CCD0;
  if (!qword_1EC88CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCD0);
  }

  return result;
}

uint64_t sub_1D6858C14(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D6858C38, 0, 0);
}

uint64_t sub_1D6858C38()
{
  sub_1D72571DC();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D68565F4;
  v4 = v0[7];

  return v6(v4, &unk_1F5118EF8, v1, v2);
}

unint64_t sub_1D6858D7C()
{
  result = qword_1EC88CCF0;
  if (!qword_1EC88CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCF0);
  }

  return result;
}

unint64_t sub_1D6858DD4()
{
  result = qword_1EC88CCF8;
  if (!qword_1EC88CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CCF8);
  }

  return result;
}

uint64_t sub_1D6858E60()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BA9B0);
  __swift_project_value_buffer(v9, qword_1EC9BA9B0);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D6859040(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_1D725E84C();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedEntity();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72573BC();

  sub_1D6857FAC(v10);
  v11 = sub_1D726203C();

  v12 = [v11 fc_isValidTagID];

  if (!v12)
  {
    sub_1D685A180();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  v20 = v6;
  v21 = v2;
  if (qword_1EDF3AB68 != -1)
  {
    swift_once();
  }

  sub_1D72573BC();
  v13 = *&v10[*(v7 + 32)];
  swift_unknownObjectRetain();
  sub_1D6857FAC(v10);
  sub_1D72571DC();
  swift_getObjectType();
  v24 = v13;
  sub_1D5B65AF4();
  sub_1D5B65B58();
  swift_unknownObjectRetain_n();
  sub_1D725D96C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v30 == 2)
  {
    goto LABEL_5;
  }

  if (v30)
  {
    swift_unknownObjectRelease();
    sub_1D685A180();
    swift_allocError();
    *v17 = 1;
    goto LABEL_9;
  }

  sub_1D72571DC();
  swift_getObjectType();
  v24 = v13;
  swift_unknownObjectRetain();
  v18 = sub_1D725D9AC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v18 & 1) == 0)
  {
LABEL_5:
    swift_unknownObjectRelease();
    sub_1D685A180();
    swift_allocError();
    *v14 = 0;
LABEL_9:
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  (*(v22 + 104))(v20, *MEMORY[0x1E69D7FE8], v3);
  sub_1D72571DC();
  v25 = sub_1D725A60C();
  v26 = sub_1D685805C(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  sub_1D725E36C();
  swift_allocObject();
  sub_1D725E34C();
  sub_1D72571DC();
  swift_getObjectType();
  v24 = v13;

  sub_1D725D97C();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1D68594CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D848 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BA9B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D6859574()
{
  sub_1D685A1D4(0, &qword_1EC88CD90, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D685A1D4(0, &qword_1EC88CD98, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D72574EC();
  sub_1D72574DC();
  swift_getKeyPath();
  sub_1D685A238();
  sub_1D72574CC();

  sub_1D72574DC();
  sub_1D72574FC();
  return sub_1D72574BC();
}

uint64_t sub_1D685971C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D685974C, 0, 0);
}

uint64_t sub_1D685974C()
{
  sub_1D726290C();
  *(v0 + 48) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D68597E0, v2, v1);
}

uint64_t sub_1D68597E0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  sub_1D6859040(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1D68573EC, 0, 0);
}

uint64_t sub_1D68598A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D68599F4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1D68598D0(uint64_t a1)
{
  v2 = sub_1D68599A0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1D685992C()
{
  result = qword_1EC88CD00;
  if (!qword_1EC88CD00)
  {
    sub_1D685A1D4(255, &qword_1EC88CD08, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CD00);
  }

  return result;
}

unint64_t sub_1D68599A0()
{
  result = qword_1EC88CD10;
  if (!qword_1EC88CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CD10);
  }

  return result;
}

uint64_t sub_1D68599F4()
{
  v0 = sub_1D725757C();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v41 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1D6857DF8(0, &unk_1EC89CD80, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = v37 - v9;
  sub_1D6857DF8(0, &unk_1EC88CD40, type metadata accessor for FeedEntity, v3);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v38 = v37 - v12;
  sub_1D6857DF8(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v37[0] = v37 - v15;
  v16 = sub_1D72582BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v25 = sub_1D72582DC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  sub_1D6857E5C(0, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
  v37[1] = v28;
  sub_1D7261FDC();
  sub_1D7258A4C();
  v29 = *MEMORY[0x1E6968DF0];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_1D72582EC();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v30(v20, v29, v16);
  v31 = v37[0];
  sub_1D72582EC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for FeedEntity();
  (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
  v33 = sub_1D725731C();
  v34 = *(*(v33 - 8) + 56);
  v34(v39, 1, 1, v33);
  v34(v40, 1, 1, v33);
  sub_1D6857EF8(0, &qword_1EC88CC68, &qword_1EC88CD60);
  sub_1D725724C();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_1D725723C();
  *&v44 = sub_1D72571EC();
  (*(v42 + 104))(v41, *MEMORY[0x1E695A500], v43);
  sub_1D685A12C();
  sub_1D685805C(&qword_1EDF12F50, type metadata accessor for FeedEntity);
  v35 = sub_1D72573EC();
  sub_1D6857DF8(0, &qword_1EC88CC78, MEMORY[0x1E698AAC8], MEMORY[0x1E6959D18]);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D725723C();
  sub_1D72571EC();
  sub_1D6857EF8(0, &qword_1EC88CD70, &qword_1EDF439E0);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D725723C();
  sub_1D72571EC();
  return v35;
}

unint64_t sub_1D685A12C()
{
  result = qword_1EC88CD68;
  if (!qword_1EC88CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CD68);
  }

  return result;
}

unint64_t sub_1D685A180()
{
  result = qword_1EC88CD80;
  if (!qword_1EC88CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CD80);
  }

  return result;
}

void sub_1D685A1D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D68599A0();
    v7 = a3(a1, &type metadata for UnblockIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D685A238()
{
  if (!qword_1EC88CDA0)
  {
    sub_1D6857E5C(255, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
    v0 = sub_1D7264B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CDA0);
    }
  }
}

unint64_t sub_1D685A2C8()
{
  result = qword_1EC88CDA8;
  if (!qword_1EC88CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CDA8);
  }

  return result;
}

unint64_t sub_1D685A320()
{
  result = qword_1EC88CDB0;
  if (!qword_1EC88CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CDB0);
  }

  return result;
}

unint64_t sub_1D685A378()
{
  result = qword_1EC88CDB8;
  if (!qword_1EC88CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CDB8);
  }

  return result;
}

unint64_t sub_1D685A438()
{
  result = qword_1EC88CDC0;
  if (!qword_1EC88CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CDC0);
  }

  return result;
}

uint64_t sub_1D685A48C()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BA9C8);
  __swift_project_value_buffer(v9, qword_1EC9BA9C8);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D685A674(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  sub_1D726290C();
  v2[9] = sub_1D72628FC();
  v4 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D685A70C, v4, v3);
}

uint64_t sub_1D685A70C()
{

  if (qword_1EC87D908 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EC9BAB18);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Opening Saved Feed through intent", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  sub_1D72571DC();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_1D725733C();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D685A8A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D850 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BA9C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D685A950(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D685A674(a1, v4);
}

uint64_t sub_1D685A9F0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D685AAD0();
  sub_1D725724C();
  sub_1D725723C();
  result = sub_1D72571EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D685AA5C(uint64_t a1)
{
  v2 = sub_1D685A438();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_1D685AAD0()
{
  if (!qword_1EC88CDC8)
  {
    sub_1D685AB28();
    v0 = sub_1D72571FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CDC8);
    }
  }
}

unint64_t sub_1D685AB28()
{
  result = qword_1EC88CDD0;
  if (!qword_1EC88CDD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC88CDD0);
  }

  return result;
}

unint64_t sub_1D685AB90()
{
  result = qword_1EC88CDE0;
  if (!qword_1EC88CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CDE0);
  }

  return result;
}

uint64_t sub_1D685AC58(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D685AC7C, 0, 0);
}

uint64_t sub_1D685AC7C()
{
  sub_1D72571DC();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D68565F4;
  v4 = v0[7];

  return v6(v4, &unk_1F5118F20, v1, v2);
}

unint64_t sub_1D685ADC0()
{
  result = qword_1EC88CDF0;
  if (!qword_1EC88CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CDF0);
  }

  return result;
}

unint64_t sub_1D685AE18()
{
  result = qword_1EC88CDF8;
  if (!qword_1EC88CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CDF8);
  }

  return result;
}

uint64_t sub_1D685AEA4()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BA9E0);
  __swift_project_value_buffer(v9, qword_1EC9BA9E0);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D685B084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[2] = a2;
  v4[5] = a1;
  v4[6] = a2;
  v4[3] = a3;
  v4[4] = a4;
  v5 = swift_task_alloc();
  v4[9] = v5;
  v6 = sub_1D685BCB8();
  *v5 = v4;
  v5[1] = sub_1D685B13C;

  return MEMORY[0x1EEDB2D70](&type metadata for BlockIntent, v6);
}

uint64_t sub_1D685B13C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D685B418;
  }

  else
  {
    v2 = sub_1D685B250;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D685B250()
{
  sub_1D726290C();
  *(v0 + 88) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D685B2E4, v2, v1);
}

uint64_t sub_1D685B2E4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[6];

  sub_1D685B430(v3, v2);
  if (v1)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D685B3B4, 0, 0);
  }
}

uint64_t sub_1D685B3B4()
{
  sub_1D725733C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D685B430(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_1D725E84C();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedEntity();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72573BC();

  sub_1D6857FAC(v10);
  v11 = sub_1D726203C();

  v12 = [v11 fc_isValidTagID];

  if (!v12)
  {
    sub_1D685C498();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  v20 = v6;
  v21 = v2;
  if (qword_1EDF3AB68 != -1)
  {
    swift_once();
  }

  sub_1D72573BC();
  v13 = *&v10[*(v7 + 32)];
  swift_unknownObjectRetain();
  sub_1D6857FAC(v10);
  sub_1D72571DC();
  swift_getObjectType();
  v24 = v13;
  sub_1D5B65AF4();
  sub_1D5B65B58();
  swift_unknownObjectRetain_n();
  sub_1D725D96C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v30 != 2)
  {
    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D685C498();
      swift_allocError();
      *v18 = 1;
      goto LABEL_11;
    }

    sub_1D72571DC();
    swift_getObjectType();
    v24 = v13;
    swift_unknownObjectRetain();
    v17 = sub_1D725D9AC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v17)
    {
      (*(v22 + 104))(v20, *MEMORY[0x1E69D7FE8], v3);
      sub_1D72571DC();
      v25 = sub_1D725A60C();
      v26 = sub_1D685805C(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v27 = 0u;
      v28 = 0u;
      v29 = 1;
      sub_1D725E36C();
      swift_allocObject();
      sub_1D725E34C();
      sub_1D72571DC();
      swift_getObjectType();
      v24 = v13;

      sub_1D725D97C();
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease_n();
    }
  }

  swift_unknownObjectRelease();
  sub_1D685C498();
  swift_allocError();
  *v14 = 0;
LABEL_11:
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D685B8BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D858 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BA9E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D685B964()
{
  sub_1D685C4EC(0, &qword_1EC88CE30, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D685C4EC(0, &qword_1EC88CE38, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D72574EC();
  sub_1D72574DC();
  swift_getKeyPath();
  sub_1D685C550();
  sub_1D72574CC();

  sub_1D72574DC();
  sub_1D72574FC();
  return sub_1D72574BC();
}

uint64_t sub_1D685BB08(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D685B084(a1, v4, v5, v6);
}

uint64_t sub_1D685BBBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D685BD0C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1D685BBE8(uint64_t a1)
{
  v2 = sub_1D685BCB8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1D685BC44()
{
  result = qword_1EC88CE00;
  if (!qword_1EC88CE00)
  {
    sub_1D685C4EC(255, &qword_1EC88CE08, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE00);
  }

  return result;
}

unint64_t sub_1D685BCB8()
{
  result = qword_1EC88CE10;
  if (!qword_1EC88CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE10);
  }

  return result;
}

uint64_t sub_1D685BD0C()
{
  v0 = sub_1D725757C();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v41 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1D6857DF8(0, &unk_1EC89CD80, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = v37 - v9;
  sub_1D6857DF8(0, &unk_1EC88CD40, type metadata accessor for FeedEntity, v3);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v38 = v37 - v12;
  sub_1D6857DF8(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v37[0] = v37 - v15;
  v16 = sub_1D72582BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v25 = sub_1D72582DC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  sub_1D6857E5C(0, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
  v37[1] = v28;
  sub_1D7261FDC();
  sub_1D7258A4C();
  v29 = *MEMORY[0x1E6968DF0];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_1D72582EC();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v30(v20, v29, v16);
  v31 = v37[0];
  sub_1D72582EC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for FeedEntity();
  (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
  v33 = sub_1D725731C();
  v34 = *(*(v33 - 8) + 56);
  v34(v39, 1, 1, v33);
  v34(v40, 1, 1, v33);
  sub_1D6857EF8(0, &qword_1EC88CC68, &qword_1EC88CD60);
  sub_1D725724C();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_1D725723C();
  *&v44 = sub_1D72571EC();
  (*(v42 + 104))(v41, *MEMORY[0x1E695A500], v43);
  sub_1D685C444();
  sub_1D685805C(&qword_1EDF12F50, type metadata accessor for FeedEntity);
  v35 = sub_1D72573EC();
  sub_1D6857DF8(0, &qword_1EC88CC78, MEMORY[0x1E698AAC8], MEMORY[0x1E6959D18]);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D725723C();
  sub_1D72571EC();
  sub_1D6857EF8(0, &qword_1EC88CD70, &qword_1EDF439E0);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D725723C();
  sub_1D72571EC();
  return v35;
}

unint64_t sub_1D685C444()
{
  result = qword_1EC88CE18;
  if (!qword_1EC88CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE18);
  }

  return result;
}

unint64_t sub_1D685C498()
{
  result = qword_1EC88CE20;
  if (!qword_1EC88CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE20);
  }

  return result;
}

void sub_1D685C4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D685BCB8();
    v7 = a3(a1, &type metadata for BlockIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D685C550()
{
  if (!qword_1EC88CE40)
  {
    sub_1D6857E5C(255, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
    v0 = sub_1D7264B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CE40);
    }
  }
}

unint64_t sub_1D685C5E0()
{
  result = qword_1EC88CE48;
  if (!qword_1EC88CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE48);
  }

  return result;
}

unint64_t sub_1D685C638()
{
  result = qword_1EC88CE50;
  if (!qword_1EC88CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE50);
  }

  return result;
}

uint64_t sub_1D685C71C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D685C740, 0, 0);
}

uint64_t sub_1D685C740()
{
  sub_1D72571DC();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D68565F4;
  v4 = v0[7];

  return v6(v4, &unk_1F5118F48, v1, v2);
}

unint64_t sub_1D685C884()
{
  result = qword_1EC88CE58;
  if (!qword_1EC88CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE58);
  }

  return result;
}

uint64_t sub_1D685C920()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BA9F8);
  __swift_project_value_buffer(v9, qword_1EC9BA9F8);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D685CB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for FeedEntity();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_1D726290C();
  v3[13] = sub_1D72628FC();
  v5 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D685CBD8, v5, v4);
}

uint64_t sub_1D685CBD8()
{
  v18 = v0;

  if (qword_1EC87D908 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EC9BAB18);

  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    sub_1D72573BC();
    v7 = *v4;
    v8 = v4[1];

    sub_1D6857FAC(v4);
    v9 = sub_1D5BC5100(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Opening feed through intent, id=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v11 = v0[10];
  v10 = v0[11];
  sub_1D72571DC();
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  sub_1D72573BC();
  v14 = *(v10 + *(v11 + 32));
  swift_unknownObjectRetain();
  sub_1D6857FAC(v10);
  (*(v13 + 8))(v14, v12, v13);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_1D725733C();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D685CEA0(uint64_t a1)
{
  v2 = type metadata accessor for FeedEntity();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D685DE64(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D72573CC();
  return sub_1D6857FAC(a1);
}

void (*sub_1D685CF30(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D72573AC();
  return sub_1D6854B4C;
}

unint64_t sub_1D685CFA8()
{
  result = qword_1EC88CE60;
  if (!qword_1EC88CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE60);
  }

  return result;
}

unint64_t sub_1D685D000()
{
  result = qword_1EC88CE68;
  if (!qword_1EC88CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE68);
  }

  return result;
}

unint64_t sub_1D685D058()
{
  result = qword_1EC88CE70;
  if (!qword_1EC88CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE70);
  }

  return result;
}

uint64_t sub_1D685D0E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D860 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BA9F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D685D18C()
{
  sub_1D685DD84(0, &qword_1EC88CEA0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D685DD84(0, &qword_1EC88CEA8, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D72574EC();
  sub_1D72574DC();
  swift_getKeyPath();
  sub_1D685DDE8();
  sub_1D72574CC();

  sub_1D72574DC();
  sub_1D72574FC();
  return sub_1D72574BC();
}

uint64_t sub_1D685D330(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D685CB00(a1, v5, v4);
}

uint64_t sub_1D685D3DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D685D4FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D685D404(uint64_t a1)
{
  v2 = sub_1D685CFA8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1D685D488()
{
  result = qword_1EC88CE78;
  if (!qword_1EC88CE78)
  {
    sub_1D685DD84(255, &qword_1EC88CE80, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE78);
  }

  return result;
}

uint64_t sub_1D685D4FC()
{
  v0 = sub_1D725757C();
  v41 = *(v0 - 8);
  v42 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v40 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D685DBA0(0, &unk_1EC89CD80, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v39 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v38 = v36 - v8;
  sub_1D685DBA0(0, &unk_1EC88CD40, type metadata accessor for FeedEntity);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v37 = v36 - v11;
  sub_1D685DBA0(0, &qword_1EDF3C400, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v36[0] = v36 - v14;
  v15 = sub_1D72582BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v22 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v24 = sub_1D72582DC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  sub_1D685DBF4(0, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
  v36[1] = v27;
  sub_1D7261FDC();
  sub_1D7258A4C();
  v28 = *MEMORY[0x1E6968DF0];
  v29 = *(v16 + 104);
  v29(v19, v28, v15);
  sub_1D72582EC();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v29(v19, v28, v15);
  v30 = v36[0];
  sub_1D72582EC();
  (*(v25 + 56))(v30, 0, 1, v24);
  v31 = type metadata accessor for FeedEntity();
  (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
  v32 = sub_1D725731C();
  v33 = *(*(v32 - 8) + 56);
  v33(v38, 1, 1, v32);
  v33(v39, 1, 1, v32);
  sub_1D685DC90(0, &qword_1EC88CC68, &qword_1EC88CD60);
  sub_1D725724C();
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  sub_1D725723C();
  *&v43 = sub_1D72571EC();
  (*(v41 + 104))(v40, *MEMORY[0x1E695A500], v42);
  sub_1D685DCE8();
  sub_1D685DD3C(&qword_1EDF12F50, type metadata accessor for FeedEntity);
  v34 = sub_1D72573EC();
  sub_1D685DC90(0, &qword_1EC88CE90, &qword_1EC88CE98);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1D725723C();
  sub_1D72571EC();
  return v34;
}

void sub_1D685DBA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D685DBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FeedEntity();
    v7 = sub_1D685DD3C(&qword_1EDF12F48, type metadata accessor for FeedEntity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D685DC90(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B49474(255, a3);
    v4 = sub_1D72571FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D685DCE8()
{
  result = qword_1EC88CE88;
  if (!qword_1EC88CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CE88);
  }

  return result;
}

uint64_t sub_1D685DD3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D685DD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D685CFA8();
    v7 = a3(a1, &type metadata for OpenFeedIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D685DDE8()
{
  if (!qword_1EC88CEB0)
  {
    sub_1D685DBF4(255, &unk_1EC88CD50, MEMORY[0x1E695A1A0]);
    v0 = sub_1D7264B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CEB0);
    }
  }
}

uint64_t sub_1D685DE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D685DECC()
{
  result = qword_1EC88CEB8;
  if (!qword_1EC88CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CEB8);
  }

  return result;
}

unint64_t sub_1D685DF24()
{
  result = qword_1EC88CEC0;
  if (!qword_1EC88CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CEC0);
  }

  return result;
}

unint64_t sub_1D685DFE4()
{
  result = qword_1EC88CEC8;
  if (!qword_1EC88CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CEC8);
  }

  return result;
}

uint64_t sub_1D685E054()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BAA10);
  __swift_project_value_buffer(v9, qword_1EC9BAA10);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D685E234()
{
  if (qword_1EC87D908 != -1)
  {
    swift_once();
  }

  v0 = sub_1D725C42C();
  __swift_project_value_buffer(v0, qword_1EC9BAB18);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D5B42000, v1, v2, "Increase Text Size through intent", v3, 2u);
    MEMORY[0x1DA6FD500](v3, -1, -1);
  }

  if (qword_1EDF3B070 != -1)
  {
    swift_once();
  }

  sub_1D72571DC();
  swift_getObjectType();
  v4 = sub_1D725D9BC();
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1D72571DC();
    swift_getObjectType();
    sub_1D725D9DC();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D685E660();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1D685E3FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D868 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BAA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D685E4A4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D685E4C8, 0, 0);
}

uint64_t sub_1D685E4C8()
{
  sub_1D726290C();
  *(v0 + 32) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D685E55C, v2, v1);
}

uint64_t sub_1D685E55C()
{

  sub_1D685E234();

  return MEMORY[0x1EEE6DFA0](sub_1D68573EC, 0, 0);
}

uint64_t sub_1D685E614(uint64_t a1)
{
  v2 = sub_1D685DFE4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1D685E660()
{
  result = qword_1EC88CED0;
  if (!qword_1EC88CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CED0);
  }

  return result;
}

unint64_t sub_1D685E6C8()
{
  result = qword_1EC88CED8;
  if (!qword_1EC88CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CED8);
  }

  return result;
}

unint64_t sub_1D685E720()
{
  result = qword_1EC88CEE0;
  if (!qword_1EC88CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CEE0);
  }

  return result;
}

unint64_t sub_1D685E778()
{
  result = qword_1EC88CEE8;
  if (!qword_1EC88CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CEE8);
  }

  return result;
}

unint64_t sub_1D685E838()
{
  result = qword_1EC88CEF0;
  if (!qword_1EC88CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CEF0);
  }

  return result;
}

uint64_t sub_1D685E88C()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BAA28);
  __swift_project_value_buffer(v9, qword_1EC9BAA28);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D685EA6C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  sub_1D726290C();
  v2[9] = sub_1D72628FC();
  v4 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D685EB04, v4, v3);
}

uint64_t sub_1D685EB04()
{

  if (qword_1EC87D908 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EC9BAB18);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Opening History Feed through intent", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  sub_1D72571DC();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_1D725733C();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D685ECA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D870 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BAA28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D685ED48(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D685EA6C(a1, v4);
}

uint64_t sub_1D685EDE8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D685EEC8();
  sub_1D725724C();
  sub_1D725723C();
  result = sub_1D72571EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D685EE54(uint64_t a1)
{
  v2 = sub_1D685E838();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_1D685EEC8()
{
  if (!qword_1EC88CEF8)
  {
    sub_1D685EF20();
    v0 = sub_1D72571FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CEF8);
    }
  }
}

unint64_t sub_1D685EF20()
{
  result = qword_1EC88CF00;
  if (!qword_1EC88CF00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC88CF00);
  }

  return result;
}

unint64_t sub_1D685EF88()
{
  result = qword_1EC88CF08;
  if (!qword_1EC88CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CF08);
  }

  return result;
}

unint64_t sub_1D685EFE0()
{
  result = qword_1EC88CF10;
  if (!qword_1EC88CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CF10);
  }

  return result;
}

unint64_t sub_1D685F0A0()
{
  result = qword_1EC88CF18;
  if (!qword_1EC88CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CF18);
  }

  return result;
}

uint64_t sub_1D685F0F4()
{
  v0 = sub_1D72582BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D72582DC();
  __swift_allocate_value_buffer(v9, qword_1EC9BAA40);
  __swift_project_value_buffer(v9, qword_1EC9BAA40);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1D72582EC();
}

uint64_t sub_1D685F2D4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  sub_1D726290C();
  v2[9] = sub_1D72628FC();
  v4 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D685F36C, v4, v3);
}

uint64_t sub_1D685F36C()
{

  if (qword_1EC87D908 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EC9BAB18);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Opening Saved Feed through intent", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  sub_1D72571DC();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_1D725733C();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D685F508@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D878 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72582DC();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BAA40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}