uint64_t (*sub_1BB63D824(uint64_t **a1, uint64_t a2))()
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
  v4[4] = sub_1BB6405DC(v4, a2);
  return sub_1BB645740;
}

void sub_1BB63D89C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_1BB63D8E8(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1BB6BA844();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1BB6408D0(v4, v9);
  return sub_1BB63DA00;
}

void sub_1BB63DA00(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_1BB63DA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a1;
  v119 = a2;
  v124 = a3;
  v3 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v109 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v105 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v105 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v105 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v105 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v105 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v105 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v105 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v111 = &v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v105 - v28;
  v30 = sub_1BB6BA844();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v114 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v115 = &v105 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v105 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v105 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v112 = &v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v121 = &v105 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v127 = &v105 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v120 = &v105 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v105 - v50;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v128 = v4;
  v54 = *(v4 + 56);
  v125 = &v105 - v55;
  v54(v53);
  v130 = v4 + 56;
  v131 = v51;
  v123 = v3;
  v129 = v54;
  (v54)(v51, 1, 1, v3);
  sub_1BB5982A0(v118, v29, &qword_1EBC5C478);
  v56 = type metadata accessor for DKPersonGroupFilter.Track(0);
  v57 = *(*(v56 - 8) + 48);
  if (v57(v29, 1, v56) == 1)
  {
    v58 = v126;
    sub_1BB598308(v29, &qword_1EBC5C478);
LABEL_9:
    v67 = v123;
    v66 = v121;
    goto LABEL_10;
  }

  (*(v31 + 16))(v37, &v29[*(v56 + 20)], v30);
  sub_1BB644800(v29, type metadata accessor for DKPersonGroupFilter.Track);
  (*(v31 + 32))(v40, v37, v30);
  v58 = v126;
  v59 = *(v126 + 24);
  if (!*(v59 + 16))
  {
LABEL_8:
    (*(v31 + 8))(v40, v30);
    goto LABEL_9;
  }

  v60 = sub_1BB6A1288(v40);
  if ((v61 & 1) == 0)
  {

    goto LABEL_8;
  }

  v62 = v106;
  sub_1BB644798(*(v59 + 56) + *(v128 + 72) * v60, v106, type metadata accessor for DKPersonGroupFilter.StampedPerson);

  v63 = v62;
  v64 = v111;
  sub_1BB6448B8(v63, v111, type metadata accessor for DKPersonGroupFilter.StampedPerson);
  v65 = *(v58 + 40);

  LODWORD(v118) = sub_1BB5C4CB8(v64, v65);

  (*(v31 + 8))(v40, v30);
  v66 = v121;
  if (v118)
  {
    sub_1BB644800(v111, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    v67 = v123;
  }

  else
  {
    v83 = v125;
    sub_1BB598308(v125, &qword_1EBC5D7E0);
    sub_1BB6448B8(v111, v83, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    v67 = v123;
    (v129)(v83, 0, 1, v123);
  }

LABEL_10:
  sub_1BB5982A0(v119, v26, &qword_1EBC5C478);
  if (v57(v26, 1, v56) == 1)
  {
    sub_1BB598308(v26, &qword_1EBC5C478);
    v68 = v127;
    v69 = v128;
    v70 = v125;
    v71 = v122;
    goto LABEL_21;
  }

  v72 = v114;
  (*(v31 + 16))(v114, &v26[*(v56 + 20)], v30);
  sub_1BB644800(v26, type metadata accessor for DKPersonGroupFilter.Track);
  v73 = v115;
  (*(v31 + 32))(v115, v72, v30);
  v74 = v58;
  v75 = *(v58 + 32);
  v68 = v127;
  v69 = v128;
  v71 = v122;
  if (!*(v75 + 16))
  {
    goto LABEL_17;
  }

  v76 = sub_1BB6A1288(v73);
  if ((v77 & 1) == 0)
  {

LABEL_17:
    (*(v31 + 8))(v73, v30);
    v70 = v125;
    goto LABEL_21;
  }

  v78 = v107;
  sub_1BB644798(*(v75 + 56) + *(v69 + 72) * v76, v107, type metadata accessor for DKPersonGroupFilter.StampedPerson);

  v79 = v78;
  v80 = v108;
  sub_1BB6448B8(v79, v108, type metadata accessor for DKPersonGroupFilter.StampedPerson);
  v81 = *(v74 + 40);

  v82 = sub_1BB5C4CB8(v80, v81);

  (*(v31 + 8))(v73, v30);
  if (v82)
  {
    sub_1BB644800(v80, type metadata accessor for DKPersonGroupFilter.StampedPerson);
  }

  else
  {
    v84 = v80;
    v85 = v131;
    sub_1BB598308(v131, &qword_1EBC5D7E0);
    sub_1BB6448B8(v84, v85, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    (v129)(v85, 0, 1, v67);
  }

  v70 = v125;
  v68 = v127;
LABEL_21:
  v86 = v120;
  sub_1BB5982A0(v70, v120, &qword_1EBC5D7E0);
  v87 = *(v69 + 48);
  if (v87(v86, 1, v67) == 1)
  {
    v68 = v86;
  }

  else
  {
    sub_1BB6448B8(v86, v71, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    sub_1BB5982A0(v131, v68, &qword_1EBC5D7E0);
    if (v87(v68, 1, v67) != 1)
    {
      v95 = v110;
      sub_1BB6448B8(v68, v110, type metadata accessor for DKPersonGroupFilter.StampedPerson);
      if (sub_1BB6BA774())
      {
        v96 = v116;
        sub_1BB644798(v71, v116, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        v97 = v117;
        sub_1BB5ACEC4(v117, v96);
        sub_1BB644800(v97, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        sub_1BB644800(v95, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        sub_1BB598308(v131, &qword_1EBC5D7E0);
        sub_1BB598308(v70, &qword_1EBC5D7E0);
        v98 = v71;
      }

      else
      {
        v102 = v116;
        sub_1BB644798(v95, v116, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        v103 = v117;
        sub_1BB5ACEC4(v117, v102);
        sub_1BB644800(v103, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        sub_1BB644800(v71, type metadata accessor for DKPersonGroupFilter.StampedPerson);
        sub_1BB598308(v131, &qword_1EBC5D7E0);
        sub_1BB598308(v70, &qword_1EBC5D7E0);
        v98 = v95;
      }

      v92 = v124;
      v101 = v124;
      goto LABEL_35;
    }

    sub_1BB644800(v71, type metadata accessor for DKPersonGroupFilter.StampedPerson);
  }

  sub_1BB598308(v68, &qword_1EBC5D7E0);
  sub_1BB5982A0(v70, v66, &qword_1EBC5D7E0);
  v88 = v87(v66, 1, v67);
  v89 = v131;
  if (v88 != 1)
  {
    v93 = v66;
    v94 = v113;
LABEL_32:
    sub_1BB6448B8(v93, v94, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    v99 = v116;
    sub_1BB644798(v94, v116, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    v100 = v117;
    sub_1BB5ACEC4(v117, v99);
    sub_1BB644800(v100, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    sub_1BB598308(v89, &qword_1EBC5D7E0);
    sub_1BB598308(v70, &qword_1EBC5D7E0);
    v98 = v94;
    v92 = v124;
    v101 = v124;
LABEL_35:
    sub_1BB6448B8(v98, v101, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    v91 = 0;
    return (v129)(v92, v91, 1, v67);
  }

  sub_1BB598308(v66, &qword_1EBC5D7E0);
  v90 = v112;
  sub_1BB5982A0(v89, v112, &qword_1EBC5D7E0);
  if (v87(v90, 1, v67) != 1)
  {
    v93 = v90;
    v94 = v109;
    goto LABEL_32;
  }

  sub_1BB598308(v89, &qword_1EBC5D7E0);
  sub_1BB598308(v70, &qword_1EBC5D7E0);
  sub_1BB598308(v90, &qword_1EBC5D7E0);
  v91 = 1;
  v92 = v124;
  return (v129)(v92, v91, 1, v67);
}

uint64_t DKPersonGroupFilter.deinit()
{

  return v0;
}

uint64_t DKPersonGroupFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB63E91C(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1BB5E5860(result, v5, 0);
  }

  return result;
}

uint64_t sub_1BB63E994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BB6A1288(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BB5E9F9C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1BB6BA844();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
    v20 = *(v13 - 8);
    sub_1BB6448B8(v12 + *(v20 + 72) * v7, a2, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    sub_1BB63EF00(v7, v9, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BB63EB44(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BB6A1320(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BB5EA2F0();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_1BB63F250(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1BB63EBD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB6BB254() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v9);
      result = sub_1BB6BB964();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BB63ED6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB6BB254() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v9);
      result = sub_1BB6BB964();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BB63EF00(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = sub_1BB6BB254();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v5);
      sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
      v22 = sub_1BB6BAB74();
      (*v38)(v8, v5);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(v37(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BB63F250(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB6BB254() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1BB6BB924();

      sub_1BB5EC1E8(v20, v9);

      result = sub_1BB6BB964();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BB63F3EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB6BB254() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BB6BB914();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1BB6BA7F4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BB63F598(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB6BB254() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BB6BB914();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BB63F708(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_1BB5EA2F0();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_1BB5E6D1C(v4, v5);
  return 1;
}

void sub_1BB63F768(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1BB6BA844();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1BB5EB968(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1BB598308(v5, &qword_1EBC5C370);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BB63F984(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = sub_1BB6BA844();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_1BB598308(v30, &qword_1EBC5C370);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
    v32 = sub_1BB6BAB74();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
    v36 = sub_1BB6BABE4();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_1BB598308(v24, &qword_1EBC5C370);
        a2 = sub_1BB642664(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_1BB6BAB74();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_1BB6BABE4();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_1BB6BABE4();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
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
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_1BB642190(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x1BFB122F0](v63, -1, -1);
LABEL_52:
  sub_1BB593660();
  return a2;
}

uint64_t sub_1BB64044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_1BB641B94(v16, v11, a3, v9, a2, a5);
  result = MEMORY[0x1BFB122F0](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t (*sub_1BB6405DC(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1BB64168C(v5);
  v5[9] = sub_1BB640AA4(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1BB645744;
}

uint64_t (*sub_1BB640680(uint64_t *a1, char a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1BB64168C(v5);
  v5[9] = sub_1BB640C0C((v5 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_1BB645744;
}

uint64_t (*sub_1BB640724(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1BB64168C(v5);
  v5[9] = sub_1BB640D40(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1BB645744;
}

uint64_t (*sub_1BB6407C8(uint64_t *a1, char a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1BB64168C(v5);
  v5[9] = sub_1BB640F18((v5 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_1BB64086C;
}

void sub_1BB640870(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1BB6408D0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1BB6BA844();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1BB6416B4(v6);
  v6[12] = sub_1BB6410B8(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1BB640A0C;
}

void sub_1BB640A0C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1BB640AA4(uint64_t *a1, uint64_t a2, char a3))(unsigned __int8 **a1, uint64_t a2)
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
  *(v8 + 24) = v3;
  *(v8 + 17) = a2;
  v10 = *v3;
  v11 = sub_1BB6A36B4(a2);
  *(v9 + 18) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1BB5E9A14();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1BB5E5F78(v16, a3 & 1);
    v11 = sub_1BB6A36B4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  v21 = 0uLL;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 16 * v11);
  }

  *v9 = v21;
  *(v9 + 16) = v14 & 1;
  return sub_1BB640BF4;
}

uint64_t (*sub_1BB640C0C(uint64_t a1, char a2, char a3))(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1BB6A36B0(a2 & 1);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BB5E9A28();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BB5E5F8C(v14, a3 & 1);
    v9 = sub_1BB6A36B0(a2 & 1);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1BB640D28;
}

void (*sub_1BB640D40(uint64_t *a1, uint64_t a2, char a3))(unsigned __int8 **a1, uint64_t a2)
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
  *(v8 + 24) = v3;
  *(v8 + 17) = a2;
  v10 = *v3;
  v11 = sub_1BB6A36B4(a2);
  *(v9 + 18) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1BB5E9A3C();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1BB5E5FA0(v16, a3 & 1);
    v11 = sub_1BB6A36B4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  v21 = 0uLL;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 16 * v11);
  }

  *v9 = v21;
  *(v9 + 16) = v14 & 1;
  return sub_1BB640BF4;
}

void sub_1BB640E90(unsigned __int8 **a1, uint64_t a2, void (*a3)(uint64_t, void, void, __n128, double))
{
  v3 = *a1;
  v4 = (*a1)[18];
  if ((*a1)[16])
  {
    if ((*a1)[18])
    {
      sub_1BB63EBD8(*(v3 + 4), **(v3 + 3));
    }
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 4);
    if (v4)
    {
      *(*(**(v3 + 3) + 56) + 16 * v6) = v5;
    }

    else
    {
      a3(v6, v3[17], **(v3 + 3), v5, v5.n128_f64[1]);
    }
  }

  free(v3);
}

uint64_t (*sub_1BB640F18(uint64_t a1, char a2, char a3))(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1BB6A36B0(a2 & 1);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BB5E9B90();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BB5E6238(v14, a3 & 1);
    v9 = sub_1BB6A36B0(a2 & 1);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1BB640D28;
}

uint64_t sub_1BB641034(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (*result)
  {
    if (*(result + 25))
    {
      *(*(**(result + 8) + 56) + 8 * *(result + 16)) = *result;
    }

    else
    {
      v3 = *(result + 24) & 1;
      v4 = *(result + 16);

      return a3(v4, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_1BB63ED6C(*(result + 16), **(result + 8));
  }

  return result;
}

void (*sub_1BB6410B8(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_1BB6BA844();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for DKPersonGroup(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5D878) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_1BB6A1288(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_1BB5E9F60();
      goto LABEL_21;
    }

    sub_1BB5E682C(v26, a3 & 1);
    v29 = sub_1BB6A1288(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_1BB6448B8(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for DKPersonGroup);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_1BB6413E8;
}

void sub_1BB6413E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_1BB5982A0(v5, v6, qword_1EBC5D878);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_1BB6448B8(v9, v2[8], type metadata accessor for DKPersonGroup);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1BB6448B8(v13, v14, type metadata accessor for DKPersonGroup);
        sub_1BB5E93E0(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_1BB5982A0(v5, v16, qword_1EBC5D878);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_1BB6448B8(v9, v2[9], type metadata accessor for DKPersonGroup);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1BB6448B8(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for DKPersonGroup);
      goto LABEL_10;
    }
  }

  sub_1BB598308(v9, qword_1EBC5D878);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_1BB63EF00(v18, v19, type metadata accessor for DKPersonGroup);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_1BB598308(v22, qword_1EBC5D878);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1BB64168C(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BB64573C;
}

uint64_t (*sub_1BB6416B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BB6416DC;
}

uint64_t sub_1BB6416E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v21 = 0;
  v20 = result;
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
    v24 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v26 = *(*(a3 + 48) + 8 * v14);
    v16 = v14;
    v25 = *(v15 + 8 * v14);

    v17 = a4(&v26, &v25);

    if (v4)
    {
      return result;
    }

    v9 = v24;
    if (v17)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1BB641C34(v20, a2, v21, a3);
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
      return sub_1BB641C34(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v24 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1BB64187C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  v31 = a4;
  v24 = a2;
  v25 = a1;
  v5 = sub_1BB6BA844();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v32 = a3;
  v33 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a3 + 64);
  v26 = 0;
  v27 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v29 = v6 + 16;
  v30 = v6;
  v28 = (v6 + 8);
  while (v13)
  {
    v34 = (v13 - 1) & v13;
    v15 = __clz(__rbit64(v13)) | (v9 << 6);
    v16 = v33;
LABEL_11:
    v19 = v32;
    (*(v30 + 16))(v16, v32[6] + *(v30 + 72) * v15, v5, v7);
    v36 = *(v19[7] + 8 * v15);

    v20 = v35;
    v21 = v31(v16, &v36);
    v35 = v20;
    if (v20)
    {

      (*v28)(v16, v5);
      return;
    }

    v22 = v21;

    (*v28)(v16, v5);
    v13 = v34;
    if (v22)
    {
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1BB641DF0(v25, v24, v26, v32);
        return;
      }
    }
  }

  v17 = v9;
  v16 = v33;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_16;
    }

    v18 = *(v27 + 8 * v9);
    ++v17;
    if (v18)
    {
      v34 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1BB641B04(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1BB642B50(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1BB641B94(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

unint64_t sub_1BB641C34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5CBB8);
  result = sub_1BB6BB594();
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
  v19 = result + 64;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);
    sub_1BB6BB924();

    sub_1BB5EC1E8(v20, v16);
    sub_1BB6BB964();
    result = sub_1BB6BB264();
    *(v19 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v9[6] + 8 * result) = v16;
    *(v9[7] + 8 * result) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BB641DF0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_1BB6BA844();
  v7 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C260);
  result = sub_1BB6BB594();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
    v42 = v23;

    result = sub_1BB6BAB74();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
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

void sub_1BB642190(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1BB6BA844();
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
          sub_1BB598308(v11, &qword_1EBC5C370);
          v45 = v61;

          sub_1BB642664(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
        v35 = sub_1BB6BAB74();
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
        sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
        v43 = sub_1BB6BABE4();
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

uint64_t sub_1BB642664(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BB6BA844();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C278);
  result = sub_1BB6BB2C4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
    result = sub_1BB6BAB74();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

void *sub_1BB64298C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1BB642B50((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1BB641B04(v12, v6, a2, a1);

    MEMORY[0x1BFB122F0](v12, -1, -1);
  }

  return v10;
}

void sub_1BB642B50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_1BB6BA844();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (v61 - v13);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        sub_1BB642664(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
          v55 = sub_1BB6BAB74();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
              v59 = sub_1BB6BABE4();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
          v34 = sub_1BB6BAB74();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
              v40 = sub_1BB6BABE4();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1BB643238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BB6BA844();
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
        sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
        v26 = sub_1BB6BAB74();
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
          sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
          v31 = sub_1BB6BABE4();
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

BOOL _s23IntelligentTrackingCore19DKPersonGroupFilterC5TrackV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = type metadata accessor for DKPersonGroupFilter.Track(0);
  if (sub_1BB6BA814())
  {
    return *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24));
  }

  return 0;
}

uint64_t sub_1BB643678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = a3;
  v123 = a2;
  v145 = sub_1BB6BA844();
  v4 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v138 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DKPersonGroup(0);
  v143 = *(v6 - 8);
  v144 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v137 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v122 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v122 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v122 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v122 - v18;
  v142 = type metadata accessor for DKPersonGroupFilter.Track(0);
  MEMORY[0x1EEE9AC00](v142);
  v135 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v122 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v122 - v25;
  v28 = *(a1 + 16);
  v125 = v4;
  v133 = v23;
  v134 = v10;
  v124 = v26;
  if (v28)
  {
    v29 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v132 = (v4 + 16);
    v136 = (v4 + 56);
    v30 = *(v26 + 72);
    v31 = MEMORY[0x1E69E7CC8];
    v130 = &v122 - v25;
    v131 = v19;
    v129 = v30;
    while (1)
    {
      sub_1BB644798(v29, v27, type metadata accessor for DKPersonGroupFilter.Track);
      if (v27[8])
      {
        goto LABEL_5;
      }

      v34 = *v27;
      v35 = v145;
      (*v132)(v19, &v27[*(v142 + 20)], v145);
      v36 = *v136;
      v37 = v35;
      v38 = v34;
      (*v136)(v19, 0, 1, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v31;
      v41 = sub_1BB6A1004(v34);
      v42 = v31[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        result = sub_1BB6BB874();
        __break(1u);
        return result;
      }

      v45 = v40;
      if (v31[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v31 = v146;
          if ((v40 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1BB5E9D28();
          v31 = v146;
          if ((v45 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_1BB5E64E4(v44, isUniquelyReferenced_nonNull_native);
        v46 = sub_1BB6A1004(v38);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_67;
        }

        v41 = v46;
        v31 = v146;
        if ((v45 & 1) == 0)
        {
LABEL_14:
          v48 = v145;
          v36(v139, 1, 1, v145);
          v36(v140, 1, 1, v48);
          v36(v141, 1, 1, v48);
          v49 = v144;
          v128 = v38;
          v50 = v137;
          sub_1BB6BA724();
          v127 = v49[7];
          v36(v50 + v127, 1, 1, v48);
          v51 = v49[8];
          v36(v50 + v51, 1, 1, v48);
          v126 = v49[9];
          v36(v50 + v126, 1, 1, v48);
          v52 = v49[10];
          *v50 = -1;
          v50[1] = 0;
          sub_1BB5BA0DC(v139, v50 + v127, &qword_1EBC5C370);
          sub_1BB5BA0DC(v140, v50 + v51, &qword_1EBC5C370);
          sub_1BB5BA0DC(v141, v50 + v126, &qword_1EBC5C370);
          *(v50 + v52) = MEMORY[0x1E69E7CC0];
          v31[(v41 >> 6) + 8] |= 1 << v41;
          *(v31[6] + 8 * v41) = v128;
          v32 = *(v143 + 72) * v41;
          sub_1BB6448B8(v50, v31[7] + v32, type metadata accessor for DKPersonGroup);
          v53 = v31[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_63;
          }

          v31[2] = v55;
          v23 = v133;
          v10 = v134;
          goto LABEL_4;
        }
      }

      v32 = *(v143 + 72) * v41;
LABEL_4:
      v33 = v31[7] + v144[8] + v32;
      v19 = v131;
      sub_1BB5BA0DC(v131, v33, &qword_1EBC5C370);
      v27 = v130;
      v30 = v129;
LABEL_5:
      sub_1BB644800(v27, type metadata accessor for DKPersonGroupFilter.Track);
      v29 += v30;
      if (!--v28)
      {
        goto LABEL_19;
      }
    }
  }

  v31 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v56 = *(v123 + 16);
  if (v56)
  {
    v57 = v123 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v58 = (v125 + 16);
    v136 = (v125 + 56);
    v59 = *(v124 + 72);
    v128 = (v125 + 16);
    v132 = v59;
    while (1)
    {
      sub_1BB644798(v57, v23, type metadata accessor for DKPersonGroupFilter.Track);
      if (v23[8])
      {
        goto LABEL_23;
      }

      v61 = *v23;
      v62 = v145;
      (*v58)(v10, &v23[*(v142 + 20)], v145);
      v63 = *v136;
      v64 = v62;
      v65 = v61;
      (*v136)(v10, 0, 1, v64);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v31;
      v67 = sub_1BB6A1004(v61);
      v69 = v31[2];
      v70 = (v68 & 1) == 0;
      v54 = __OFADD__(v69, v70);
      v71 = v69 + v70;
      if (v54)
      {
        goto LABEL_61;
      }

      v72 = v68;
      if (v31[3] < v71)
      {
        break;
      }

      if (v66)
      {
        goto LABEL_30;
      }

      v83 = v67;
      sub_1BB5E9D28();
      v67 = v83;
      v31 = v146;
      if ((v72 & 1) == 0)
      {
LABEL_31:
        v130 = v67;
        v131 = v65;
        v74 = v145;
        v63(v139, 1, 1, v145);
        v63(v140, 1, 1, v74);
        v63(v141, 1, 1, v74);
        v75 = v144;
        v76 = v137;
        sub_1BB6BA724();
        v77 = v75[7];
        v63(v76 + v77, 1, 1, v74);
        v129 = v75[8];
        v63(v129 + v76, 1, 1, v74);
        v78 = v75[9];
        v63(v76 + v78, 1, 1, v74);
        v79 = v75[10];
        *v76 = -1;
        v76[1] = 0;
        sub_1BB5BA0DC(v139, v76 + v77, &qword_1EBC5C370);
        sub_1BB5BA0DC(v140, v129 + v76, &qword_1EBC5C370);
        sub_1BB5BA0DC(v141, v76 + v78, &qword_1EBC5C370);
        *(v76 + v79) = MEMORY[0x1E69E7CC0];
        v80 = v130;
        v31[(v130 >> 6) + 8] |= 1 << v130;
        *(v31[6] + 8 * v80) = v131;
        v60 = *(v143 + 72) * v80;
        sub_1BB6448B8(v76, v31[7] + v60, type metadata accessor for DKPersonGroup);
        v81 = v31[2];
        v54 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v54)
        {
          goto LABEL_64;
        }

        v31[2] = v82;
        v23 = v133;
        v10 = v134;
        v58 = v128;
        goto LABEL_22;
      }

LABEL_21:
      v60 = *(v143 + 72) * v67;
LABEL_22:
      sub_1BB5BA0DC(v10, v31[7] + v144[9] + v60, &qword_1EBC5C370);
      v59 = v132;
LABEL_23:
      sub_1BB644800(v23, type metadata accessor for DKPersonGroupFilter.Track);
      v57 += v59;
      if (!--v56)
      {
        goto LABEL_35;
      }
    }

    sub_1BB5E64E4(v71, v66);
    v67 = sub_1BB6A1004(v65);
    if ((v72 & 1) != (v73 & 1))
    {
      goto LABEL_67;
    }

LABEL_30:
    v31 = v146;
    if ((v72 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

LABEL_35:
  v84 = *(v122 + 16);
  if (v84)
  {
    v85 = v122 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v86 = v125;
    v87 = (v125 + 16);
    v130 = v125 + 56;
    v136 = (v125 + 32);
    v88 = *(v124 + 72);
    v89 = v135;
    v134 = v88;
    v129 = (v125 + 16);
    while (1)
    {
      sub_1BB644798(v85, v89, type metadata accessor for DKPersonGroupFilter.Track);
      if (*(v89 + 8) != 1)
      {
        break;
      }

      sub_1BB644800(v89, type metadata accessor for DKPersonGroupFilter.Track);
LABEL_38:
      v85 += v88;
      if (!--v84)
      {
        goto LABEL_55;
      }
    }

    v90 = *v89;
    (*v87)(v138, v89 + *(v142 + 20), v145);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v31;
    v92 = sub_1BB6A1004(v90);
    v94 = v31[2];
    v95 = (v93 & 1) == 0;
    v54 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (v54)
    {
      goto LABEL_62;
    }

    v97 = v93;
    if (v31[3] >= v96)
    {
      if ((v91 & 1) == 0)
      {
        v100 = v92;
        sub_1BB5E9D28();
        v92 = v100;
        v31 = v146;
        if (v97)
        {
          goto LABEL_46;
        }

        goto LABEL_48;
      }
    }

    else
    {
      sub_1BB5E64E4(v96, v91);
      v92 = sub_1BB6A1004(v90);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_67;
      }
    }

    v31 = v146;
    if (v97)
    {
LABEL_46:
      v99 = *(v143 + 72) * v92;
LABEL_50:
      v111 = v31[7] + v99;
      v112 = v144[10];
      v113 = *(v111 + v112);
      v114 = swift_isUniquelyReferenced_nonNull_native();
      *(v111 + v112) = v113;
      if ((v114 & 1) == 0)
      {
        v113 = sub_1BB59CF10(0, v113[2] + 1, 1, v113);
        *(v111 + v112) = v113;
      }

      v116 = v113[2];
      v115 = v113[3];
      if (v116 >= v115 >> 1)
      {
        *(v111 + v112) = sub_1BB59CF10(v115 > 1, v116 + 1, 1, v113);
      }

      v89 = v135;
      sub_1BB644800(v135, type metadata accessor for DKPersonGroupFilter.Track);
      v117 = *(v111 + v112);
      *(v117 + 16) = v116 + 1;
      (*(v86 + 32))(v117 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v116, v138, v145);
      v88 = v134;
      goto LABEL_38;
    }

LABEL_48:
    v101 = *v130;
    v133 = v92;
    v102 = v145;
    v101(v139, 1, 1, v145);
    v101(v140, 1, 1, v102);
    v101(v141, 1, 1, v102);
    v103 = v144;
    v104 = v137;
    sub_1BB6BA724();
    v131 = v103[7];
    v101(v104 + v131, 1, 1, v102);
    v132 = v90;
    v105 = v103[8];
    v101(v104 + v105, 1, 1, v102);
    v106 = v103[9];
    v101(v104 + v106, 1, 1, v102);
    v107 = v103[10];
    *v104 = -1;
    v104[1] = 0;
    sub_1BB5BA0DC(v139, v104 + v131, &qword_1EBC5C370);
    sub_1BB5BA0DC(v140, v104 + v105, &qword_1EBC5C370);
    sub_1BB5BA0DC(v141, v104 + v106, &qword_1EBC5C370);
    *(v104 + v107) = MEMORY[0x1E69E7CC0];
    v108 = v133;
    v31[(v133 >> 6) + 8] |= 1 << v133;
    *(v31[6] + 8 * v108) = v132;
    v99 = *(v143 + 72) * v108;
    sub_1BB6448B8(v104, v31[7] + v99, type metadata accessor for DKPersonGroup);
    v109 = v31[2];
    v54 = __OFADD__(v109, 1);
    v110 = v109 + 1;
    if (v54)
    {
      goto LABEL_65;
    }

    v31[2] = v110;
    v86 = v125;
    v87 = v129;
    goto LABEL_50;
  }

LABEL_55:
  v118 = v31[2];
  if (v118)
  {
    v119 = sub_1BB6A08D8(v31[2], 0);
    v120 = sub_1BB6A36A8(&v146, v119 + ((*(v143 + 80) + 32) & ~*(v143 + 80)), v118, v31);

    sub_1BB593660();
    if (v120 != v118)
    {
      goto LABEL_66;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v119;
}

void *sub_1BB644574(void *a1)
{
  v1[2] = a1[2];
  v1[3] = a1[3];
  v1[4] = a1[4];
  v1[5] = a1[5];
  v1[6] = a1[6];
  v1[7] = a1[7];
  return v1;
}

unint64_t sub_1BB6445CC()
{
  result = qword_1EBC5D798;
  if (!qword_1EBC5D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D798);
  }

  return result;
}

uint64_t sub_1BB644620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB644668(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5D7A0);
    sub_1BB644620(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB644744()
{
  result = qword_1EBC5D7C8;
  if (!qword_1EBC5D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D7C8);
  }

  return result;
}

uint64_t sub_1BB644798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB644800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BB6448B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BB644D1C()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB644E10(319, &qword_1EBC5C818, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BB644E10(319, &qword_1EBC5D818, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BB644E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BB6BA844();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BB644F6C()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BB645018()
{
  sub_1BB6450A4();
  if (v0 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BB6450A4()
{
  if (!qword_1EBC5D840)
  {
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5D840);
    }
  }
}

uint64_t sub_1BB6450F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BB64513C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1BB6451B0()
{
  result = qword_1EBC5D848;
  if (!qword_1EBC5D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D848);
  }

  return result;
}

unint64_t sub_1BB645208()
{
  result = qword_1EBC5D850;
  if (!qword_1EBC5D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D850);
  }

  return result;
}

unint64_t sub_1BB645260()
{
  result = qword_1EBC5D858;
  if (!qword_1EBC5D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D858);
  }

  return result;
}

unint64_t sub_1BB6452B8()
{
  result = qword_1EBC5D860;
  if (!qword_1EBC5D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D860);
  }

  return result;
}

unint64_t sub_1BB645310()
{
  result = qword_1EBC5D868;
  if (!qword_1EBC5D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D868);
  }

  return result;
}

unint64_t sub_1BB645368()
{
  result = qword_1EBC5D870;
  if (!qword_1EBC5D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D870);
  }

  return result;
}

uint64_t sub_1BB6453BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55556E6F73726570 && a2 == 0xEA00000000004449 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449555565636166 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449555579646F62 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44495555646E6168 && a2 == 0xE900000000000073)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1BB645620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72477473616CLL && a2 == 0xEB00000000644970;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

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

uint64_t DKLockActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = 1;
  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_1BB645790()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore11DKLockActor19ContinuationWrapper_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DKLockActor.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = 1;
  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_1BB645868()
{
  v1[2] = v0;
  v2 = sub_1BB6BA7F4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB645934, v0, 0);
}

uint64_t sub_1BB645934(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[2];
  v10 = *(v9 + 112);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDE0](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v9 + 112) = v12;
  if (v12 < 0)
  {
    v15 = v8[2];
    sub_1BB6BA7D4();
    v16 = sub_1BB645D20();
    v17 = swift_task_alloc();
    v8[7] = v17;
    *v17 = v8;
    v17[1] = sub_1BB645A74;
    a7 = v8[2];
    a8 = MEMORY[0x1E69E6370];
    a6 = sub_1BB645F0C;
    a4 = 0x29286B636F6CLL;
    a1 = v8 + 8;
    a2 = v15;
    a3 = v16;
    a5 = 0xE600000000000000;

    return MEMORY[0x1EEE6DDE0](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v13 = v8[1];

  return v13();
}

uint64_t sub_1BB645A74()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1BB645B84, v1, 0);
}

uint64_t sub_1BB645B84()
{
  v19 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BB6BA7D4();
  sub_1BB6BA744();
  v5 = v4;
  v6 = *(v3 + 8);
  v6(v1, v2);
  v7 = v0[6];
  v8 = v0[3];
  if (v5 > 0.05)
  {
    v17 = 0x6D6974206B636F6CLL;
    v18 = 0xEA00000000002065;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5C398);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E63B0];
    *(v9 + 16) = xmmword_1BB6BD520;
    v11 = MEMORY[0x1E69E6438];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = v5;
    v12 = sub_1BB6BAC64();
    MEMORY[0x1BFB10B60](v12);

    v13 = v17;
    v14 = sub_1BB6BB064();
    LOBYTE(v17) = 0;
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v17, v13, v18, v14);
  }

  v6(v7, v8);

  v15 = v0[1];

  return v15();
}

unint64_t sub_1BB645D20()
{
  result = qword_1EE041200;
  if (!qword_1EE041200)
  {
    type metadata accessor for DKLockActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE041200);
  }

  return result;
}

uint64_t sub_1BB645D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  type metadata accessor for DKLockActor.ContinuationWrapper();
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore11DKLockActor19ContinuationWrapper_continuation, v8, v4);

  MEMORY[0x1BFB10C80](v10);
  if (*((*(a2 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BB6BAE64();
  }

  sub_1BB6BAEB4();
}

uint64_t sub_1BB645F14(uint64_t a1)
{
  v3 = *(v1 + 120);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1BB6BB564();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return v4 != v5;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (*(v3 + 8 * v5 + 32) == a1)
    {
      goto LABEL_12;
    }

LABEL_8:
    v6 = __OFADD__(v5++, 1);
    if (v6)
    {
      goto LABEL_17;
    }
  }

  v7 = MEMORY[0x1BFB111F0](v5, v3);
  swift_unknownObjectRelease();
  if (v7 != a1)
  {
    goto LABEL_8;
  }

LABEL_12:

  v9 = *(v1 + 112);
  v6 = __OFADD__(v9, 1);
  v10 = v9 + 1;
  if (!v6)
  {
    *(v1 + 112) = v10;
    sub_1BB646028(v5);

    return v4 != v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB646028(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1BB6B1024(v3);
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

uint64_t sub_1BB6460B8(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BB6460DC, v1, 0);
}

uint64_t sub_1BB6460DC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[3];
  v10 = *(v9 + 112);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDE0](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v9 + 112) = v12;
  if (v12 < 0)
  {
    v15 = v8[3];
    v16 = v8[2];
    v17 = sub_1BB645D20();
    v18 = swift_task_alloc();
    v8[4] = v18;
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    v19 = swift_task_alloc();
    v8[5] = v19;
    *v19 = v8;
    v19[1] = sub_1BB646240;
    a8 = MEMORY[0x1E69E6370];
    a6 = sub_1BB647A80;
    a4 = 0x6D6974286B636F6CLL;
    a5 = 0xEE00293A74756F65;
    a1 = v8 + 6;
    a2 = v15;
    a3 = v17;
    a7 = v18;

    return MEMORY[0x1EEE6DDE0](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v13 = v8[1];

  return v13(1);
}

uint64_t sub_1BB646240()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1BB64636C, v1, 0);
}

uint64_t sub_1BB646384(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  (*(v10 + 16))(&v20 - v12, a1, v9, v11);
  type metadata accessor for DKLockActor.ContinuationWrapper();
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + OBJC_IVAR____TtCC23IntelligentTrackingCore11DKLockActor19ContinuationWrapper_continuation, v13, v9);

  MEMORY[0x1BFB10C80](v15);
  if (*((*(a2 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BB6BAE64();
  }

  sub_1BB6BAEB4();
  v16 = sub_1BB6BAF84();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = sub_1BB645D20();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v17;
  *(v18 + 32) = a3;
  *(v18 + 40) = a2;
  *(v18 + 48) = v14;
  swift_retain_n();
  sub_1BB6468F8(0, 0, v8, &unk_1BB6C5670, v18);
}

uint64_t sub_1BB6465F4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BB646618, a5, 0);
}

uint64_t sub_1BB646618(unint64_t a1)
{
  v3 = *(v1 + 16);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = 1000000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 40) = v5;
  *v5 = v1;
  v5[1] = sub_1BB64670C;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1BB64670C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1BB646850, v6, 0);
  }
}

uint64_t sub_1BB646850()
{
  if (sub_1BB645F14(*(v0 + 32)))
  {
    *(v0 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360);
    sub_1BB6BAF34();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BB6468F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1BB6486D0(a3, v22 - v9);
  v11 = sub_1BB6BAF84();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BB648740(v10);
  }

  else
  {
    sub_1BB6BAF74();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BB6BAF24();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BB6BACA4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1BB648740(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BB648740(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BB646B84()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  if (v2 >= 1)
  {
    *(v1 + 112) = v2 - 1;
  }

  return (*(v0 + 8))(v2 > 0);
}

uint64_t sub_1BB646BB4()
{
  v1 = *(v0 + 112);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 120);
    *(v0 + 112) = v2;
    if (!(v3 >> 62))
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  result = sub_1BB6BB564();
  if (!result)
  {
    return result;
  }

LABEL_4:
  sub_1BB5AAC24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360);
  sub_1BB6BAF34();
}

uint64_t DKLockActor.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DKLockActor.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BB646CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = sub_1BB6BB184();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BB646D74(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = sub_1BB6BB184();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id sub_1BB646E10()
{
  result = [*(v0 + *(*v0 + 104)) tryLock];
  if (result)
  {
    v2 = result;
    [*(v0 + *(*v0 + 104)) unlock];
    return v2;
  }

  return result;
}

uint64_t DKLazy.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DKLazy.init(_:)(a1, a2);
  return v4;
}

char *DKLazy.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  (*(*(*(v5 + 80) - 8) + 56))(&v2[*(v5 + 96)], 1, 1);
  v6 = *(*v2 + 104);
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v7 = *(v2 + 2);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  sub_1BB58C41C(v7);
  return v2;
}

uint64_t DKLazy.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DKLazy.init(wrappedValue:)(a1);
  return v2;
}

char *DKLazy.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  v4 = *(v3 + 96);
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(&v1[v4], 1, 1, v5);
  v8 = *(*v1 + 104);
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v9 = sub_1BB6BB184();
  (*(*(v9 - 8) + 8))(&v1[v4], v9);
  (*(v6 + 32))(&v1[v4], a1, v5);
  v7(&v1[v4], 0, 1, v5);
  return v1;
}

id sub_1BB647158@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1BB6BB184();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  [*&v2[*(v3 + 104)] lock];
  v16 = *(*v2 + 96);
  v17 = sub_1BB6BB184();
  (*(*(v17 - 8) + 16))(v15, &v2[v16], v17);
  v18 = *(v4 - 8);
  v19 = *(v18 + 48);
  if (v19(v15, 1, v4) != 1)
  {
    goto LABEL_4;
  }

  result = (*(v6 + 8))(v15, v5);
  v21 = *(v2 + 2);
  if (v21)
  {

    v21(v22);
    sub_1BB58C41C(v21);
    (*(v18 + 56))(v11, 0, 1, v4);
    v23 = *(*v2 + 96);
    v24 = sub_1BB6BB184();
    (*(*(v24 - 8) + 40))(&v2[v23], v11, v24);
    v25 = *(*v2 + 96);
    v26 = sub_1BB6BB184();
    (*(*(v26 - 8) + 16))(v8, &v2[v25], v26);
    result = (v19)(v8, 1, v4);
    v15 = v8;
    if (result != 1)
    {
LABEL_4:
      (*(v18 + 32))(v28, v15, v4);
      return [*&v2[*(*v2 + 104)] unlock];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *DKLazy.deinit()
{
  sub_1BB58C41C(v0[2]);
  v1 = *(*v0 + 96);
  v2 = sub_1BB6BB184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKLazy.__deallocating_deinit()
{
  DKLazy.deinit();

  return swift_deallocClassInstance();
}

uint64_t DKThreadSafe.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v6 = type metadata accessor for DKThreadSafe();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 28);

  return v7(v8, a1, a2);
}

id DKThreadSafe.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  [*v2 lock];
  (*(*(*(a1 + 16) - 8) + 16))(a2, v2 + *(a1 + 28));
  v5 = *v2;

  return [v5 unlock];
}

uint64_t DKThreadSafe.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1BB647AA4(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*DKThreadSafe.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v6[4] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[5] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[6] = v12;
  [*v2 lock];
  (*(v10 + 16))(v13, v2 + *(a2 + 28), v8);
  [*v2 unlock];
  return sub_1BB6478EC;
}

void sub_1BB6478EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v7);
    v10 = *v8;
    [*v8 lock];
    (*(v5 + 24))(v8 + *(v9 + 28), v3, v7);
    [v10 unlock];
    v11 = *(v6 + 8);
    v11(v3, v7);
    v11(v4, v7);
  }

  else
  {
    v12 = *v8;
    [*v8 lock];
    (*(v5 + 24))(v8 + *(v9 + 28), v4, v7);
    [v12 unlock];
    (*(v6 + 8))(v4, v7);
  }

  free(v4);
  free(v3);

  free(v2);
}

id sub_1BB647AA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  [*v2 lock];
  (*(*(*(a2 + 16) - 8) + 24))(v2 + *(a2 + 28), a1);

  return [v5 unlock];
}

uint64_t dispatch thunk of DKLockActor.lock()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B3D14;

  return v4();
}

uint64_t dispatch thunk of DKLockActor.lock(timeout:)(double a1)
{
  v7 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46E4;
  v5.n128_f64[0] = a1;

  return v7(v5);
}

uint64_t dispatch thunk of DKLockActor.lockIfAvailable()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B4300;

  return v4();
}

uint64_t type metadata accessor for DKLockActor.ContinuationWrapper()
{
  result = qword_1EE0412A8;
  if (!qword_1EE0412A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BB647F1C()
{
  sub_1BB647FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BB647FAC()
{
  if (!qword_1EE0411F8)
  {
    v0 = sub_1BB6BAF44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0411F8);
    }
  }
}

uint64_t sub_1BB64800C()
{
  result = sub_1BB6BB184();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BB648160()
{
  result = sub_1BB6485BC();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BB6481E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1BB64836C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
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

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_1BB6485BC()
{
  result = qword_1EBC5D980;
  if (!qword_1EBC5D980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC5D980);
  }

  return result;
}

uint64_t sub_1BB648608(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BB5B3D14;

  return sub_1BB6465F4(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_1BB6486D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB648740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DKFaceTracker.__allocating_init(time:configuration:uuid:trackerId:anstId:camera:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  DKFaceTracker.init(time:configuration:uuid:trackerId:anstId:camera:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_1BB64887C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = qword_1EBC5EE40;

  MEMORY[0x1BFB10C80](v7);
  if (*(*(v3 + v6) + 16) >= *(*(v3 + v6) + 24) >> 1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    result = sub_1BB6BAEB4();
    v9 = *(v5 + v6);
    v10 = qword_1EBC5EE28;
    if (*(*(v5 + qword_1EBC5EE28) + 72) >= v9[2])
    {
      break;
    }

    while (1)
    {
      v11 = v9[2];
      if (!v11)
      {
        break;
      }

      *(v5 + v6) = v9;
      if ((v11 - 1) > v9[3] >> 1)
      {
        v9 = sub_1BB6BB384();
        *(v5 + v6) = v9;
      }

      sub_1BB598308((v9 + 4), a3);
      v12 = v9[2];
      result = memmove(v9 + 4, v9 + 5, 8 * v12 - 8);
      v9[2] = v12 - 1;
      *(v5 + v6) = v9;
      if (*(*(v5 + v10) + 72) >= v12 - 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    sub_1BB6BAE64();
  }

  return result;
}

uint64_t sub_1BB6489DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v58 = v9;
    *(v2 + qword_1EBC5EE38) = 1;
    v10 = a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect;
    v11 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
    v12 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8);
    v13 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
    v14 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24);

    sub_1BB6AB274(v11, v12, v13, v14);

    v15 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences);

    sub_1BB5BF2B4(v15);

    sub_1BB5F1FEC();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      v22 = (v3 + qword_1EBC5EE08);
      *v22 = v17;
      v22[1] = v19;
    }

    (*(v7 + 24))(v3 + qword_1EBC5EE30, a1, v6);
    v23 = *(*v3 + 200);

    *(v3 + v23) = a2;
    v24 = v3 + *(*v3 + 232);

    sub_1BB598308(v24, &qword_1EBC5C478);
    v25 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId);
    v26 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId + 8);
    v59 = v6;
    v60 = v7;
    v27 = a1;
    v28 = qword_1EBC5EDF8;
    v29 = type metadata accessor for DKPersonGroupFilter.Track(0);
    v30 = *(v29 + 20);
    v31 = sub_1BB6BA844();
    v32 = v24 + v30;
    v33 = v27;
    (*(*(v31 - 8) + 16))(v32, v3 + v28, v31);
    v34 = *(v3 + qword_1EBC5EE08);
    *v24 = v25;
    *(v24 + 8) = v26;
    *(v24 + *(v29 + 24)) = v34;
    (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
    if (*(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8))
    {
      v35 = -1;
    }

    else
    {
      v35 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
    }

    *(v3 + qword_1EBC5EE10) = v35;
    if (*(v3 + *(*v3 + 216)))
    {
      v36 = v59;
      v37 = v60;
      v38 = *(v60 + 16);
      v39 = v58;
      v57 = v33;
      v38(v58, v33, v59);
      type metadata accessor for DKSphericalMotionFilter.Measurement(0);
      v40 = swift_allocObject();
      v41 = v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
      v42 = v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
      (*(v37 + 32))(v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v39, v36);
      v44 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance + 8);
      *v42 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance);
      *(v42 + 8) = v44;
      if (*(v3 + *(*v3 + 224)) == 1)
      {
        v45 = *v10;
        *&v43 = *(v10 + 8);
        v58 = v43;
        v46 = *(v10 + 16);
        v47 = *(v10 + 24);

        v61.origin.x = v45;
        *&v61.origin.y = v58;
        v61.size.width = v46;
        v61.size.height = v47;
        *&v48 = 1.0 - v45 - CGRectGetWidth(v61);
        *(&v48 + 1) = v58;
        v49 = v46;
        v50 = v47;
      }

      else
      {
        v58 = *v10;
        v49 = *(v10 + 16);
        v50 = *(v10 + 24);

        v48 = v58;
      }

      *v41 = v48;
      *(v41 + 16) = v49;
      *(v41 + 24) = v50;
      *(v41 + 32) = 0;
      sub_1BB662018(v40);

      swift_setDeallocating();
      (*(v60 + 8))(v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v59);
      swift_deallocClassInstance();
      v33 = v57;
    }

    sub_1BB64887C(v33, a2, &qword_1EBC5D9A0);

    *(v3 + *(*v3 + 256)) = 0;
  }

  else
  {
    *(v2 + qword_1EBC5EE38) = 0;
    result = sub_1BB64887C(a1, 0, &qword_1EBC5D9A0);
    v52 = *(*v2 + 256);
    v53 = *(v2 + v52);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      *(v2 + v52) = v55;
    }
  }

  return result;
}

uint64_t sub_1BB648FA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v58 = v9;
    *(v2 + qword_1EBC5EE38) = 1;
    v10 = a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect;
    v11 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
    v12 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8);
    v13 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
    v14 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24);

    sub_1BB6AB274(v11, v12, v13, v14);

    v15 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences);

    sub_1BB5BF2B4(v15);

    sub_1BB5F1FEC();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      v22 = (v3 + qword_1EBC5EE08);
      *v22 = v17;
      v22[1] = v19;
    }

    (*(v7 + 24))(v3 + qword_1EBC5EE30, a1, v6);
    v23 = *(*v3 + 200);

    *(v3 + v23) = a2;
    v24 = v3 + *(*v3 + 232);

    sub_1BB598308(v24, &qword_1EBC5C478);
    v25 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId);
    v26 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId + 8);
    v59 = v6;
    v60 = v7;
    v27 = a1;
    v28 = qword_1EBC5EDF8;
    v29 = type metadata accessor for DKPersonGroupFilter.Track(0);
    v30 = *(v29 + 20);
    v31 = sub_1BB6BA844();
    v32 = v24 + v30;
    v33 = v27;
    (*(*(v31 - 8) + 16))(v32, v3 + v28, v31);
    v34 = *(v3 + qword_1EBC5EE08);
    *v24 = v25;
    *(v24 + 8) = v26;
    *(v24 + *(v29 + 24)) = v34;
    (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
    if (*(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8))
    {
      v35 = -1;
    }

    else
    {
      v35 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId);
    }

    *(v3 + qword_1EBC5EE10) = v35;
    if (*(v3 + *(*v3 + 216)))
    {
      v36 = v59;
      v37 = v60;
      v38 = *(v60 + 16);
      v39 = v58;
      v57 = v33;
      v38(v58, v33, v59);
      type metadata accessor for DKSphericalMotionFilter.Measurement(0);
      v40 = swift_allocObject();
      v41 = v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
      v42 = v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
      (*(v37 + 32))(v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v39, v36);
      v44 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance + 8);
      *v42 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance);
      *(v42 + 8) = v44;
      if (*(v3 + *(*v3 + 224)) == 1)
      {
        v45 = *v10;
        *&v43 = *(v10 + 8);
        v58 = v43;
        v46 = *(v10 + 16);
        v47 = *(v10 + 24);

        v61.origin.x = v45;
        *&v61.origin.y = v58;
        v61.size.width = v46;
        v61.size.height = v47;
        *&v48 = 1.0 - v45 - CGRectGetWidth(v61);
        *(&v48 + 1) = v58;
        v49 = v46;
        v50 = v47;
      }

      else
      {
        v58 = *v10;
        v49 = *(v10 + 16);
        v50 = *(v10 + 24);

        v48 = v58;
      }

      *v41 = v48;
      *(v41 + 16) = v49;
      *(v41 + 24) = v50;
      *(v41 + 32) = 0;
      sub_1BB662018(v40);

      swift_setDeallocating();
      (*(v60 + 8))(v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v59);
      swift_deallocClassInstance();
      v33 = v57;
    }

    sub_1BB64887C(v33, a2, &qword_1EBC5D9A8);

    *(v3 + *(*v3 + 256)) = 0;
  }

  else
  {
    *(v2 + qword_1EBC5EE38) = 0;
    result = sub_1BB64887C(a1, 0, &qword_1EBC5D9A8);
    v52 = *(*v2 + 256);
    v53 = *(v2 + v52);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      *(v2 + v52) = v55;
    }
  }

  return result;
}

uint64_t sub_1BB649574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v58 = v9;
    *(v2 + qword_1EBC5EE38) = 1;
    v10 = a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect;
    v11 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
    v12 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect + 8);
    v13 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect + 16);
    v14 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect + 24);

    sub_1BB6AB274(v11, v12, v13, v14);

    v15 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_identityConfidences);

    sub_1BB5BF2B4(v15);

    sub_1BB5F1FEC();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      v22 = (v3 + qword_1EBC5EE08);
      *v22 = v17;
      v22[1] = v19;
    }

    (*(v7 + 24))(v3 + qword_1EBC5EE30, a1, v6);
    v23 = *(*v3 + 200);

    *(v3 + v23) = a2;
    v24 = v3 + *(*v3 + 232);

    sub_1BB598308(v24, &qword_1EBC5C478);
    v25 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId);
    v26 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId + 8);
    v59 = v6;
    v60 = v7;
    v27 = a1;
    v28 = qword_1EBC5EDF8;
    v29 = type metadata accessor for DKPersonGroupFilter.Track(0);
    v30 = *(v29 + 20);
    v31 = sub_1BB6BA844();
    v32 = v24 + v30;
    v33 = v27;
    (*(*(v31 - 8) + 16))(v32, v3 + v28, v31);
    v34 = *(v3 + qword_1EBC5EE08);
    *v24 = v25;
    *(v24 + 8) = v26;
    *(v24 + *(v29 + 24)) = v34;
    (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
    if (*(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId + 8))
    {
      v35 = -1;
    }

    else
    {
      v35 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId);
    }

    *(v3 + qword_1EBC5EE10) = v35;
    if (*(v3 + *(*v3 + 216)))
    {
      v36 = v59;
      v37 = v60;
      v38 = *(v60 + 16);
      v39 = v58;
      v57 = v33;
      v38(v58, v33, v59);
      type metadata accessor for DKSphericalMotionFilter.Measurement(0);
      v40 = swift_allocObject();
      v41 = v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
      v42 = v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
      (*(v37 + 32))(v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v39, v36);
      v44 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance + 8);
      *v42 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance);
      *(v42 + 8) = v44;
      if (*(v3 + *(*v3 + 224)) == 1)
      {
        v45 = *v10;
        *&v43 = *(v10 + 8);
        v58 = v43;
        v46 = *(v10 + 16);
        v47 = *(v10 + 24);

        v61.origin.x = v45;
        *&v61.origin.y = v58;
        v61.size.width = v46;
        v61.size.height = v47;
        *&v48 = 1.0 - v45 - CGRectGetWidth(v61);
        *(&v48 + 1) = v58;
        v49 = v46;
        v50 = v47;
      }

      else
      {
        v58 = *v10;
        v49 = *(v10 + 16);
        v50 = *(v10 + 24);

        v48 = v58;
      }

      *v41 = v48;
      *(v41 + 16) = v49;
      *(v41 + 24) = v50;
      *(v41 + 32) = 0;
      sub_1BB662018(v40);

      swift_setDeallocating();
      (*(v60 + 8))(v40 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v59);
      swift_deallocClassInstance();
      v33 = v57;
    }

    sub_1BB64887C(v33, a2, &qword_1EBC5C470);

    *(v3 + *(*v3 + 256)) = 0;
  }

  else
  {
    *(v2 + qword_1EBC5EE38) = 0;
    result = sub_1BB64887C(a1, 0, &qword_1EBC5C470);
    v52 = *(*v2 + 256);
    v53 = *(v2 + v52);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      *(v2 + v52) = v55;
    }
  }

  return result;
}

uint64_t DKFaceTrackerConfiguration.deinit()
{

  return v0;
}

uint64_t DKFaceTrackerConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKFaceTracker.init(time:configuration:uuid:trackerId:anstId:camera:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v95 = a6;
  v88 = a4;
  v89 = a5;
  v97 = a1;
  v98 = a3;
  v90 = a2;
  v9 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v79 - v12;
  v91 = sub_1BB6BA844();
  v96 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BB6BA7F4();
  v93 = *(v14 - 8);
  v15 = v93;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v99 = &v79 - v21;
  v22 = *(a2 + 200);
  v23 = *(v15 + 56);
  v23(v20);
  v24 = type metadata accessor for DKSmoothingFilter();
  v25 = swift_allocObject();
  *(v25 + 33) = 0;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0x3FF0000000000000;
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  (v23)(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v14);
  v27 = v25 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v25 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v25 + 16) = v22;
  *(v25 + 24) = v22;
  *(v25 + 32) = 1;
  v29 = v25 + v26;
  v30 = v99;
  sub_1BB5BA0DC(v99, v29, &qword_1EBC5C050);
  *v27 = 0;
  *(v27 + 8) = 1;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v7 + qword_1EBC5F408) = v25;
  v31 = v90;
  v32 = *(v90 + 200);
  (v23)(v30, 1, 1, v14);
  v33 = swift_allocObject();
  *(v33 + 33) = 0;
  *(v33 + 40) = 0;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0x3FF0000000000000;
  v34 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  (v23)(v33 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v14);
  v35 = v33 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v33 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v36 = 0;
  *(v36 + 8) = 1;
  *(v33 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v33 + 16) = v32;
  *(v33 + 24) = v32;
  *(v33 + 32) = 1;
  v37 = v33 + v34;
  v38 = v99;
  sub_1BB5BA0DC(v99, v37, &qword_1EBC5C050);
  *v35 = 0;
  *(v35 + 8) = 1;
  *v36 = 0;
  *(v36 + 8) = 1;
  *(v7 + qword_1EBC5F410) = v33;
  v39 = *(v31 + 200);
  v40 = v38;
  v84 = v15 + 56;
  (v23)(v38, 1, 1, v14);
  v86 = v24;
  v41 = swift_allocObject();
  *(v41 + 33) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 0;
  *(v41 + 56) = 0x3FF0000000000000;
  v42 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v85 = v14;
  (v23)(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v14);
  v43 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v44 = 0;
  *(v44 + 8) = 1;
  *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v41 + 16) = v39;
  *(v41 + 24) = v39;
  *(v41 + 32) = 1;
  sub_1BB5BA0DC(v40, v41 + v42, &qword_1EBC5C050);
  *v43 = 0;
  *(v43 + 8) = 1;
  *v44 = 0;
  *(v44 + 8) = 1;
  *(v7 + qword_1EBC5F418) = v41;
  v45 = *(v93 + 16);
  v81 = v93 + 16;
  v80 = v45;
  v45(v92, v97, v14);
  v46 = *(v96 + 16);
  v47 = v94;
  v48 = v91;
  v46(v94, v98, v91);
  v49 = v87;
  sub_1BB64B8F0(v95, v87, type metadata accessor for DKCamera);
  v50 = (v7 + qword_1EBC5EE08);
  *v50 = -1;
  v50[1] = 0;
  *(v7 + qword_1EBC5EE10) = -1;
  sub_1BB6BAA24();
  v51 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *(v7 + v51) = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  *(v7 + qword_1EBC5EE38) = 0;
  v52 = MEMORY[0x1E69E7CC0];
  *(v7 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
  *(v7 + *(*v7 + 200)) = 0;
  *(v7 + *(*v7 + 216)) = 0;
  v53 = *(*v7 + 232);
  v54 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v54 - 8) + 56))(v7 + v53, 1, 1, v54);
  *(v7 + *(*v7 + 240)) = 0;
  *(v7 + *(*v7 + 256)) = 0;
  v55 = v90;
  *(v7 + qword_1EBC5EE28) = v90;
  *(v7 + qword_1EBC5EE00) = v88;
  v46((v7 + qword_1EBC5EDF8), v47, v48);
  *(v7 + qword_1EBC5EE10) = v89;
  v56 = v49;
  sub_1BB64B8F0(v49, v7 + *(*v7 + 224), type metadata accessor for DKCamera);
  v57 = *(v55 + 16);
  v58 = *(v55 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
  swift_allocObject();

  *(v7 + *(*v7 + 208)) = sub_1BB6B44C8(v52, v57, v58);
  v59 = *(v55 + 176);
  v60 = *(v55 + 184);
  v61 = v99;
  v62 = v85;
  (v23)(v99, 1, 1, v85);
  v63 = swift_allocObject();
  *(v63 + 33) = 0;
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 56) = 0x3FF0000000000000;
  v64 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v65 = v62;
  (v23)(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v62);
  v66 = v63 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v66 = 0;
  *(v66 + 8) = 1;
  v67 = v63 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v67 = 0;
  *(v67 + 8) = 1;
  *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v63 + 16) = v59;
  *(v63 + 24) = v60;
  *(v63 + 32) = 0;
  sub_1BB5BA0DC(v61, v63 + v64, &qword_1EBC5C050);
  *v66 = 0;
  *(v66 + 8) = 1;
  *v67 = 0;
  *(v67 + 8) = 1;
  v68 = v55;
  *(v7 + *(*v7 + 248)) = v63;
  if (*(v55 + 136) == 1)
  {
    v69 = v82;
    v70 = v92;
    v80(v82, v92, v65);
    v71 = v83;
    sub_1BB64B8F0(v56, v83, type metadata accessor for DKCamera);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v99 = sub_1BB66327C(v69, v68, v71);

    sub_1BB5D818C(v95, type metadata accessor for DKCamera);
    v72 = *(v96 + 8);
    v73 = v91;
    v72(v98, v91);
    v74 = *(v93 + 8);
    v74(v97, v65);
    sub_1BB5D818C(v56, type metadata accessor for DKCamera);
    v72(v94, v73);
    v74(v70, v65);
    *(v7 + *(*v7 + 216)) = v99;
  }

  else
  {

    sub_1BB5D818C(v95, type metadata accessor for DKCamera);
    v75 = *(v96 + 8);
    v76 = v91;
    v75(v98, v91);
    v77 = *(v93 + 8);
    v77(v97, v65);
    sub_1BB5D818C(v56, type metadata accessor for DKCamera);
    v75(v94, v76);
    v77(v92, v65);
  }

  return v7;
}

uint64_t sub_1BB64A858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  if (a2)
  {
    if (*(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw + 8))
    {
      v9 = *(v2 + qword_1EBC5F408);
      *(v9 + 33) = 0;
      v10 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

      sub_1BB598308(v9 + v10, &qword_1EBC5C050);
      v11 = sub_1BB6BA7F4();
      (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
    }

    else
    {
      v12 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw);
      v13 = sub_1BB6BA7F4();
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);

      sub_1BB6ABB40(0, 1, v8, v12);

      sub_1BB598308(v8, &qword_1EBC5C050);
    }

    if (*(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch + 8))
    {
      v14 = *(v3 + qword_1EBC5F410);
      *(v14 + 33) = 0;
      v15 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

      sub_1BB598308(v14 + v15, &qword_1EBC5C050);
      v16 = sub_1BB6BA7F4();
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
    }

    else
    {
      v17 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch);
      v18 = sub_1BB6BA7F4();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);

      sub_1BB6ABB40(0, 1, v8, v17);

      sub_1BB598308(v8, &qword_1EBC5C050);
    }

    if (*(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll + 8))
    {

      v19 = *(v3 + qword_1EBC5F418);
      *(v19 + 33) = 0;
      v20 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

      sub_1BB598308(v19 + v20, &qword_1EBC5C050);
      v21 = sub_1BB6BA7F4();
      (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
    }

    else
    {
      v22 = *(a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll);
      v23 = sub_1BB6BA7F4();
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);

      sub_1BB6ABB40(0, 1, v8, v22);

      sub_1BB598308(v8, &qword_1EBC5C050);
    }
  }

  return sub_1BB6489DC(a1, a2);
}

uint64_t sub_1BB64ACCC(uint64_t a1)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v63 - v4;
  v77 = sub_1BB6BA844();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for DKMotion3();
  v20 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6AAD04(v79);
  v23 = 0;
  if (v80)
  {
    return v23;
  }

  v70 = v6;
  v81 = v79[0];
  v82 = v79[1];
  v24 = *(v2 + *(*v2 + 216));
  v71 = v7;
  if (v24 && (, , v25 = v78, sub_1BB59911C(v78), , , sub_1BB59911C(v25), , , sub_1BB59911C(v25), , sub_1BB6626AC(v25), v26 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState), , , v26))
  {
    sub_1BB64B8F0(v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, v18, type metadata accessor for DKMotion3);

    v68 = *(v20 + 56);
    v68(v18, 0, 1, v19);
    sub_1BB5DD278(v18, v22);
    v27 = *(v71 + 16);
    v28 = v70;
  }

  else
  {
    v29 = v20;
    v68 = *(v20 + 56);
    v68(v18, 1, 1, v19);
    v27 = *(v71 + 16);
    v30 = v70;
    v27(v13, v78, v70);
    v27(v22, v13, v30);
    v28 = v30;
    *&v22[v19[5]] = &unk_1F3A486C0;
    *&v22[v19[6]] = &unk_1F3A486F8;
    (*(v71 + 8))(v13, v30);
    *&v22[v19[7]] = &unk_1F3A48730;
    if ((*(v29 + 48))(v18, 1, v19) != 1)
    {
      sub_1BB598308(v18, &qword_1EBC5BCB8);
    }
  }

  v31 = v69;
  v27(v72, v78, v28);
  (*(v75 + 16))(v74, v2 + qword_1EBC5EDF8, v77);
  v69 = *(v2 + qword_1EBC5EE08);
  v32 = *(v2 + qword_1EBC5EE08 + 8);
  v67 = *(v2 + qword_1EBC5EE10);
  v66 = *(v2 + qword_1EBC5EE00);
  sub_1BB5F5764(v2 + *(*v2 + 232), v31);
  v33 = type metadata accessor for DKPersonGroupFilter.Track(0);
  if ((*(*(v33 - 8) + 48))(v31, 1, v33))
  {
    sub_1BB598308(v31, &qword_1EBC5C478);
LABEL_10:
    v34 = -1;
    goto LABEL_11;
  }

  v34 = *v31;
  v35 = *(v31 + 8);
  sub_1BB598308(v31, &qword_1EBC5C478);
  if (v35 == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  v36 = v73;
  sub_1BB64B8F0(v22, v73, type metadata accessor for DKMotion3);
  v37 = v36;
  v38 = v68;
  v68(v37, 0, 1, v19);
  v27(v76, v2 + qword_1EBC5EE30, v28);
  v39 = *(v2 + *(*v2 + 248));
  v40 = 0.0;
  if (*(v39 + 33) == 1)
  {
    if (*(v39 + 32) == 1)
    {
      v40 = atan2(*(v39 + 48), *(v39 + 56));
    }

    else
    {
      v40 = *(v39 + 40);
    }
  }

  v41 = *(v2 + qword_1EBC5EE40);
  v42 = *(v41 + 16);
  if (v42)
  {
    v78 = *(v41 + 8 * v42 + 24);
  }

  else
  {
    v78 = 0;
  }

  v43 = *(v2 + qword_1EBC5F408);
  v44 = *(v43 + 33);
  v45 = 0.0;
  v46 = 0.0;
  if (v44 == 1)
  {
    if (*(v43 + 32) == 1)
    {
      v46 = atan2(*(v43 + 48), *(v43 + 56));
    }

    else
    {
      v46 = *(v43 + 40);
    }
  }

  v64 = v44 ^ 1;
  v47 = *(v2 + qword_1EBC5F410);
  v48 = *(v47 + 33);
  if (v48 == 1)
  {
    if (*(v47 + 32) == 1)
    {
      v45 = atan2(*(v47 + 48), *(v47 + 56));
    }

    else
    {
      v45 = *(v47 + 40);
    }
  }

  v65 = v34;
  v63 = v48 ^ 1;
  v49 = *(v2 + qword_1EBC5F418);
  v50 = *(v49 + 33);
  v51 = 0.0;
  if (v50 == 1)
  {
    if (*(v49 + 32) == 1)
    {
      v51 = atan2(*(v49 + 48), *(v49 + 56));
    }

    else
    {
      v51 = *(v49 + 40);
    }
  }

  sub_1BB5D818C(v22, type metadata accessor for DKMotion3);
  type metadata accessor for DKFaceTrackerState(0);
  v23 = swift_allocObject();
  v52 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion;
  v38(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion, 1, 1, v19);
  v53 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation;
  v54 = v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  v55 = v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  v56 = v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  v57 = *(v71 + 32);
  v58 = v70;
  v57(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time, v72, v70);
  (*(v75 + 32))(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid, v74, v77);
  v59 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  v60 = v82;
  *v59 = v81;
  v59[1] = v60;
  v61 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
  *v61 = v69;
  v61[1] = v32;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_anstId) = v67;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerId) = v66;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_groupId) = v65;
  sub_1BB5BA0DC(v73, v23 + v52, &qword_1EBC5BCB8);
  v57(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v76, v58);
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_framesSinceLastUpdate) = 0;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = v40;
  *(v23 + v53) = v78;
  *v54 = v46;
  *(v54 + 8) = v64;
  *v55 = v45;
  *(v55 + 8) = v63;
  *v56 = v51;
  *(v56 + 8) = v50 ^ 1;
  return v23;
}

uint64_t sub_1BB64B770()
{
}

uint64_t DKFaceTracker.deinit()
{
  v0 = _s23IntelligentTrackingCore13DKBodyTrackerCfd_0();

  return v0;
}

uint64_t DKFaceTracker.__deallocating_deinit()
{
  _s23IntelligentTrackingCore13DKBodyTrackerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB64B8C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BB64ACCC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BB64B8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DKFaceTracker()
{
  result = qword_1EBC5D990;
  if (!qword_1EBC5D990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB64BCE8()
{
  result = os_variant_allows_internal_security_policies();
  byte_1EBC5D9B0 = result;
  return result;
}

uint64_t sub_1BB64BD10()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for DKDataLogStamped(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB64BDA4, 0, 0);
}

uint64_t sub_1BB64BDA4()
{
  if (*(*(*(v0[2] + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_config) + 72) != 1)
  {
    goto LABEL_8;
  }

  if (qword_1EBC5BB58 != -1)
  {
    swift_once();
  }

  if (byte_1EBC5D9B0 == 1)
  {
    v2 = v0[3];
    v1 = v0[4];
    v3 = v0[2];
    v4 = *(v3 + 48);
    v5 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
    v6 = sub_1BB6BA7F4();
    (*(*(v6 - 8) + 16))(v1, v4 + v5, v6);
    *(v1 + *(v2 + 20)) = v4;
    v0[5] = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLoggingTask_logRecorder);

    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_1BB64BF68;
    v8 = v0[4];

    return sub_1BB674BBC(v8);
  }

  else
  {
LABEL_8:

    v10 = v0[1];

    return v10(1);
  }
}

uint64_t sub_1BB64BF68()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1BB64C0A8;

  return sub_1BB6738A0();
}

uint64_t sub_1BB64C0A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BB64C1A4, 0, 0);
}

uint64_t sub_1BB64C1A4()
{
  sub_1BB64C38C(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1BB64C220()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKLoggingTask()
{
  result = qword_1EBC5D9B8;
  if (!qword_1EBC5D9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB64C38C(uint64_t a1)
{
  v2 = type metadata accessor for DKDataLogStamped(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB64C3E8()
{
  v1[2] = v0;
  v2 = sub_1BB6BA844();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1BB6BA7F4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB64C510, 0, 0);
}

uint64_t sub_1BB64C510()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = *(v4 + 48);
  v6 = *(v2 + 16);
  v6(v1, v5 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v3);

  v7 = sub_1BB5C0B34(v1);

  v8 = *(v2 + 8);
  (v8)(v1, v3);
  *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedFaces) = v7;

  v9 = *(v4 + 48);
  v6(v1, v9 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v3);

  v10 = sub_1BB5C0B68(v1);

  (v8)(v1, v3);
  *(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedBodies) = v10;

  v11 = *(v4 + 48);
  v6(v1, v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v3);

  v12 = sub_1BB5C0DC0(v1);

  (v8)(v1, v3);
  *(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedHands) = v12;

  v13 = *(v4 + 48);
  v50 = v6;
  v6(v1, v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v3);

  v14 = sub_1BB5C0DF4(v1);

  (v8)(v1, v3);
  v15 = &OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople;
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople) = v14;

  v16 = *(v4 + 48);
  v17 = *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople);
  if (v17)
  {
    if (v17 >> 62)
    {
      goto LABEL_47;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  v46 = *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
  if (v46)
  {
    v43 = *(v16 + *v15);
    if (v43)
    {
      if (v43 >> 62)
      {
        v15 = sub_1BB6BB564();
        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_9:
          v22 = v46 & 0xFFFFFFFFFFFFFF8;
          if (v46 >> 62)
          {
            v49 = sub_1BB6BB564();
          }

          else
          {
            v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v23 = v47[4];
          v45 = (v23 + 16);
          v24 = (v23 + 8);

          v25 = 0;
          v26 = MEMORY[0x1E69E7CC0];
          v42 = v15;
          while (1)
          {
            if ((v43 & 0xC000000000000001) != 0)
            {
              v4 = MEMORY[0x1BFB111F0](v25, v43);
              v27 = __OFADD__(v25, 1);
              v28 = (v25 + 1);
              if (v27)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v25 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v4 = *(v43 + 32 + 8 * v25);

              v27 = __OFADD__(v25, 1);
              v28 = (v25 + 1);
              if (v27)
              {
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                v41 = sub_1BB6BB564();
                v16 = *(v4 + 48);
                if (v41 < 1)
                {
                  goto LABEL_5;
                }

LABEL_4:
                v18 = v47[7];
                v19 = *(v4 + 40);
                v20 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
                v21 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSubjectSeenTime;

                (v8)(v19 + v21, v18);
                v50(v19 + v21, v16 + v20, v18);

                v16 = *(v4 + 48);
                goto LABEL_5;
              }
            }

            v44 = v28;
            v51 = v26;
            if (v49)
            {
              break;
            }

            v36 = v26;
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_38;
            }

LABEL_34:
            if ((v36 & 0x4000000000000000) != 0)
            {
              goto LABEL_38;
            }

            v37 = *(v36 + 16);
LABEL_36:
            v25 = v44;

            if (!v37)
            {
              v38 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence);

              *(v38 + 16) = 0;
              v4 = v38;
            }

            if (v44 == v15)
            {

              goto LABEL_40;
            }
          }

          v50 = v4;
          v8 = 0;
          v48 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid;
          do
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x1BFB111F0](v8, v46);
              v15 = (v8 + 1);
              if (__OFADD__(v8, 1))
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v8 >= *(v22 + 16))
              {
                goto LABEL_44;
              }

              v29 = *(v46 + 8 * v8 + 32);

              v15 = (v8 + 1);
              if (__OFADD__(v8, 1))
              {
LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
                goto LABEL_45;
              }
            }

            v30 = v22;
            v32 = v47[5];
            v31 = v47[6];
            v33 = v47[3];
            v34 = *v45;
            (*v45)(v31, v29 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v33);
            v34(v32, v50 + v48, v33);
            v4 = sub_1BB6BA814();
            v35 = *v24;
            (*v24)(v32, v33);
            v35(v31, v33);
            if (v4)
            {
              sub_1BB6BB3D4();
              sub_1BB6BB414();
              sub_1BB6BB424();
              sub_1BB6BB3E4();
            }

            else
            {
            }

            v22 = v30;
            ++v8;
          }

          while (v15 != v49);
          v4 = v50;
          v36 = v51;
          v15 = v42;
          v26 = MEMORY[0x1E69E7CC0];
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

LABEL_38:
          v8 = v36;
          v37 = sub_1BB6BB564();
          v15 = v42;
          goto LABEL_36;
        }
      }
    }
  }

LABEL_40:

  v39 = v47[1];

  return v39(1);
}

uint64_t type metadata accessor for DKUpdateStatesTask()
{
  result = qword_1EBC5D9C8;
  if (!qword_1EBC5D9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DKStateMachine.Transition.init(from:to:event:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a4 - 8) + 32);
  v11(a6, a1, a4);
  v12 = type metadata accessor for DKStateMachine.Transition();
  v11(a6 + *(v12 + 52), a2, a4);
  return (*(*(a5 - 8) + 32))(a6 + *(v12 + 56), a3, a5);
}

uint64_t DKStateMachine.__allocating_init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_1BB64D9B8(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t DKStateMachine.init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1BB64D9B8(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

id sub_1BB64CF54()
{
  v1 = *(v0 + *(*v0 + 128));
  [v1 lock];
  sub_1BB64CFF8(v0);

  return [v1 unlock];
}

uint64_t sub_1BB64CFF8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00]();
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2);
  return (*(*(*(*a1 + 80) - 8) + 40))(a1 + *(*a1 + 112), v3);
}

id sub_1BB64D118@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 128));
  sub_1BB6485BC();
  [v3 lock];
  sub_1BB64E0CC(a1);

  return [v3 unlock];
}

uint64_t sub_1BB64D1A0(uint64_t a1)
{
  v3 = *(*v1 + 88);
  sub_1BB64D944(v3, v3);
  v4 = *(v3 - 8);
  swift_allocObject();
  v5 = sub_1BB6BAE44();
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_1BB6BAF04();
  nullsub_1(v7);
  v8 = sub_1BB64D2C0(v5);

  return v8 & 1;
}

uint64_t sub_1BB64D2C0(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 128));
  [v3 lock];
  sub_1BB64D360(v1, a1, &v5);
  [v3 unlock];
  return v5;
}

uint64_t sub_1BB64D360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a3;
  v43 = a2;
  v4 = *a1;
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 96);
  v8 = *(*a1 + 104);
  v44[0] = *(*a1 + 80);
  v5 = v44[0];
  v44[1] = v6;
  v41 = v8;
  v42 = v6;
  v44[2] = v7;
  v44[3] = v8;
  v9 = type metadata accessor for DKStateMachine.Transition();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v31 - v14;
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = a1 + *(v4 + 112);
  v34 = *(v15 + 16);
  v35 = v15 + 16;
  v34(&v31 - v20, v22, v5, v19);
  sub_1BB6BAF04();

  sub_1BB6BAB24();

  v23 = *(v15 + 8);
  v37 = v5;
  result = v23(v21, v5);
  v25 = v44[0];
  if (v44[0])
  {
    v32 = a1;
    if (sub_1BB6BAEC4())
    {
      v26 = 0;
      v39 = (v10 + 8);
      v40 = (v10 + 16);
      do
      {
        v27 = sub_1BB6BAEA4();
        sub_1BB6BAE54();
        if (v27)
        {
          (*(v10 + 16))(v45, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v9);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_12;
          }
        }

        else
        {
          result = sub_1BB6BB364();
          if (v33 != 8)
          {
            __break(1u);
            return result;
          }

          v44[0] = result;
          (*v40)(v45, v44, v9);
          swift_unknownObjectRelease();
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_12:
            __break(1u);
            break;
          }
        }

        (*(v10 + 32))(v12, v45, v9);
        v44[0] = v43;
        sub_1BB6BAF04();
        swift_getWitnessTable();
        if (sub_1BB6BADB4())
        {

          v30 = v36;
          (v34)(v36, &v12[*(v9 + 52)], v37);
          (*(*(*(*v32 + 80) - 8) + 40))(v32 + *(*v32 + 112), v30);
          result = (*v39)(v12, v9);
          v29 = 1;
          goto LABEL_15;
        }

        (*v39)(v12, v9);
        ++v26;
      }

      while (v28 != sub_1BB6BAEC4());
    }
  }

  v29 = 0;
LABEL_15:
  *v38 = v29;
  return result;
}

uint64_t DKStateMachine.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t DKStateMachine.__deallocating_deinit()
{
  DKStateMachine.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB64D944(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D1B8);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1BB64D9B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v53 - v8;
  v65 = *(v9 + 88);
  v10 = *(v5 + 104);
  v77 = v6;
  v78 = v65;
  v79 = v10;
  v11 = type metadata accessor for DKStateMachine.Transition();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v53 - v14;
  v53 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v53 - v17;
  v18 = *(v5 + 120);
  v19 = sub_1BB6BAF04();
  swift_getTupleTypeMetadata2();
  v20 = sub_1BB6BAE84();
  v75 = v19;
  v67 = v65.i64[1];
  v21 = sub_1BB5BF618(v20, v6, v19, v65.i64[1]);

  *(v2 + v18) = v21;
  v22 = *(*v2 + 128);
  *(v2 + v22) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v23 = *(*v2 + 112);
  v24 = *(v7 + 16);
  v74 = v2;
  v56 = v7 + 16;
  v54 = v24;
  v24(v2 + v23, a1, v6);
  v25 = a2;
  v64 = v11;
  if (sub_1BB6BAEC4())
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v70 = *(*v74 + 120);
    v30 = v63;
    v71 = (v63 + 16);
    v61 = (v63 + 32);
    v57 = (v63 + 8);
    v66 = v6;
    v26.i64[0] = v6;
    *&v31 = vdupq_laneq_s64(v65, 1).u64[0];
    v62 = v10;
    *(&v31 + 1) = v10;
    v60 = v31;
    v59 = vzip1q_s64(v26, v65);
    v32 = v64;
    v58 = v25;
    while (1)
    {
      v34 = sub_1BB6BAEA4();
      sub_1BB6BAE54();
      if (v34)
      {
        v35 = *(v30 + 16);
        v35(v73, (v25 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27), v32);
      }

      else
      {
        v51 = sub_1BB6BB364();
        if (v53 != 8)
        {
          goto LABEL_18;
        }

        v77 = v51;
        v35 = *v71;
        (*v71)(v73, &v77, v32);
        swift_unknownObjectRelease();
      }

      v69 = v27;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v68 = v27 + 1;
      v36 = v74;
      v37 = v76;
      (*v61)(v76, v73, v32);
      v38 = swift_allocObject();
      v39 = v60;
      *(v38 + 16) = v59;
      *(v38 + 32) = v39;
      sub_1BB58C41C(v28);
      v35(v72, v37, v32);
      v40 = swift_allocObject();
      v41 = v66;
      *(v40 + 16) = v66;
      *(v40 + 24) = v65;
      *(v40 + 40) = v62;
      *(v40 + 48) = sub_1BB64E83C;
      *(v40 + 56) = v38;
      sub_1BB58C41C(v29);
      v42 = v70;
      swift_isUniquelyReferenced_nonNull_native();
      v77 = *(v36 + v42);
      v43 = v77;
      *(v36 + v42) = 0x8000000000000000;
      v44 = v67;
      sub_1BB5BF434(v37, v41, v67);
      if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
      {
        goto LABEL_17;
      }

      v46 = v45;
      sub_1BB6BB4E4();
      v47 = sub_1BB6BB4C4();
      v48 = v77;
      if (v47)
      {
        sub_1BB5BF434(v76, v41, v44);
        if ((v46 & 1) != (v49 & 1))
        {
          goto LABEL_19;
        }
      }

      v25 = v58;
      v32 = v64;
      *(v74 + v70) = v48;

      if ((v46 & 1) == 0)
      {
        v77 = (*(v40 + 48))(v50);
        v54(v55, v76, v66);
        sub_1BB6BB4D4();
      }

      sub_1BB6BAED4();
      (*v57)(v76, v32);
      v33 = sub_1BB6BAEC4();
      v27 = v69 + 1;
      v29 = sub_1BB64E878;
      v28 = sub_1BB64E83C;
      v30 = v63;
      if (v68 == v33)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1BB6BB874();
    __break(1u);
  }

  else
  {
    v28 = 0;
    v29 = 0;
LABEL_15:

    sub_1BB58C41C(v28);
    sub_1BB58C41C(v29);
    return v74;
  }

  return result;
}

uint64_t sub_1BB64E14C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DKStateMachine.execute(_:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

uint64_t sub_1BB64E2D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BB64E364(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v4 + 80);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 + v10;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v15 = ((v9 + v11 + (v13 & ~v10)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((((a1 + v13) & ~v10) + v9 + v11) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

char *sub_1BB64E560(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  v12 = *(v8 + 80);
  if (v9 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = ((v10 + v12 + ((v10 + v11) & ~v11)) & ~v12) + *(*(v7 - 8) + 64);
  v15 = a3 >= v13;
  v16 = a3 - v13;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
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
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v27 = *(v5 + 56);

    return v27();
  }

  else
  {
    v25 = *(v8 + 56);
    v26 = ((&result[v10 + v11] & ~v11) + v10 + v12) & ~v12;

    return v25(v26);
  }
}

uint64_t sub_1BB64E878@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result;
  return result;
}

IntelligentTrackingCore::DKLog::Category_optional __swiftcall DKLog.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BB6BB5D4();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DKLog.Category.rawValue.getter()
{
  result = 0x6F67657461636E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x676E696D617246;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      v2 = 5;
      goto LABEL_12;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x676E696B63617254;
      break;
    case 8:
      result = 0x63614D6574617453;
      break;
    case 9:
      v2 = 9;
LABEL_12:
      result = v2 | 0xD000000000000010;
      break;
    case 0xA:
      result = 0x686372616553;
      break;
    case 0xB:
      result = 0x6172656D6143;
      break;
    case 0xC:
      result = 0x67676F4C61746144;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0xE:
      result = 0x797469746E656449;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BB64EAE8()
{
  v0 = DKLog.Category.rawValue.getter();
  v2 = v1;
  if (v0 == DKLog.Category.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BB6BB7E4();
  }

  return v5 & 1;
}

uint64_t sub_1BB64EB84()
{
  sub_1BB6BB924();
  DKLog.Category.rawValue.getter();
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB64EBEC()
{
  DKLog.Category.rawValue.getter();
  sub_1BB6BACC4();
}

uint64_t sub_1BB64EC50()
{
  sub_1BB6BB924();
  DKLog.Category.rawValue.getter();
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

unint64_t sub_1BB64ECC0@<X0>(unint64_t *a1@<X8>)
{
  result = DKLog.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(char *a1, uint64_t a2, unint64_t a3, os_log_type_t a4)
{
  v8 = sub_1BB6BAA34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  DKLog.Category.rawValue.getter();
  sub_1BB6BAA24();
  v12 = sub_1BB6BAA14();
  if (os_log_type_enabled(v12, a4))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1BB6A0A5C(a2, a3, &v16);
    _os_log_impl(&dword_1BB58A000, v12, a4, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB122F0](v14, -1, -1);
    MEMORY[0x1BFB122F0](v13, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1BB64EECC()
{
  result = qword_1EBC5DAD8;
  if (!qword_1EBC5DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DAD8);
  }

  return result;
}

CGFloat *DKImageCrop.__allocating_init(sourceImage:rect:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = swift_allocObject();
  *(v10 + 7) = sub_1BB5B0EA0(MEMORY[0x1E69E7CC0]);
  *(v10 + 2) = a1;
  v11 = a1;
  Width = CVPixelBufferGetWidth(v11);
  Height = CVPixelBufferGetHeight(v11);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  v20 = VNImageRectForNormalizedRect(v19, Width, Height);
  x = v20.origin.x;
  y = v20.origin.y;
  v16 = v20.size.width;
  v17 = v20.size.height;

  v10[3] = x;
  v10[4] = y;
  v10[5] = v16;
  v10[6] = v17;
  return v10;
}

void *sub_1BB64F030()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

CGFloat *DKImageCrop.init(sourceImage:rect:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5[2] = 0.0;
  *(v5 + 7) = sub_1BB5B0EA0(MEMORY[0x1E69E7CC0]);
  v11 = *(v5 + 2);
  *(v5 + 2) = a1;
  v12 = a1;

  Width = CVPixelBufferGetWidth(v12);
  Height = CVPixelBufferGetHeight(v12);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v21 = VNImageRectForNormalizedRect(v20, Width, Height);
  x = v21.origin.x;
  y = v21.origin.y;
  v17 = v21.size.width;
  v18 = v21.size.height;

  v5[3] = x;
  v5[4] = y;
  v5[5] = v17;
  v5[6] = v18;
  return v5;
}

void sub_1BB64F148()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v7.origin.x = v1;
  v7.origin.y = v2;
  v7.size.width = v3;
  v7.size.height = v4;
  Width = CGRectGetWidth(v7);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  Height = CGRectGetHeight(v8);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Height < 9.22337204e18)
  {
    sub_1BB64F24C(Width, Height);
    return;
  }

LABEL_13:
  __break(1u);
}

__CVBuffer *sub_1BB64F24C(size_t a1, __CVBuffer *a2)
{
  v14 = sub_1BB6BB794();
  v15 = v5;
  MEMORY[0x1BFB10B60](120, 0xE100000000000000);
  v6 = sub_1BB6BB794();
  MEMORY[0x1BFB10B60](v6);

  v7 = *(v2 + 56);
  if (*(v7 + 16))
  {

    v8 = sub_1BB6A10FC(v14, v15);
    if (v9)
    {
      v10 = v8;

      v11 = *(*(v7 + 56) + 8 * v10);

      return v11;
    }
  }

  v13 = sub_1BB64F634(v14, v15, a1, a2);

  return v13;
}

__CVBuffer *sub_1BB64F38C(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 < 9.22337204e18)
  {
    return sub_1BB64F24C(a1, a2);
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BB64F430(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v5 = sub_1BB64F24C(Width, Height);
  if (!v1)
  {
    v6 = v5;
    sub_1BB5F18F0(v5, a1);
  }
}

uint64_t sub_1BB64F498()
{
  v6 = sub_1BB6BB794();
  v7 = v1;
  MEMORY[0x1BFB10B60](120, 0xE100000000000000);
  v2 = sub_1BB6BB794();
  MEMORY[0x1BFB10B60](v2);

  if (*(*(v0 + 56) + 16))
  {

    sub_1BB6A10FC(v6, v7);
    v4 = v3;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

void sub_1BB64F590()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t sub_1BB64F5A0()
{
  v2 = sub_1BB6BB794();
  MEMORY[0x1BFB10B60](120, 0xE100000000000000);
  v0 = sub_1BB6BB794();
  MEMORY[0x1BFB10B60](v0);

  return v2;
}

__CVBuffer *sub_1BB64F634(uint64_t a1, uint64_t a2, size_t a3, __CVBuffer *a4)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  v6 = *(v4 + 16);
  if (!v6)
  {
    sub_1BB5A8D60();
    swift_allocError();
    *v37 = 0xD00000000000003ALL;
    *(v37 + 8) = 0x80000001BB6CDC60;
    *(v37 + 16) = 0;
    swift_willThrow();
    return v5;
  }

  v5 = a4;
  pixelBufferOut[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v10;
  v11 = v6;
  *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
  sub_1BB5B07C0(inited);
  swift_setDeallocating();
  sub_1BB64FC9C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
  v12 = sub_1BB6BAAE4();

  CVPixelBufferCreate(0, a3, v5, 0x42475241u, v12, pixelBufferOut);

  if (!pixelBufferOut[0])
  {
    sub_1BB5A8D60();
    swift_allocError();
    *v38 = 0xD000000000000028;
    *(v38 + 8) = 0x80000001BB6CDCA0;
    *(v38 + 16) = 0;
    swift_willThrow();

    return v5;
  }

  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v15 = *(v4 + 40);
  v16 = *(v4 + 48);
  v17 = pixelBufferOut[0];
  v42.origin.x = v13;
  v42.origin.y = v14;
  v42.size.width = v15;
  v42.size.height = v16;
  MinX = CGRectGetMinX(v42);
  if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (MinX <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (MinX >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v43.origin.x = v13;
  v43.origin.y = v14;
  v43.size.width = v15;
  v43.size.height = v16;
  MinY = CGRectGetMinY(v43);
  if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (MinY <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (MinY >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44.origin.x = v13;
  v44.origin.y = v14;
  v44.size.width = v15;
  v44.size.height = v16;
  Width = CGRectGetWidth(v44);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v45.origin.x = v13;
  v45.origin.y = v14;
  v45.size.width = v15;
  v45.size.height = v16;
  Height = CGRectGetHeight(v45);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_35;
  }

  pixelTransferSessionOut = 0;
  result = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  v23 = pixelTransferSessionOut;
  if (!pixelTransferSessionOut)
  {
LABEL_20:

    v5 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    pixelTransferSessionOut = *(v4 + 56);
    *(v4 + 56) = 0x8000000000000000;
    sub_1BB599C88(v5, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 56) = pixelTransferSessionOut;

    return v5;
  }

  v24 = *MEMORY[0x1E6983DF8];
  if (!*MEMORY[0x1E6983DF8])
  {
    __break(1u);
    goto LABEL_37;
  }

  v25 = *MEMORY[0x1E695E4D0];
  v26 = pixelTransferSessionOut;
  result = VTSessionSetProperty(v26, v24, v25);
  if (!*MEMORY[0x1E6983DF0])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  VTSessionSetProperty(v26, *MEMORY[0x1E6983DF0], *MEMORY[0x1E695E4C0]);
  result = VTSessionSetProperty(v26, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F0]);
  v27 = *MEMORY[0x1E6983E40];
  if (*MEMORY[0x1E6983E40])
  {
    v28 = MinX;
    v29 = MinY;
    v30 = Height;
    v31 = Width;
    v32 = v29;
    v33 = v28;
    v34 = v26;
    v46.origin.x = v33;
    v46.origin.y = v32;
    v46.size.width = v31;
    v46.size.height = v30;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v46);
    VTSessionSetProperty(v34, v27, DictionaryRepresentation);

    VTPixelTransferSessionTransferImage(v34, v11, v17);
    VTPixelTransferSessionInvalidate(v34);

    v23 = pixelTransferSessionOut;
    goto LABEL_20;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t DKImageCrop.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL _s23IntelligentTrackingCore11DKImageCropC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5)
    {
      type metadata accessor for CVBuffer(0);
      sub_1BB64FFD4();
      v6 = v5;
      v7 = v4;
      v8 = sub_1BB6BA8B4();

      if (v8)
      {
        return CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
      }
    }
  }

  else if (!v5)
  {
    return CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
  }

  return 0;
}

uint64_t sub_1BB64FC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BB64FFD4()
{
  result = qword_1EBC5DAE0;
  if (!qword_1EBC5DAE0)
  {
    type metadata accessor for CVBuffer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DAE0);
  }

  return result;
}

char *sub_1BB65002C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BB6BB564();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    goto LABEL_21;
  }

  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1BB5E5760(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = *(*(MEMORY[0x1BFB111F0](i, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
        swift_unknownObjectRelease();
        if (fabs(v6) >= 0.00001)
        {
          v7 = v6;
        }

        else
        {
          v7 = dbl_1BB6C5920[v6 > 0];
        }

        v9 = *(v23 + 16);
        v8 = *(v23 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1BB5E5760((v8 > 1), v9 + 1, 1);
        }

        *(v23 + 16) = v9 + 1;
        *(v23 + 8 * v9 + 32) = 1.0 / v7;
      }
    }

    else
    {
      v10 = (a1 + 32);
      v11 = *(v23 + 16);
      do
      {
        v12 = *(*(*v10 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
        if (fabs(v12) >= 0.00001)
        {
          v13 = v12;
        }

        else
        {
          v13 = dbl_1BB6C5920[v12 > 0];
        }

        v14 = *(v23 + 24);
        if (v11 >= v14 >> 1)
        {
          sub_1BB5E5760((v14 > 1), v11 + 1, 1);
        }

        *(v23 + 16) = v11 + 1;
        *(v23 + 8 * v11 + 32) = 1.0 / v13;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

LABEL_21:
    v15 = *(v3 + 16);
    if (v15)
    {
      if (v15 > 3)
      {
        v16 = v15 & 0x7FFFFFFFFFFFFFFCLL;
        v18 = (v3 + 48);
        v17 = 0.0;
        v19 = v15 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = v17 + *(v18 - 2) + *(v18 - 1) + *v18 + v18[1];
          v18 += 4;
          v19 -= 4;
        }

        while (v19);
        if (v15 == v16)
        {
        }
      }

      else
      {
        v16 = 0;
        v17 = 0.0;
      }

      v20 = v15 - v16;
      v21 = (v3 + 8 * v16 + 32);
      do
      {
        v22 = *v21++;
        v17 = v17 + v22;
        --v20;
      }

      while (v20);
    }
  }

  __break(1u);
  return result;
}

char *sub_1BB6502C4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_58:
    v3 = sub_1BB6BB564();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  v42 = v1;
  if (v3)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1BB5E5780(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    v6 = v43;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        v8 = *(MEMORY[0x1BFB111F0](i, v1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence);

        swift_unknownObjectRelease();
        v9 = *(v8 + 16);

        v11 = *(v43 + 16);
        v10 = *(v43 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1BB5E5780((v10 > 1), v11 + 1, 1);
        }

        *(v43 + 16) = v11 + 1;
        *(v43 + 8 * v11 + 32) = v9;
      }
    }

    else
    {
      v12 = (v1 + 32);
      v13 = *(v43 + 16);
      do
      {
        v14 = *(*(*v12 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
        v15 = *(v43 + 24);
        if (v13 >= v15 >> 1)
        {
          sub_1BB5E5780((v15 > 1), v13 + 1, 1);
        }

        *(v43 + 16) = v13 + 1;
        *(v43 + 8 * v13 + 32) = v14;
        ++v12;
        ++v13;
        --v3;
      }

      while (v3);
    }

    v1 = &OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1BB5A1670(v6);
  v18 = v17;

  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = v16;
  }

  if (v2)
  {
    v20 = sub_1BB6BB564();
  }

  else
  {
    v20 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = 0;
    v2 = v42 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1BFB111F0](v22, v42);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v22 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_58;
        }

        v23 = *(v42 + 8 * v22 + 32);

        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v25 = v4;
          v21 = MEMORY[0x1E69E7CC0];
          if ((v4 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_59;
        }
      }

      if (*(*(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16) == v19)
      {
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        sub_1BB6BB424();
        sub_1BB6BB3E4();
      }

      else
      {
      }

      ++v22;
      if (v24 == v20)
      {
        goto LABEL_35;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

LABEL_38:
  if ((v25 & 0x4000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_40;
    }

LABEL_60:

    v28 = MEMORY[0x1E69E7CC0];
    v34 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v34)
    {
    }

    goto LABEL_49;
  }

LABEL_59:
  v26 = sub_1BB6BB564();
  if (!v26)
  {
    goto LABEL_60;
  }

LABEL_40:
  result = sub_1BB5E5760(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v21;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1BFB111F0](v27, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = *(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence);

      v31 = *(v30 + 24);

      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1BB5E5760((v32 > 1), v33 + 1, 1);
      }

      ++v27;
      *(v28 + 16) = v33 + 1;
      *(v28 + 8 * v33 + 32) = v31;
    }

    while (v26 != v27);

    v34 = *(v28 + 16);
    if (!v34)
    {
    }

LABEL_49:
    if (v34 > 3)
    {
      v35 = v34 & 0x7FFFFFFFFFFFFFFCLL;
      v37 = (v28 + 48);
      v36 = 0.0;
      v38 = v34 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = v36 + *(v37 - 2) + *(v37 - 1) + *v37 + v37[1];
        v37 += 4;
        v38 -= 4;
      }

      while (v38);
      if (v34 == v35)
      {
      }
    }

    else
    {
      v35 = 0;
      v36 = 0.0;
    }

    v39 = v34 - v35;
    v40 = (v28 + 8 * v35 + 32);
    do
    {
      v41 = *v40++;
      v36 = v36 + v41;
      --v39;
    }

    while (v39);
  }

LABEL_63:
  __break(1u);
  return result;
}

BOOL sub_1BB650750(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1BB65002C(*a1);
  v5 = v4;
  sub_1BB65002C(v3);
  if (v5 == v6)
  {
    sub_1BB6502C4(v2);
    v8 = v7;
    sub_1BB6502C4(v3);
  }

  else
  {
    sub_1BB65002C(v2);
    v8 = v10;
    sub_1BB65002C(v3);
  }

  return v8 < v9;
}

BOOL sub_1BB6507C8(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1BB65002C(*a2);
  v5 = v4;
  sub_1BB65002C(v2);
  if (v5 == v6)
  {
    sub_1BB6502C4(v3);
    v8 = v7;
    sub_1BB6502C4(v2);
  }

  else
  {
    sub_1BB65002C(v3);
    v8 = v10;
    sub_1BB65002C(v2);
  }

  return v8 >= v9;
}

BOOL sub_1BB650844(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1BB65002C(*a1);
  v5 = v4;
  sub_1BB65002C(v3);
  if (v5 == v6)
  {
    sub_1BB6502C4(v2);
    v8 = v7;
    sub_1BB6502C4(v3);
  }

  else
  {
    sub_1BB65002C(v2);
    v8 = v10;
    sub_1BB65002C(v3);
  }

  return v8 >= v9;
}

BOOL sub_1BB6508C0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1BB65002C(*a2);
  v5 = v4;
  sub_1BB65002C(v2);
  if (v5 == v6)
  {
    sub_1BB6502C4(v3);
    v8 = v7;
    sub_1BB6502C4(v2);
  }

  else
  {
    sub_1BB65002C(v3);
    v8 = v10;
    sub_1BB65002C(v2);
  }

  return v8 < v9;
}

BOOL sub_1BB650938(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  sub_1BB65002C(*a1);
  v4 = v3;
  sub_1BB65002C(v2);
  return v4 == v5;
}

uint64_t sub_1BB6509B0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BB693B70(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1BB6BB784();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *&v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DAE8);
      v7 = sub_1BB6BAE94();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1BB650BF0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1BB650B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEF0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1BB650BF0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1BB693A54(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1BB651188((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v17 >= v18;
        ++v16;
        v17 = v18;
        if ((((v15 < v10) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v15 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v15 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BB59D140(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1BB59D140((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1BB651188((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*v33 >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1BB651188(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

char *sub_1BB65138C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BB6BB564();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v54 = MEMORY[0x1E69E7CC0];
    result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_68;
    }

    v5 = v54;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v55 = *(MEMORY[0x1BFB111F0](i, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        MinX = CGRectGetMinX(v55);
        swift_unknownObjectRelease();
        v9 = *(v54 + 16);
        v8 = *(v54 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1BB5E58C0((v8 > 1), v9 + 1, 1);
        }

        *(v54 + 16) = v9 + 1;
        *(v54 + 8 * v9 + 32) = MinX;
      }
    }

    else
    {
      v31 = (a1 + 32);
      v32 = v2;
      do
      {
        v33 = CGRectGetMinX(*(*v31 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        v35 = *(v54 + 16);
        v34 = *(v54 + 24);
        if (v35 >= v34 >> 1)
        {
          v36 = v33;
          sub_1BB5E58C0((v34 > 1), v35 + 1, 1);
          v33 = v36;
        }

        *(v54 + 16) = v35 + 1;
        *(v54 + 8 * v35 + 32) = v33;
        ++v31;
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1BB5A1724(v5);
  v11 = v10;

  if (v11)
  {
    if (v2)
    {
      goto LABEL_14;
    }

LABEL_22:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_14:
  result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (j = 0; j != v2; ++j)
    {
      v56 = *(MEMORY[0x1BFB111F0](j, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      MaxX = CGRectGetMaxX(v56);
      swift_unknownObjectRelease();
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BB5E58C0((v15 > 1), v16 + 1, 1);
      }

      *(v3 + 16) = v16 + 1;
      *(v3 + 8 * v16 + 32) = MaxX;
    }
  }

  else
  {
    v37 = (a1 + 32);
    v38 = v2;
    do
    {
      v39 = CGRectGetMaxX(*(*v37 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
      v41 = *(v3 + 16);
      v40 = *(v3 + 24);
      if (v41 >= v40 >> 1)
      {
        v42 = v39;
        sub_1BB5E58C0((v40 > 1), v41 + 1, 1);
        v39 = v42;
      }

      *(v3 + 16) = v41 + 1;
      *(v3 + 8 * v41 + 32) = v39;
      ++v37;
      --v38;
    }

    while (v38);
  }

LABEL_23:
  sub_1BB5A1450(v12);
  v18 = v17;

  if (v18)
  {
    if (v2)
    {
      goto LABEL_25;
    }

LABEL_33:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  if (!v2)
  {
    goto LABEL_33;
  }

LABEL_25:
  result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v19 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (k = 0; k != v2; ++k)
    {
      v57 = *(MEMORY[0x1BFB111F0](k, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      MinY = CGRectGetMinY(v57);
      swift_unknownObjectRelease();
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1BB5E58C0((v22 > 1), v23 + 1, 1);
      }

      *(v3 + 16) = v23 + 1;
      *(v3 + 8 * v23 + 32) = MinY;
    }
  }

  else
  {
    v43 = (a1 + 32);
    v44 = v2;
    do
    {
      v45 = CGRectGetMinY(*(*v43 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
      v47 = *(v3 + 16);
      v46 = *(v3 + 24);
      if (v47 >= v46 >> 1)
      {
        v48 = v45;
        sub_1BB5E58C0((v46 > 1), v47 + 1, 1);
        v45 = v48;
      }

      *(v3 + 16) = v47 + 1;
      *(v3 + 8 * v47 + 32) = v45;
      ++v43;
      --v44;
    }

    while (v44);
  }

LABEL_34:
  sub_1BB5A1724(v19);
  v25 = v24;

  if (v25)
  {
    if (v2)
    {
      goto LABEL_36;
    }

LABEL_44:
    v26 = MEMORY[0x1E69E7CC0];
LABEL_45:
    sub_1BB5A1450(v26);

    return a1;
  }

  if (!v2)
  {
    goto LABEL_44;
  }

LABEL_36:
  result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v26 = v3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (m = 0; m != v2; ++m)
      {
        v58 = *(MEMORY[0x1BFB111F0](m, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        MaxY = CGRectGetMaxY(v58);
        swift_unknownObjectRelease();
        v30 = *(v3 + 16);
        v29 = *(v3 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1BB5E58C0((v29 > 1), v30 + 1, 1);
        }

        *(v3 + 16) = v30 + 1;
        *(v3 + 8 * v30 + 32) = MaxY;
      }
    }

    else
    {
      v49 = (a1 + 32);
      do
      {
        v50 = CGRectGetMaxY(*(*v49 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        v52 = *(v3 + 16);
        v51 = *(v3 + 24);
        if (v52 >= v51 >> 1)
        {
          v53 = v50;
          sub_1BB5E58C0((v51 > 1), v52 + 1, 1);
          v50 = v53;
        }

        *(v3 + 16) = v52 + 1;
        *(v3 + 8 * v52 + 32) = v50;
        ++v49;
        --v2;
      }

      while (v2);
    }

    goto LABEL_45;
  }

LABEL_70:
  __break(1u);
  return result;
}