uint64_t sub_1D5EC0788@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v51 = a4;
  v52 = a5;
  v10 = sub_1D7257A4C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v15 = a3[1];
  v17 = a3[2];
  v43 = a3[3];
  v55 = a1;
  v56 = a2;
  sub_1D7257A1C();
  v48 = sub_1D5BF4D9C();
  v18 = sub_1D72639EC();
  v19 = *(v11 + 8);
  v49 = v11 + 8;
  v50 = v10;
  v47 = v19;
  result = (v19)(v14, v10);
  v21 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = *(v18 + 16);
  if (v22 < v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = v17;
  if (v21 == v22)
  {

LABEL_5:
    *a6 = v16;
    a6[1] = v15;
    v24 = v43;
    a6[2] = v23;
    a6[3] = v24;
  }

  v39 = v17;
  v40 = v16;
  v41 = a6;
  v42 = v15;
  v45 = v18 + 32;
  v46 = v18;
  v25 = v17 - 1;
  v44 = v17 - 1;
  while (1)
  {
    if (v25 >= v22)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v21 < 0)
    {
      goto LABEL_26;
    }

    if (v25 >= *(v18 + 16))
    {
      goto LABEL_27;
    }

    v26 = (v45 + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    ++v25;
    v55 = *v26;
    v56 = v28;

    sub_1D725795C();
    v29 = sub_1D7263A4C();
    v31 = v30;
    v47(v14, v50);
    v55 = v29;
    v56 = v31;
    v53 = v51;
    v54 = v52;
    sub_1D5EC10B0();
    sub_1D5EC1104();
    LOBYTE(v29) = sub_1D7261EEC();

    if (v29)
    {
      v32 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v32 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        break;
      }
    }

LABEL_7:

    v18 = v46;
    v21 = v44;
    if (v25 == v22)
    {

      a6 = v41;
      v15 = v42;
      v23 = v39;
      v16 = v40;
      goto LABEL_5;
    }
  }

  v33 = 4 * v32;
  while (1)
  {
    if (sub_1D726233C() == 32 && v35 == 0xE100000000000000)
    {

      goto LABEL_17;
    }

    v34 = sub_1D72646CC();

    if ((v34 & 1) == 0)
    {
      break;
    }

LABEL_17:
    if (v33 == sub_1D726222C() >> 14)
    {
      goto LABEL_7;
    }
  }

  v36 = v42;

  v37 = sub_1D72622EC();

  if (__OFADD__(v37, 1))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v38 = v41;
  *v41 = v40;
  v38[1] = v36;
  v38[2] = v25;
  v38[3] = v37 + 1;
  return result;
}

uint64_t sub_1D5EC0AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1D7257A4C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;
  sub_1D7257A1C();
  v33 = sub_1D5BF4D9C();
  v13 = sub_1D72639EC();
  v14 = *(v9 + 8);
  v34 = v8;
  result = v14(v12, v8);
  v16 = *(v13 + 16);
  if (v16)
  {
    v31 = a3;
    v32 = a4;
    v17 = 0;
    v18 = (v13 + 40);
    while (v17 < *(v13 + 16))
    {
      v19 = *v18;
      v35 = *(v18 - 1);
      v36 = v19;

      sub_1D725795C();
      v20 = sub_1D7263A4C();
      v22 = v21;
      v14(v12, v34);

      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23 || ((v24 = sub_1D726233C(), v26 = v25, , v24 == 35) ? (v27 = v26 == 0xE100000000000000) : (v27 = 0), v27))
      {
      }

      else
      {
        v28 = sub_1D72646CC();

        if ((v28 & 1) == 0)
        {
          v30 = v17 + 1;
          a3 = v31;
          a4 = v32;
          goto LABEL_18;
        }
      }

      ++v17;
      v18 += 2;
      if (v16 == v17)
      {
        a3 = v31;
        a4 = v32;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v30 = 1;
LABEL_18:

    v29 = a3[1];
    *a4 = *a3;
    a4[1] = v29;
    a4[2] = v30;
    a4[3] = 1;
  }

  return result;
}

uint64_t sub_1D5EC0D44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int64x2_t *a5@<X8>)
{
  v34 = a4;
  v30 = a5;
  v31 = a3;
  v7 = sub_1D7257A4C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  sub_1D7257A1C();
  sub_1D5BF4D9C();
  v12 = sub_1D72639EC();
  result = (*(v8 + 8))(v11, v7);
  v32 = *(v12 + 16);
  if (!v32)
  {
LABEL_15:

    v23 = v30;
    v24 = v31[1];
    v30->i64[0] = *v31;
    v23->i64[1] = v24;
    v23[1] = vdupq_n_s64(1uLL);
  }

  v14 = 0;
  v33 = v12 + 32;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v15 = (v33 + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    ++v14;
    v37 = *v15;
    v38 = v16;
    v18 = v34[1];
    v35 = *v34;
    v36 = v18;

    if (sub_1D7263ABC())
    {
      v19 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v19 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        break;
      }
    }

LABEL_3:

    if (v14 == v32)
    {
      goto LABEL_15;
    }
  }

  v20 = 4 * v19;
  while (1)
  {
    if (sub_1D726233C() == 32 && v22 == 0xE100000000000000)
    {

      goto LABEL_11;
    }

    v21 = sub_1D72646CC();

    if ((v21 & 1) == 0)
    {
      break;
    }

LABEL_11:
    if (v20 == sub_1D726222C() >> 14)
    {
      goto LABEL_3;
    }
  }

  v26 = *v31;
  v25 = v31[1];

  v27 = sub_1D72622EC();

  if (__OFADD__(v27, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v28 = v30;
  v30->i64[0] = v26;
  v28[1] = v25;
  v28[2] = v14;
  v28[3] = v27 + 1;
  return result;
}

void sub_1D5EC0FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  switch((a5 >> 59) & 0x1E | (a5 >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 6uLL:
    case 0xBuLL:
    case 0xEuLL:
    case 0xFuLL:
      goto LABEL_3;
    case 2uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xDuLL:

LABEL_3:

      break;
    case 0xCuLL:

      break;
    default:
      return;
  }
}

unint64_t sub_1D5EC10B0()
{
  result = qword_1EDF05868;
  if (!qword_1EDF05868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05868);
  }

  return result;
}

unint64_t sub_1D5EC1104()
{
  result = qword_1EC8984F0[0];
  if (!qword_1EC8984F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC8984F0);
  }

  return result;
}

NewsFeed::FeedTopicRecipeClusteringResult __swiftcall FeedTopicRecipeClusteringResult.init(clusters:orphanedRecipeItems:)(Swift::OpaquePointer clusters, Swift::OpaquePointer orphanedRecipeItems)
{
  v2->_rawValue = clusters._rawValue;
  v2[1]._rawValue = orphanedRecipeItems._rawValue;
  result.orphanedRecipeItems = orphanedRecipeItems;
  result.clusters = clusters;
  return result;
}

void static FeedTopicRecipeClusteringResult.empty.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

void FeedTopicRecipeClusteringResult.scoredRecipes.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
LABEL_19:

    sub_1D6985FA4(v15);
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = v5[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= v5[3] >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
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

      v5 = sub_1D698F9BC(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v7)
        {
          goto LABEL_23;
        }

        sub_1D5EC272C();
        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = v5[2];
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          v5[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_19;
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
}

uint64_t static FeedTopicRecipeClusteringResult.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v3 = *a1;
  v4 = a1[1];
  v5 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  (*(v8 + 16))(&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  v9 = sub_1D7262BBC();
  v10 = *(v3 + 16);
  v64 = v4;
  if (v10)
  {
    v74 = MEMORY[0x1E69E7CC0];

    sub_1D6997C00(0, v10, 0);
    v11 = 0;
    v12 = v74;
    v63 = v3 + 32;
    v13 = v9 + 56;
    v62 = v10;
    while (1)
    {
      v67 = v11;
      v68 = v12;
      v14 = (v63 + 24 * v11);
      v15 = *v14;
      v16 = v14[1];
      v65 = v14[2];
      v66 = v15;
      v17 = *(v16 + 16);
      swift_unknownObjectRetain();
      result = swift_bridgeObjectRetain_n();
      v71 = v17;
      if (v17)
      {
        break;
      }

      v69 = MEMORY[0x1E69E7CC0];
LABEL_23:

      v12 = v68;
      v74 = v68;
      v38 = *(v68 + 16);
      v37 = *(v68 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_1D6997C00((v37 > 1), v38 + 1, 1);
        v12 = v74;
      }

      v39 = v66;
      v11 = v67 + 1;
      *(v12 + 16) = v38 + 1;
      v40 = (v12 + 24 * v38);
      v41 = v69;
      v40[4] = v39;
      v40[5] = v41;
      v40[6] = v65;
      if (v11 == v62)
      {
        v68 = v12;
        v4 = v64;
        goto LABEL_28;
      }
    }

    v19 = 0;
    v70 = v16 + 32;
    v69 = MEMORY[0x1E69E7CC0];
    while (v19 < *(v16 + 16))
    {
      v20 = v16;
      v72 = *(v70 + 16 * v19++);
      v21 = v72;
      v22 = *(&v72 + 1);
      v23 = [v21 identifier];
      v24 = sub_1D726207C();
      v26 = v25;

      if (*(v9 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v27 = sub_1D7264A5C(), v28 = -1 << *(v9 + 32), v29 = v27 & ~v28, ((*(v13 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(v9 + 48) + 16 * v29);
          v32 = *v31 == v24 && v31[1] == v26;
          if (v32 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v13 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v16 = v20;
        if (v19 == v71)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_16:

        v33 = v69;
        result = swift_isUniquelyReferenced_nonNull_native();
        v73 = v33;
        if ((result & 1) == 0)
        {
          result = sub_1D6997BE0(0, *(v33 + 16) + 1, 1);
          v33 = v73;
        }

        v16 = v20;
        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        v36 = v33;
        if (v35 >= v34 >> 1)
        {
          result = sub_1D6997BE0((v34 > 1), v35 + 1, 1);
          v36 = v73;
        }

        *(v36 + 16) = v35 + 1;
        v69 = v36;
        *(v36 + 16 * v35 + 32) = v72;
        if (v19 == v71)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v71 = *(v4 + 16);
  if (v71)
  {
    v42 = 0;
    v70 = v4 + 32;
    v43 = v9 + 56;
    v44 = MEMORY[0x1E69E7CC0];
    while (v42 < *(v4 + 16))
    {
      v72 = *(v70 + 16 * v42++);
      v45 = v72;
      v46 = *(&v72 + 1);
      v47 = [v45 identifier];
      v48 = sub_1D726207C();
      v50 = v49;

      if (*(v9 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v51 = sub_1D7264A5C(), v52 = -1 << *(v9 + 32), v53 = v51 & ~v52, ((*(v43 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
      {
        v54 = ~v52;
        while (1)
        {
          v55 = (*(v9 + 48) + 16 * v53);
          v56 = *v55 == v48 && v55[1] == v50;
          if (v56 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v53 = (v53 + 1) & v54;
          if (((*(v43 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        v4 = v64;
        if (v42 == v71)
        {
          goto LABEL_48;
        }
      }

      else
      {
LABEL_41:

        result = swift_isUniquelyReferenced_nonNull_native();
        v74 = v44;
        if ((result & 1) == 0)
        {
          result = sub_1D6997BE0(0, *(v44 + 16) + 1, 1);
          v44 = v74;
        }

        v4 = v64;
        v58 = *(v44 + 16);
        v57 = *(v44 + 24);
        if (v58 >= v57 >> 1)
        {
          result = sub_1D6997BE0((v57 > 1), v58 + 1, 1);
          v44 = v74;
        }

        *(v44 + 16) = v58 + 1;
        *(v44 + 16 * v58 + 32) = v72;
        if (v42 == v71)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_50:
    __break(1u);
    return result;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_48:
  swift_bridgeObjectRelease_n();

  v59 = v61;
  *v61 = v68;
  v59[1] = v44;
  return result;
}

uint64_t FeedTopicRecipeClusteringResult.stealRecipes(from:count:consumedIdentifiers:)(char **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = v4[1];
  v9 = *(*v4 + 16);
  v56 = *v4;

  v54 = v9;
  if (!v9)
  {
LABEL_34:

    *a1 = v56;
    a1[1] = v51;

    a4 = 0;
LABEL_46:

    return a4;
  }

  v11 = 0;
  v12 = v56 + 32;
  while (1)
  {
    v13 = *(v56 + 16);
    if (v11 >= v13)
    {
      goto LABEL_48;
    }

    v57 = v11;
    v14 = *v12;
    v5 = *(v12 + 8);
    swift_unknownObjectRetain();

    v6 = &selRef_accountStore;
    v15 = [v14 identifier];
    v16 = sub_1D726207C();
    v18 = v17;

    v19 = [a2 identifier];
    v20 = sub_1D726207C();
    v7 = v21;

    if (v16 == v20 && v18 == v7)
    {
      break;
    }

    v23 = sub_1D72646CC();

    swift_unknownObjectRelease();

    if (v23)
    {
      goto LABEL_12;
    }

    v11 = (v57 + 1);
    v12 += 24;
    if (v54 == (v57 + 1))
    {
      goto LABEL_34;
    }
  }

  swift_unknownObjectRelease();

LABEL_12:
  v24 = *(v12 + 8);
  v47 = *(v12 + 16);
  v48 = *v12;
  v25 = *(v24 + 16);
  swift_unknownObjectRetain();

  v55 = v25;
  if (v25)
  {
    v26 = 0;
    v52 = v24 + 32;
    v27 = a4 + 56;
    v7 = MEMORY[0x1E69E7CC0];
    v53 = v24;
    while (1)
    {
      v13 = *(v24 + 16);
      if (v26 >= v13)
      {
        break;
      }

      v6 = v7;
      *v59 = *(v52 + 16 * v26++);
      v28 = v59[0];
      v29 = v59[1];
      v30 = [v28 identifier];
      v31 = sub_1D726207C();
      v5 = v32;

      if (*(a4 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v33 = sub_1D7264A5C(), v34 = -1 << *(a4 + 32), v35 = v33 & ~v34, ((*(v27 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(a4 + 48) + 16 * v35);
          v38 = *v37 == v31 && v37[1] == v5;
          if (v38 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v27 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v24 = v53;
        v7 = v6;
        if (v26 == v55)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_25:

        v7 = v6;
        v61 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997BE0(0, (v6[2] + 1), 1);
          v7 = v61;
        }

        v24 = v53;
        v5 = *(v7 + 16);
        v39 = *(v7 + 24);
        if (v5 >= v39 >> 1)
        {
          sub_1D6997BE0((v39 > 1), v5 + 1, 1);
          v7 = v61;
        }

        *(v7 + 16) = v5 + 1;
        *(v7 + 16 * v5 + 32) = *v59;
        if (v26 == v55)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v13 = *(v7 + 16);
  if (v13 < a3)
  {

    swift_unknownObjectRelease();

    goto LABEL_34;
  }

  v5 = v48;
  if (a3 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = v57;
  if (v13 == a3)
  {

    v10 = a3;
    a4 = v7;
    v13 = a3;
  }

  else
  {
    sub_1D5EC2994(v7, v7 + 32, 0, (2 * a3) | 1);
    v13 = *(v7 + 16);
    if (v13 < a3)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    a4 = v40;
    v10 = a3;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

LABEL_51:
  sub_1D5EC2994(v7, v7 + 32, v10, (2 * v13) | 1);
  v46 = v45;

  v7 = v46;
LABEL_41:
  v61 = v56;
  swift_unknownObjectRetain();
  sub_1D5EC2248(v6, sub_1D5EC3A24, &v60);

  result = swift_unknownObjectRelease();
  v42 = v61;
  v43 = *(v61 + 2);
  if (v43 >= v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v43 >= *(v42 + 3) >> 1)
    {
      v42 = sub_1D698FB08(isUniquelyReferenced_nonNull_native, v43 + 1, 1, v42);
      v61 = v42;
    }

    sub_1D5EC441C(v6, v6, 1, v5, v7, v47);

    swift_unknownObjectRelease_n();
    *a1 = v42;
    a1[1] = v51;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EC1F20@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3AB0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    v11 = v9[5];
    a2[2] = v9[4];
    a2[3] = v11;
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D5EC1FB8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3AC4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 208 * a1);
    v9 = v8[13];
    v10 = v7 - 1;
    a2[10] = v8[12];
    a2[11] = v9;
    a2[12] = v8[14];
    v11 = v8[9];
    a2[6] = v8[8];
    a2[7] = v11;
    v12 = v8[11];
    a2[8] = v8[10];
    a2[9] = v12;
    v13 = v8[5];
    a2[2] = v8[4];
    a2[3] = v13;
    v14 = v8[7];
    a2[4] = v8[6];
    a2[5] = v14;
    v15 = v8[3];
    *a2 = v8[2];
    a2[1] = v15;
    result = memmove(v8 + 2, v8 + 15, 208 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D5EC20BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3AEC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 152 * a1;
    v9 = *(v8 + 144);
    v10 = v7 - 1;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(v8 + 160);
    *(a2 + 144) = *(v8 + 176);
    v11 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v11;
    v12 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v12;
    v13 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v13;
    result = memmove((v8 + 32), (v8 + 184), 152 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D5EC2178@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3B00(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 144 * a1);
    v9 = v8[9];
    v10 = v7 - 1;
    a2[6] = v8[8];
    a2[7] = v9;
    *(a2 + 121) = *(v8 + 153);
    v11 = v8[5];
    a2[2] = v8[4];
    a2[3] = v11;
    v12 = v8[7];
    a2[4] = v8[6];
    a2[5] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    result = memmove(v8 + 2, v8 + 11, 144 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D5EC2248@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v7 + 24 * a1;
    v12 = *(v11 + 32);
    v11 += 32;
    v13 = *(v11 + 16);
    *a3 = v12;
    *(a3 + 16) = v13;
    result = memmove(v11, (v11 + 24), 24 * (v10 - a1));
    *(v7 + 16) = v10;
    *v3 = v7;
  }

  return result;
}

uint64_t sub_1D5EC22EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D5EC3CB8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1D5EC23BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3B78(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 88 * a1;
    v10 = *(v9 + 80);
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(v9 + 96);
    *(a2 + 80) = *(v9 + 112);
    v11 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v11;
    result = memmove((v9 + 32), (v9 + 120), 88 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D5EC2468@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3BA0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 32);
    v12 = *(v9 + 40);
    v13 = *(v9 + 16);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return result;
}

uint64_t sub_1D5EC2528(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3BDC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1D5EC25C8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3C18(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    v11 = v9[5];
    a2[2] = v9[4];
    a2[3] = v11;
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D5EC26A0@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3C40(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 16 * a1;
    v9 = v7 - 1;
    v10 = *(v8 + 40);
    *a2 = *(v8 + 32);
    a2[1] = v10;
    result = memmove((v8 + 32), (v8 + 48), 16 * (v9 - a1));
    *(v5 + 16) = v9;
    *v2 = v5;
  }

  return result;
}

void sub_1D5EC272C()
{
  if (!qword_1EDF15070)
  {
    sub_1D5B5A498(255, &unk_1EDF04660);
    v0 = type metadata accessor for FeedScoredRecipe();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF15070);
    }
  }
}

void *sub_1D5EC2794(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1D5E23B28(*(a1 + 16), 0);
  v6 = sub_1D5E249A8(&v8, (v5 + 4), v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void sub_1D5EC2874(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D5BFB840(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_1D5B49474(0, &qword_1EDF41FC0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D5EC2994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1D5EC272C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D5EC4B98(0, &qword_1EDF022F8, sub_1D5EC272C, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D5EC2ACC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1D5EC4B98(0, a5, a6, MEMORY[0x1E69E6F90]);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D5EC2CBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D5EC4B48(0, &unk_1EDF02208, &type metadata for FeedIssue, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 144);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D5EC2E60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D5EC4B48(0, &unk_1EDF02260, &type metadata for FeedTopicHeadlinesCluster, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D5EC2F60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D5EC4B48(0, &qword_1EDF19A40, &type metadata for FeedScoredHeadline, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D5EC3050(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D5EC4B48(0, &unk_1EDF19A50, &type metadata for FeedJournalEntry, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D5EC3150(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1D5B5A498(0, &qword_1EDF1A710);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D5EC4B48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D5EC3274(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D5EC4B48(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D5EC3378(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D5EC4B48(0, a5, a6, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v7;
      v9[3] = 2 * ((v10 - 32) / 24);
      if (v6 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D5EC3470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D5EC4B48(0, &qword_1EDF19A60, &type metadata for FeedScoredItem, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_1D5EC3570(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = v10 + 48 * a3;
  v15 = (v9 + 32 + 48 * a2);
  v16 = 48 * v14;
  v17 = &v15[48 * v14];
  if (result != v15 || result >= v17)
  {
    result = memmove(result, v15, v16);
  }

  v19 = *(v9 + 16);
  v11 = __OFADD__(v19, v12);
  v20 = v19 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v20;
LABEL_13:
  v21 = a4[4];
  if (a3 > 0)
  {
    v22 = *(a4 + 40);
    v23 = *a4;
    v31 = *(a4 + 1);
    v24 = v31;
    v32 = v23;
    v30 = v21;
    *v10 = v23;
    *(v10 + 16) = v24;
    *(v10 + 32) = v21;
    *(v10 + 40) = v22;
    if (a3 == 1)
    {
      return result;
    }

    a4 = &qword_1EDF43BE0;
    v25 = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69E6720];
    sub_1D5EC4968(&v32, v29, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D5EC4968(&v31, v29, &qword_1EDF43BE0, v25, v26);
    sub_1D5EC48D4(&v30, v29);
    __break(1u);
  }

  v32 = *a4;
  v27 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E6720];
  sub_1D5EC4874(&v32, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D5EC4B48);
  v31 = *(a4 + 1);
  sub_1D5EC4874(&v31, &qword_1EDF43BE0, v27, v28, sub_1D5EC4B48);
  v29[0] = v21;
  return sub_1D5EC4874(v29, &qword_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8], sub_1D5EC4B98);
}

char *sub_1D5EC37A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = a6;
  v8 = a4;
  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v10);
  v19 = a3 - v10;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = v8;
    v16[1] = a5;
    v16[2] = v9;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:
    v26 = v8;
    result = sub_1D5DEA510(v9);
    __break(1u);
    return result;
  }

  return sub_1D5B74328(v9);
}

unint64_t sub_1D5EC38D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_1D5BFB840(0, &qword_1EDF3B530, &qword_1EDF3B540, MEMORY[0x1E69D7CA0], MEMORY[0x1E69E6720]);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  if (a3 >= 1)
  {
    result = sub_1D5EC4AB8(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return sub_1D5EC49D8(a4);
}

uint64_t sub_1D5EC3CB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D7263BFC();
  }

  return sub_1D7263DDC();
}

uint64_t sub_1D5EC3D1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for DebugFormatLayoutTreeItem();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1D7263BFC();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1D7263BFC();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_1D5EC3E4C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5EC3F24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v17 = __OFSUB__(a3, v8);
  v18 = a3 - v8;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18)
  {
    v19 = *(v15 + 16);
    v17 = __OFSUB__(v19, a2);
    v20 = v19 - a2;
    if (!v17)
    {
      result = &v16[4 * a3];
      v21 = (v15 + 32 + 32 * a2);
      if (result != v21 || result >= v21 + 32 * v20)
      {
        result = memmove(result, v21, 32 * v20);
      }

      v23 = *(v15 + 16);
      v17 = __OFADD__(v23, v18);
      v24 = v23 + v18;
      if (!v17)
      {
        *(v15 + 16) = v24;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D5EC4040(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_1D5EC4B98(0, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E62F8]);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1D5EC4134(uint64_t a1, uint64_t a2, unint64_t *a3, ValueMetadata *a4)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = a4;
  v7 = a3;
  v9 = *v5;
  v10 = (v9 + 32 + 224 * a1);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v7, v6);
  v13 = v7 - v6;
  if (v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v9 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_19;
  }

  result = &v10[224 * v7];
  v16 = (v9 + 32 + 224 * a2);
  if (result != v16 || result >= &v16[224 * v15])
  {
    result = memmove(result, v16, 224 * v15);
  }

  v18 = *(v9 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v4, 0xE0uLL);
  a3 = &qword_1EC8803D0;
  a4 = &type metadata for DebugFormatHistory;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1D5EC4968(v4, v20, a3, a4, MEMORY[0x1E69E6BC0]);
    __break(1u);
    return result;
  }

  return sub_1D5EC4968(v4, v20, &qword_1EC8803D0, &type metadata for DebugFormatHistory, MEMORY[0x1E69E6BC0]);
}

unint64_t sub_1D5EC4288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for FormatContentSubgroup();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1D5EC441C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *v6;
  v14 = (v13 + 32 + 24 * result);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v7);
  v16 = a3 - v7;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16)
  {
    v17 = *(v13 + 16);
    v15 = __OFSUB__(v17, a2);
    v18 = v17 - a2;
    if (!v15)
    {
      result = &v14[3 * a3];
      v19 = (v13 + 32 + 24 * a2);
      if (result != v19 || result >= v19 + 24 * v18)
      {
        result = memmove(result, v19, 24 * v18);
      }

      v21 = *(v13 + 16);
      v15 = __OFADD__(v21, v16);
      v22 = v21 + v16;
      if (!v15)
      {
        *(v13 + 16) = v22;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v14 = a4;
    v14[1] = a5;
    v14[2] = a6;
    swift_unknownObjectRetain();

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D5EC4524(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1D5EC45FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a6;
  v25 = a5;
  v12 = *v7;
  v13 = (v12 + 32 + 24 * a1);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v8);
  v16 = a3 - v8;
  if (v15)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = *(v12 + 16);
  v15 = __OFSUB__(v17, a2);
  v18 = v17 - a2;
  if (v15)
  {
    goto LABEL_21;
  }

  result = &v13[3 * a3];
  v19 = (v12 + 32 + 24 * a2);
  if (result != v19 || result >= &v19[24 * v18])
  {
    result = memmove(result, v19, 24 * v18);
  }

  v21 = *(v12 + 16);
  v15 = __OFADD__(v21, v16);
  v22 = v21 + v16;
  if (v15)
  {
    goto LABEL_22;
  }

  *(v12 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  *v13 = a4;
  v13[1] = v25;
  v13[2] = v6;
  if (a3 != 1)
  {
LABEL_23:
    swift_unknownObjectRetain();
    v24 = v25;
    result = v6;
    __break(1u);
    return result;
  }

  v23 = v6;
  swift_unknownObjectRetain();

  return v25;
}

uint64_t sub_1D5EC4770(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D7263BFC();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5EC4874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5EC48D4(uint64_t a1, uint64_t a2)
{
  sub_1D5EC4B98(0, &qword_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EC4968(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1D5EC4B48(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D5EC49D8(uint64_t a1)
{
  sub_1D5EC4A34();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5EC4A34()
{
  if (!qword_1EC8803E8)
  {
    sub_1D5BFB840(255, &qword_1EDF3B530, &qword_1EDF3B540, MEMORY[0x1E69D7CA0], MEMORY[0x1E69E6720]);
    v0 = sub_1D7263E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8803E8);
    }
  }
}

uint64_t sub_1D5EC4AB8(uint64_t a1, uint64_t a2)
{
  sub_1D5BFB840(0, &qword_1EDF3B530, &qword_1EDF3B540, MEMORY[0x1E69D7CA0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5EC4B48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5EC4B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5EC4C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D5B69D90(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5EC4C54(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D5C5E034();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_1D5EC4CAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + 48 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    *a4 = *v8;
    a4[1] = v9;
    a4[2] = v10;
    a4[3] = v11;
    a4[4] = v12;
    a4[5] = v13;
  }

  else
  {
    result = 0.0;
    *(a4 + 1) = 0u;
    *(a4 + 2) = 0u;
    *a4 = 0u;
  }

  return result;
}

void *sub_1D5EC4D50(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D726400C();

    if (v4)
    {
      sub_1D5B5A498(0, &qword_1EDF1A690);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1D6D62C14(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

unint64_t sub_1D5EC4E14@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_1D5B69D90(result, a2), (v6 & 1) != 0))
  {
    v7 = (*(a3 + 56) + 24 * result);
    v8 = v7[1];
    v9 = v7[2];
    *a4 = *v7;
    a4[1] = v8;
    a4[2] = v9;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

void *sub_1D5EC4E90(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1D726400C();

    if (v3)
    {
      sub_1D5B5A498(0, qword_1EDF1A6A0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1D6D62E0C(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1D5EC4F58(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D5C5E034();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5EC4FA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_1D5B69D90(result, a2), (v6 & 1) != 0))
  {
    v7 = (*(a3 + 56) + 24 * result);
    v8 = v7[1];
    v9 = v7[2];
    *a4 = *v7;
    a4[1] = v8;
    a4[2] = v9;

    return sub_1D5C07390(v8);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

uint64_t FeedQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5EC631C(0, &qword_1EC8803F0, sub_1D5EC50C0, MEMORY[0x1E6959D18]);
  sub_1D725724C();
  sub_1D725723C();
  result = sub_1D72571EC();
  *a1 = result;
  return result;
}

unint64_t sub_1D5EC50C0()
{
  result = qword_1EDF412B0;
  if (!qword_1EDF412B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF412B0);
  }

  return result;
}

uint64_t FeedQuery.entities(for:)(uint64_t a1)
{
  v2[8] = a1;
  sub_1D5EC631C(0, &unk_1EC88CD40, type metadata accessor for FeedEntity, MEMORY[0x1E69E6720]);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for FeedEntity();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[13] = v4;
  v2[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D5EC5250, 0, 0);
}

uint64_t sub_1D5EC5250()
{
  v1 = v0[8];
  sub_1D72571DC();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[15] = (*(v3 + 16))(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1D5EC533C;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1D5EC533C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1D5EC5A20;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_1D5EC5460;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5EC5460()
{
  v60 = v0;
  isUniquelyReferenced_nonNull_native = *(v0 + 56);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_29:
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v54 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v56 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v4 = MEMORY[0x1E69E7CC8];
      v52 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v56)
        {
          v6 = MEMORY[0x1DA6FB460](v3, isUniquelyReferenced_nonNull_native);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v3 >= *(v54 + 16))
          {
            goto LABEL_26;
          }

          v6 = *(isUniquelyReferenced_nonNull_native + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        v8 = [v6 identifier];
        v9 = sub_1D726207C();
        v11 = v10;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v4;
        v12 = sub_1D5B69D90(v9, v11);
        v14 = v4[2];
        v15 = (v13 & 1) == 0;
        v16 = __OFADD__(v14, v15);
        v17 = v14 + v15;
        if (v16)
        {
          goto LABEL_27;
        }

        v18 = v13;
        if (v4[3] < v17)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v23 = v12;
        sub_1D6D7D8F8();
        v12 = v23;
        if (v18)
        {
LABEL_4:
          v5 = v12;

          v4 = v59;
          *(v59[7] + 8 * v5) = v6;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_15:
        v4 = v59;
        v59[(v12 >> 6) + 8] |= 1 << v12;
        v20 = (v4[6] + 16 * v12);
        *v20 = v9;
        v20[1] = v11;
        *(v4[7] + 8 * v12) = v6;
        swift_unknownObjectRelease();
        v21 = v4[2];
        v16 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v16)
        {
          goto LABEL_28;
        }

        v4[2] = v22;
LABEL_5:
        ++v3;
        isUniquelyReferenced_nonNull_native = v52;
        if (v7 == v2)
        {
          goto LABEL_31;
        }
      }

      sub_1D6D6630C(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1D5B69D90(v9, v11);
      if ((v18 & 1) != (v19 & 1))
      {

        return sub_1D726493C();
      }

LABEL_14:
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v25 = v58[8];

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v58[11];
    v53 = v27;
    v55 = (v27 + 48);
    v57 = (v27 + 56);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = (v58[8] + 40);
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v32 = v4[2];

      if (v32 && (sub_1D5B69D90(v31, v30), (v33 & 1) != 0))
      {
        v34 = v58[9];
        v35 = swift_unknownObjectRetain();
        FeedEntity.init(from:)(v35, v34);
        v36 = 0;
      }

      else
      {
        if (qword_1EC87D908 != -1)
        {
          swift_once();
        }

        v37 = sub_1D725C42C();
        __swift_project_value_buffer(v37, qword_1EC9BAB18);

        v38 = sub_1D725C3FC();
        v39 = sub_1D7262EDC();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = v28;
          v42 = swift_slowAlloc();
          v59 = v42;
          *v40 = 136446210;
          *(v40 + 4) = sub_1D5BC5100(v31, v30, &v59);
          _os_log_impl(&dword_1D5B42000, v38, v39, "FeedQuery, tag not found: %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v43 = v42;
          v28 = v41;
          MEMORY[0x1DA6FD500](v43, -1, -1);
          MEMORY[0x1DA6FD500](v40, -1, -1);
        }

        v36 = 1;
      }

      v45 = v58[9];
      v44 = v58[10];
      (*v57)(v45, v36, 1, v44);

      if ((*v55)(v45, 1, v44) == 1)
      {
        sub_1D5EC5FB0(v58[9]);
      }

      else
      {
        v47 = v58[12];
        v46 = v58[13];
        sub_1D5EC603C(v58[9], v46);
        sub_1D5EC603C(v46, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D698FB1C(0, v28[2] + 1, 1, v28);
        }

        v49 = v28[2];
        v48 = v28[3];
        if (v49 >= v48 >> 1)
        {
          v28 = sub_1D698FB1C(v48 > 1, v49 + 1, 1, v28);
        }

        v50 = v58[12];
        v28[2] = v49 + 1;
        sub_1D5EC603C(v50, v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v49);
      }

      v29 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v51 = v58[1];

  return v51(v28);
}

uint64_t sub_1D5EC5A20()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EC5AB4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5EC631C(0, &qword_1EC8803F0, sub_1D5EC50C0, MEMORY[0x1E6959D18]);
  sub_1D725724C();
  sub_1D725723C();
  result = sub_1D72571EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5EC5B50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5BAFDD0;

  return FeedQuery.entities(for:)(a1);
}

uint64_t sub_1D5EC5BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64684;

  return MEMORY[0x1EEDB2EB0](a1, a2, a3);
}

uint64_t sub_1D5EC5C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5BAF844;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1D5EC5D58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1D5EC6438();
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1D5EC5E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64684;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

char *sub_1D5EC5EC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5EC648C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D5EC5FB0(uint64_t a1)
{
  sub_1D5EC631C(0, &unk_1EC88CD40, type metadata accessor for FeedEntity, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5EC603C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5EC60A4()
{
  result = qword_1EC8803F8;
  if (!qword_1EC8803F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8803F8);
  }

  return result;
}

unint64_t sub_1D5EC60FC()
{
  result = qword_1EC880400;
  if (!qword_1EC880400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880400);
  }

  return result;
}

unint64_t sub_1D5EC6188()
{
  result = qword_1EC880408;
  if (!qword_1EC880408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880408);
  }

  return result;
}

uint64_t sub_1D5EC6210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeedEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5EC6258()
{
  result = qword_1EC880410;
  if (!qword_1EC880410)
  {
    sub_1D5EC631C(255, &qword_1EC880418, type metadata accessor for FeedEntity, MEMORY[0x1E69E62F8]);
    sub_1D5EC6210(&qword_1EDF12F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880410);
  }

  return result;
}

void sub_1D5EC631C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_1D5EC6438()
{
  result = qword_1EC895CC0;
  if (!qword_1EC895CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895CC0);
  }

  return result;
}

void sub_1D5EC648C()
{
  if (!qword_1EDF194D0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF194D0);
    }
  }
}

uint64_t sub_1D5EC64DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_1D725ABEC();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1D5C8A498(0, &qword_1EDF17610, sub_1D5B7AF6C, MEMORY[0x1E69D6C08]);
  v3[10] = swift_task_alloc();
  v5 = sub_1D725A9BC();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EC6664, 0, 0);
}

uint64_t sub_1D5EC6664()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = objc_opt_self();
  v0[15] = v4;
  v5 = [v4 cachedOnlyCachePolicy];
  v0[16] = v5;
  v9 = (*(v3 + 16) + **(v3 + 16));
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1D5EC67CC;
  v7 = v0[6];

  return v9(v7, v5, v2, v3);
}

uint64_t sub_1D5EC67CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1D5EC6EA0;
  }

  else
  {

    v4 = sub_1D5EC68E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1D5EC68E8()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C8A65C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v18 = *(v0 + 144) + 32;
  v19 = (*(v0 + 64) + 16);
  v20 = v1 & 0xC000000000000001;
  v5 = v23;
  v21 = *(v0 + 96);
  v22 = v2;
  do
  {
    if (v20)
    {
      v6 = MEMORY[0x1DA6FB460](v4, *(v0 + 144));
    }

    else
    {
      v6 = *(v18 + 8 * v4);
    }

    *(v0 + 24) = v6;
    v7 = qword_1EDF17CE8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = __swift_project_value_buffer(v10, qword_1EDF17CF0);
    (*v19)(v9, v11, v10);
    v12 = swift_task_alloc();
    *v12 = sub_1D5B7AF6C();
    swift_getKeyPath();

    sub_1D725BF6C();
    sub_1D725A9AC();

    v14 = *(v23 + 16);
    v13 = *(v23 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D5C8A65C(v13 > 1, v14 + 1, 1);
    }

    v15 = *(v0 + 112);
    v16 = *(v0 + 88);
    ++v4;
    *(v23 + 16) = v14 + 1;
    (*(v21 + 32))(v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v14, v15, v16);
  }

  while (v22 != v4);

LABEL_16:
  **(v0 + 32) = v5;

  v17 = *(v0 + 8);

  return v17();
}

size_t sub_1D5EC6BB8()
{
  v1 = *(v0 + 176);
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v17 = *(v0 + 152);

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C8A65C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v19 = *(v0 + 176) + 32;
  v20 = (*(v0 + 64) + 16);
  v21 = v1 & 0xC000000000000001;
  v5 = v24;
  v22 = *(v0 + 96);
  v23 = v2;
  do
  {
    if (v21)
    {
      v6 = MEMORY[0x1DA6FB460](v4, *(v0 + 176));
    }

    else
    {
      v6 = *(v19 + 8 * v4);
    }

    *(v0 + 16) = v6;
    v7 = qword_1EDF17CE8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = __swift_project_value_buffer(v10, qword_1EDF17CF0);
    (*v20)(v9, v11, v10);
    v12 = swift_task_alloc();
    *v12 = sub_1D5B7AF6C();
    swift_getKeyPath();

    sub_1D725BF6C();
    sub_1D725A9AC();

    v14 = *(v24 + 16);
    v13 = *(v24 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D5C8A65C(v13 > 1, v14 + 1, 1);
    }

    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    ++v4;
    *(v24 + 16) = v14 + 1;
    (*(v22 + 32))(v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v14, v15, v16);
  }

  while (v23 != v4);

LABEL_16:
  **(v0 + 32) = v5;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D5EC6EA0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);

  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v5 = [v1 defaultCachePolicy];
  *(v0 + 160) = v5;
  v9 = (*(v4 + 16) + **(v4 + 16));
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1D5EC7008;
  v7 = *(v0 + 48);

  return v9(v7, v5, v3, v4);
}

uint64_t sub_1D5EC7008(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_1D5EC7124;
  }

  else
  {

    v4 = sub_1D5EC6BB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5EC7124()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5EC71C8()
{
  v1 = *v0;

  v3 = sub_1D5E1E408(v2);
  sub_1D5C8A498(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  return sub_1D725BA6C();
}

uint64_t sub_1D5EC727C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D5EC64DC(a1, v5, v4);
}

uint64_t static FormatActivityItemsData.headline(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D61881BC(12);
  *a2 = a1;
  *(a2 + 8) = v4 & 1;

  return swift_unknownObjectRetain();
}

id static FormatActivityItemsData.issue(_:options:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1D61881BC(12) & 1 | 0x10;
  *a2 = a1;
  *(a2 + 8) = v3;

  return a1;
}

id static FormatActivityItemsData.recipe(_:options:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1D61881BC(12) & 1 | 0x20;
  *a2 = a1;
  *(a2 + 8) = v3;

  return a1;
}

uint64_t sub_1D5EC7430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 9))
  {
    return (*a1 + 118);
  }

  v3 = ((*(a1 + 8) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 8) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5EC7484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *(result + 8) = 0;
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

void *sub_1D5EC750C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FeedRecipe.State();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D5D504D4(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v159 - v10;
  v12 = type metadata accessor for FeedHeadline(0);
  v169 = *(v12 - 8);
  *&v170 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504D4(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v7);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v159 - v26;
  v28 = *(a2 + 8);
  if (v28 > 0xFD)
  {
    v29 = MEMORY[0x1E69E6F90];
    sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    v170 = xmmword_1D7273AE0;
    *(v30 + 16) = xmmword_1D7273AE0;
    sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v29);
    sub_1D5EA74B8();
    v32 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v170;
    v34 = (v33 + v32);
    v35 = 1701736270;
    v36 = 0xE400000000000000;
    goto LABEL_3;
  }

  v42 = v28 >> 4;
  if (v28 >> 4 > 4)
  {
    if (v28 >> 4 > 7)
    {
      if (v42 == 8)
      {
        v102 = MEMORY[0x1E69E6F90];
        sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        v170 = xmmword_1D7273AE0;
        *(v30 + 16) = xmmword_1D7273AE0;
        sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v102);
        sub_1D5EA74B8();
        v45 = (*(*(v103 - 8) + 80) + 32) & ~*(*(v103 - 8) + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v170;
        v47 = 0x6F635320656E694CLL;
        v48 = (v46 + v45);
        v49 = 0xEA00000000006572;
      }

      else
      {
        v65 = MEMORY[0x1E69E6F90];
        if (v42 == 9)
        {
          sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          v170 = xmmword_1D7273AE0;
          *(v30 + 16) = xmmword_1D7273AE0;
          sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v65);
          sub_1D5EA74B8();
          v45 = (*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80);
          v67 = swift_allocObject();
          v46 = v67;
          *(v67 + 16) = v170;
          v47 = 0x52207972756A6E49;
          v49 = 0xED000074726F7065;
        }

        else
        {
          sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          v170 = xmmword_1D7273AE0;
          *(v30 + 16) = xmmword_1D7273AE0;
          sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v65);
          sub_1D5EA74B8();
          v45 = (*(*(v128 - 8) + 80) + 32) & ~*(*(v128 - 8) + 80);
          v67 = swift_allocObject();
          v46 = v67;
          *(v67 + 16) = v170;
          v47 = 0x79616C502079654BLL;
          v49 = 0xEB00000000737265;
        }

        v48 = (v67 + v45);
      }
    }

    else if (v42 == 5)
    {
      v100 = MEMORY[0x1E69E6F90];
      sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      v170 = xmmword_1D7273AE0;
      *(v30 + 16) = xmmword_1D7273AE0;
      sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v100);
      sub_1D5EA74B8();
      v45 = (*(*(v101 - 8) + 80) + 32) & ~*(*(v101 - 8) + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v170;
      v47 = 0x676E69646E617453;
      v48 = (v46 + v45);
      v49 = 0xE800000000000000;
    }

    else
    {
      v43 = MEMORY[0x1E69E6F90];
      if (v42 == 6)
      {
        sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        v170 = xmmword_1D7273AE0;
        *(v30 + 16) = xmmword_1D7273AE0;
        sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v43);
        sub_1D5EA74B8();
        v45 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v170;
        v47 = 0x74656B63617242;
        v48 = (v46 + v45);
        v49 = 0xE700000000000000;
      }

      else
      {
        sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        v170 = xmmword_1D7273AE0;
        *(v30 + 16) = xmmword_1D7273AE0;
        sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v43);
        sub_1D5EA74B8();
        v45 = (*(*(v127 - 8) + 80) + 32) & ~*(*(v127 - 8) + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v170;
        v47 = 0x726F635320786F42;
        v48 = (v46 + v45);
        v49 = 0xE900000000000065;
      }
    }

    sub_1D711F844(1701869908, 0xE400000000000000, v47, v49, v48);
    v129 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v129 - 8) + 56))(v46 + v45, 0, 1, v129);
    sub_1D6795150(0x7974697669746341, 0xEE00736D65744920, 0, 0, v46, &v176);
    swift_setDeallocating();
    sub_1D5EC9534(v46 + v45, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(v30 + 56) = &type metadata for FormatInspectionGroup;
    *(v30 + 64) = &off_1F518B2C0;
    v38 = swift_allocObject();
    *(v30 + 32) = v38;
    v39 = v30 + 32;
    v40 = v176;
    v41 = v177;
    goto LABEL_30;
  }

  v50 = *a2;
  if (v28 >> 4 <= 1)
  {
    v168 = v28;
    if (v42)
    {
      v106 = MEMORY[0x1E69E6F90];
      sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1D7273AE0;
      sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v106);
      sub_1D5EA74B8();
      *&v170 = v108;
      v109 = *(*(v108 - 8) + 72);
      v110 = (*(*(v108 - 8) + 80) + 32) & ~*(*(v108 - 8) + 80);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1D7270C10;
      v112 = (v111 + v110);
      v113 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      sub_1D5EC9444(v50, v168);
      v114 = [v50 identifier];
      v115 = sub_1D726207C();
      v117 = v116;

      *&v171 = v50;
      *(&v171 + 1) = v115;
      *&v172 = v117;
      WORD4(v172) = 0;
      *&v173 = 0;
      BYTE8(v173) = 0;
      *&v174 = 1;
      *(&v174 + 1) = v113;
      LOBYTE(v175[0]) = 0;
      *(v175 + 8) = xmmword_1D7279980;
      *(&v175[1] + 8) = 0u;
      *(&v175[2] + 8) = 0u;
      *(&v175[3] + 1) = 0;
      *&v175[4] = 5;
      BYTE8(v175[4]) = 0;
      nullsub_1();
      v181 = v175[1];
      v182 = v175[2];
      v183[0] = v175[3];
      *(v183 + 9) = *(&v175[3] + 9);
      v178 = v173;
      v179 = v174;
      v180 = v175[0];
      v176 = v171;
      v177 = v172;
      sub_1D711EB00(0x6575737349, 0xE500000000000000, &v176, v112);
      v118 = type metadata accessor for FormatInspectionItem(0);
      v119 = *(*(v118 - 8) + 56);
      v119(v112, 0, 1, v118);
      v120 = &v112[v109];
      v121 = *(v118 + 24);
      v120[v121] = v168 & 1;
      v122 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v122 - 8) + 56))(&v120[v121], 0, 1, v122);
      *v120 = xmmword_1D727C310;
      *(v120 + 2) = 0;
      *(v120 + 3) = 0;
      v123 = &v120[*(v118 + 28)];
      *v123 = 0;
      *(v123 + 1) = 0;
      v123[16] = -1;
      v119(v120, 0, 1, v118);
      sub_1D6795150(0x7974697669746341, 0xEE00736D65744920, 0, 0, v111, v184);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v107 + 56) = &type metadata for FormatInspectionGroup;
      *(v107 + 64) = &off_1F518B2C0;
      v124 = swift_allocObject();
      *(v107 + 32) = v124;
      v125 = v184[1];
      *(v124 + 16) = v184[0];
      *(v124 + 32) = v125;
      *(v124 + 48) = v185;
      v126 = sub_1D7073500(v107);
      swift_setDeallocating();
      sub_1D5EC9534(v107 + 32, sub_1D5E4F358);
    }

    else
    {
      v68 = MEMORY[0x1E69E6F90];
      sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v166 = swift_allocObject();
      *(v166 + 16) = xmmword_1D7273AE0;
      sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v68);
      sub_1D5EA74B8();
      v165 = v69;
      v70 = *(*(v69 - 8) + 72);
      v163 = (*(*(v69 - 8) + 80) + 32) & ~*(*(v69 - 8) + 80);
      v164 = v70;
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_1D7270C10;
      v71 = sub_1D726045C();
      (*(*(v71 - 8) + 56))(v23, 1, 1, v71);
      v72 = v16[6];
      v73 = type metadata accessor for SharedItem();
      (*(*(v73 - 8) + 56))(&v19[v72], 1, 1, v73);
      *v19 = 258;
      v162 = v16[7];
      v19[v162] = 1;
      v160 = v16[8];
      v19[v160] = 0;
      v159[0] = v16[9];
      v19[v159[0]] = 0;
      v161 = v16[10];
      v19[v161] = 0;
      v74 = v170;
      *&v15[*(v170 + 48)] = xmmword_1D727C330;
      v159[1] = swift_getObjectType();
      v75 = [v50 identifier];
      v76 = v50;
      v77 = sub_1D726207C();
      v79 = v78;

      *v15 = v77;
      *(v15 + 1) = v79;
      v80 = v76;
      *(v15 + 5) = v76;
      *(v15 + 6) = 0;
      sub_1D5EC94CC(v23, &v15[v74[11]], sub_1D5D504A0);
      sub_1D5EC94CC(v19, &v15[v74[10]], type metadata accessor for FeedHeadline.State);
      *&v15[v74[14]] = 0;
      v15[56] = 0;
      sub_1D5EC9444(v76, v168);
      v81 = [v76 title];
      if (v81)
      {
        v82 = v81;
        v83 = [v81 ne_isNaturallyRTL];

        v84 = v83;
        v80 = v76;
      }

      else
      {
        v84 = 0;
      }

      v143 = v169;
      v144 = (v167 + v163);
      *(v15 + 2) = v84;
      v15[24] = 0;
      sub_1D5BC7BD4(&v176);
      if (v19[v160] - 1 <= 1 && (v176 & 0x1000) == 0)
      {
        *&v176 = v176 | 0x1000;
      }

      v145 = v19[v161];
      v146 = 0x80000000;
      if (!v19[v161])
      {
        v146 = 0x100000000;
      }

      if ((v176 & v146) != 0)
      {
        v146 = 0;
      }

      *(v15 + 4) = v176 | v146;
      if (v19[v162])
      {
        if (v19[v159[0]])
        {
          sub_1D5EC9534(v19, type metadata accessor for FeedHeadline.State);
          sub_1D5EC9534(v23, sub_1D5D504A0);
          v147 = 1;
        }

        else if (v145)
        {
          v158 = [v80 sourceChannel];
          sub_1D5EC9534(v19, type metadata accessor for FeedHeadline.State);
          sub_1D5EC9534(v23, sub_1D5D504A0);
          v147 = 2;
          if (v158)
          {
            v147 = v158;
          }
        }

        else
        {
          sub_1D5EC9534(v19, type metadata accessor for FeedHeadline.State);
          sub_1D5EC9534(v23, sub_1D5D504A0);
          v147 = 2;
        }
      }

      else
      {
        sub_1D5EC9534(v19, type metadata accessor for FeedHeadline.State);
        sub_1D5EC9534(v23, sub_1D5D504A0);
        v147 = 0;
      }

      v148 = v170;
      *&v15[*(v170 + 52)] = v147;
      sub_1D5EC9594(v15, v27);
      (*(v143 + 7))(v27, 0, 1, v148);
      sub_1D711E4BC(0x656E696C64616548, 0xE800000000000000, v27, v144);
      v149 = type metadata accessor for FormatInspectionItem(0);
      v150 = *(*(v149 - 8) + 56);
      v150(v144, 0, 1, v149);
      v151 = &v144[v164];
      v152 = *(v149 + 24);
      v144[v164 + v152] = v168 & 1;
      v153 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v153 - 8) + 56))(&v151[v152], 0, 1, v153);
      *v151 = xmmword_1D727C310;
      *(v151 + 2) = 0;
      *(v151 + 3) = 0;
      v154 = &v151[*(v149 + 28)];
      *v154 = 0;
      *(v154 + 1) = 0;
      v154[16] = -1;
      v150(v151, 0, 1, v149);
      sub_1D6795150(0x7974697669746341, 0xEE00736D65744920, 0, 0, v167, &v176);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v155 = v166;
      *(v166 + 56) = &type metadata for FormatInspectionGroup;
      *(v155 + 64) = &off_1F518B2C0;
      v156 = swift_allocObject();
      *(v155 + 32) = v156;
      v157 = v177;
      *(v156 + 16) = v176;
      *(v156 + 32) = v157;
      *(v156 + 48) = v178;
      v126 = sub_1D7073500(v155);
      swift_setDeallocating();
      sub_1D5EC9534(v155 + 32, sub_1D5E4F358);
    }
  }

  else
  {
    if (v42 != 2)
    {
      if (v42 == 3)
      {
        v51 = v28;
        v52 = MEMORY[0x1E69E6F90];
        sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D7273AE0;
        sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v52);
        sub_1D5EA74B8();
        *&v170 = v53;
        v54 = *(*(v53 - 8) + 72);
        v55 = v50;
        v56 = (*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1D7270C10;
        v58 = (v57 + v56);
        sub_1D5EC9444(v55, v51);
        FeedPuzzle.init(puzzle:)(v55, &v176);
        sub_1D711F45C(0x656C7A7A7550, 0xE600000000000000, &v176, v58);
        v59 = type metadata accessor for FormatInspectionItem(0);
        v60 = *(*(v59 - 8) + 56);
        v60(v58, 0, 1, v59);
        v61 = &v58[v54];
        v62 = *(v59 + 24);
        v61[v62] = v51 & 1;
        v63 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v63 - 8) + 56))(&v61[v62], 0, 1, v63);
        *v61 = xmmword_1D727C310;
        *(v61 + 2) = 0;
        *(v61 + 3) = 0;
        v64 = &v61[*(v59 + 28)];
        *v64 = 0;
        *(v64 + 1) = 0;
        v64[16] = -1;
        v60(v61, 0, 1, v59);
        sub_1D6795150(0x7974697669746341, 0xEE00736D65744920, 0, 0, v57, &v176);
        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_4;
      }

      v104 = MEMORY[0x1E69E6F90];
      sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      v170 = xmmword_1D7273AE0;
      *(v30 + 16) = xmmword_1D7273AE0;
      sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v104);
      sub_1D5EA74B8();
      v32 = (*(*(v105 - 8) + 80) + 32) & ~*(*(v105 - 8) + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v170;
      v35 = 0x65726F6353;
      v34 = (v33 + v32);
      v36 = 0xE500000000000000;
LABEL_3:
      sub_1D711F844(1701869908, 0xE400000000000000, v35, v36, v34);
      v37 = type metadata accessor for FormatInspectionItem(0);
      (*(*(v37 - 8) + 56))(v33 + v32, 0, 1, v37);
      sub_1D6795150(0x7974697669746341, 0xEE00736D65744920, 0, 0, v33, &v176);
      swift_setDeallocating();
      sub_1D5EC9534(v33 + v32, sub_1D5EA74B8);
LABEL_4:
      swift_deallocClassInstance();
      *(v30 + 56) = &type metadata for FormatInspectionGroup;
      *(v30 + 64) = &off_1F518B2C0;
      v38 = swift_allocObject();
      *(v30 + 32) = v38;
      v39 = v30 + 32;
      v40 = v176;
      v41 = v177;
LABEL_30:
      *(v38 + 16) = v40;
      *(v38 + 32) = v41;
      *(v38 + 48) = v178;
      v130 = sub_1D7073500(v30);
      swift_setDeallocating();
      sub_1D5EC9534(v39, sub_1D5E4F358);
      swift_deallocClassInstance();
      return v130;
    }

    v168 = v28;
    v85 = MEMORY[0x1E69E6F90];
    sub_1D5D504D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1D7273AE0;
    sub_1D5D504D4(0, &qword_1EC880490, sub_1D5EA74B8, v85);
    sub_1D5EA74B8();
    *&v170 = v87;
    v88 = (*(*(v87 - 8) + 80) + 32) & ~*(*(v87 - 8) + 80);
    v167 = *(*(v87 - 8) + 72);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1D7270C10;
    v169 = (v89 + v88);
    v90 = *(v3 + 20);
    v91 = type metadata accessor for SharedItem();
    (*(*(v91 - 8) + 56))(&v6[v90], 1, 1, v91);
    *v6 = 0;
    v92 = *(v3 + 24);
    v6[v92] = 0;
    *(v11 + 2) = 0;
    v11[24] = 1;
    *(v11 + 2) = xmmword_1D727C320;
    v93 = [v50 identifier];
    v94 = sub_1D726207C();
    v96 = v95;

    *v11 = v94;
    *(v11 + 1) = v96;
    *(v11 + 7) = v50;
    v97 = type metadata accessor for FeedRecipe();
    sub_1D5EC94CC(v6, &v11[v97[9]], type metadata accessor for FeedRecipe.State);
    v98 = &v11[v97[10]];
    *(v98 + 4) = 0;
    *v98 = 0u;
    *(v98 + 1) = 0u;
    v11[v97[11]] = 0;
    LOBYTE(v94) = v6[v92];
    sub_1D5EC9444(v50, v168);
    if (v94)
    {
      v99 = [v50 sourceChannel];
    }

    else
    {
      v99 = 2;
    }

    sub_1D5EC9534(v6, type metadata accessor for FeedRecipe.State);
    *(v11 + 6) = v99;
    v132 = &v11[v97[12]];
    *v132 = 0u;
    *(v132 + 1) = 0u;
    *(v132 + 4) = 0;
    v133 = &v11[v97[13]];
    *(v133 + 4) = 0;
    *v133 = 0u;
    *(v133 + 1) = 0u;
    (*(*(v97 - 1) + 56))(v11, 0, 1, v97);
    v134 = v169;
    sub_1D711EF28(0x657069636552, 0xE600000000000000, v11, v169);
    v135 = type metadata accessor for FormatInspectionItem(0);
    v136 = *(*(v135 - 8) + 56);
    v136(v134, 0, 1, v135);
    v137 = &v134[v167];
    v138 = *(v135 + 24);
    v134[v167 + v138] = v168 & 1;
    v139 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v139 - 8) + 56))(&v137[v138], 0, 1, v139);
    *v137 = xmmword_1D727C310;
    *(v137 + 2) = 0;
    *(v137 + 3) = 0;
    v140 = &v137[*(v135 + 28)];
    *v140 = 0;
    *(v140 + 1) = 0;
    v140[16] = -1;
    v136(v137, 0, 1, v135);
    sub_1D6795150(0x7974697669746341, 0xEE00736D65744920, 0, 0, v89, &v176);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v86 + 56) = &type metadata for FormatInspectionGroup;
    *(v86 + 64) = &off_1F518B2C0;
    v141 = swift_allocObject();
    *(v86 + 32) = v141;
    v142 = v177;
    *(v141 + 16) = v176;
    *(v141 + 32) = v142;
    *(v141 + 48) = v178;
    v126 = sub_1D7073500(v86);
    swift_setDeallocating();
    sub_1D5EC9534(v86 + 32, sub_1D5E4F358);
  }

  swift_deallocClassInstance();
  return v126;
}

id sub_1D5EC9444(id result, unsigned __int8 a2)
{
  v2 = a2 >> 4;
  if (v2 <= 4)
  {
    if ((a2 >> 4) <= 1u)
    {
      if (!(a2 >> 4))
      {
        return swift_unknownObjectRetain();
      }
    }

    else if (v2 != 2)
    {
      if (v2 != 3)
      {
        if (v2 != 4)
        {
          return result;
        }
      }

      return swift_unknownObjectRetain();
    }

    return result;
  }

  if ((a2 >> 4) <= 7u)
  {
    if (v2 != 5 && v2 != 6 && v2 != 7)
    {
      return result;
    }
  }

  if (v2 == 8 || v2 == 9 || v2 == 10)
  {
  }

  return result;
}

uint64_t sub_1D5EC94CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EC9534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5EC9594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedHeadline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EC95F8(void (*a1)(uint64_t *__return_ptr, unint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D69973C8(0, v5, 0);
    v6 = v18;
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v16 = v10;
      sub_1D5ECF0E0(v10);
      a1(&v17, &v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1D5ECF11C(v16);
      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D69973C8((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_1D5ECF11C(v16);
  }

  return v6;
}

uint64_t sub_1D5EC9720(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for FormatSection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1D69973F8(0, v11, 0);
  v12 = v23;
  for (i = (a3 + 48); ; i += 3)
  {
    v14 = *(i - 1);
    v15 = *i;
    v22[0] = *(i - 2);
    v22[1] = v14;
    v22[2] = v15;

    v20(v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v23 = v12;
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D69973F8(v16 > 1, v17 + 1, 1);
      v12 = v23;
    }

    *(v12 + 16) = v17 + 1;
    sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, type metadata accessor for FormatSection);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EC9900(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for FormatContentSubgroup();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D69975AC(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D69975AC(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1D5C0B598(v10, v12 + v19 + v16 * v14, type metadata accessor for FormatContentSubgroup);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EC9AD4(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D69977F0(0, v11, 0);
    v12 = v25;
    v13 = (a3 + 56);
    while (1)
    {
      v14 = *(v13 - 2);
      v16 = *(v13 - 1);
      v15 = *v13;
      v24[0] = *(v13 - 3);
      v24[1] = v14;
      v24[2] = v16;
      v24[3] = v15;

      v21(v24, &v23);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v25 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D69977F0(v17 > 1, v18 + 1, 1);
        v12 = v25;
      }

      v13 += 4;
      *(v12 + 16) = v18 + 1;
      sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, type metadata accessor for FormatDerivedDataResultOptionReference);
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_1D5EC9CB8(void (*a1)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D69978B0(0, v5, 0);
    result = v33;
    v8 = (a3 + 64);
    while (1)
    {
      v9 = result;
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 4);
      v13 = *v8;
      v25[0] = *(v8 - 4);
      v25[1] = v10;
      v25[2] = v11;
      v26 = v12;
      v27 = v13;

      a1(&v28, v25, &v24);
      if (v4)
      {
        break;
      }

      v14 = v28;
      v15 = v29;
      v16 = v30;
      v17 = v31;
      v18 = v32;
      result = v9;
      v33 = v9;
      v19 = *(v9 + 16);
      v20 = *(result + 24);
      if (v19 >= v20 >> 1)
      {
        v22 = v29;
        sub_1D69978B0((v20 > 1), v19 + 1, 1);
        v15 = v22;
        result = v33;
      }

      *(result + 16) = v19 + 1;
      v21 = result + 40 * v19;
      *(v21 + 32) = v14;
      *(v21 + 40) = v15;
      *(v21 + 56) = v16;
      *(v21 + 57) = v17;
      *(v21 + 64) = v18;
      v8 += 5;
      --v5;
      v4 = 0;
      if (!v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D5EC9E90(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D69978D0(0, v5, 0);
    v6 = v18;
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v16 = v10;

      a1(&v17, &v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D69978D0((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1D5EC9FC4(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D6997950(0, v5, 0);
    v6 = v32;
    v9 = (a3 + 64);
    while (1)
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v24 = *(v9 - 4);
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v13;
      sub_1D5ECEE80(v24, v10, v11, v12, v13);
      a1(&v29, &v24, &v23);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1D5ECEF00(v24, v25, v26, v27, v28);
      v14 = v29;
      v15 = v30;
      v16 = v31;
      v32 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        v21 = v30;
        v22 = v29;
        sub_1D6997950((v17 > 1), v18 + 1, 1);
        v15 = v21;
        v14 = v22;
        v6 = v32;
      }

      v9 += 40;
      *(v6 + 16) = v18 + 1;
      v19 = v6 + 40 * v18;
      *(v19 + 32) = v14;
      *(v19 + 48) = v15;
      *(v19 + 64) = v16;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_1D5ECEF00(v24, v25, v26, v27, v28);
  }

  return v6;
}

uint64_t sub_1D5ECA124(void (*a1)(_OWORD *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1D6997980(0, v5, 0);
    v6 = v60;
    v9 = a3 + 32;
    for (i = v5 - 1; ; --i)
    {
      v11 = *(v9 + 80);
      v12 = *(v9 + 112);
      v57 = *(v9 + 96);
      v58 = v12;
      v13 = *(v9 + 16);
      v14 = *(v9 + 48);
      v53 = *(v9 + 32);
      v54 = v14;
      v15 = *(v9 + 48);
      v16 = *(v9 + 80);
      v55 = *(v9 + 64);
      v56 = v16;
      v17 = *(v9 + 16);
      v52[0] = *v9;
      v52[1] = v17;
      v18 = *(v9 + 112);
      v47 = v57;
      v48 = v18;
      v43 = v53;
      v44 = v15;
      v45 = v55;
      v46 = v11;
      v59 = *(v9 + 128);
      v49 = *(v9 + 128);
      v41 = v52[0];
      v42 = v13;
      sub_1D5ECEF80(v52, &v31);
      a1(v50, &v41, &v40);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v29[6] = v47;
      v29[7] = v48;
      v30 = v49;
      v29[2] = v43;
      v29[3] = v44;
      v29[4] = v45;
      v29[5] = v46;
      v29[0] = v41;
      v29[1] = v42;
      sub_1D5ECEFDC(v29);
      v33 = v50[2];
      v34 = v50[3];
      v39 = v51;
      v37 = v50[6];
      v38 = v50[7];
      v35 = v50[4];
      v36 = v50[5];
      v31 = v50[0];
      v32 = v50[1];
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      v60 = v6;
      if (v20 >= v19 >> 1)
      {
        sub_1D6997980((v19 > 1), v20 + 1, 1);
        v6 = v60;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 136 * v20;
      *(v21 + 32) = v31;
      v22 = v32;
      v23 = v33;
      v24 = v35;
      *(v21 + 80) = v34;
      *(v21 + 96) = v24;
      *(v21 + 48) = v22;
      *(v21 + 64) = v23;
      v25 = v36;
      v26 = v37;
      v27 = v38;
      *(v21 + 160) = v39;
      *(v21 + 128) = v26;
      *(v21 + 144) = v27;
      *(v21 + 112) = v25;
      if (!i)
      {
        return v6;
      }

      v9 += 136;
    }

    v37 = v47;
    v38 = v48;
    v39 = v49;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v31 = v41;
    v32 = v42;
    sub_1D5ECEFDC(&v31);
  }

  return v6;
}

uint64_t sub_1D5ECA3A4(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D6997A80(0, v5, 0);
    v6 = v29;
    v9 = (a3 + 48);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v24 = *(v9 - 2);
      v25 = v10;
      v26 = v11;
      sub_1D5CFCFAC(v24);
      sub_1D5D04BD4(v10);
      sub_1D5D04BD4(v11);
      a1(&v27, &v24, &v23);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v12 = v25;
      v13 = v26;
      sub_1D5C84FF4(v24);
      sub_1D5C8500C(v12);
      sub_1D5C8500C(v13);
      v14 = v27;
      v15 = v28;
      v29 = v6;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        v22 = v27;
        sub_1D6997A80((v16 > 1), v17 + 1, 1);
        v14 = v22;
        v6 = v29;
      }

      v9 += 3;
      *(v6 + 16) = v17 + 1;
      v18 = v6 + 24 * v17;
      *(v18 + 32) = v14;
      *(v18 + 48) = v15;
      if (!--v5)
      {
        return v6;
      }
    }

    v19 = v25;
    v20 = v26;
    sub_1D5C84FF4(v24);
    sub_1D5C8500C(v19);
    sub_1D5C8500C(v20);
  }

  return v6;
}

uint64_t sub_1D5ECA524(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D6997AA0(0, v5, 0);
    v6 = v18;
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v16 = v10;

      a1(&v17, &v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D6997AA0((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1D5ECA6B8(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v23 = MEMORY[0x1E69E7CC0];
    sub_1D6997D30(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        sub_1D6997D30((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 48) = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1D5ECA874(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v46 = MEMORY[0x1E69E7CC0];
  sub_1D6997F34(0, v5, 0);
  v6 = v46;
  v9 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v11 = v9[5];
    v12 = v9[7];
    v44 = v9[6];
    v45[0] = v12;
    *(v45 + 9) = *(v9 + 121);
    v13 = v9[1];
    v14 = v9[3];
    v40 = v9[2];
    v41 = v14;
    v15 = v9[3];
    v16 = v9[5];
    v42 = v9[4];
    v43 = v16;
    v17 = v9[1];
    v39[0] = *v9;
    v39[1] = v17;
    v18 = v9[7];
    v36 = v44;
    v37[0] = v18;
    *(v37 + 9) = *(v9 + 121);
    v32 = v40;
    v33 = v15;
    v34 = v42;
    v35 = v11;
    v30 = v39[0];
    v31 = v13;
    sub_1D5ECF2C4(v39, &v22);
    a1(__src, &v30);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v28 = v36;
    v29[0] = v37[0];
    *(v29 + 9) = *(v37 + 9);
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v22 = v30;
    v23 = v31;
    sub_1D5ECF320(&v22);
    v46 = v6;
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D6997F34((v19 > 1), v20 + 1, 1);
      v6 = v46;
    }

    *(v6 + 16) = v20 + 1;
    memcpy((v6 + 392 * v20 + 32), __src, 0x188uLL);
    if (!i)
    {
      return v6;
    }

    v9 += 9;
  }

  v28 = v36;
  v29[0] = v37[0];
  *(v29 + 9) = *(v37 + 9);
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v22 = v30;
  v23 = v31;
  sub_1D5ECF320(&v22);

  __break(1u);
  return result;
}

uint64_t sub_1D5ECAA58(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  sub_1D5D66C28(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, v11, 0);
  v12 = v22;
  v13 = (a3 + 32);
  while (1)
  {
    v14 = *v13++;
    v21 = v14;
    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D69972A4(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1D5E4F52C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5ECAC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = type metadata accessor for SportsDataServiceRequest(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D69984B4(0, v11, 0);
    v12 = v20;
    for (i = (a3 + 32); ; ++i)
    {
      v19 = *i;

      (v17[0])(&v19, &v18);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v20 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D69984B4(v14 > 1, v15 + 1, 1);
        v12 = v20;
      }

      *(v12 + 16) = v15 + 1;
      sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for SportsDataServiceRequest);
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_1D5ECAE04(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for FormatCompilingSlotDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D69985F4(0, v11, 0);
    v12 = v23;
    for (i = (a3 + 40); ; i += 2)
    {
      v14 = *i;
      v22[0] = *(i - 1);
      v22[1] = v14;

      v19(v22, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v23 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D69985F4(v15 > 1, v16 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v16 + 1;
      sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for FormatCompilingSlotDefinition);
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_1D5ECB01C(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v23 = a5;
    (a5)(0, v16, 0, v13);
    v17 = v29;
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = a3 + v24;
    v19 = *(v11 + 72);
    while (1)
    {
      v26(v18, &v28);
      if (v8)
      {
        break;
      }

      v8 = 0;
      v29 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        v23(v20 > 1, v21 + 1, 1);
        v17 = v29;
      }

      *(v17 + 16) = v21 + 1;
      sub_1D5C0B598(v15, v17 + v24 + v21 * v19, v25);
      v18 += v19;
      if (!--v16)
      {
        return v17;
      }
    }
  }

  return v17;
}

uint64_t sub_1D5ECB234(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v39 = MEMORY[0x1E69E7CC0];
  sub_1D69975FC(0, v5, 0);
  v6 = v39;
  v8 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v10 = v8[1];
    v38[0] = *v8;
    v38[1] = v10;
    v11 = v8[3];
    v13 = *v8;
    v12 = v8[1];
    v38[2] = v8[2];
    v38[3] = v11;
    v30 = v13;
    v31 = v12;
    v14 = v8[3];
    v32 = v8[2];
    v33 = v14;
    sub_1D5E3FA60(v38, &v26);
    a1(&v34, &v30);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v26 = v30;
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1D5E3FABC(&v26);
    v15 = v35;
    v16 = v36;
    v17 = v34;
    v18 = v37;
    v39 = v6;
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      v23 = v36;
      v24 = v35;
      sub_1D69975FC((v19 > 1), v20 + 1, 1);
      v16 = v23;
      v15 = v24;
      v6 = v39;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 48 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v15;
    *(v21 + 56) = v16;
    *(v21 + 72) = v18;
    if (!i)
    {
      return v6;
    }

    v8 += 4;
  }

  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  sub_1D5E3FABC(&v26);

  __break(1u);
  return result;
}

uint64_t sub_1D5ECB3CC(void (*a1)(__int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v24 = a2;
  v6 = type metadata accessor for FormatWorkspaceGroup();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D6998A28(0, v10, 0);
    v11 = v40;
    v12 = (a3 + 32);
    for (i = v10 - 1; ; --i)
    {
      v14 = v12[1];
      v15 = v12[3];
      v37 = v12[2];
      v38 = v15;
      v16 = v12[3];
      v39 = v12[4];
      v17 = v12[1];
      v36[0] = *v12;
      v36[1] = v17;
      v33 = v37;
      v34 = v16;
      v35 = v12[4];
      v31 = v36[0];
      v32 = v14;
      sub_1D5CE9930(v36, &v25);
      v23(&v31, &v30);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v25 = v31;
      v26 = v32;
      sub_1D5CEC67C(&v25);
      v40 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D6998A28(v18 > 1, v19 + 1, 1);
        v11 = v40;
      }

      *(v11 + 16) = v19 + 1;
      sub_1D5C0B598(v9, v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, type metadata accessor for FormatWorkspaceGroup);
      if (!i)
      {
        return v11;
      }

      v12 += 5;
    }

    v27 = v33;
    v28 = v34;
    v29 = v35;
    v25 = v31;
    v26 = v32;
    sub_1D5CEC67C(&v25);
  }

  return v11;
}

uint64_t sub_1D5ECB5F8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a2;
  v29 = a1;
  v6 = type metadata accessor for DebugFormatWorkspace();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v62 = MEMORY[0x1E69E7CC0];
  sub_1D6998988(0, v10, 0);
  v11 = v62;
  v12 = (a3 + 32);
  for (i = v10 - 1; ; --i)
  {
    v14 = v12[9];
    v15 = v12[7];
    v59 = v12[8];
    v60 = v14;
    v16 = v12[9];
    *v61 = v12[10];
    v17 = v12[5];
    v18 = v12[3];
    v55 = v12[4];
    v56 = v17;
    v19 = v12[5];
    v20 = v12[7];
    v57 = v12[6];
    v58 = v20;
    v21 = v12[1];
    v52[0] = *v12;
    v52[1] = v21;
    v22 = v12[3];
    v24 = *v12;
    v23 = v12[1];
    v53 = v12[2];
    v54 = v22;
    v49 = v59;
    v50 = v16;
    v51[0] = v12[10];
    v45 = v55;
    v46 = v19;
    v47 = v57;
    v48 = v15;
    v41 = v24;
    v42 = v23;
    *&v61[15] = *(v12 + 175);
    *(v51 + 15) = *(v12 + 175);
    v43 = v53;
    v44 = v18;
    sub_1D5ECF1C0(v52, &v30);
    v29(&v41);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v38 = v49;
    v39 = v50;
    v40[0] = v51[0];
    *(v40 + 15) = *(v51 + 15);
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    sub_1D5ECF21C(&v30);
    v62 = v11;
    v26 = *(v11 + 16);
    v25 = *(v11 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1D6998988(v25 > 1, v26 + 1, 1);
      v11 = v62;
    }

    *(v11 + 16) = v26 + 1;
    sub_1D5C0B598(v9, v11 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, type metadata accessor for DebugFormatWorkspace);
    if (!i)
    {
      return v11;
    }

    v12 = (v12 + 184);
  }

  v38 = v49;
  v39 = v50;
  v40[0] = v51[0];
  *(v40 + 15) = *(v51 + 15);
  v34 = v45;
  v35 = v46;
  v36 = v47;
  v37 = v48;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  sub_1D5ECF21C(&v30);

  __break(1u);
  return result;
}

uint64_t sub_1D5ECB950(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v7 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v11 = *(a4(0) - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      a1(&v14, v12);
      if (v5)
      {
        break;
      }

      v5 = 0;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v12 += v13;
      if (!--v7)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5ECBB04(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      v11 = v9[7];
      v12 = v9[9];
      v52 = v9[8];
      v53 = v12;
      v13 = v9[3];
      v14 = v9[5];
      v48 = v9[4];
      v49 = v14;
      v15 = v9[5];
      v16 = v9[7];
      v50 = v9[6];
      v51 = v16;
      v17 = v9[1];
      v45[0] = *v9;
      v45[1] = v17;
      v18 = v9[3];
      v20 = *v9;
      v19 = v9[1];
      v46 = v9[2];
      v47 = v18;
      v21 = v9[9];
      v41 = v52;
      v42 = v21;
      v37 = v48;
      v38 = v15;
      v39 = v50;
      v40 = v11;
      v33 = v20;
      v34 = v19;
      v54 = *(v9 + 20);
      v43 = *(v9 + 20);
      v35 = v46;
      v36 = v13;
      sub_1D5ECF030(v45, &v22);
      a1(&v44, &v33);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v30 = v41;
      v31 = v42;
      v32 = v43;
      v26 = v37;
      v27 = v38;
      v28 = v39;
      v29 = v40;
      v22 = v33;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      sub_1D5ECF08C(&v22);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      if (!i)
      {
        return v55;
      }

      v9 = (v9 + 168);
    }

    v30 = v41;
    v31 = v42;
    v32 = v43;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    sub_1D5ECF08C(&v22);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5ECBCD0(void (*a1)(uint64_t *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D69975FC(0, v5, 0);
    v6 = v40;
    v8 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v10 = v8[1];
      v39[0] = *v8;
      v39[1] = v10;
      v11 = v8[3];
      v13 = *v8;
      v12 = v8[1];
      v39[2] = v8[2];
      v39[3] = v11;
      v31 = v13;
      v32 = v12;
      v14 = v8[3];
      v33 = v8[2];
      v34 = v14;
      sub_1D5CB6F58(v39, &v26);
      a1(&v35, &v31, &v30);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v26 = v31;
      v27 = v32;
      v28 = v33;
      v29 = v34;
      sub_1D5CB6FB4(&v26);
      v15 = v36;
      v16 = v37;
      v17 = v35;
      v18 = v38;
      v40 = v6;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        v23 = v37;
        v24 = v36;
        sub_1D69975FC((v19 > 1), v20 + 1, 1);
        v16 = v23;
        v15 = v24;
        v6 = v40;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 48 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v15;
      *(v21 + 56) = v16;
      *(v21 + 72) = v18;
      if (!i)
      {
        return v6;
      }

      v8 += 4;
    }

    v26 = v31;
    v27 = v32;
    v28 = v33;
    v29 = v34;
    sub_1D5CB6FB4(&v26);
  }

  return v6;
}

uint64_t sub_1D5ECBE6C(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_1D725A54C();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6998B68(0, v10, 0);
    v11 = v25;
    v19[1] = v6 + 32;
    v12 = (a3 + 56);
    while (1)
    {
      v13 = *(v12 - 2);
      v15 = *(v12 - 1);
      v14 = *v12;
      v24[0] = *(v12 - 3);
      v24[1] = v13;
      v24[2] = v15;
      v24[3] = v14;

      v21(v24, &v23);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v25 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D6998B68(v16 > 1, v17 + 1, 1);
        v11 = v25;
      }

      v12 += 4;
      *(v11 + 16) = v17 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v9, v20);
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_1D5ECC080(void (*a1)(size_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[1] = a2;
  sub_1D5D66C28(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v18 - v10;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v14 = sub_1D69972A4(0, v12, 0);
  v13 = v19;
  while (1)
  {
    a1(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v19 = v13;
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D69972A4(v15 > 1, v16 + 1, 1);
      v13 = v19;
    }

    *(v13 + 16) = v16 + 1;
    v14 = sub_1D5E4F52C(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16);
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5ECC230(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for FormatDerivedDataBinderResult();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D6998CA8(0, v11, 0);
    v12 = v23;
    sub_1D5ECF158(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v14 = *(v13 - 8);
    v15 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    while (1)
    {
      v20(v15, &v22);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v23 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D6998CA8(v16 > 1, v17 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v17 + 1;
      sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, type metadata accessor for FormatDerivedDataBinderResult);
      v15 += v19;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_1D5ECC468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = type metadata accessor for DebugInspectViewItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1D69991E8(0, v11, 0);
  v12 = v18;
  for (i = a3 + 32; ; i += 40)
  {
    (v17[0])(i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v18 = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D69991E8(v14 > 1, v15 + 1, 1);
      v12 = v18;
    }

    *(v12 + 16) = v15 + 1;
    sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for DebugInspectViewItem);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5ECC608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v6 = type metadata accessor for DebugInspectViewItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D69991E8(0, v11, 0);
  v12 = v21;
  v13 = (a3 + 40);
  while (1)
  {
    v14 = *v13;
    v19 = *(v13 - 1);
    v20 = v14;
    sub_1D5ECEDDC(v19, v14);
    (v18[0])(&v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_1D5ECEDE8(v19, v20);
    v21 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D69991E8(v15 > 1, v16 + 1, 1);
      v12 = v21;
    }

    v13 += 16;
    *(v12 + 16) = v16 + 1;
    sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for DebugInspectViewItem);
    if (!--v11)
    {
      return v12;
    }
  }

  sub_1D5ECEDE8(v19, v20);

  __break(1u);
  return result;
}

uint64_t sub_1D5ECC7D4(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v24 = a2;
  v6 = type metadata accessor for PluginLayout.Context(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v11;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1D6999338(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v11 = v26;
    v20 = i;
    v21 = a3 & 0xC000000000000001;
    v19 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v21)
      {
        v14 = MEMORY[0x1DA6FB460](v12, a3);
      }

      else
      {
        if (v12 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a3 + 8 * v12 + 32);
      }

      v25 = v14;
      v23(&v25);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v26 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6999338(v15 > 1, v16 + 1, 1);
        v11 = v26;
      }

      *(v11 + 16) = v16 + 1;
      sub_1D5C0B598(v9, v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, type metadata accessor for PluginLayout.Context);
      ++v12;
      if (v13 == v20)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1D5ECCA18(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D6999388(0, v4, 0);
  v5 = v24;
  for (i = a3 + 32; ; i += 152)
  {
    a1(v22, i);
    if (v3)
    {
      break;
    }

    v24 = v5;
    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D6999388((v9 > 1), v10 + 1, 1);
      v5 = v24;
    }

    *(v5 + 16) = v10 + 1;
    v11 = v5 + 200 * v10;
    *(v11 + 32) = v22[0];
    v12 = v22[1];
    v13 = v22[2];
    v14 = v22[4];
    *(v11 + 80) = v22[3];
    *(v11 + 96) = v14;
    *(v11 + 48) = v12;
    *(v11 + 64) = v13;
    v15 = v22[5];
    v16 = v22[6];
    v17 = v22[8];
    *(v11 + 144) = v22[7];
    *(v11 + 160) = v17;
    *(v11 + 112) = v15;
    *(v11 + 128) = v16;
    v18 = v22[9];
    v19 = v22[10];
    v20 = v22[11];
    *(v11 + 224) = v23;
    *(v11 + 192) = v19;
    *(v11 + 208) = v20;
    *(v11 + 176) = v18;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5ECCB60(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  sub_1D5D66C28(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v17 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, v11, 0);
  v12 = v21;
  for (i = (a3 + 32); ; ++i)
  {
    v20 = *i;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D69972A4(v14 > 1, v15 + 1, 1);
      v12 = v21;
    }

    *(v12 + 16) = v15 + 1;
    sub_1D5E4F52C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5ECCD20(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  v6 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v55 = MEMORY[0x1E69E7CC0];
  sub_1D69994B8(0, v10, 0);
  v11 = v55;
  v12 = (a3 + 32);
  for (i = v10 - 1; ; --i)
  {
    v14 = v12[5];
    v15 = v12[7];
    v52 = v12[6];
    v53 = v15;
    v16 = v12[7];
    v54 = v12[8];
    v17 = v12[1];
    v18 = v12[3];
    v48 = v12[2];
    v49 = v18;
    v19 = v12[3];
    v20 = v12[5];
    v50 = v12[4];
    v51 = v20;
    v21 = v12[1];
    v47[0] = *v12;
    v47[1] = v21;
    v44 = v52;
    v45 = v16;
    v46 = v12[8];
    v40 = v48;
    v41 = v19;
    v42 = v50;
    v43 = v14;
    v38 = v47[0];
    v39 = v17;
    sub_1D5D65D5C(v47, &v29);
    v27(&v38);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v29 = v38;
    v30 = v39;
    sub_1D5D68304(&v29);
    v55 = v11;
    v23 = *(v11 + 16);
    v22 = *(v11 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1D69994B8(v22 > 1, v23 + 1, 1);
      v11 = v55;
    }

    *(v11 + 16) = v23 + 1;
    sub_1D5C0B598(v9, v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    if (!i)
    {
      return v11;
    }

    v12 += 9;
  }

  v35 = v44;
  v36 = v45;
  v37 = v46;
  v31 = v40;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v29 = v38;
  v30 = v39;
  sub_1D5D68304(&v29);

  __break(1u);
  return result;
}

uint64_t sub_1D5ECCF88(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_1D5ECF394(0, &qword_1EDF17210, MEMORY[0x1E69D7980]);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v39 = &v30 - v13;
  sub_1D5ECF374(0);
  v15 = v14;
  v16 = sub_1D5D66D14(&unk_1EDF16968, sub_1D5ECF374);
  v17 = sub_1D7262C2C();
  result = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D6999748(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_1D7262BFC();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_1D7262D0C();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D6999748(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_1D7262C6C();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5ECD348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[1] = a2;
  v23[0] = a1;
  v6 = type metadata accessor for FormatContentSubgroup();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1D69975AC(0, v11, 0);
  v12 = v33;
  v13 = (a3 + 32);
  for (i = v11 - 1; ; --i)
  {
    v15 = v13[1];
    v32[0] = *v13;
    v32[1] = v15;
    v16 = v13[3];
    v18 = *v13;
    v17 = v13[1];
    v32[2] = v13[2];
    v32[3] = v16;
    v28 = v18;
    v29 = v17;
    v19 = v13[3];
    v30 = v13[2];
    v31 = v19;
    sub_1D5E2A788(v32, &v24);
    (v23[0])(&v28);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1D5ECF270(&v24);
    v33 = v12;
    v21 = *(v12 + 16);
    v20 = *(v12 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1D69975AC(v20 > 1, v21 + 1, 1);
      v12 = v33;
    }

    *(v12 + 16) = v21 + 1;
    sub_1D5C0B598(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, type metadata accessor for FormatContentSubgroup);
    if (!i)
    {
      return v12;
    }

    v13 += 4;
  }

  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  sub_1D5ECF270(&v24);

  __break(1u);
  return result;
}

uint64_t sub_1D5ECD578(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1D6999FBC(0, v5, 0);
  v6 = v34;
  v9 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v11 = v9[1];
    v33[0] = *v9;
    v33[1] = v11;
    v12 = v9[3];
    v14 = *v9;
    v13 = v9[1];
    v33[2] = v9[2];
    v33[3] = v12;
    v27 = v14;
    v28 = v13;
    v15 = v9[3];
    v29 = v9[2];
    v30 = v15;
    sub_1D5E2A788(v33, &v23);
    a1(&v31, &v27);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D5ECF270(&v23);
    v16 = v31;
    v17 = v32;
    v34 = v6;
    v19 = *(v6 + 16);
    v18 = *(v6 + 24);
    if (v19 >= v18 >> 1)
    {
      v22 = v32;
      sub_1D6999FBC((v18 > 1), v19 + 1, 1);
      v17 = v22;
      v6 = v34;
    }

    *(v6 + 16) = v19 + 1;
    v20 = v6 + 24 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    if (!i)
    {
      return v6;
    }

    v9 += 4;
  }

  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  sub_1D5ECF270(&v23);

  __break(1u);
  return result;
}

uint64_t sub_1D5ECD750(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  v22 = a1;
  v23 = a2;
  sub_1D5D66C28(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v20 - v11;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, v13, 0);
  v14 = v24;
  v15 = *(a4(0) - 8);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v21 = *(v15 + 72);
  while (1)
  {
    v22(v16);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v24 = v14;
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D69972A4(v17 > 1, v18 + 1, 1);
      v14 = v24;
    }

    *(v14 + 16) = v18 + 1;
    sub_1D5E4F52C(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18);
    v16 += v21;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5ECD96C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    for (i = (a3 + 56); ; i += 32)
    {
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      v13[0] = *(i - 3);
      v13[1] = v10;
      v13[2] = v11;
      v14 = v12;

      a1(&v15, v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      if (!--v6)
      {
        return v16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5ECDA84(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  sub_1D5ECF158(0, &qword_1EDF170B0, sub_1D5B53E88, &type metadata for FormatLayoutModel, MEMORY[0x1E69D7BF0]);
  v19 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1D699A610(0, v11, 0);
  v12 = v23;
  v13 = (a3 + 32);
  v18[1] = v7 + 32;
  while (1)
  {
    v14 = *v13++;
    v22 = v14;

    v20(&v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v23 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D699A610(v15 > 1, v16 + 1, 1);
      v12 = v23;
    }

    *(v12 + 16) = v16 + 1;
    (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v10, v19);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5ECDC90()
{
  result = qword_1EDF12610;
  if (!qword_1EDF12610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12610);
  }

  return result;
}

unint64_t sub_1D5ECDCE4()
{
  result = qword_1EDF05A10;
  if (!qword_1EDF05A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05A10);
  }

  return result;
}

unint64_t sub_1D5ECDD38()
{
  result = qword_1EDF05A50;
  if (!qword_1EDF05A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05A50);
  }

  return result;
}

unint64_t sub_1D5ECDD8C()
{
  result = qword_1EDF05D38;
  if (!qword_1EDF05D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05D38);
  }

  return result;
}

unint64_t sub_1D5ECDDE0()
{
  result = qword_1EDF0CA40;
  if (!qword_1EDF0CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CA40);
  }

  return result;
}

uint64_t sub_1D5ECDE34@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v15 = a1[7];
  v40 = a1[6];
  v41 = v15;
  v42 = a1[8];
  v16 = a1[3];
  v36 = a1[2];
  v37 = v16;
  v17 = a1[5];
  v38 = a1[4];
  v39 = v17;
  v18 = a1[1];
  v34 = *a1;
  v35 = v18;
  v19 = type metadata accessor for FormatLogger();
  inited = swift_initStaticObject();
  a9[3] = &type metadata for FormatGroupLayoutFactory;
  a9[4] = sub_1D5D6817C();
  v21 = swift_allocObject();
  *a9 = v21;
  *(v21 + 248) = v19;
  *(v21 + 256) = &protocol witness table for FormatLogger;
  *(v21 + 224) = inited;
  v22 = *(a7 + 8);
  sub_1D5B68374(a7 + 16, v21 + 272);
  v23 = v41;
  *(v21 + 112) = v40;
  *(v21 + 128) = v23;
  *(v21 + 144) = v42;
  v24 = v37;
  *(v21 + 48) = v36;
  *(v21 + 64) = v24;
  v25 = v39;
  *(v21 + 80) = v38;
  *(v21 + 96) = v25;
  v26 = v35;
  *(v21 + 16) = v34;
  *(v21 + 32) = v26;
  *(v21 + 160) = a2;
  *(v21 + 168) = a3;
  *(v21 + 176) = a4;
  *(v21 + 184) = a5;
  v27 = MEMORY[0x1E69E7CD0];
  v28 = MEMORY[0x1E69E7CC0];
  *(v21 + 192) = a6;
  *(v21 + 200) = v27;
  *(v21 + 208) = v28;
  *(v21 + 216) = v27;
  *(v21 + 264) = v22;
  *(v21 + 312) = a8;
  *(v21 + 320) = 0;
  sub_1D5D65D5C(&v34, v33);

  v29 = v22;
}

unint64_t sub_1D5ECDFEC()
{
  result = qword_1EC880498;
  if (!qword_1EC880498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880498);
  }

  return result;
}

unint64_t sub_1D5ECE040()
{
  result = qword_1EC8804A0;
  if (!qword_1EC8804A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804A0);
  }

  return result;
}

unint64_t sub_1D5ECE094()
{
  result = qword_1EDF05DF8;
  if (!qword_1EDF05DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05DF8);
  }

  return result;
}

unint64_t sub_1D5ECE0E8()
{
  result = qword_1EC8804A8;
  if (!qword_1EC8804A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804A8);
  }

  return result;
}

unint64_t sub_1D5ECE13C()
{
  result = qword_1EC8804B0;
  if (!qword_1EC8804B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804B0);
  }

  return result;
}

unint64_t sub_1D5ECE190()
{
  result = qword_1EC8804B8;
  if (!qword_1EC8804B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804B8);
  }

  return result;
}

unint64_t sub_1D5ECE1E4()
{
  result = qword_1EC8804C0;
  if (!qword_1EC8804C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804C0);
  }

  return result;
}

unint64_t sub_1D5ECE238()
{
  result = qword_1EC8804C8;
  if (!qword_1EC8804C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804C8);
  }

  return result;
}

unint64_t sub_1D5ECE28C()
{
  result = qword_1EC8804D0;
  if (!qword_1EC8804D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804D0);
  }

  return result;
}

unint64_t sub_1D5ECE2E0()
{
  result = qword_1EC8804D8;
  if (!qword_1EC8804D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804D8);
  }

  return result;
}

unint64_t sub_1D5ECE334()
{
  result = qword_1EC8804E0;
  if (!qword_1EC8804E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804E0);
  }

  return result;
}

unint64_t sub_1D5ECE388()
{
  result = qword_1EC8804E8;
  if (!qword_1EC8804E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804E8);
  }

  return result;
}

unint64_t sub_1D5ECE3DC()
{
  result = qword_1EC8804F0;
  if (!qword_1EC8804F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804F0);
  }

  return result;
}

unint64_t sub_1D5ECE430()
{
  result = qword_1EC8804F8;
  if (!qword_1EC8804F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8804F8);
  }

  return result;
}

unint64_t sub_1D5ECE484()
{
  result = qword_1EC880500;
  if (!qword_1EC880500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880500);
  }

  return result;
}

unint64_t sub_1D5ECE4D8()
{
  result = qword_1EC880508;
  if (!qword_1EC880508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880508);
  }

  return result;
}

unint64_t sub_1D5ECE52C()
{
  result = qword_1EC880510;
  if (!qword_1EC880510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880510);
  }

  return result;
}

unint64_t sub_1D5ECE580()
{
  result = qword_1EC880518;
  if (!qword_1EC880518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880518);
  }

  return result;
}

unint64_t sub_1D5ECE5D4()
{
  result = qword_1EC880520;
  if (!qword_1EC880520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880520);
  }

  return result;
}

unint64_t sub_1D5ECE628()
{
  result = qword_1EC880528;
  if (!qword_1EC880528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880528);
  }

  return result;
}

unint64_t sub_1D5ECE67C()
{
  result = qword_1EC880530;
  if (!qword_1EC880530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880530);
  }

  return result;
}

unint64_t sub_1D5ECE6D0()
{
  result = qword_1EC880538;
  if (!qword_1EC880538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880538);
  }

  return result;
}

unint64_t sub_1D5ECE724()
{
  result = qword_1EC880540;
  if (!qword_1EC880540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880540);
  }

  return result;
}

unint64_t sub_1D5ECE778()
{
  result = qword_1EC880548;
  if (!qword_1EC880548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880548);
  }

  return result;
}

unint64_t sub_1D5ECE7CC()
{
  result = qword_1EC880550;
  if (!qword_1EC880550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880550);
  }

  return result;
}

unint64_t sub_1D5ECE820()
{
  result = qword_1EC880558;
  if (!qword_1EC880558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880558);
  }

  return result;
}

unint64_t sub_1D5ECE874()
{
  result = qword_1EC880560;
  if (!qword_1EC880560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880560);
  }

  return result;
}

unint64_t sub_1D5ECE8C8()
{
  result = qword_1EC880568;
  if (!qword_1EC880568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880568);
  }

  return result;
}

unint64_t sub_1D5ECE91C()
{
  result = qword_1EC880570;
  if (!qword_1EC880570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880570);
  }

  return result;
}

unint64_t sub_1D5ECE970()
{
  result = qword_1EC880578;
  if (!qword_1EC880578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880578);
  }

  return result;
}

unint64_t sub_1D5ECE9C4()
{
  result = qword_1EC880580;
  if (!qword_1EC880580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880580);
  }

  return result;
}

unint64_t sub_1D5ECEA18()
{
  result = qword_1EC880588;
  if (!qword_1EC880588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880588);
  }

  return result;
}

unint64_t sub_1D5ECEA6C()
{
  result = qword_1EC880590;
  if (!qword_1EC880590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880590);
  }

  return result;
}

unint64_t sub_1D5ECEAC0()
{
  result = qword_1EC880598;
  if (!qword_1EC880598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880598);
  }

  return result;
}

unint64_t sub_1D5ECEB14()
{
  result = qword_1EC8805A0;
  if (!qword_1EC8805A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805A0);
  }

  return result;
}

unint64_t sub_1D5ECEB68()
{
  result = qword_1EC8805A8;
  if (!qword_1EC8805A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805A8);
  }

  return result;
}

unint64_t sub_1D5ECEBBC()
{
  result = qword_1EC8805B0;
  if (!qword_1EC8805B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805B0);
  }

  return result;
}

unint64_t sub_1D5ECEC10()
{
  result = qword_1EC8805B8;
  if (!qword_1EC8805B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805B8);
  }

  return result;
}

unint64_t sub_1D5ECEC64()
{
  result = qword_1EC8805C0;
  if (!qword_1EC8805C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805C0);
  }

  return result;
}

unint64_t sub_1D5ECECB8()
{
  result = qword_1EC8805C8;
  if (!qword_1EC8805C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805C8);
  }

  return result;
}

unint64_t sub_1D5ECED0C()
{
  result = qword_1EC8805D0;
  if (!qword_1EC8805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805D0);
  }

  return result;
}

unint64_t sub_1D5ECED60()
{
  result = qword_1EC8805D8;
  if (!qword_1EC8805D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805D8);
  }

  return result;
}

uint64_t sub_1D5ECEDDC(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1D5ECEDE8(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }

  return result;
}

void sub_1D5ECEDF4()
{
  if (!qword_1EC88DEF0)
  {
    type metadata accessor for DebugGroupLayoutKey();
    type metadata accessor for DebugPersonalizationInspectViewDataSource();
    type metadata accessor for DebugInspector();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC88DEF0);
    }
  }
}

uint64_t sub_1D5ECEE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 0xB)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_1D5ECEF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 0xB)
  {
  }

  if (!a5)
  {
  }

  return result;
}

unint64_t sub_1D5ECF0E0(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

unint64_t sub_1D5ECF11C(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

void sub_1D5ECF158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5ECF394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor();
    v8[1] = type metadata accessor for FormatModel();
    v8[2] = sub_1D5D66D14(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
    v8[3] = sub_1D5D66D14(&qword_1EDF128E0, type metadata accessor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t DateComparison.description.getter()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComparison();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ECF6B8(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 32))(v5, v9, v1);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = 0x207265746641;
    v12 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x2065726F666542;
    v12 = 0xE700000000000000;
  }

  v16[0] = v11;
  v16[1] = v12;
  sub_1D5C44ED8();
  v13 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v13);

  v14 = v16[0];
  (*(v2 + 8))(v5, v1);
  return v14;
}

uint64_t type metadata accessor for DateComparison()
{
  result = qword_1EDF11C60;
  if (!qword_1EDF11C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5ECF6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComparison();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DateComparison.olderThan(now:_:)(uint64_t a1)
{
  v2 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1D72587CC();
  type metadata accessor for DateComparison();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5ECF86C()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5ECF8CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D5ECF910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D5ECF964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v59 = a2;
  v5 = sub_1D725895C();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupLayoutContext();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GroupLayoutBindingContext();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *v3;
  v17 = *(v3 + 1);
  v18 = v3[16];
  v55[0] = 4;
  if (GroupLayoutBindingContext.count(for:)(v55))
  {
    sub_1D5C17350();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    *(v19 + 40) = 13;
    return swift_willThrow();
  }

  else
  {
    v41 = a1;
    v21 = a1;
    v22 = v16;
    sub_1D5BE3E70(v21, v16, type metadata accessor for GroupLayoutBindingContext);
    v40 = type metadata accessor for GroupLayoutContext;
    v23 = v12;
    sub_1D5BE3E70(v59, v12, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v39 = sub_1D725893C();
    v38 = v24;
    (*(v42 + 8))(v8, v5);
    v57 = &type metadata for A12_V24;
    v42 = sub_1D5ECE6D0();
    v58 = v42;
    LOBYTE(v55[0]) = v48;
    v55[1] = v17;
    v56 = v18;
    type metadata accessor for GroupLayoutKey();
    v25 = swift_allocObject();
    sub_1D5BEE8A0(v17, v18);
    v53 = sub_1D7264C5C();
    v54 = v26;
    v51 = 95;
    v52 = 0xE100000000000000;
    v49 = 45;
    v50 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v27 = sub_1D7263A6C();
    v29 = v28;

    *(v25 + 16) = v27;
    *(v25 + 24) = v29;
    v30 = (v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v31 = v38;
    *v30 = v39;
    v30[1] = v31;
    sub_1D5B68374(v55, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v32 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDA89C(v22, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v43 + 56))(v25 + v32, 0, 1, v44);
    v33 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA89C(v23, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v45 + 56))(v25 + v33, 0, 1, v46);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v34 = type metadata accessor for A12_V24.Bound();
    v35 = v47;
    v47[3] = v34;
    v35[4] = sub_1D5ED2540(&qword_1EC8805F0, type metadata accessor for A12_V24.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    v37 = v42;
    boxed_opaque_existential_1[4] = &type metadata for A12_V24;
    boxed_opaque_existential_1[5] = v37;
    *(boxed_opaque_existential_1 + 8) = v48;
    boxed_opaque_existential_1[2] = v17;
    *(boxed_opaque_existential_1 + 24) = v18;
    sub_1D5BE3E70(v59, boxed_opaque_existential_1 + *(v34 + 24), v40);
    sub_1D5BEE8A0(v17, v18);
    result = sub_1D6C542AC(0, 0, 0, 0, 0);
    *boxed_opaque_existential_1 = v25;
    *(boxed_opaque_existential_1 + *(v34 + 28)) = result;
  }

  return result;
}

uint64_t sub_1D5ECFE78@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A12_V24.Bound();
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
  v16 = sub_1D5ECA650(sub_1D5ED1C90, v37, v15);
  *&v40[0] = v16;
  sub_1D5ED1CB0(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context);
  v18 = v17;
  sub_1D5ED1DBC(&qword_1EC880610);
  v33 = v18;
  v19 = sub_1D7262C1C();
  v20 = *MEMORY[0x1E69D7130];
  v21 = sub_1D7259D1C();
  (*(*(v21 - 8) + 104))(v7, v20, v21);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v35 = v19;
  v36 = v2;
  sub_1D5ED1EB8(0, &qword_1EC880618, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v22 = v41;
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5ED1DBC(&qword_1EDF1B248);
  v23 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v31 = v40[1];
  v32 = v40[0];
  *&v40[0] = v16;
  *&v39[0] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);

  v25 = sub_1D725C00C();

  v26 = v34;
  *v34 = 0;
  v27 = v32;
  *(v26 + 24) = v31;
  *(v26 + 8) = v27;
  *&v40[0] = v25;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v28 = sub_1D72623BC();

  v29 = MEMORY[0x1E69E7CC0];
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1D5ED0334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3E70(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D5ED040C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5BE1458(0, &qword_1EC880630, sub_1D5ED1D0C, &type metadata for A12_V24.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D5ED1EB8(0, &qword_1EC880638, MEMORY[0x1E69D7150]);
  sub_1D5ED1E74(&qword_1EC880640, &qword_1EC880638, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

void sub_1D5ED05FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  sub_1D5BE1458(0, &qword_1EC880630, sub_1D5ED1D0C, &type metadata for A12_V24.Layout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v28 - v9);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 32);
    v13 = sub_1D725994C();
    v34 = *MEMORY[0x1E69D6F50];
    v35 = v13;
    v33 = v13 - 8;
    v32 = *MEMORY[0x1E69D73C0];
    v31 = (v7 + 104);
    v42 = (v7 + 8);
    v14 = *MEMORY[0x1E69D74A8];
    v29 = *MEMORY[0x1E69D7098];
    v30 = v14;
    v28 = xmmword_1D7273AE0;
    do
    {
      v38 = *v12;
      v41 = v12 + 1;
      v43 = a1;
      v15 = v35;
      v16 = swift_allocBox();
      (*(*(v15 - 8) + 104))(v17, v34, v15);
      *v10 = v16;
      v18 = *v31;
      (*v31)(v10, v32, v6);
      v19 = MEMORY[0x1E69D6F38];
      sub_1D5ED1EB8(0, &qword_1EC880648, MEMORY[0x1E69D6F38]);
      v39 = v20;
      v37 = sub_1D5ED1E74(&qword_1EC880650, &qword_1EC880648, v19);

      sub_1D7259A9C();
      v40 = *v42;
      v40(v10, v6);
      v43 = a1;
      v18(v10, v30, v6);
      sub_1D5ED1F3C();
      sub_1D5BE1458(0, &qword_1EC880660, sub_1D5ED1D0C, &type metadata for A12_V24.Layout, MEMORY[0x1E69D70D8]);
      v22 = v21;
      v23 = *(v21 - 8);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v28;
      v26 = (*(v23 + 104))(v25 + v24, v29, v22);
      v12 = v41;
      MEMORY[0x1EEE9AC00](v26, v27);
      sub_1D72599EC();

      v40(v10, v6);
      --v11;
    }

    while (v11);
  }
}

void sub_1D5ED0A30(uint64_t a1, uint64_t a2)
{
  sub_1D5BE1458(0, &qword_1EC880630, sub_1D5ED1D0C, &type metadata for A12_V24.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = *(v12 + 72);
    v24 = *MEMORY[0x1E69D7490];
    v22 = (v6 + 8);
    v23 = (v6 + 104);
    v26 = a1;
    do
    {
      sub_1D5BE3E70(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v28 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v23)(v9, v24, v5);
      v27 = &v21;
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D5ED1EB8(0, &qword_1EC880648, MEMORY[0x1E69D6F38]);
      sub_1D5ED1E74(&qword_1EC880650, &qword_1EC880648, v20);
      sub_1D7259A2C();
      a1 = v26;
      (*v22)(v9, v5);
      sub_1D5ED1FDC(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v25;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1D5ED0D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = sub_1D725A36C();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D725A19C();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BE1458(0, &qword_1EC880630, sub_1D5ED1D0C, &type metadata for A12_V24.Layout, MEMORY[0x1E69D74B0]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = (&v46 - v19);
  v57 = a1;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4060200000000000;
  *v20 = v21;
  v22 = *MEMORY[0x1E69D73D8];
  v55 = v17;
  v56 = v16;
  (*(v17 + 104))(v20, v22, v16);
  sub_1D5ED1F3C();
  sub_1D5BE1458(0, &qword_1EC880660, sub_1D5ED1D0C, &type metadata for A12_V24.Layout, MEMORY[0x1E69D70D8]);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7273AE0;
  *(v27 + v26) = 0x4058C00000000000;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x1E69D70D0], v24);
  v28 = a3 + *(type metadata accessor for A12_V24.Bound() + 24);
  if (*(v28 + *(type metadata accessor for GroupLayoutContext() + 24) + 17))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  v30 = v11[7];
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v14 + v30, v31, v32);
  (*(v33 + 56))(v14 + v30, 0, 1, v32);
  v34 = *MEMORY[0x1E69DDC70];
  *v14 = v29;
  *(v14 + v11[8]) = 3;
  *(v14 + v11[9]) = v34;
  v35 = *MEMORY[0x1E69DDCE0];
  v46 = *(MEMORY[0x1E69DDCE0] + 16);
  v47 = v35;
  v36 = qword_1EDF386E8;
  v37 = v34;
  if (v36 != -1)
  {
    swift_once();
  }

  sub_1D725972C();

  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = v46;
  *(&v46 - 4) = v47;
  *(&v46 - 3) = v40;
  v41 = v49;
  v42 = v50;
  *(&v46 - 4) = v9;
  *(&v46 - 3) = v42;
  v45 = v14;
  (*(v41 + 104))(v53, *MEMORY[0x1E69D7378], v51);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v52 + 8))(v9, v54);
  sub_1D5ED1FDC(v14, type metadata accessor for HeadlineViewLayout.Options);
  v43 = MEMORY[0x1E69D6F38];
  sub_1D5ED1EB8(0, &qword_1EC880648, MEMORY[0x1E69D6F38]);
  sub_1D5ED1E74(&qword_1EC880650, &qword_1EC880648, v43);
  v45 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v55 + 8))(v20, v56);
}

uint64_t sub_1D5ED13D0@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3E70(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V24.Bound() + 24);
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

uint64_t sub_1D5ED14BC(void *a1)
{
  v3 = v1;
  sub_1D5BE1458(0, &qword_1EC880698, sub_1D5ED24EC, &type metadata for A12_V24.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5ED24EC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5ED2540(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5ED1704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C0910 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D5ED17E4(uint64_t a1)
{
  v2 = sub_1D5ED24EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5ED1820(uint64_t a1)
{
  v2 = sub_1D5ED24EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5ED185C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5ED224C(a1, v6);
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

uint64_t sub_1D5ED18BC()
{
  sub_1D5ED1D60();

  return sub_1D725A24C();
}

uint64_t sub_1D5ED1938@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D5BE1458(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

unint64_t sub_1D5ED1A1C(uint64_t a1)
{
  *(a1 + 8) = sub_1D5ED1A4C();
  result = sub_1D5ED1AA0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5ED1A4C()
{
  result = qword_1EC8805E0;
  if (!qword_1EC8805E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805E0);
  }

  return result;
}

unint64_t sub_1D5ED1AA0()
{
  result = qword_1EC8805E8;
  if (!qword_1EC8805E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8805E8);
  }

  return result;
}

uint64_t type metadata accessor for A12_V24.Bound()
{
  result = qword_1EC8805F8;
  if (!qword_1EC8805F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5ED1B68()
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
        sub_1D5ED1CB0(319, &qword_1EDF1B460, type metadata accessor for FeedHeadline);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5ED1C38(uint64_t a1)
{
  result = sub_1D5ED2540(&qword_1EC880608, type metadata accessor for A12_V24.Bound);
  *(a1 + 8) = result;
  return result;
}

void sub_1D5ED1CB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5ED1D0C()
{
  result = qword_1EC880620;
  if (!qword_1EC880620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880620);
  }

  return result;
}

unint64_t sub_1D5ED1D60()
{
  result = qword_1EC880628;
  if (!qword_1EC880628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880628);
  }

  return result;
}

uint64_t sub_1D5ED1DBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5ED1CB0(255, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5ED1E1C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5ED1E74(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5ED1EB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5ED1EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V24.Layout;
    v8[1] = &type metadata for A12_V24.Layout.Attributes;
    v8[2] = sub_1D5ED1D0C();
    v8[3] = sub_1D5ED1D60();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5ED1F3C()
{
  if (!qword_1EC880658)
  {
    sub_1D5BE1458(255, &qword_1EC880660, sub_1D5ED1D0C, &type metadata for A12_V24.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880658);
    }
  }
}

uint64_t sub_1D5ED1FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5ED203C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5ED2084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D5ED20F0()
{
  result = qword_1EC880668;
  if (!qword_1EC880668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880668);
  }

  return result;
}

unint64_t sub_1D5ED2148()
{
  result = qword_1EC880670;
  if (!qword_1EC880670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880670);
  }

  return result;
}

unint64_t sub_1D5ED21A0()
{
  result = qword_1EC880678;
  if (!qword_1EC880678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880678);
  }

  return result;
}

unint64_t sub_1D5ED21F8()
{
  result = qword_1EC880680;
  if (!qword_1EC880680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880680);
  }

  return result;
}

uint64_t sub_1D5ED224C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5BE1458(0, &qword_1EC880688, sub_1D5ED24EC, &type metadata for A12_V24.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5ED24EC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5ED2540(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
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

unint64_t sub_1D5ED24EC()
{
  result = qword_1EC880690;
  if (!qword_1EC880690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880690);
  }

  return result;
}

uint64_t sub_1D5ED2540(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5ED259C()
{
  result = qword_1EC8806A8;
  if (!qword_1EC8806A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8806A8);
  }

  return result;
}

unint64_t sub_1D5ED25F4()
{
  result = qword_1EC8806B0;
  if (!qword_1EC8806B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8806B0);
  }

  return result;
}

unint64_t sub_1D5ED264C()
{
  result = qword_1EC8806B8;
  if (!qword_1EC8806B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8806B8);
  }

  return result;
}

uint64_t FormatMicaNodeRenderer.render<A>(context:layoutAttributes:view:micaData:token:traitCollection:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v55 = a7;
  v56 = a8;
  v52 = a5;
  v53 = a1;
  v14 = type metadata accessor for FormatMicaData();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v17 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D726344C();
  [a3 setUserInteractionEnabled_];
  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(v18 + 177);
  }

  else
  {
    v19 = 0;
  }

  v54 = a6;
  [a3 setAccessibilityIgnoresInvertColors_];
  v20 = *(a2 + 136);
  v21 = *(a2 + 144);
  [a3 setIsAccessibilityElement_];
  [a3 setAccessibilityElementsHidden_];
  if (v21 > 0xFD)
  {
    goto LABEL_10;
  }

  if ((v21 & 0x80) != 0)
  {
    if (!(v20 | v21 & 0x7F))
    {
      goto LABEL_10;
    }

    v22 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v22 = &selRef_setIsAccessibilityElement_;
  }

  [a3 *v22];
LABEL_10:
  [a3 setClipsToBounds_];
  v50[1] = __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  v57 = *a4;
  v23 = swift_allocObject();
  swift_weakInit();
  sub_1D5ED2F6C(a4, v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = v17;
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  sub_1D5ED2FD0(v26, v28 + v24);
  *(v28 + v25) = a2;
  v29 = v52;
  *(v28 + v27) = v52;

  v30 = v29;
  v31 = v56;
  v32 = v54;
  v33 = v55;
  sub_1D69DEEB8(v53, a3, &v57, v30, v54, sub_1D5ED3034, v28, v55, v56);

  if (v18)
  {
    v34 = *(v18 + 72);
    v35 = *(v18 + 80);
    v36 = *(v18 + 88);
    sub_1D5ED34B0(v34, v35, v36);
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = -2;
  }

  v37 = [a3 layer];
  [a3 bounds];
  v57 = v34;
  v58 = v35;
  v59 = v36;
  sub_1D6E549E4(v37, &v57, v38, v39, v40, v41);

  sub_1D5ED348C(v34, v35, v36);
  if (v18)
  {
    v43 = *(v18 + 64);
    v42 = *(v18 + 72);
    v44 = *(v18 + 80);
    v45 = *(v18 + 88);

    sub_1D5ED34B0(v42, v44, v45);
  }

  else
  {
    v42 = 0;
    v44 = 0;
    v43 = 0;
    v45 = -2;
  }

  v46 = [a3 layer];
  v57 = v42;
  v58 = v44;
  v59 = v45;
  sub_1D6D111F4(v46, v32, v43, &v57, v33, v31);

  sub_1D5ED348C(v42, v44, v45);
  if (v18)
  {
  }

  else
  {
    v47 = 0;
  }

  v57 = v47;
  v48 = sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  sub_1D613DC18(a3, &v57, v48);
}

uint64_t sub_1D5ED2AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v6 = type metadata accessor for FormatMicaData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = (v36 + *(v6 + 24));
    v12 = *v11;
    v13 = *(v11 + 4);
    v35 = result;
    if (!v13)
    {
      v19 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      v34 = a1;
      swift_weakInit();

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D5ED2F6C(v36, &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v22 = (*(v7 + 80) + 52) & ~*(v7 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v20;
      *(v23 + 32) = v19;
      *(v23 + 40) = a4;
      *(v23 + 48) = v12;
      sub_1D5ED2FD0(&v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v23 + v22);

      goto LABEL_6;
    }

    if (v13 == 1)
    {
      v14 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      v33 = v12;
      swift_weakInit();

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D5ED2F6C(v36, &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v17 = (*(v7 + 80) + 52) & ~*(v7 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v15;
      *(v18 + 32) = v14;
      *(v18 + 40) = a4;
      *(v18 + 48) = v33;
      sub_1D5ED2FD0(&v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);

LABEL_6:
      sub_1D725F8CC();
    }

    if (v12)
    {
      if (v12 != 1)
      {
LABEL_13:
        sub_1D725F8FC();
      }

      v24 = *(result + 56);
      v25 = *(a4 + 16);
      v26 = *(a4 + 24);
      swift_beginAccess();
      v27 = *(v24 + 24);

      v28 = sub_1D5BE240C(v25, v26, v27);

      if (v28)
      {
      }
    }

    else
    {
      v29 = *(result + 56);
      v25 = *(a4 + 16);
      v26 = *(a4 + 24);
      swift_beginAccess();
      v30 = *(v29 + 16);

      v31 = sub_1D5BE240C(v25, v26, v30);

      if (v31)
      {
      }
    }

    swift_beginAccess();

    sub_1D5B860D0(&v37, v25, v26);
    swift_endAccess();

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D5ED2F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMicaData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5ED2FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMicaData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5ED3034(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatMicaData() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return sub_1D5ED2AD4(a1, v6, v1 + v4, v5);
}

void sub_1D5ED30E0(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      swift_beginAccess();
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = *(v12 + 56);
        v14 = *(a6 + 16);
        v15 = *(a6 + 24);
        swift_beginAccess();
        v16 = *(v13 + 24);

        v17 = sub_1D5BE240C(v14, v15, v16);

        if ((v17 & 1) == 0 && a2 <= a1)
        {
          swift_beginAccess();

          sub_1D5B860D0(&v18, v14, v15);
          swift_endAccess();

          type metadata accessor for FormatMicaData();
          sub_1D725F8FC();
          sub_1D725F8CC();
        }
      }
    }
  }
}

void sub_1D5ED3270(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      swift_beginAccess();
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = *(v12 + 56);
        v14 = *(a6 + 16);
        v15 = *(a6 + 24);
        swift_beginAccess();
        v16 = *(v13 + 32);

        v17 = sub_1D5BE240C(v14, v15, v16);

        if ((v17 & 1) == 0 && a2 <= a1)
        {
          swift_beginAccess();

          sub_1D5B860D0(&v18, v14, v15);
          swift_endAccess();

          type metadata accessor for FormatMicaData();
          sub_1D725F8FC();
          sub_1D725F8CC();
        }
      }
    }
  }
}

uint64_t FormatMicaNodeRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t FormatMicaNodeRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5ED348C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D5ED34A0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5ED34A0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1D5ED34B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D5ED34C4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5ED34C4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = (type metadata accessor for FormatMicaData() - 8);
  v2 = (*(*v1 + 80) + 52) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_1D725D4AC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5ED3684(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128), double a2)
{
  v4 = *(type metadata accessor for FormatMicaData() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9.n128_u32[0] = *(v2 + 48);
  v10 = v2 + ((*(v4 + 80) + 52) & ~*(v4 + 80));
  v11.n128_f64[0] = a2;

  return a1(v5, v6, v7, v8, v10, v11, v9);
}

void sub_1D5ED3714()
{
  v1 = v0;
  v2 = objc_opt_self();
  if ([v2 areAnimationsEnabled])
  {

    sub_1D725B31C();

    if (aBlock)
    {
      *(v0 + 32) = 1;
    }

    else
    {

      sub_1D725B32C();

      v15 = sub_1D5ED3B54;
      v16 = v0;
      aBlock = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1D5B6B06C;
      v14 = &block_descriptor_3;
      v8 = _Block_copy(&aBlock);

      v15 = sub_1D5ED3B5C;
      v16 = v1;
      aBlock = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1D5DF8CE4;
      v14 = &block_descriptor_4;
      v9 = _Block_copy(&aBlock);

      [v2 animateWithDuration:v8 animations:v9 completion:0.2];
      _Block_release(v9);
      _Block_release(v8);
    }

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];

    if (!v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    [v5 setNeedsLayout];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v10 = [v6 view];

  if (!v10)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v10 layoutIfNeeded];
}

void sub_1D5ED39A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (!v2)
    {
      __break(1u);
      goto LABEL_11;
    }

    [v2 setNeedsLayout];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v5 layoutIfNeeded];
}

uint64_t sub_1D5ED3A84(uint64_t a1, uint64_t a2)
{

  sub_1D725B32C();

  if (*(a2 + 32) == 1)
  {
    *(a2 + 32) = 0;
    return sub_1D5ED3714(result);
  }

  return result;
}

uint64_t sub_1D5ED3AF0()
{

  MEMORY[0x1DA6FD660](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5ED3B7C(void *a1)
{
  v3 = v1;
  sub_1D5ED8950(0, &qword_1EC880770, sub_1D5ED88FC, &type metadata for A12_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5ED88FC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5ED89B8(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5ED3DC4(uint64_t a1)
{
  v2 = sub_1D5ED88FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5ED3E00(uint64_t a1)
{
  v2 = sub_1D5ED88FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}