uint64_t ExpressibleByArgumentEnum.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v116 = a1;
  v94 = a5;
  v8 = sub_1C40316A0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = &v88 - v10;
  v110 = *(a4 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  v11 = *(v113 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v109 = &v88 - v13;
  v112 = *(a3 - 8);
  v14 = *(v112 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v104 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v88 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v108 = sub_1C40316A0();
  v106 = *(v108 - 8);
  v18 = *(v106 + 64);
  v19 = MEMORY[0x1EEE9AC00](v108);
  v111 = (&v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v88 - v21);
  v23 = sub_1C4030720();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v88 - v28;
  v30 = *(a4 + 64);
  v117 = a3;
  v100 = a4;
  v31 = v30(a3, a4);
  sub_1C4030700();
  v93 = a2;
  v32 = sub_1C4031220();
  v34 = v33;
  v35 = *(v24 + 16);
  v90 = v29;
  v35(v27, v29, v23);
  v36 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v37 = TupleTypeMetadata2;
  v38 = swift_allocObject();
  v91 = v24;
  v39 = *(v24 + 32);
  v92 = v23;
  v39(v38 + v36, v27, v23);
  v40 = sub_1C3F0BC0C(v32, v34, sub_1C3F0BBA4, v38);
  v116 = v41;

  v42 = *(v31 + 64);
  v95 = v31 + 64;
  v43 = 1 << *(v31 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v46 = (v43 + 63) >> 6;
  v107 = v37 - 8;
  v96 = v112 + 16;
  v115 = (v112 + 32);
  v98 = (v113 + 8);
  v105 = (v112 + 8);
  v106 += 32;
  v102 = v31;
  v47 = v104;

  v49 = 0;
  v114 = v40;
  if (v45)
  {
    while (1)
    {
      v50 = v49;
LABEL_12:
      v54 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v55 = v54 | (v50 << 6);
      v56 = (*(v102 + 48) + 16 * v55);
      v58 = *v56;
      v57 = v56[1];
      v59 = v112;
      v60 = v97;
      v61 = v117;
      (*(v112 + 16))(v97, *(v102 + 56) + *(v112 + 72) * v55, v117);
      v62 = TupleTypeMetadata2;
      v63 = *(TupleTypeMetadata2 + 48);
      v64 = v111;
      *v111 = v58;
      v64[1] = v57;
      v65 = *(v59 + 32);
      v53 = v64;
      v66 = v60;
      v37 = v62;
      v65(v64 + v63, v66, v61);
      v67 = *(v37 - 8);
      (*(v67 + 56))(v53, 0, 1, v37);

      v52 = v50;
      v47 = v104;
LABEL_13:
      (*v106)(v22, v53, v108);
      if ((*(v67 + 48))(v22, 1, v37) == 1)
      {
        (*(v91 + 8))(v90, v92);

        v84 = 1;
        v85 = v117;
        v86 = v94;
        return (*(v112 + 56))(v86, v84, 1, v85);
      }

      v113 = v52;
      v68 = *v22;
      v69 = v22[1];
      v70 = v22 + *(v37 + 48);
      v101 = *v115;
      v101(v47, v70, v117);
      if (sub_1C4031220() == v114 && v71 == v116)
      {
        break;
      }

      v72 = sub_1C4031BF0();

      if (v72)
      {
        goto LABEL_26;
      }

      v73 = v22;
      v74 = v109;
      v75 = v47;
      sub_1C4031390();
      v76 = AssociatedTypeWitness;
      v77 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      v78 = sub_1C4031BB0();
      v80 = v79;
      v81 = v74;
      v82 = v114;
      (*v98)(v81, v76);
      if (v78 == v82 && v80 == v116)
      {
        v47 = v75;
        break;
      }

      v83 = sub_1C4031BF0();

      v47 = v75;
      v22 = v73;
      if (v83)
      {
        goto LABEL_26;
      }

      (*v105)(v47, v117);

      v49 = v113;
      if (!v45)
      {
        goto LABEL_5;
      }
    }

LABEL_26:
    v85 = v117;
    sub_1C4031390();
    v87 = v89;
    sub_1C40313A0();
    result = (*(v112 + 48))(v87, 1, v85);
    if (result == 1)
    {
      goto LABEL_30;
    }

    (*v105)(v47, v85);
    (*(v91 + 8))(v90, v92);
    v86 = v94;
    v101(v94, v87, v85);
    v84 = 0;
    return (*(v112 + 56))(v86, v84, 1, v85);
  }

  else
  {
LABEL_5:
    if (v46 <= v49 + 1)
    {
      v51 = v49 + 1;
    }

    else
    {
      v51 = v46;
    }

    v52 = v51 - 1;
    v53 = v111;
    while (1)
    {
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v50 >= v46)
      {
        v67 = *(v37 - 8);
        (*(v67 + 56))(v111, 1, 1, v37);
        v45 = 0;
        goto LABEL_13;
      }

      v45 = *(v95 + 8 * v50);
      ++v49;
      if (v45)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F0B8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  sub_1C4031390();
  sub_1C4031390();
  v15 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 16) + 8);
  v16 = sub_1C4031180();
  v17 = *(v8 + 8);
  v17(v12, AssociatedTypeWitness);
  v17(v14, AssociatedTypeWitness);
  return v16 & 1;
}

uint64_t sub_1C3F0BA78(char *a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *a1;
  v7 = *(a1 + 1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, v7, &a1[*(TupleTypeMetadata2 + 48)]) & 1;
}

unint64_t sub_1C3F0BAF4(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = sub_1C40312A0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1C4031350();
}

uint64_t sub_1C3F0BBA4()
{
  v1 = *(sub_1C4030720() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1C4030710() & 1;
}

uint64_t sub_1C3F0BC0C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v21 = a4;
  v19 = 0;
  v20 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1C40318B0();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = v18 + v9;
        }

        else
        {
          v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1C4031910();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      v15 = a3(v12);
      if (v4)
      {
      }

      if (v15)
      {
        sub_1C4031260();
      }

      v9 += v14;
      if (v9 >= v6)
      {
        return v19;
      }
    }
  }

  return 0;
}

uint64_t sub_1C3F0BDEC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1C4031570();
  if (!v26)
  {
    return sub_1C4031410();
  }

  v48 = v26;
  v52 = sub_1C4031990();
  v39 = sub_1C40319A0();
  sub_1C4031940();
  result = sub_1C4031560();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1C4031590();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1C4031980();
      result = sub_1C4031580();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ExpressibleByArgumentOptionSet.init(argument:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a2;
  v78 = a5;
  v79 = *(a4 + 24);
  v8 = *(v79 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = sub_1C40316A0();
  v91 = *(v94 - 8);
  v10 = *(v91 + 64);
  v11 = MEMORY[0x1EEE9AC00](v94);
  v96 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v75 - v13;
  v97 = *(swift_getAssociatedConformanceWitness() + 8);
  v98 = *(*(v97 + 24) + 16);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v95 = &v75 - v17;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v87 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v75 - v25;
  v77 = sub_1C4030720();
  v76 = *(v77 - 8);
  v27 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a4 + 40);
  v80 = a3;
  v31 = v30(a3, a4);
  sub_1C4030700();
  v104 = 32;
  v105 = 0xE100000000000000;
  v103 = &v104;
  v32 = sub_1C3F0D528(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C3F0DB5C, v102, a1, v99, &v104);
  v75 = v29;
  v101 = v29;
  v92 = sub_1C3F32990(sub_1C3F0D940, v100, v32);

  swift_getAssociatedConformanceWitness();
  sub_1C4031C10();
  v82 = v26;
  v33 = v96;
  v99 = AssociatedTypeWitness;
  v34 = v22;
  result = sub_1C4031BD0();
  v36 = 0;
  v38 = v31 + 64;
  v37 = *(v31 + 64);
  v86 = v31;
  v39 = 1 << *(v31 + 32);
  v40 = TupleTypeMetadata2;
  v41 = -1;
  if (v39 < 64)
  {
    v41 = ~(-1 << v39);
  }

  v42 = v41 & v37;
  v43 = (v39 + 63) >> 6;
  v95 = (TupleTypeMetadata2 - 8);
  v85 = (v18 + 16);
  v98 = (v18 + 32);
  v90 = (v91 + 32);
  v84 = v18;
  v91 = v18 + 8;
  v83 = v34;
  v89 = v31 + 64;
  v88 = v43;
  while (v42)
  {
    v44 = v33;
    v45 = v36;
LABEL_16:
    v48 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v49 = v48 | (v45 << 6);
    v50 = (*(v86 + 48) + 16 * v49);
    v52 = *v50;
    v51 = v50[1];
    v53 = v84;
    v54 = v87;
    v55 = v99;
    (*(v84 + 16))(v87, *(v86 + 56) + *(v84 + 72) * v49, v99);
    v56 = *(v40 + 48);
    *v44 = v52;
    v44[1] = v51;
    v57 = *(v53 + 32);
    v33 = v44;
    v57(v44 + v56, v54, v55);
    v58 = *(v40 - 8);
    (*(v58 + 56))(v44, 0, 1, v40);

    v34 = v83;
LABEL_17:
    v59 = v93;
    (*v90)(v93, v33, v94);
    if ((*(v58 + 48))(v59, 1, v40) == 1)
    {

      v73 = v82;
      v74 = v99;
      (*v85)(v87, v82, v99);
      sub_1C4031D40();
      (*v91)(v73, v74);
      return (*(v76 + 8))(v75, v77);
    }

    v60 = v59;
    v61 = *v59;
    v62 = *(v60 + 1);
    v63 = v40;
    v64 = v99;
    (*v98)(v34, &v60[*(v40 + 48)], v99);
    v65 = sub_1C4031220();
    v67 = v66;

    v104 = v65;
    v105 = v67;
    MEMORY[0x1EEE9AC00](v68);
    *(&v75 - 2) = &v104;
    v69 = v92;
    LOBYTE(v65) = sub_1C3F0D47C(sub_1C3F0D960, (&v75 - 4), v92);

    if (v65 & 1) != 0 || (v70 = *(v97 + 8), v104 = sub_1C4031BB0(), v105 = v71, MEMORY[0x1EEE9AC00](v104), *(&v75 - 2) = &v104, v72 = sub_1C3F0D47C(sub_1C3F0DB5C, (&v75 - 4), v69), , (v72))
    {
      sub_1C4031710();
    }

    result = (*v91)(v34, v64);
    v40 = v63;
    v33 = v96;
    v38 = v89;
    v43 = v88;
  }

  if (v43 <= v36 + 1)
  {
    v46 = v36 + 1;
  }

  else
  {
    v46 = v43;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v45 >= v43)
    {
      v58 = *(v40 - 8);
      (*(v58 + 56))(v33, 1, 1, v40);
      v42 = 0;
      v36 = v47;
      goto LABEL_17;
    }

    v42 = *(v38 + 8 * v45);
    ++v36;
    if (v42)
    {
      v44 = v33;
      v36 = v45;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F0CB10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C4030720();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = sub_1C40316B0();
  v15 = v14;
  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v18 = sub_1C3F0BC0C(v13, v15, sub_1C3F0BBA4, v17);
  v20 = v19;

  *a3 = v18;
  a3[1] = v20;
  return result;
}

uint64_t ExpressibleByArgumentOptionSet.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))();
  v16[10] = a1;
  v16[11] = a2;
  v17 = v2;
  v5 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1E69E6158];
  sub_1C4031110();
  v16[6] = a1;
  v16[7] = a2;
  sub_1C4031120();
  swift_getWitnessTable();
  v7 = sub_1C4031370();

  v19 = v7;
  v16[2] = a1;
  v16[3] = a2;
  swift_getTupleTypeMetadata2();
  v8 = sub_1C4031440();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1C3F0BDEC(sub_1C3F0DA18, v16, v8, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v19 = 91;
  v20 = 0xE100000000000000;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
  sub_1C3F0DA74();
  v12 = sub_1C4031150();
  v14 = v13;

  MEMORY[0x1C6932F70](v12, v14);

  MEMORY[0x1C6932F70](93, 0xE100000000000000);
  return v19;
}

BOOL sub_1C3F0CEF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  v37 = *(*(a5 + 24) + 8);
  v38 = a3;
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v35 = *(v6[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33[1] = v33 - v8;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v33 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v18 = *(v39 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = v33 - v20;
  v22 = *a1;
  v23 = a1[1];
  *v21 = v22;
  *(v21 + 1) = v23;
  v40 = v19;
  (*(v10 + 16))(&v21[*(v19 + 48)], v36, v9);

  sub_1C4031390();
  sub_1C4031700();
  v24 = *(v10 + 8);
  v24(v14, v9);
  if (sub_1C4031740())
  {
    if (sub_1C4031730() >= 64)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v25 = sub_1C4031740();
  v26 = sub_1C4031730();
  if ((v25 & 1) == 0)
  {
    if (v26 < 64)
    {
      goto LABEL_9;
    }

LABEL_10:
    v41 = 0;
    sub_1C3F0DAEC();
    sub_1C40316F0();
    v31 = *(v6[2] + 8);
    v29 = sub_1C4031180();
    v24(v14, v9);
    v24(v16, v9);
    (*(v39 + 8))(v21, v40);
    return (v29 & 1) == 0;
  }

  if (v26 > 64)
  {
    goto LABEL_10;
  }

  swift_getAssociatedConformanceWitness();
  sub_1C4031C10();
  sub_1C4031BD0();
  v27 = *(v6[4] + 8);
  v28 = sub_1C4031170();
  v24(v14, v9);
  if (v28)
  {
LABEL_9:
    v30 = sub_1C4031720();
    v24(v16, v9);
    (*(v39 + 8))(v21, v40);
    v29 = v30 == 0;
    return (v29 & 1) == 0;
  }

  v24(v16, v9);
  (*(v39 + 8))(v21, v40);
  v29 = 0;
  return (v29 & 1) == 0;
}

uint64_t sub_1C3F0D3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  v6 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 32) + 8);
  return sub_1C4031160() & 1;
}

uint64_t sub_1C3F0D47C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_1C3F0D528@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1C4031350();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1C3EFFEDC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1C3EFFEDC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1C4031330();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1C4031290();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1C4031290();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1C4031350();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1C3EFFEDC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1C4031350();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1C3EFFEDC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1C3EFFEDC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1C4031290();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F0D8E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4031BF0() & 1;
  }
}

uint64_t sub_1C3F0D97C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4031BF0() & 1;
  }
}

uint64_t sub_1C3F0DA18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x1C6932F70](*a1, a1[1]);
  *a2 = 46;
  a2[1] = 0xE100000000000000;
  return result;
}

unint64_t sub_1C3F0DA74()
{
  result = qword_1EC08F578;
  if (!qword_1EC08F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F570, &qword_1C4038C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F578);
  }

  return result;
}

unint64_t sub_1C3F0DAEC()
{
  result = qword_1EC08F580;
  if (!qword_1EC08F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F580);
  }

  return result;
}

uint64_t sub_1C3F0DB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0290(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0290((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3F038B4(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3F038B4(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F0DDD4()
{
  result = sub_1C3F15BBC(&unk_1F4387730);
  qword_1EC0B0C50 = result;
  return result;
}

CallHistory::AutoAnsweredReason_optional __swiftcall AutoAnsweredReason.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_WORD *sub_1C3F0DE48@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C3F0DF24()
{
  v1 = *v0;
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F0DF98()
{
  v1 = *v0;
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F0DFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09714();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0E044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09618();
  v5 = sub_1C3F09714();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0E0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09618();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t _sSo30CHRecentCallAutoAnsweredReasonV0B7HistoryEyAbC0cdE0OcfC_0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F0DB78(qword_1EC0B0C50);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F238, &unk_1C4038DE0);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F02D14(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F3C788(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t sub_1C3F0E21C()
{
  result = qword_1EC08F588;
  if (!qword_1EC08F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F588);
  }

  return result;
}

unint64_t sub_1C3F0E274()
{
  result = qword_1EC08F590;
  if (!qword_1EC08F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F598, &qword_1C4038D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoAnsweredReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoAnsweredReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C3F0E434(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0538(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0538((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F0E68C()
{
  result = sub_1C3F15BE4(&unk_1F4387770);
  qword_1EC0B0C58 = result;
  return result;
}

CallHistory::CallDirectoryIdentityType_optional __swiftcall CallDirectoryIdentityType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F0E7B0()
{
  result = qword_1EC08F5A0;
  if (!qword_1EC08F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5A0);
  }

  return result;
}

unint64_t sub_1C3F0E808()
{
  result = qword_1EC08F5A8;
  if (!qword_1EC08F5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5B0, &qword_1C4038EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5A8);
  }

  return result;
}

uint64_t sub_1C3F0E880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0995C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0E8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0980C();
  v5 = sub_1C3F0995C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0E934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0980C();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F0EAE0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019C8(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 8 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 8);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F019C8(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 8 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F02B88();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F0EE38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB08 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F0E434(qword_1EC0B0C58);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2E0, &qword_1C4038758);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F0EAE0(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1C3F0EF58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0418(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 4 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0418((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 8 * v16;
    *(v17 + 32) = v14;
    *(v17 + 36) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F0F1B0()
{
  result = sub_1C3F15A1C(&unk_1F4387588);
  qword_1EC0B0C60 = result;
  return result;
}

CallHistory::CallerIDAvailability_optional __swiftcall CallerIDAvailability.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F0F2C0()
{
  result = qword_1EC08F5B8;
  if (!qword_1EC08F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5B8);
  }

  return result;
}

unint64_t sub_1C3F0F318()
{
  result = qword_1EC08F5C0;
  if (!qword_1EC08F5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5C8, &qword_1C4039090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5C0);
  }

  return result;
}

uint64_t sub_1C3F0F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09BA4();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0F3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09A54();
  v5 = sub_1C3F09BA4();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0F444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09A54();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

void sub_1C3F0F4A8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  LODWORD(v8) = *(a1 + 36);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F016D8(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 4 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 44);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 4);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 4);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F016D8(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 4 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F029D4();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F0F800(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F0EF58(qword_1EC0B0C60);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F310, &qword_1C4038788);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F0F4A8(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 4 * v6);
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

uint64_t sub_1C3F0F920(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0448(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 4 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0448((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 8 * v16;
    *(v17 + 32) = v14;
    *(v17 + 36) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C3F0FB78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F5E8, &unk_1C4039300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4039150;
  *(inited + 32) = 1;
  *(inited + 36) = 1;
  *(inited + 40) = 2;
  *(inited + 44) = 2;
  *(inited + 48) = 4;
  *(inited + 52) = 3;
  *(inited + 56) = 8;
  *(inited + 60) = 4;
  *(inited + 64) = 16;
  *(inited + 68) = 5;
  v1 = sub_1C3F15A30(inited);
  result = swift_setDeallocating();
  qword_1EC0B0C68 = v1;
  return result;
}

CallHistory::CallStatus_optional __swiftcall CallStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 6u)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F0FCD0()
{
  result = qword_1EC08F5D0;
  if (!qword_1EC08F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5D0);
  }

  return result;
}

unint64_t sub_1C3F0FDD8()
{
  result = qword_1EC08F5D8;
  if (!qword_1EC08F5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5E0, &qword_1C403AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5D8);
  }

  return result;
}

uint64_t sub_1C3F0FE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09DEC();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0FEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09C9C();
  v5 = sub_1C3F09DEC();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0FF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09C9C();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for CallStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F100A8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 6)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  LODWORD(v8) = *(a1 + 36);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F016EC(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 4 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 44);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 4);
        if (v5 == 6)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 4);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F016EC(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 4 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F029E8();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F10400(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB18 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F0F920(qword_1EC0B0C68);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F308, &qword_1C4038780);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v11 = v4;
  sub_1C3F100A8(v2, 1, &v11);
  v5 = v11;
  if (*(v11 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 4 * v6);
  }

  else
  {
    v8 = &kCHCallStatusUnknown;
  }

  v9 = *v8;

  return v9;
}

uint64_t sub_1C3F10528(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0598(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0598((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F10780()
{
  result = sub_1C3F15D3C(&unk_1F4387860);
  qword_1EC0B0C70 = result;
  return result;
}

CallHistory::CommunicationTrustScore_optional __swiftcall CommunicationTrustScore.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F10890()
{
  result = qword_1EC08F5F0;
  if (!qword_1EC08F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5F0);
  }

  return result;
}

unint64_t sub_1C3F108E8()
{
  result = qword_1EC08F5F8;
  if (!qword_1EC08F5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F600, &qword_1C4039400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5F8);
  }

  return result;
}

uint64_t sub_1C3F1095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C3F10C7C();
  v9 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE530](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_1C3F109D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F10C7C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F10A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F10C28();
  v5 = sub_1C3F10C7C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F10A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F10C28();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for CommunicationTrustScore(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommunicationTrustScore(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C3F10C28()
{
  result = qword_1EC08F608;
  if (!qword_1EC08F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F608);
  }

  return result;
}

unint64_t sub_1C3F10C7C()
{
  result = qword_1EC08F610;
  if (!qword_1EC08F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F610);
  }

  return result;
}

void sub_1C3F10CD0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 10)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019F0(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 8 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 10)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 8);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F019F0(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 8 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F02BB0();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F11028(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB20 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F10528(qword_1EC0B0C70);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2D0, &unk_1C40394D0);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F10CD0(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 4;
  }

  return v8;
}

unint64_t sub_1C3F11148()
{
  result = sub_1C3F15C34(&unk_1F4387820);
  qword_1EC0B0C78 = result;
  return result;
}

CallHistory::EmergencyMediaType_optional __swiftcall EmergencyMediaType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F11258()
{
  result = qword_1EC08F618;
  if (!qword_1EC08F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F618);
  }

  return result;
}

unint64_t sub_1C3F112B0()
{
  result = qword_1EC08F620;
  if (!qword_1EC08F620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F628, &qword_1C40395D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F620);
  }

  return result;
}

uint64_t sub_1C3F11328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A034();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F1137C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09EE4();
  v5 = sub_1C3F0A034();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F113DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09EE4();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t sub_1C3F11440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0568(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0568((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F11698()
{
  result = sub_1C3F15C0C(&unk_1F43877C0);
  qword_1EC0B0C80 = result;
  return result;
}

CallHistory::HandleType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HandleType.init(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v4 = v1;
  v6 = sub_1C4031220();
  v7 = v5;
  if (v6 == 0x636972656E6567 && v5 == 0xE700000000000000 || (sub_1C4031BF0() & 1) != 0 || v6 == 103 && v7 == 0xE100000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    v9 = 1;
LABEL_8:
    *v4 = v9;
    return result;
  }

  if (v6 == 0x656E6F6870 && v7 == 0xE500000000000000 || (sub_1C4031BF0() & 1) != 0 || v6 == 0x6D754E656E6F6870 && v7 == 0xEB00000000726562 || (sub_1C4031BF0() & 1) != 0 || v6 == 112 && v7 == 0xE100000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    v9 = 2;
    goto LABEL_8;
  }

  if (v6 == 0x6C69616D65 && v7 == 0xE500000000000000 || (sub_1C4031BF0() & 1) != 0 || v6 == 0x6464416C69616D65 && v7 == 0xEC00000073736572 || (sub_1C4031BF0() & 1) != 0 || v6 == 101 && v7 == 0xE100000000000000)
  {

LABEL_26:

    v9 = 3;
    goto LABEL_8;
  }

  v10 = sub_1C4031BF0();

  if (v10)
  {
    goto LABEL_26;
  }

  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001ALL, 0x80000001C4056D40);
  MEMORY[0x1C6932F70](countAndFlagsBits, object);

  MEMORY[0x1C6932F70](0xD000000000000069, 0x80000001C4056D60);
  sub_1C4030C20();
  sub_1C3F11A00();
  swift_allocError();
  sub_1C4030C30();
  return swift_willThrow();
}

unint64_t sub_1C3F11A00()
{
  result = qword_1EC08F630;
  if (!qword_1EC08F630)
  {
    sub_1C4030C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F630);
  }

  return result;
}

CallHistory::HandleType_optional __swiftcall HandleType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F11B40()
{
  result = qword_1EC08F638;
  if (!qword_1EC08F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F638);
  }

  return result;
}

unint64_t sub_1C3F11B98()
{
  result = qword_1EC08F640;
  if (!qword_1EC08F640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F648, &qword_1C4039770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F640);
  }

  return result;
}

uint64_t sub_1C3F11C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A27C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F11C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A12C();
  v5 = sub_1C3F0A27C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F11CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A12C();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for HandleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F11E68(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 4)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019DC(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 8 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 4)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 8);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F019DC(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 8 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F02B9C();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F121C0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB30 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F11440(qword_1EC0B0C80);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2C8, &qword_1C4038748);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F11E68(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1C3F122E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0478(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0478((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F12538()
{
  result = sub_1C3F15B1C(&unk_1F43875C0);
  qword_1EC0B0C88 = result;
  return result;
}

CallHistory::JunkConfidence_optional __swiftcall JunkConfidence.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F12658()
{
  result = qword_1EC08F650;
  if (!qword_1EC08F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F650);
  }

  return result;
}

unint64_t sub_1C3F12700()
{
  result = qword_1EC08F658;
  if (!qword_1EC08F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F660, &qword_1C4039958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F658);
  }

  return result;
}

uint64_t sub_1C3F12774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C3F12954();
  v9 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE530](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_1C3F127E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F12954();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F1283C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F12900();
  v5 = sub_1C3F12954();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F1289C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F12900();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

unint64_t sub_1C3F12900()
{
  result = qword_1EC08F668;
  if (!qword_1EC08F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F668);
  }

  return result;
}

unint64_t sub_1C3F12954()
{
  result = qword_1EC08F670;
  if (!qword_1EC08F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F670);
  }

  return result;
}

void sub_1C3F129A8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 4)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F01978(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 8 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 4)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 8);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F01978(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 8 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F02B38();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F12D00(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB38 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F122E0(qword_1EC0B0C88);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F300, &qword_1C4038778);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F129A8(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1C3F12E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF04A8(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF04A8((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t MediaType.description.getter()
{
  v1 = 0x6F696475612ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F656469762ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

unint64_t sub_1C3F130D0()
{
  result = sub_1C3F15B44(&unk_1F4387620);
  qword_1EC0B0C90 = result;
  return result;
}

CallHistory::MediaType_optional __swiftcall MediaType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F131E0()
{
  result = qword_1EC08F678;
  if (!qword_1EC08F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F678);
  }

  return result;
}

unint64_t sub_1C3F13238()
{
  result = qword_1EC08F680;
  if (!qword_1EC08F680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F688, &qword_1C403AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F680);
  }

  return result;
}

uint64_t sub_1C3F132B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A4C4();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F13304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A374();
  v5 = sub_1C3F0A4C4();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F13364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A374();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

void sub_1C3F133C8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F0198C(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 8 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 8);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F0198C(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 8 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F02B4C();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F13720(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F12E24(qword_1EC0B0C90);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2F8, &qword_1C4038770);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F133C8(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1C3F13840@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v33 = a3;
  v5 = sub_1C4030720();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3F153C8(&unk_1F4387A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  sub_1C4030700();
  v41 = 32;
  v42 = 0xE100000000000000;
  v39 = &v41;
  v10 = sub_1C3F0D528(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C3F15878, v38, a1, a2, 0x20uLL);
  v30 = v8;
  v37 = v8;
  v11 = sub_1C3F32990(sub_1C3F0D940, v36, v10);

  v13 = 0;
  v35 = 0;
  v14 = *(v9 + 64);
  v34 = v9;
  v15 = 1 << *(v9 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
LABEL_11:
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
    v21 = (*(v34 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v34 + 56) + 2 * v20);
    v40 = *(*(v34 + 56) + 2 * v20);
    v41 = sub_1C4031220();
    v42 = v25;
    MEMORY[0x1EEE9AC00](v41);
    *(&v30 - 2) = &v41;
    v26 = sub_1C3F0D47C(sub_1C3F15878, (&v30 - 4), v11);

    if (v26 & 1) != 0 || (v41 = sub_1C4031BB0(), v42 = v27, MEMORY[0x1EEE9AC00](v41), *(&v30 - 2) = &v41, v28 = sub_1C3F0D47C(sub_1C3F161A4, (&v30 - 4), v11), result = , (v28))
    {
      v35 |= v24;
    }

    v17 &= v17 - 1;
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      v29 = v32;
      *v33 = v35;
      return (*(v31 + 8))(v30, v29);
    }

    v17 = *(v9 + 64 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C3F13B7C(__int16 a1)
{
  v27 = a1;
  v1 = sub_1C3F153C8(&unk_1F43872B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  v23 = &v27;
  v2 = sub_1C3F14D8C(sub_1C3F15898, v22, v1);

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = sub_1C3F14318(*(v2 + 16), 0);
    v6 = sub_1C3EF189C(&v25, (v5 + 4), v3, v2);

    sub_1C3EE75E4();
    if (v6 != v3)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v25 = v5;
  sub_1C3F143A8(&v25);

  v7 = v25;
  v8 = *(v25 + 16);
  if (v8)
  {
    v24 = v4;
    sub_1C3EF0270(0, v8, 0);
    v9 = v24;
    v10 = v7 + 5;
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v25 = 46;
      v26 = 0xE100000000000000;

      MEMORY[0x1C6932F70](v11, v12);

      v13 = v25;
      v14 = v26;
      v24 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C3EF0270((v15 > 1), v16 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v25 = 91;
  v26 = 0xE100000000000000;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
  sub_1C3F0DA74();
  v18 = sub_1C4031150();
  v20 = v19;

  MEMORY[0x1C6932F70](v18, v20);

  MEMORY[0x1C6932F70](93, 0xE100000000000000);
  return v25;
}

unint64_t static ScreenSharingType.caseMap.getter()
{
  v0 = sub_1C3F153C8(&unk_1F4387DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1C3F13F6C()
{
  v1 = *v0;
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F13FE0()
{
  v1 = *v0;
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

unint64_t sub_1C3F14024()
{
  v0 = sub_1C3F153C8(&unk_1F4387AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  return v0;
}

BOOL sub_1C3F140C0(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1C3F140F0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1C3F1411C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *sub_1C3F141F4@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1C3F1422C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C3F13840(a1, a2, &v5);
  *a3 = v5;
  *(a3 + 2) = 0;
  return result;
}

uint64_t sub_1C3F14268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F154C8();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F142C0@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_1C3F14318(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF70, &qword_1C4039EA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_1C3F143A8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C3F15364(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1C4031BA0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 4))
          {
            break;
          }

          v14 = v12[2];
          v15 = v12[3];
          *(v12 + 1) = *(v12 - 1);
          v12[4] = v12[1];
          *(v12 - 1) = v14;
          *v12 = v15;
          *(v12 + 4) = v13;
          v12 -= 3;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF78, &unk_1C4038160);
      v7 = sub_1C4031420();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1C3F1450C(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C3F1450C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C3F14D78(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C3F14AC0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[12];
        v14 += 12;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
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
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 8);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
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
      result = sub_1C3EFFD7C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1C3EFFD7C((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1C3F14AC0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (v32 >= *(v31 + 16))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
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

uint64_t sub_1C3F14AC0(__int16 *__dst, __int16 *__src, unint64_t a3, __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 12 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 2);
    }

    v13 = &v4[v12];
    if (v8 < 24)
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

      if (v6[8] < v4[8])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 12;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 12;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 12;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 12 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v13 - 4) < *(v6 - 4))
      {
        v21 = v6 - 12;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 12, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 12;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 12;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 12 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 2);
  }

  return 1;
}

uint64_t sub_1C3F14CEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C3F14D78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C3F14D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1C3F14F0C(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1C3F15084(v12, v7, a3, v5);
  result = MEMORY[0x1C6934650](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C3F14F0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __int16 *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    v26 = *(v15 + 2 * v14);

    v18 = a4(v25, &v26);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1C3F15114(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1C3F15114(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C3F15084(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __int16 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1C3F14F0C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C3F15114(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F6D0, &qword_1C4039EA8);
  result = sub_1C4031A10();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 2 * v16);
    v21 = *(v9 + 40);
    sub_1C4031C70();

    sub_1C4031280();
    result = sub_1C4031CC0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 2 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

unint64_t sub_1C3F153C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F6D0, &qword_1C4039EA8);
    v3 = sub_1C4031A10();

    for (i = (a1 + 48); ; i += 12)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C3F3C710(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 2 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F154C8()
{
  result = qword_1EC08F698;
  if (!qword_1EC08F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F698);
  }

  return result;
}

unint64_t sub_1C3F15520()
{
  result = qword_1EC08F6A0;
  if (!qword_1EC08F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6A0);
  }

  return result;
}

unint64_t sub_1C3F15574()
{
  result = qword_1EC08F6A8;
  if (!qword_1EC08F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6A8);
  }

  return result;
}

unint64_t sub_1C3F155C8(void *a1)
{
  a1[1] = sub_1C3F15600();
  a1[2] = sub_1C3F15654();
  result = sub_1C3F156A8();
  a1[3] = result;
  return result;
}

unint64_t sub_1C3F15600()
{
  result = qword_1EC08F6B0;
  if (!qword_1EC08F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6B0);
  }

  return result;
}

unint64_t sub_1C3F15654()
{
  result = qword_1EC08F6B8;
  if (!qword_1EC08F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6B8);
  }

  return result;
}

unint64_t sub_1C3F156A8()
{
  result = qword_1EC08F6C0;
  if (!qword_1EC08F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6C0);
  }

  return result;
}

unint64_t sub_1C3F15700()
{
  result = qword_1EC08F6C8;
  if (!qword_1EC08F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingType(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for ScreenSharingType(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_1C3F158EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C4031A10();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C3F3C710(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C4031A10();
    for (i = (a1 + 36); ; i += 8)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1C3F3C890(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 4 * result) = v7;
      *(v5[7] + result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15C5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1C4031A10();
    for (i = (a1 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15D64(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1C4031A10();
    for (i = (a1 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F320, &qword_1C4039F60);
    v3 = sub_1C4031A10();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 32);
      v9 = *(i - 3);
      v8 = *(i - 2);
      v11 = *(i - 1);
      v10 = *i;

      result = sub_1C3F3C710(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 40 * result;
      *v15 = v7;
      *(v15 + 8) = v9;
      *(v15 + 16) = v8;
      *(v15 + 24) = v11;
      *(v15 + 32) = v10;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F318, &qword_1C4038790);
    v3 = sub_1C4031A10();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_1C3F3C710(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v8;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F160B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C4031A10();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C3F3C710(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t ServiceProvider.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001C4056D00 == a2;
  if (v5 || (v6 = a1, (sub_1C4031BF0() & 1) != 0))
  {
    v7 = 0;
LABEL_7:

    v6 = 0;
    goto LABEL_8;
  }

  if (v6 == 0xD000000000000012 && 0x80000001C4056D20 == a2 || (result = sub_1C4031BF0(), v7 = a2, (result & 1) != 0))
  {
    v7 = 1;
    goto LABEL_7;
  }

LABEL_8:
  *a3 = v6;
  a3[1] = v7;
  return result;
}

unint64_t ServiceProvider.serviceProviderString.getter()
{
  v1 = v0[1];
  v2 = 0xD000000000000013;
  if (v1)
  {
    v2 = *v0;
    v3 = v0[1];
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v2;
  }

  sub_1C3F16304(*v0, v1);
  return v4;
}

uint64_t sub_1C3F16304(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t ServiceProvider.description.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = v0[1];
  sub_1C40318C0();

  v4 = 0x80000001C4056D00;
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3)
  {
    v4 = v3;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001C4056D20;
  }

  else
  {
    v1 = v5;
    v6 = v4;
  }

  sub_1C3F16304(v2, v3);
  MEMORY[0x1C6932F70](v1, v6);

  MEMORY[0x1C6932F70](34, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1C3F16400()
{
  v1 = *v0;
  sub_1C4031C70();
  MEMORY[0x1C6933940](v1);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F16474()
{
  v1 = *v0;
  sub_1C4031C70();
  MEMORY[0x1C6933940](v1);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F164B8()
{
  v1 = 0x656D695465636166;
  if (*v0 != 1)
  {
    v1 = 0x7261506472696874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6870656C6574;
  }
}

uint64_t sub_1C3F1651C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C3F17C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C3F16550(uint64_t a1)
{
  v2 = sub_1C3F175EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F1658C(uint64_t a1)
{
  v2 = sub_1C3F175EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F165D4(uint64_t a1)
{
  v2 = sub_1C3F17694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F16610(uint64_t a1)
{
  v2 = sub_1C3F17694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F1664C(uint64_t a1)
{
  v2 = sub_1C3F176E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F16688(uint64_t a1)
{
  v2 = sub_1C3F176E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F166D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C4031BF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C3F16750(uint64_t a1)
{
  v2 = sub_1C3F17640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F1678C(uint64_t a1)
{
  v2 = sub_1C3F17640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F788, &qword_1C4039F70);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F790, &qword_1C4039F78);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F798, &qword_1C4039F80);
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7A0, &qword_1C4039F88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = v1[1];
  v24 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F175EC();
  sub_1C4031D10();
  if (!v18)
  {
    v33 = 0;
    sub_1C3F176E8();
    sub_1C4031B00();
    (*(v25 + 8))(v12, v26);
    return (*(v14 + 8))(v17, v13);
  }

  if (v18 == 1)
  {
    v34 = 1;
    sub_1C3F17694();
    v20 = v27;
    sub_1C4031B00();
    (*(v28 + 8))(v20, v29);
    return (*(v14 + 8))(v17, v13);
  }

  v35 = 2;
  sub_1C3F17640();
  v22 = v30;
  sub_1C4031B00();
  v23 = v32;
  sub_1C4031B30();
  (*(v31 + 8))(v22, v23);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ServiceProvider.hash(into:)()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1C6933940](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1C6933940](v2);
  }

  v4 = *v0;
  MEMORY[0x1C6933940](2);

  return sub_1C4031280();
}

uint64_t ServiceProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4031C70();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1C6933940](2);
      sub_1C4031280();
      return sub_1C4031CC0();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C6933940](v3);
  return sub_1C4031CC0();
}

uint64_t ServiceProvider.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7C8, &qword_1C4039F90);
  v48 = *(v45 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7D0, &qword_1C4039F98);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7D8, &qword_1C4039FA0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7E0, &qword_1C4039FA8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1C3F175EC();
  v21 = v51;
  sub_1C4031D00();
  if (!v21)
  {
    v43 = 0;
    v51 = v15;
    v22 = sub_1C4031AE0();
    v23 = *(v22 + 16);
    if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 3) : (v25 = 1), v25))
    {
      v26 = sub_1C4031900();
      swift_allocError();
      v27 = v14;
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7E8, &qword_1C4039FB0) + 48);
      *v29 = &type metadata for ServiceProvider;
      sub_1C4031A50();
      sub_1C40318F0();
      (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v51 + 8))(v18, v27);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    if (!*(v22 + 32))
    {
      v53 = 0;
      sub_1C3F176E8();
      v32 = v18;
      v38 = v43;
      sub_1C4031A40();
      if (!v38)
      {
        (*(v44 + 8))(v13, v10);
        (*(v51 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = 0;
        v37 = v49;
        goto LABEL_22;
      }

      v34 = v51;
      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v54 = 1;
      sub_1C3F17694();
      v32 = v18;
      v33 = v43;
      sub_1C4031A40();
      v34 = v51;
      if (!v33)
      {
        (*(v47 + 8))(v9, v46);
        (*(v34 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = 1;
        v37 = v49;
LABEL_22:
        *v37 = v35;
        v37[1] = v36;
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

LABEL_17:
      (*(v34 + 8))(v32, v14);
      goto LABEL_9;
    }

    v55 = 2;
    sub_1C3F17640();
    v39 = v43;
    sub_1C4031A40();
    v37 = v49;
    v40 = v51;
    if (!v39)
    {
      v47 = v14;
      v41 = v45;
      v35 = sub_1C4031A80();
      v36 = v42;
      (*(v48 + 8))(v50, v41);
      (*(v40 + 8))(v18, v47);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    (*(v51 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1C3F172A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 17;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F172DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4031C70();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1C6933940](2);
      sub_1C4031280();
      return sub_1C4031CC0();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C6933940](v3);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F1735C()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1C6933940](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1C6933940](v2);
  }

  v4 = *v0;
  MEMORY[0x1C6933940](2);

  return sub_1C4031280();
}

uint64_t sub_1C3F173E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4031C70();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1C6933940](2);
      sub_1C4031280();
      return sub_1C4031CC0();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C6933940](v3);
  return sub_1C4031CC0();
}

uint64_t _s11CallHistory15ServiceProviderO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1C3F17D70(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1C3F17D70(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_1C4031BF0();
      sub_1C3F16304(v4, v5);
      sub_1C3F16304(v2, v3);
      sub_1C3F17D70(v2, v3);
      sub_1C3F17D70(v4, v5);
      return v11 & 1;
    }

    sub_1C3F16304(v9, v3);
    sub_1C3F16304(v2, v3);
    sub_1C3F17D70(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1C3F16304(*a2, *(a2 + 8));
    sub_1C3F16304(v2, v3);
    sub_1C3F17D70(v2, v3);
    sub_1C3F17D70(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_1C3F17D70(*a1, 1uLL);
  sub_1C3F17D70(v4, 1uLL);
  return v6;
}

unint64_t sub_1C3F175EC()
{
  result = qword_1EC08F7A8;
  if (!qword_1EC08F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7A8);
  }

  return result;
}

unint64_t sub_1C3F17640()
{
  result = qword_1EC08F7B0;
  if (!qword_1EC08F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7B0);
  }

  return result;
}

unint64_t sub_1C3F17694()
{
  result = qword_1EC08F7B8;
  if (!qword_1EC08F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7B8);
  }

  return result;
}

unint64_t sub_1C3F176E8()
{
  result = qword_1EC08F7C0;
  if (!qword_1EC08F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7C0);
  }

  return result;
}

unint64_t sub_1C3F17740()
{
  result = qword_1EC08F7F0;
  if (!qword_1EC08F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11CallHistory15ServiceProviderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C3F177B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3F1780C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C3F17868(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C3F178DC()
{
  result = qword_1EC08F7F8;
  if (!qword_1EC08F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7F8);
  }

  return result;
}

unint64_t sub_1C3F17934()
{
  result = qword_1EC08F800;
  if (!qword_1EC08F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F800);
  }

  return result;
}

unint64_t sub_1C3F1798C()
{
  result = qword_1EC08F808;
  if (!qword_1EC08F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F808);
  }

  return result;
}

unint64_t sub_1C3F179E4()
{
  result = qword_1EC08F810;
  if (!qword_1EC08F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F810);
  }

  return result;
}

unint64_t sub_1C3F17A3C()
{
  result = qword_1EC08F818;
  if (!qword_1EC08F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F818);
  }

  return result;
}

unint64_t sub_1C3F17A94()
{
  result = qword_1EC08F820;
  if (!qword_1EC08F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F820);
  }

  return result;
}

unint64_t sub_1C3F17AEC()
{
  result = qword_1EC08F828;
  if (!qword_1EC08F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F828);
  }

  return result;
}

unint64_t sub_1C3F17B44()
{
  result = qword_1EC08F830;
  if (!qword_1EC08F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F830);
  }

  return result;
}

unint64_t sub_1C3F17B9C()
{
  result = qword_1EC08F838;
  if (!qword_1EC08F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F838);
  }

  return result;
}

unint64_t sub_1C3F17BF4()
{
  result = qword_1EC08F840;
  if (!qword_1EC08F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F840);
  }

  return result;
}

uint64_t sub_1C3F17C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000079;
  if (v4 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695465636166 && a2 == 0xE800000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C4031BF0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C3F17D70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C3F17D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF04D8(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF04D8((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F17FE0()
{
  result = sub_1C3F15B6C(&unk_1F4387670);
  qword_1EC0B0C98 = result;
  return result;
}

CallHistory::TTYType_optional __swiftcall TTYType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F180F0()
{
  result = qword_1EC08F848;
  if (!qword_1EC08F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F848);
  }

  return result;
}

unint64_t sub_1C3F18148()
{
  result = qword_1EC08F850;
  if (!qword_1EC08F850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F858, &qword_1C403A5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F850);
  }

  return result;
}

void sub_1C3F181CC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019A0(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 8 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 8);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F019A0(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 8 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F02B60();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F18524(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB48 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F17D88(qword_1EC0B0C98);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2F0, &qword_1C4038768);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F181CC(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1C3F18644(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF0508(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF0508((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F1889C()
{
  result = sub_1C3F15B94(&unk_1F43876C0);
  qword_1EC0B0CA0 = result;
  return result;
}

CallHistory::VerificationStatus_optional __swiftcall VerificationStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F189AC()
{
  result = qword_1EC08F860;
  if (!qword_1EC08F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F860);
  }

  return result;
}

unint64_t sub_1C3F18A04()
{
  result = qword_1EC08F868;
  if (!qword_1EC08F868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F870, &qword_1C403A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerificationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerificationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F18BC8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 5)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v37 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F41298(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019B4(v15, v7 & 1);
    v17 = *a3;
    v10 = sub_1C3F41298(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + v10) = v5;
    *(v22[7] + 8 * v10) = v8;
    v23 = v22[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v22[2] = v24;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 5)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v38 = *(v8 - 8);
        v26 = *a3;
        v27 = sub_1C3F41298(v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_1C3F019B4(v31, 1);
          v32 = *a3;
          v27 = sub_1C3F41298(v5);
          if ((v16 & 1) != (v33 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v34[6] + v27) = v5;
        *(v34[7] + 8 * v27) = v7;
        v35 = v34[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v34[2] = v36;
        v8 += 2;
        if (v4 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_1C3F02B74();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F18F20(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB50 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F18644(qword_1EC0B0CA0);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2E8, &qword_1C4038760);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F18BC8(v2, 1, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F41298(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

void CallFetchRequest.init(predicate:originatingBundleID:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_1C40309E0();
  v8 = type metadata accessor for CallFetchRequest();
  *(a4 + *(v8 + 20)) = v7;
  if (!a3)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      a2 = sub_1C40311C0();
      a3 = v11;
    }

    else
    {
      a2 = 0;
      a3 = 0;
    }
  }

  v12 = (a4 + *(v8 + 24));
  *v12 = a2;
  v12[1] = a3;
}

uint64_t type metadata accessor for CallFetchRequest()
{
  result = qword_1EC08F8A0;
  if (!qword_1EC08F8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t CallFetchRequest.predicate.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for CallFetchRequest() + 20));
  *a1 = v3;

  return sub_1C3EE61B4(v3);
}

uint64_t CallFetchRequest.originatingBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for CallFetchRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CallFetchRequest.description.getter()
{
  sub_1C40318C0();

  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F230, MEMORY[0x1E69695A8]);
  v1 = sub_1C4031BB0();
  MEMORY[0x1C6932F70](v1);

  MEMORY[0x1C6932F70](0x636964657270202CLL, 0xED0000203A657461);
  v2 = type metadata accessor for CallFetchRequest();
  v7 = *(v0 + *(v2 + 20));
  v3 = CallPredicate.description.getter();
  MEMORY[0x1C6932F70](v3);

  MEMORY[0x1C6932F70](0xD000000000000017, 0x80000001C4056E20);
  v4 = (v0 + *(v2 + 24));
  v8 = *v4;
  v9 = v4[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F878, &qword_1C403A790);
  v5 = sub_1C4031210();
  MEMORY[0x1C6932F70](v5);

  return 540697705;
}

uint64_t sub_1C3F1935C()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C3F193B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C3F1A28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C3F193DC(uint64_t a1)
{
  v2 = sub_1C3F19F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F19418(uint64_t a1)
{
  v2 = sub_1C3F19F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CallFetchRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F880, &qword_1C403A798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F19F28();
  sub_1C4031D10();
  v18 = 0;
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F0B8, MEMORY[0x1E69695A8]);
  sub_1C4031B70();
  if (!v2)
  {
    v11 = type metadata accessor for CallFetchRequest();
    v17 = *(v3 + *(v11 + 20));
    v16[15] = 1;
    sub_1C3EE61B4(v17);
    sub_1C3EE979C();
    sub_1C4031B70();
    sub_1C3EE6238(v17);
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = v12[1];
    v16[14] = 2;
    sub_1C4031B10();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CallFetchRequest.hash(into:)(uint64_t a1)
{
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8]);
  sub_1C4031140();
  v3 = type metadata accessor for CallFetchRequest();
  v7 = *(v1 + *(v3 + 20));
  CallPredicate.hash(into:)(a1);
  v4 = (v1 + *(v3 + 24));
  if (!v4[1])
  {
    return sub_1C4031C90();
  }

  v5 = *v4;
  sub_1C4031C90();

  return sub_1C4031280();
}

uint64_t CallFetchRequest.hashValue.getter()
{
  sub_1C4031C70();
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8]);
  sub_1C4031140();
  v1 = type metadata accessor for CallFetchRequest();
  v5 = *(v0 + *(v1 + 20));
  CallPredicate.hash(into:)(v6);
  v2 = (v0 + *(v1 + 24));
  if (v2[1])
  {
    v3 = *v2;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  return sub_1C4031CC0();
}

uint64_t CallFetchRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1C40309F0();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F890, &qword_1C403A7A0);
  v28 = *(v31 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CallFetchRequest();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F19F28();
  sub_1C4031D00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  v15 = v29;
  v25 = v10;
  v26 = v13;
  v35 = 0;
  sub_1C3F1A028(&qword_1EC08F0B0, MEMORY[0x1E69695A8]);
  v18 = v30;
  v17 = v31;
  sub_1C4031AC0();
  (*(v15 + 32))(v26, v18, v4);
  v34 = 1;
  sub_1C3EE9748();
  sub_1C4031AC0();
  *&v26[*(v25 + 20)] = v32;
  v33 = 2;
  v19 = sub_1C4031A60();
  v21 = v20;
  (*(v16 + 8))(v9, v17);
  v22 = v26;
  v23 = &v26[*(v25 + 24)];
  *v23 = v19;
  v23[1] = v21;
  sub_1C3F19F7C(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C3EED32C(v22);
}

uint64_t sub_1C3F19C5C(uint64_t a1, uint64_t a2)
{
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8]);
  sub_1C4031140();
  v8 = *(v2 + *(a2 + 20));
  CallPredicate.hash(into:)(a1);
  v5 = (v2 + *(a2 + 24));
  if (!v5[1])
  {
    return sub_1C4031C90();
  }

  v6 = *v5;
  sub_1C4031C90();

  return sub_1C4031280();
}

uint64_t sub_1C3F19D64(uint64_t a1, uint64_t a2)
{
  sub_1C4031C70();
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8]);
  sub_1C4031140();
  v7 = *(v2 + *(a2 + 20));
  CallPredicate.hash(into:)(v8);
  v4 = (v2 + *(a2 + 24));
  if (v4[1])
  {
    v5 = *v4;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  return sub_1C4031CC0();
}

uint64_t _s11CallHistory0A12FetchRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1C40309C0())
  {
    v4 = type metadata accessor for CallFetchRequest();
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v15 = *(a2 + v5);
    v16 = v6;
    sub_1C3EE61B4(v6);
    sub_1C3EE61B4(v15);
    v7 = static CallPredicate.== infix(_:_:)(&v16, &v15);
    sub_1C3EE6238(v15);
    sub_1C3EE6238(v16);
    if (v7)
    {
      v8 = *(v4 + 24);
      v9 = (a1 + v8);
      v10 = *(a1 + v8 + 8);
      v11 = (a2 + v8);
      v12 = v11[1];
      if (v10)
      {
        if (v12)
        {
          v13 = *v9 == *v11 && v10 == v12;
          if (v13 || (sub_1C4031BF0() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v12)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1C3F19F28()
{
  result = qword_1EC08F888;
  if (!qword_1EC08F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F888);
  }

  return result;
}

uint64_t sub_1C3F19F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallFetchRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F1A028(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3F1A098()
{
  sub_1C40309F0();
  if (v0 <= 0x3F)
  {
    sub_1C3F1A124();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C3F1A124()
{
  if (!qword_1EC08F8B0)
  {
    v0 = sub_1C40316A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC08F8B0);
    }
  }
}

unint64_t sub_1C3F1A188()
{
  result = qword_1EC08F8B8;
  if (!qword_1EC08F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F8B8);
  }

  return result;
}

unint64_t sub_1C3F1A1E0()
{
  result = qword_1EC08F8C0;
  if (!qword_1EC08F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F8C0);
  }

  return result;
}

unint64_t sub_1C3F1A238()
{
  result = qword_1EC08F8C8;
  if (!qword_1EC08F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F8C8);
  }

  return result;
}

uint64_t sub_1C3F1A28C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C4056E40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C4031BF0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1C3F1A3AC@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v68 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v68 - v11;
  v13 = sub_1C4030980();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v68 - v20;
  v22 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 6uLL:
    case 7uLL:
    case 9uLL:
    case 0xAuLL:
      v56 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v19);
      *(&v68 - 2) = v56;

      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      goto LABEL_22;
    case 3uLL:
      v37 = v19;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
      v39 = swift_projectBox();
      v40 = *(v38 + 48);
      v41 = v14[2];
      v41(v21, v39, v37);
      v42 = (v41)(v18, v39 + v40, v37);
      MEMORY[0x1EEE9AC00](v42);
      *(&v68 - 2) = v21;
      *(&v68 - 1) = v18;
      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      v43 = v14[1];
      v43(v18, v37);
      return (v43)(v21, v37);
    case 4uLL:
    case 5uLL:
      v44 = v19;
      v45 = swift_projectBox();
      v46 = (v14[2])(v21, v45, v44);
      MEMORY[0x1EEE9AC00](v46);
      *(&v68 - 2) = v21;
      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      return (v14[1])(v21, v44);
    case 8uLL:
      v57 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v58 = *(v57 + 16);
      v59 = MEMORY[0x1E69E7CC0];
      if (v58)
      {
        v71 = MEMORY[0x1E69E7CC0];

        v60 = sub_1C3EF01EC(0, v58, 0);
        v59 = v71;
        v69 = v3 + 32;
        v61 = v58 - 1;
        for (i = 32; ; i += 40)
        {
          v63 = v57;
          v64 = *(v57 + i);
          v65 = *(v57 + i + 16);
          v73 = *(v57 + i + 32);
          v72[0] = v64;
          v72[1] = v65;
          MEMORY[0x1EEE9AC00](v60);
          *(&v68 - 2) = v72;
          sub_1C3F2AF14(v72, v70);
          v70[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
          sub_1C4030A80();
          sub_1C3F2AF70(v72);
          v71 = v59;
          v67 = *(v59 + 16);
          v66 = *(v59 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1C3EF01EC(v66 > 1, v67 + 1, 1);
            v59 = v71;
          }

          *(v59 + 16) = v67 + 1;
          v60 = (*(v3 + 32))(v59 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v67, v12, v2);
          if (!v61)
          {
            break;
          }

          --v61;
          v57 = v63;
        }
      }

      MEMORY[0x1EEE9AC00](v19);
      *(&v68 - 4) = v59;
      *(&v68 - 3) = sub_1C3F28CF8;
      *(&v68 - 2) = 0;
      v70[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      goto LABEL_36;
    case 0xBuLL:
      v33 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v19);
      *(&v68 - 16) = v34;
      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      return sub_1C4030A80();
    case 0xCuLL:
      v36 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v19);
      *(&v68 - 2) = v36;
      sub_1C3EE61B4(v36);
      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      return sub_1C3EE6238(v36);
    case 0xDuLL:
      v47 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v48 = *(v47 + 16);
      v49 = MEMORY[0x1E69E7CC0];
      if (v48)
      {
        v69 = v2;
        *&v72[0] = MEMORY[0x1E69E7CC0];

        v50 = sub_1C3EF01EC(0, v48, 0);
        v49 = *&v72[0];
        v51 = v48 - 1;
        for (j = 32; ; j += 8)
        {
          v53 = v47;
          v70[0] = *(v47 + j);
          sub_1C3F1A3AC(v50);
          *&v72[0] = v49;
          v55 = *(v49 + 16);
          v54 = *(v49 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_1C3EF01EC(v54 > 1, v55 + 1, 1);
            v49 = *&v72[0];
          }

          *(v49 + 16) = v55 + 1;
          v50 = (*(v3 + 32))(v49 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v55, v10, v69);
          if (!v51)
          {
            break;
          }

          --v51;
          v47 = v53;
        }
      }

      MEMORY[0x1EEE9AC00](v19);
      *(&v68 - 4) = v49;
      *(&v68 - 3) = sub_1C3F28AD0;
      *(&v68 - 2) = 0;
      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      goto LABEL_33;
    case 0xEuLL:
      v24 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *(v24 + 16);
      v26 = MEMORY[0x1E69E7CC0];
      if (v25)
      {
        v69 = v2;
        *&v72[0] = MEMORY[0x1E69E7CC0];

        v27 = sub_1C3EF01EC(0, v25, 0);
        v26 = *&v72[0];
        v28 = v25 - 1;
        for (k = 32; ; k += 8)
        {
          v30 = v24;
          v70[0] = *(v24 + k);
          sub_1C3F1A3AC(v27);
          *&v72[0] = v26;
          v32 = *(v26 + 16);
          v31 = *(v26 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1C3EF01EC(v31 > 1, v32 + 1, 1);
            v26 = *&v72[0];
          }

          *(v26 + 16) = v32 + 1;
          v27 = (*(v3 + 32))(v26 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v7, v69);
          if (!v28)
          {
            break;
          }

          --v28;
          v24 = v30;
        }
      }

      MEMORY[0x1EEE9AC00](v19);
      *(&v68 - 4) = v26;
      *(&v68 - 3) = sub_1C3F28CF8;
      *(&v68 - 2) = 0;
      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
LABEL_33:
      sub_1C4030A80();
LABEL_36:

      break;
    case 0xFuLL:
      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      if (v22 == 0xF000000000000000)
      {
        result = sub_1C4030A40();
      }

      else
      {
        result = sub_1C4030A50();
      }

      break;
    default:
      v23 = *(v22 + 16);
      MEMORY[0x1EEE9AC00](v19);
      *(&v68 - 2) = v23;

      *&v72[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
LABEL_22:
      sub_1C4030A80();

      break;
  }

  return result;
}