char *sub_1BF3BC57C(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1BF4E9204();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1BF39A9CC();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t *sub_1BF3BC68C(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1BF4E91F4();
  sub_1BF3901C0(0, a5, a6);
  sub_1BF3BD134(a7, a5, a6);
  result = sub_1BF4E8D64();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1BF4E9234())
      {
        goto LABEL_30;
      }

      sub_1BF3901C0(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t EnvironmentModifiers.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9520, &qword_1BF4F1668);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = type metadata accessor for EnvironmentModifiers();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  v14 = MEMORY[0x1E69E7CD0];
  *(v13 + 1) = 0;
  *(v13 + 2) = v14;
  v13[24] = 0;
  v16 = *(v15 + 32);
  v17 = sub_1BF4E6F14();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v41 = v16;
  v42 = v17;
  v39 = v18 + 56;
  v40 = v19;
  (v19)(&v13[v16], 1, 1);
  v45 = v10[9];
  v13[v45] = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BF4E9204())
  {
    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
    v14 = v32;
  }

  v20 = v10[10];
  *&v13[v20] = v14;
  v21 = v10[11];
  *&v13[v21] = 0;
  v22 = a1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = v22;
  __swift_project_boxed_opaque_existential_1(v22, v24);
  sub_1BF3BC35C();
  v26 = v48;
  sub_1BF4E9854();
  if (v26)
  {
    v27 = v25;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    return sub_1BF44B050(v13);
  }

  v48 = v21;
  v37 = v20;
  v38 = v14;
  LOBYTE(v51) = 0;
  v27 = v25;
  *v13 = sub_1BF4E9574() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9528, &qword_1BF4F1670);
  LOBYTE(v49) = 2;
  sub_1BF3BC3B0(&qword_1EDC963B8, &qword_1EDC96490);
  sub_1BF4E95B4();
  v28 = v9;
  *(v13 + 2) = v51;
  LOBYTE(v51) = 1;
  *(v13 + 1) = sub_1BF4E95A4();
  LOBYTE(v51) = 3;
  v13[24] = sub_1BF4E9574() & 1;
  LOBYTE(v51) = 4;
  v13[v45] = sub_1BF4E9574() & 1;
  LOBYTE(v51) = 6;
  *&v13[v48] = sub_1BF4E95A4();
  LOBYTE(v49) = 5;
  sub_1BF3BCF88();
  sub_1BF4E95B4();
  v30 = v51;
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BF4ECFE0;
  *(v31 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
  *(v31 + 40) = sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
  sub_1BF4E8EC4();
  v48 = v30;

  if (v50)
  {
    sub_1BF38EB2C(&v49, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9538, &qword_1BF4F1680);
    swift_dynamicCast();
    v33 = sub_1BF3BCFDC(v52);

    *&v13[v37] = v33;
    LOBYTE(v51) = 7;
    v34 = v47;
    if (sub_1BF4E95E4())
    {
      LOBYTE(v51) = 7;
      sub_1BF3A43F4(&qword_1EBDD9540, MEMORY[0x1E6968278]);
      sub_1BF4E95B4();
      (*(v46 + 8))(v28, v34);
      sub_1BF3B03C0(v48, *(&v30 + 1));
      v35 = v43;
      v40(v43, 0, 1, v42);
      sub_1BF44982C(v35, &v13[v41]);
    }

    else
    {
      (*(v46 + 8))(v28, v34);
      sub_1BF3B03C0(v48, *(&v30 + 1));
    }

    sub_1BF44B0AC(v13, v44);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF3BCF88()
{
  result = qword_1EDC9F9A0;
  if (!qword_1EDC9F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F9A0);
  }

  return result;
}

uint64_t sub_1BF3BCFDC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
  {
    v4 = sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    v5 = sub_1BF3BD134(&qword_1EDC9F9B8, &qword_1EDC9F9C0, 0x1E69943A0);
    result = MEMORY[0x1BFB58FA0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB59570](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1BF3BD184(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1BF4E9204();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BF3BD134(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BF3901C0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF3BD184(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BF4E9214();

    if (v9)
    {

      sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1BF4E9204();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1BF4AD2C0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1BF4ADE00(v22 + 1, &qword_1EBDD9590, &unk_1BF4F1930);
    }

    v20 = v8;
    sub_1BF4AE6DC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
  v11 = *(v6 + 40);
  v12 = sub_1BF4E9094();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1BF3BD3CC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1BF4E90A4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_1BF3BD3CC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4ADE00(v6 + 1, &qword_1EBDD9590, &unk_1BF4F1930);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BF4AF578();
      goto LABEL_12;
    }

    sub_1BF4B03A0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1BF4E9094();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1BF4E90A4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BF4E9784();
  __break(1u);
}

uint64_t sub_1BF3BD584(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_1BF3BE970(v1, a1, &v6);
  os_unfair_lock_unlock(*(v3 + 16));

  return v6;
}

uint64_t sub_1BF3BD60C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v176 = a1;
  v5 = *v2;
  v175 = v5;
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v161 = &v153[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *&v170 = &v153[-v11];
  v172 = sub_1BF4E7334();
  v174 = *(v172 - 8);
  v12 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v160 = &v153[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v164 = &v153[-v15];
  v171 = type metadata accessor for ReloadConfiguration(0);
  v16 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v158 = &v153[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v173 = &v153[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v153[-v21];
  v23 = *(v5 + 80);
  v24 = *(v23 - 1);
  v25 = v24[8];
  MEMORY[0x1EEE9AC00](v26);
  v162 = &v153[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v159 = &v153[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v157 = &v153[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v153[-v33];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v153[-v36];
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  v38 = qword_1EDC9AF50;
  v39 = v24[2];
  v177 = v23;
  v39(v37, a2, v23);
  sub_1BF39B31C(v176, v22, type metadata accessor for ReloadConfiguration);
  v165 = v38;
  v178 = v3;
  v40 = sub_1BF4E7B34();
  v41 = sub_1BF4E8E84();
  v42 = os_log_type_enabled(v40, v41);
  v163 = v34;
  v169 = v24;
  v167 = v24 + 2;
  v166 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v179 = v156;
    *v43 = 136446466;
    v155 = v40;
    v44 = v177;
    v39(v34, v37, v177);
    v45 = v44;
    v154 = v41;
    v46 = v24[1];
    v46(v37, v44);
    v47 = *(v175 + 104);
    v48 = sub_1BF4E96A4();
    v50 = v49;
    v168 = v46;
    v46(v34, v45);
    v51 = a2;
    v52 = sub_1BF38D65C(v48, v50, &v179);

    *(v43 + 4) = v52;
    *(v43 + 12) = 2082;
    v53 = ReloadConfiguration.description.getter();
    v55 = v54;
    sub_1BF45EABC(v22, type metadata accessor for ReloadConfiguration);
    v56 = sub_1BF38D65C(v53, v55, &v179);

    *(v43 + 14) = v56;
    v57 = v155;
    _os_log_impl(&dword_1BF389000, v155, v154, "%{public}s Reload with configuration %{public}s", v43, 0x16u);
    v58 = v156;
    swift_arrayDestroy();
    v59 = v173;
    MEMORY[0x1BFB5A5D0](v58, -1, -1);
    v60 = v43;
    v61 = v172;
    MEMORY[0x1BFB5A5D0](v60, -1, -1);
  }

  else
  {
    v168 = v24[1];
    v168(v37, v177);

    sub_1BF45EABC(v22, type metadata accessor for ReloadConfiguration);
    v51 = a2;
    v61 = v172;
    v59 = v173;
  }

  sub_1BF39B31C(v176, v59, type metadata accessor for ReloadConfiguration);
  v62 = (*(*v178 + 1544))(v51, v59);
  v63 = v174;
  v64 = v171;
  v65 = v170;
  if ((v62 & 1) == 0)
  {
    v68 = v162;
    v69 = v166;
    v166(v162, v51, v177);
    v70 = sub_1BF4E7B34();
    v71 = sub_1BF4E8E84();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v163;
    if (v72)
    {
      v74 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179 = v178;
      *v74 = 136446210;
      v75 = v177;
      v69(v73, v68, v177);
      v76 = v68;
      v77 = v73;
      v78 = v168;
      v168(v76, v75);
      v79 = *(v175 + 104);
      v80 = sub_1BF4E96A4();
      v82 = v81;
      v78(v77, v75);
      v83 = sub_1BF38D65C(v80, v82, &v179);

      *(v74 + 4) = v83;
      _os_log_impl(&dword_1BF389000, v70, v71, "%{public}s Reload not permitted.", v74, 0xCu);
      v84 = v178;
      __swift_destroy_boxed_opaque_existential_1Tm(v178);
      MEMORY[0x1BFB5A5D0](v84, -1, -1);
      MEMORY[0x1BFB5A5D0](v74, -1, -1);
    }

    else
    {
      v168(v68, v177);
    }

LABEL_30:
    v151 = v59;
    return sub_1BF45EABC(v151, type metadata accessor for ReloadConfiguration);
  }

  v66 = *(v178 + qword_1EDC9AFB8);
  v179 = *(v59 + *(v171 + 24));
  sub_1BF39C510(v179);
  v176 = v66;
  sub_1BF3C23CC(&v179, v65);
  sub_1BF39C9A4(v179);
  if ((*(v63 + 48))(v65, 1, v61) == 1)
  {
    sub_1BF38C9B4(v65, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v67 = v175;
LABEL_26:
    v144 = qword_1EDC9AF48;
    v145 = v178;
    swift_beginAccess();
    v146 = *(v145 + v144);
    v147 = *(v67 + 112);

    sub_1BF4E8854();

    if (v179 != 3)
    {
      v148 = qword_1EDC9AF48;
      v149 = v178;
      swift_beginAccess();
      v150 = *(v149 + v148);

      sub_1BF4E8854();

      if (v185[0] != 4)
      {
        v185[0] = 0;
        sub_1BF399684(v185, v51);
      }
    }

    swift_beginAccess();
    v184 = *(v59 + v64[6]);
    sub_1BF39C510(v184);
    sub_1BF3BF60C(v51, &v184);
    sub_1BF39C9A4(v184);
    sub_1BF3C03E0(v51, v59);
    goto LABEL_30;
  }

  v85 = *(v63 + 32);
  (v85)(v164, v65, v61);
  v86 = qword_1EDC9AF88;
  v87 = v178;
  swift_beginAccess();
  v88 = *(v87 + v86);
  v67 = v175;
  v89 = *(v175 + 104);

  v179 = v177;
  v180 = *(v67 + 88);
  v156 = v89;
  v181 = v89;
  v90 = *(v67 + 128);
  v170 = *(v67 + 112);
  v182 = v170;
  v183 = v90;
  type metadata accessor for ReloadTaskPair();
  sub_1BF4E8854();

  if (!v186)
  {
    v92 = v160;
    v93 = v159;
    goto LABEL_18;
  }

  v91 = sub_1BF39B43C();

  v92 = v160;
  v93 = v159;
  if (!v91)
  {
LABEL_18:
    v162 = v85;
    *&v170 = v51;
    v110 = v166;
    v166(v93, v51, v177);
    v111 = v174;
    (*(v174 + 16))(v92, v164, v61);
    v112 = v92;
    v113 = sub_1BF4E7B34();
    LODWORD(v165) = sub_1BF4E8E64();
    if (os_log_type_enabled(v113, v165))
    {
      v159 = v113;
      v114 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v179 = v157;
      *v114 = 136446722;
      v115 = v110;
      v116 = v163;
      v117 = v177;
      v115(v163, v93, v177);
      v118 = v93;
      v119 = v168;
      v168(v118, v117);
      v120 = sub_1BF4E96A4();
      v122 = v121;
      v119(v116, v117);
      v123 = sub_1BF38D65C(v120, v122, &v179);

      *(v114 + 4) = v123;
      *(v114 + 12) = 2082;
      v59 = v173;
      swift_beginAccess();
      v186 = *(v59 + v64[6]);
      sub_1BF39C510(v186);
      v124 = ReloadConfiguration.ReloadReason.description.getter();
      v126 = v125;
      sub_1BF39C9A4(v186);
      v127 = sub_1BF38D65C(v124, v126, &v179);

      *(v114 + 14) = v127;
      *(v114 + 22) = 2082;
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v128 = qword_1EDC9F0F8;
      v129 = v160;
      v130 = sub_1BF4E7254();
      v131 = [v128 stringFromDate_];

      v132 = sub_1BF4E8914();
      v134 = v133;

      v135 = v174;
      v61 = v172;
      (*(v174 + 8))(v129, v172);
      v136 = sub_1BF38D65C(v132, v134, &v179);

      *(v114 + 24) = v136;
      v111 = v135;
      v137 = v159;
      _os_log_impl(&dword_1BF389000, v159, v165, "%{public}s Reload loop detected for reason: %{public}s; delaying reload to %{public}s", v114, 0x20u);
      v138 = v157;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v138, -1, -1);
      MEMORY[0x1BFB5A5D0](v114, -1, -1);

      v67 = v175;
      v64 = v171;
    }

    else
    {
      v168(v93, v177);

      (*(v111 + 8))(v112, v61);
      v59 = v173;
    }

    v139 = v161;
    (v162)(v161, v164, v61);
    (*(v111 + 56))(v139, 0, 1, v61);
    v140 = swift_allocObject();
    swift_beginAccess();
    v141 = *(v59 + v64[6]);
    v51 = v170;
    if (v141 >> 61 == 3)
    {
      v141 = *((v141 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    *(v140 + 16) = v141;
    sub_1BF39C510(v141);
    v142 = v64[9];
    v143 = v158;
    sub_1BF3B4C44(v161, v158, type metadata accessor for ReloadConfiguration.ReloadType);
    v143[v64[5]] = 0;
    *&v143[v64[7]] = 1;
    *&v143[v64[6]] = v140 | 0x6000000000000000;
    v143[v64[8]] = 1;
    v143[v142] = 0;
    sub_1BF45E8A4(v143, v59);
    goto LABEL_26;
  }

  if (*(v91 + *(*v91 + 168) + v64[6]) >> 61 != 3)
  {

    goto LABEL_18;
  }

  v94 = v157;
  v95 = v166;
  v166(v157, v51, v177);

  v96 = sub_1BF4E7B34();
  v97 = sub_1BF4E8E84();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v179 = v178;
    *v98 = 136446466;
    v99 = v163;
    v100 = v177;
    v95(v163, v94, v177);
    v101 = v168;
    v168(v94, v100);
    v102 = sub_1BF4E96A4();
    v104 = v103;
    v101(v99, v100);
    v105 = sub_1BF38D65C(v102, v104, &v179);

    *(v98 + 4) = v105;
    *(v98 + 12) = 2080;
    v106 = sub_1BF42E0F4();
    v108 = sub_1BF38D65C(v106, v107, &v179);

    *(v98 + 14) = v108;
    _os_log_impl(&dword_1BF389000, v96, v97, "%{public}s Reload not permitted; in reload backoff - waiting on current backoff task to flush [%s]", v98, 0x16u);
    v109 = v178;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v109, -1, -1);
    MEMORY[0x1BFB5A5D0](v98, -1, -1);

    (*(v174 + 8))(v164, v172);
  }

  else
  {
    v168(v94, v177);

    (*(v174 + 8))(v164, v61);
  }

  v151 = v173;
  return sub_1BF45EABC(v151, type metadata accessor for ReloadConfiguration);
}

uint64_t sub_1BF3BE938()
{
  sub_1BF39C9A4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3BE970@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v44 = *a1;
  v45 = a2;
  v4 = *(v44 + 10);
  v5 = *(v4 - 8);
  v40 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v39 - v6;
  v8 = type metadata accessor for EnvironmentModifiersAssertion();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v12;
  *(v11 + 40) = 0;
  v14 = v11 + OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  *v14 = 0;
  v15 = MEMORY[0x1E69E7CD0];
  *(v14 + 8) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 0;
  v16 = type metadata accessor for EnvironmentModifiers();
  v17 = v16[8];
  v18 = sub_1BF4E6F14();
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  *(v14 + v16[9]) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BF4E9204())
  {
    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
    v15 = v38;
  }

  *(v14 + v16[10]) = v15;
  *(v14 + v16[11]) = 0;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v41 = *(v5 + 16);
  v42 = v5 + 16;
  v41(v7, v45, v4);
  v21 = *(v5 + 80);
  v46 = a1;
  v22 = v7;
  v23 = (v21 + 48) & ~v21;
  v24 = swift_allocObject();
  *(v24 + 2) = v4;
  v25 = v4;
  v26 = *(v44 + 11);
  *(v24 + 3) = v26;
  *(v24 + 4) = v19;
  *(v24 + 5) = v20;
  v27 = *(v5 + 32);
  v44 = v22;
  v28 = v22;
  v29 = v46;
  v27(&v24[v23], v28, v25);
  v30 = *(v11 + 16);
  v31 = *(v30 + 16);

  os_unfair_lock_lock(v31);
  v32 = *(v11 + 24);
  v33 = *(v11 + 32);
  *(v11 + 24) = sub_1BF4724FC;
  *(v11 + 32) = v24;

  sub_1BF3B0E64(v32);
  os_unfair_lock_unlock(*(v30 + 16));

  swift_beginAccess();
  v34 = v29[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  v35 = v45;
  v40 = v26;
  sub_1BF4E8854();

  if (!v48)
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _WeakEnvironmentModifiersAssertion();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  MEMORY[0x1BFB58DD0](v36);
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BF4E8BE4();
  }

  sub_1BF4E8C24();
  v41(v44, v35, v25);
  v47 = v48;
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8864();
  swift_endAccess();

  *v43 = v11;
  return result;
}

uint64_t sub_1BF3BEE5C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3BEE94()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t type metadata accessor for EnvironmentModifiersAssertion()
{
  result = qword_1EDC97668;
  if (!qword_1EDC97668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3BF0A8(void *a1, uint64_t a2)
{
  *&v50 = *a1;
  v47 = type metadata accessor for ReloadConfiguration(0);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v50 + 80);
  v7 = *(v6 - 1);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v16 = v7[2];
  v48 = a2;
  v16(&v45 - v14, a2, v6, v13);
  v49 = a1;
  v17 = sub_1BF4E7B34();
  v18 = sub_1BF4E8E84();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = v45;
    *v19 = 136446210;
    (v16)(v11, v15, v6);
    v20 = v7[1];
    v20(v15, v6);
    v21 = *(v50 + 104);
    v22 = v18;
    v23 = sub_1BF4E96A4();
    v25 = v24;
    v20(v11, v6);
    v26 = sub_1BF38D65C(v23, v25, &v51);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1BF389000, v17, v22, "%{public}s Clearing environment mismatch loop/history.", v19, 0xCu);
    v27 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
    MEMORY[0x1BFB5A5D0](v19, -1, -1);
  }

  else
  {
    (v7[1])(v15, v6);
  }

  v28 = v50;
  v30 = v48;
  v29 = v49;
  v31 = *(v49 + qword_1EDC9AFB8);
  sub_1BF3BFE9C(v48);
  v32 = qword_1EDC9AF88;
  swift_beginAccess();
  v33 = *(v29 + v32);
  v34 = *(v28 + 104);

  v51 = v6;
  v52 = *(v28 + 88);
  v53 = v34;
  v35 = *(v28 + 128);
  v50 = *(v28 + 112);
  v54 = v50;
  v55 = v35;
  type metadata accessor for ReloadTaskPair();
  sub_1BF4E8854();

  if (v56)
  {
    v37 = sub_1BF39B43C();

    if (v37)
    {
      v38 = v47;
      v51 = *(v37 + *(*v37 + 168) + *(v47 + 24));
      v39 = v51;
      v40 = swift_allocObject();
      *(v40 + 16) = 0xA000000000000000;
      v56 = v40 | 0x6000000000000000;
      sub_1BF39C510(v39);
      LOBYTE(v39) = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v51, &v56);
      sub_1BF39C9A4(v56);
      sub_1BF39C9A4(v51);
      if (v39)
      {
        sub_1BF3B7C08();
        v41 = sub_1BF4E7334();
        v42 = v46;
        (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
        v43 = swift_allocObject();
        *(v43 + 16) = 0xD00000000000001CLL;
        *(v43 + 24) = 0x80000001BF4FBDE0;
        v44 = v38[9];
        *(v42 + v38[5]) = 1;
        *(v42 + v38[7]) = 1;
        *(v42 + v38[6]) = v43 | 0x2000000000000000;
        *(v42 + v38[8]) = 1;
        *(v42 + v44) = 0;
        sub_1BF3BD60C(v42, v30);

        return sub_1BF45EABC(v42, type metadata accessor for ReloadConfiguration);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1BF3BF5B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BF3BF60C(uint64_t a1, unint64_t *a2)
{
  v86 = a1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 96);
  v85 = *(*v2 + 88);
  v81 = v5;
  v6 = type metadata accessor for ReloadHistory.ReloadHistoryRecord();
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v72[-v10];
  v11 = sub_1BF4E90F4();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v72[-v15];
  v16 = *(v4 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v23 = &v72[-v21];
  v89 = *a2;
  if (v89 >> 61 == 3)
  {
    v89 = *((v89 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v24 = v16[2];
  v25 = v86;
  v24(&v72[-v21], v86, v4, v22);
  v26 = v89;
  sub_1BF39C510(v89);
  sub_1BF39C510(v26);
  v27 = sub_1BF4E7B34();
  v28 = sub_1BF4E8E84();
  sub_1BF39C9A4(v26);
  v73 = v28;
  v79 = v27;
  v29 = os_log_type_enabled(v27, v28);
  v77 = v16 + 2;
  v76 = v24;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v93[0] = v31;
    *v30 = 136446466;
    v32 = v87;
    (v24)(v87, v23, v4);
    v33 = v6;
    v34 = v16[1];
    v34(v23, v4);
    v35 = sub_1BF4E96A4();
    v37 = v36;
    v34(v32, v4);
    v6 = v33;
    v38 = v35;
    v39 = v25;
    v40 = v89;
    v41 = sub_1BF38D65C(v38, v37, v93);

    *(v30 + 4) = v41;
    *(v30 + 12) = 2082;
    v91[0] = v40;
    sub_1BF39C510(v40);
    v42 = ReloadConfiguration.ReloadReason.description.getter();
    v44 = v43;
    sub_1BF39C9A4(v91[0]);
    v45 = sub_1BF38D65C(v42, v44, v93);

    *(v30 + 14) = v45;
    v46 = v79;
    _os_log_impl(&dword_1BF389000, v79, v73, "record reload: %{public}s = %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
    MEMORY[0x1BFB5A5D0](v30, -1, -1);
  }

  else
  {
    (v16[1])(v23, v4);

    v39 = v25;
  }

  v47 = qword_1EDC9B168;
  v48 = v88;
  swift_beginAccess();
  v49 = *(v48 + v47);
  sub_1BF4E8CA4();

  v50 = v81;
  sub_1BF4E8854();

  v52 = v6;
  if (v91[0])
  {
    v79 = v72;
    v92 = v91[0];
    MEMORY[0x1EEE9AC00](v51);
    v53 = v85;
    *&v72[-32] = v4;
    *&v72[-24] = v53;
    v54 = v89;
    *&v72[-16] = v50;
    *&v72[-8] = v54;

    swift_getWitnessTable();
    v55 = v82;
    sub_1BF4E8B04();

    v56 = v78;
    v91[0] = v54;
    (*(v83 + 16))(v78, v55, v84);
    sub_1BF39C510(v54);
    v57 = v75;
    v58 = v4;
    sub_1BF3C01E4(v91, v56, v75);
    v59 = v80;
    v60 = v74;
    (*(v80 + 16))(v74, v57, v52);
    sub_1BF4E8C54();
    v61 = sub_1BF4E8C34();
    v62 = v76;
    if (v61 >= 3)
    {
      sub_1BF4E8C64();
      (*(v59 + 8))(v60, v52);
    }

    v62(v87, v86, v58);
    v90 = v92;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    sub_1BF39C9A4(v89);
    (*(v59 + 8))(v57, v52);
    return (*(v83 + 8))(v82, v84);
  }

  else
  {
    v76(v87, v39, v4);
    sub_1BF4E96C4();
    v64 = v80;
    v65 = *(v80 + 72);
    v66 = *(v80 + 80);
    swift_allocObject();
    v67 = sub_1BF4E8BC4();
    v69 = v68;
    v70 = v89;
    v91[0] = v89;
    v71 = v78;
    (*(v64 + 56))(v78, 1, 1, v52);
    sub_1BF39C510(v70);
    sub_1BF3C01E4(v91, v71, v69);
    v92 = v67;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    return sub_1BF39C9A4(v70);
  }
}

uint64_t sub_1BF3BFE9C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - v8;
  v10 = qword_1EDC9B168;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = *(v4 + 88);
  v13 = *(v4 + 96);
  type metadata accessor for ReloadHistory.ReloadHistoryRecord();
  sub_1BF4E8CA4();

  sub_1BF4E8854();

  if (v16)
  {
    v15 = &v15;
    v18 = v16;
    MEMORY[0x1EEE9AC00](result);
    *(&v15 - 4) = v5;
    *(&v15 - 3) = v12;
    *(&v15 - 2) = v13;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1BF4E8E04();
    (*(v6 + 16))(v9, a1, v5);
    v17 = v18;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    return swift_endAccess();
  }

  return result;
}

unint64_t *sub_1BF3C0134(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 122)
  {
    v6 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = sub_1BF4E7334();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1BF3C01E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  v5 = type metadata accessor for ReloadHistory.ReloadHistoryRecord();
  v6 = a3 + *(v5 + 44);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  v7 = *(v5 - 8);
  if ((*(v7 + 48))(a2, 1, v5) == 1)
  {
    v8 = sub_1BF4E90F4();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    v10 = 0;
  }

  else
  {
    v10 = *(a2 + *(v5 + 48));
    result = (*(v7 + 8))(a2, v5);
  }

  if (v10 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a3 + *(v5 + 48)) = v10 + 1;
  }

  return result;
}

uint64_t sub_1BF3C0320(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 122)
  {
    v4 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
    v5 = v4 ^ 0x7E;
    v6 = 128 - v4;
    if (v5 >= 0x7A)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1BF4E7334();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BF3C03E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  v6 = qword_1EDC9AF48;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v5[10];
  v9 = v5[14];

  sub_1BF4E8854();

  v10 = qword_1EDCA6870;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = v5[11];
  v13 = v5[12];
  v14 = v5[16];
  sub_1BF4E8834();

  sub_1BF4E8854();

  result = v16;
  if (v16)
  {

    result = (*(*v2 + 1544))(a1, a2);
    if ((result & 1) != 0 && (v17 == 3 || !v17))
    {
      return sub_1BF3B3A74(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1BF3C05A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_beginAccess();
  if (*(v2 + 176) == 1)
  {
    v5 = *(v2 + qword_1EDC99040);
    v8 = v4;
    v6 = (*(**(v5 + 16) + 152))(&v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1BF3C0648(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 160);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v2 + *(v5 + 176), v6);
  LOBYTE(a2) = (*(*(v5 + 168) + 72))(a1, a2, v6);
  (*(v7 + 8))(v10, v6);
  return a2 & 1;
}

uint64_t sub_1BF3C0794(unint64_t *a1)
{
  v1 = *a1;
  v4 = 0xA000000000000000;
  v5 = v1;
  sub_1BF39C510(v1);
  v2 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v5, &v4);
  sub_1BF39C9A4(v5);
  return v2 & 1;
}

uint64_t sub_1BF3C07EC(unint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1BF3C0794(a1) & 1;
}

uint64_t WidgetEntryKey.init(widget:metrics:host:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for WidgetEntryKey() + 24);

  return sub_1BF3C0870(a3, v5);
}

uint64_t sub_1BF3C0870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3C08E0(uint64_t a1, uint64_t a2)
{
  v4[3] = a1;
  v4[4] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC0, &qword_1BF4EC148);
  return sub_1BF3B1E44(sub_1BF3C0980, v4, v2);
}

uint64_t sub_1BF3C0980@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1BF3B0414(v2, v3, a1);
}

uint64_t sub_1BF3C09B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[12];
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = a1[12];

  v8 = sub_1BF3916CC(a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_6;
  }

  sub_1BF38E49C(*(v6 + 56) + 40 * v8, &v23);

LABEL_6:
  sub_1BF3C0C68(&v23, v21);
  v10 = v22;
  sub_1BF38C9B4(v21, &qword_1EBDD9320, &qword_1BF4F09B0);
  if (!v10)
  {
    swift_beginAccess();
    sub_1BF38E49C((a1 + 15), v21);
    sub_1BF38E49C((a1 + 2), v20);
    v11 = type metadata accessor for BundleEnvironmentProvider();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = a2;
    v15 = sub_1BF47FF20(v14, v21, v20);

    sub_1BF38C9B4(&v23, &qword_1EBDD9320, &qword_1BF4F09B0);
    *&v23 = v15;
    *(&v24 + 1) = v11;
    v25 = &protocol witness table for EnvironmentProvider;
    v16 = a1[5];
    v17 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v16);
    ExtensionManaging.extension(for:)(v14, v16, v17);
    v18 = v22;
    sub_1BF38C9B4(v21, &unk_1EBDD91B0, &unk_1BF4F0720);
    if (v18)
    {
      sub_1BF3C0C68(&v23, v21);
      swift_beginAccess();
      sub_1BF43AB00(v21, v14);
      swift_endAccess();
    }
  }

  result = sub_1BF3C0C68(&v23, v21);
  if (v22)
  {
    sub_1BF38C9B4(&v23, &qword_1EBDD9320, &qword_1BF4F09B0);
    return sub_1BF38E60C(v21, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BF3C0BE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v5[14];
  os_unfair_lock_lock(*(v6 + 16));
  sub_1BF3C09B4(v5, a1, a2);
  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_1BF3C0C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9320, &qword_1BF4F09B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimelineKey.init(widgetEntryKey:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 extensionIdentity];
  v6 = [v4 kind];
  v7 = sub_1BF4E8914();
  v9 = v8;

  v10 = [v4 intentReference];
  result = sub_1BF393884(a1);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

void sub_1BF3C0DE8(char *a1, NSObject *a2, void (*a3)(char *, char *, char *))
{
  v4 = v3;
  v208 = a3;
  v7 = *v3;
  v213 = v7;
  v204 = sub_1BF4E7FF4();
  v203 = *(v204 - 8);
  v8 = *(v203 + 8);
  MEMORY[0x1EEE9AC00](v204);
  v201 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1BF4E8064();
  v200 = *(v202 - 8);
  v10 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v199 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v7[11];
  v214 = *(v215 - 8);
  v12 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v212 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v178 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v210 = &v178 - v19;
  v198 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v195 = &v178 - v22;
  v23 = v7[10];
  v24 = *(v23 - 1);
  v25 = v24[8];
  MEMORY[0x1EEE9AC00](v26);
  v211 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v178 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v209 = &v178 - v31;
  v197 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v194 = &v178 - v34;
  v192 = sub_1BF4E8424();
  v191 = *(v192 - 8);
  v35 = *(v191 + 8);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v189 = &v178 - v38;
  v39 = v7[12];
  v207 = sub_1BF4E90F4();
  isa = v207[-1].isa;
  v41 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v207);
  v196 = &v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v178 - v44;
  os_unfair_lock_assert_owner(*(*(v4 + qword_1EDC9AF58) + 16));
  if (((*(*v4 + 1552))(a1, a2) & 1) == 0)
  {
    v208 = v24[2];
    v208(v211, a1, v23);
    v104 = v214;
    v105 = *(v214 + 16);
    v105(v212, a2, v215);
    v106 = sub_1BF4E7B34();
    v107 = sub_1BF4E8E64();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v206 = v106;
      v109 = v104;
      v110 = v108;
      v207 = swift_slowAlloc();
      aBlock[0] = v207;
      *v110 = 136446466;
      v203 = v105;
      v111 = v209;
      LODWORD(v204) = v107;
      v112 = v211;
      v208(v209, v211, v23);
      v113 = v24[1];
      v113(v112, v23);
      v114 = v213;
      v115 = v213[13];
      v116 = sub_1BF4E96A4();
      v118 = v117;
      v113(v111, v23);
      v119 = sub_1BF38D65C(v116, v118, aBlock);

      *(v110 + 4) = v119;
      *(v110 + 12) = 2082;
      v120 = v210;
      v121 = v212;
      v122 = v215;
      v203(v210, v212, v215);
      v123 = *(v109 + 8);
      v123(v121, v122);
      v124 = v114[15];
      v125 = sub_1BF4E96A4();
      v127 = v126;
      v123(v120, v122);
      v128 = sub_1BF38D65C(v125, v127, aBlock);

      *(v110 + 14) = v128;
      v106 = v206;
      _os_log_impl(&dword_1BF389000, v206, v204, "%{public}s:%{public}s Entry cannot be added to the store", v110, 0x16u);
      v129 = v207;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v129, -1, -1);
      MEMORY[0x1BFB5A5D0](v110, -1, -1);
    }

    else
    {
      (*(v104 + 8))(v212, v215);
      (v24[1])(v211, v23);
    }

LABEL_25:

    return;
  }

  v187 = v17;
  v206 = a2;
  v205 = v24;
  v46 = qword_1EDCA6870;
  swift_beginAccess();
  v186 = v4;
  v47 = *(v4 + v46);
  v48 = v213;
  v49 = v213[16];
  v50 = sub_1BF4E8834();
  v51 = v48[14];

  v211 = a1;
  v212 = v23;
  v184 = v50;
  v188 = v51;
  sub_1BF4E8854();

  v52 = v218;
  v53 = v48;
  v183 = v218;
  if (!v218)
  {
    v54 = v215;
    swift_getTupleTypeMetadata2();
    v55 = sub_1BF4E8BF4();
    v52 = sub_1BF3B0FE8(v55, v54, v39, v49);

    v218 = v52;
  }

  v56 = v206;
  sub_1BF4E8854();
  v57 = *(v39 - 8);
  v58 = (*(v57 + 48))(v45, 1, v39);
  (*(isa + 1))(v45, v207);
  if (v58 != 1)
  {
    v130 = v56;
    v131 = v205;
    v132 = v205[2];
    v133 = v193;
    v134 = v212;
    v132(v193, v211, v212);
    v135 = v214;
    v211 = *(v214 + 16);
    (v211)(v187, v130, v215);
    v106 = sub_1BF4E7B34();
    v136 = sub_1BF4E8E84();
    if (os_log_type_enabled(v106, v136))
    {
      v137 = swift_slowAlloc();
      v207 = v106;
      v138 = v134;
      v139 = v137;
      v208 = swift_slowAlloc();
      aBlock[0] = v208;
      *v139 = 136446466;
      LODWORD(v206) = v136;
      v140 = v209;
      v132(v209, v133, v138);
      v141 = v131[1];
      v141(v133, v138);
      v142 = v213;
      v143 = v213[13];
      v144 = sub_1BF4E96A4();
      v205 = v52;
      v146 = v145;
      v141(v140, v138);
      v147 = sub_1BF38D65C(v144, v146, aBlock);

      *(v139 + 4) = v147;
      *(v139 + 12) = 2082;
      v148 = v210;
      v149 = v187;
      v150 = v215;
      (v211)(v210, v187, v215);
      v151 = *(v135 + 8);
      v151(v149, v150);
      v152 = v142[15];
      v153 = sub_1BF4E96A4();
      v155 = v154;
      v151(v148, v150);
      v156 = sub_1BF38D65C(v153, v155, aBlock);

      *(v139 + 14) = v156;
      v106 = v207;
      _os_log_impl(&dword_1BF389000, v207, v206, "%{public}s:%{public}s Already exists in store.", v139, 0x16u);
      v157 = v208;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v157, -1, -1);
      MEMORY[0x1BFB5A5D0](v139, -1, -1);
    }

    else
    {
      (*(v135 + 8))(v187, v215);
      (v131[1])(v133, v134);
    }

    goto LABEL_25;
  }

  v181 = v57;
  v187 = v49;
  v59 = v48[17];
  v60 = *(v59 + 88);
  v61 = v189;
  v185 = v39;
  v182 = v59;
  v60(v39);
  v62 = v190;
  v63 = v186;
  sub_1BF395A3C(v190);
  sub_1BF3983D4(&qword_1EDC9D788, MEMORY[0x1E69859A8]);
  v64 = v192;
  v65 = sub_1BF4E88A4();
  v66 = *(v191 + 1);
  v66(v62, v64);
  v66(v61, v64);
  LODWORD(v189) = v65;
  if (v65)
  {
    v67 = 3;
  }

  else
  {
    v67 = 0;
  }

  LODWORD(v190) = v67;
  v68 = v205;
  v69 = v205[2];
  v70 = v194;
  v72 = v211;
  v71 = v212;
  v192 = (v205 + 2);
  v191 = v69;
  v69(v194, v211, v212);
  v73 = *(v214 + 16);
  v74 = v195;
  v207 = (v214 + 16);
  v193 = v73;
  (v73)(v195, v56, v215);
  v75 = sub_1BF4E7B34();
  v76 = sub_1BF4E8E84();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    aBlock[0] = v180;
    *v77 = 136446722;
    v78 = v209;
    v191(v209, v70, v212);
    v179 = v75;
    v79 = v70;
    v80 = v68[1];
    v80(v79, v212);
    v81 = v53[13];
    LODWORD(v194) = v76;
    v82 = sub_1BF4E96A4();
    v84 = v83;
    v80(v78, v212);
    v85 = sub_1BF38D65C(v82, v84, aBlock);

    *(v77 + 4) = v85;
    *(v77 + 12) = 2082;
    v86 = v210;
    v87 = v215;
    (v193)(v210, v74, v215);
    v88 = *(v214 + 8);
    v88(v74, v87);
    v89 = v53[15];
    v90 = sub_1BF4E96A4();
    v92 = v91;
    v93 = v87;
    v94 = v86;
    v88(v86, v93);
    v95 = v90;
    v96 = v78;
    v72 = v211;
    v97 = sub_1BF38D65C(v95, v92, aBlock);
    v56 = v206;

    *(v77 + 14) = v97;
    *(v77 + 22) = 2082;
    if (v189)
    {
      v98 = 0x64656B636F6C62;
    }

    else
    {
      v98 = 0x64616F6C6572;
    }

    if (v189)
    {
      v99 = 0xE700000000000000;
    }

    else
    {
      v99 = 0xE600000000000000;
    }

    v100 = sub_1BF38D65C(v98, v99, aBlock);

    *(v77 + 24) = v100;
    v101 = v179;
    _os_log_impl(&dword_1BF389000, v179, v194, "%{public}s:%{public}s Add to store.  Marked as state: %{public}s", v77, 0x20u);
    v102 = v180;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v102, -1, -1);
    v103 = v77;
    v71 = v212;
    MEMORY[0x1BFB5A5D0](v103, -1, -1);
  }

  else
  {
    (*(v214 + 8))(v74, v215);
    (v68[1])(v70, v71);

    v96 = v209;
    v94 = v210;
  }

  LODWORD(v210) = v183 == 0;
  LOBYTE(aBlock[0]) = v190;
  sub_1BF399684(aBlock, v72);
  (v193)(v94, v56, v215);
  v158 = v181;
  v159 = v196;
  v160 = v185;
  (*(v181 + 16))(v196, v208, v185);
  (*(v158 + 56))(v159, 0, 1, v160);
  sub_1BF4E8864();
  v161 = v191;
  v191(v96, v72, v71);
  v217 = v218;
  v212 = v218;
  swift_beginAccess();
  sub_1BF4E8834();
  v162 = v72;
  v163 = v96;
  v164 = v71;

  sub_1BF4E8864();
  swift_endAccess();
  v211 = *(v63 + qword_1EDC9AFD0);
  v161(v163, v162, v71);
  v165 = v215;
  (v193)(v94, v206, v215);
  v166 = v205;
  v167 = (*(v205 + 80) + 96) & ~*(v205 + 80);
  v168 = v214;
  v169 = (v197 + *(v214 + 80) + v167) & ~*(v214 + 80);
  v170 = swift_allocObject();
  *(v170 + 16) = v164;
  *(v170 + 24) = v165;
  *(v170 + 32) = v185;
  v171 = v213;
  v172 = v188;
  *(v170 + 40) = v213[13];
  *(v170 + 48) = v172;
  v173 = v187;
  *(v170 + 56) = v171[15];
  *(v170 + 64) = v173;
  *(v170 + 72) = v182;
  *(v170 + 80) = v210;
  *(v170 + 88) = v63;
  (v166[4])(v170 + v167, v163, v164);
  (*(v168 + 32))(v170 + v169, v94, v165);
  aBlock[4] = sub_1BF3BB220;
  aBlock[5] = v170;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_100;
  v174 = _Block_copy(aBlock);

  v175 = v199;
  sub_1BF4E8014();
  v217 = MEMORY[0x1E69E7CC0];
  sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  v176 = v201;
  v177 = v204;
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v175, v176, v174);
  _Block_release(v174);
  (*(v203 + 1))(v176, v177);
  (*(v200 + 8))(v175, v202);
}

uint64_t sub_1BF3C225C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 96) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  v11 = *(v0 + 11);

  (*(v3 + 8))(&v0[v5], v1);
  (*(v6 + 8))(&v0[v8], v2);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1BF3C23CC@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_1BF4E7334();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v5[10];
  v10 = v5[11];
  v11 = v5[12];
  v12 = type metadata accessor for ReloadHistory.ReloadHistoryRecord();
  v13 = sub_1BF4E90F4();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38[-v15];
  v46 = *(v12 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v38[-v19];
  v20 = *a1;
  if (v20 >> 61 == 3)
  {
    v20 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v21 = qword_1EDC9B168;
  swift_beginAccess();
  v22 = *(v2 + v21);

  sub_1BF39C510(v20);
  sub_1BF4E8CA4();
  sub_1BF4E8854();

  v23 = v49;
  if (!v49)
  {
    goto LABEL_11;
  }

  if (qword_1EDC97AD8 != -1)
  {
    swift_once();
  }

  v24 = off_1EDC97AE0;
  if (!*(off_1EDC97AE0 + 2) || (v25 = sub_1BF3C42F4(v20), (v26 & 1) == 0))
  {

LABEL_11:
    sub_1BF39C9A4(v20);
    v31 = 1;
    goto LABEL_12;
  }

  v40 = v38;
  v41 = a2;
  v27 = v24[7] + 24 * v25;
  v29 = *v27;
  v28 = *(v27 + 8);
  v39 = *(v27 + 16);
  v49 = v23;
  MEMORY[0x1EEE9AC00](v25);
  *&v38[-32] = v9;
  *&v38[-24] = v10;
  *&v38[-16] = v11;
  *&v38[-8] = v20;
  swift_getWitnessTable();
  sub_1BF4E8B04();

  v30 = v46;
  if ((*(v46 + 48))(v16, 1, v12) == 1)
  {
    sub_1BF39C9A4(v20);
    (*(v42 + 8))(v16, v43);
    v31 = 1;
    a2 = v41;
LABEL_12:
    v33 = v47;
    v32 = v48;
    return (*(v33 + 56))(a2, v31, 1, v32);
  }

  v35 = v44;
  (*(v30 + 32))(v44, v16, v12);
  a2 = v41;
  v36 = v48;
  if (v39 > 1)
  {
    pow(v29, *&v35[*(v12 + 48)]);
  }

  v37 = v45;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E7244();
  sub_1BF39C9A4(v20);
  v33 = v47;
  (*(v47 + 8))(v37, v36);
  (*(v30 + 8))(v35, v12);
  v32 = v36;
  v31 = 0;
  return (*(v33 + 56))(a2, v31, 1, v32);
}

uint64_t sub_1BF3C2920()
{
  sub_1BF4E72C4();
  if (v0 <= 9.22337204e18)
  {
    if (v0 >= 9.22337204e18)
    {
      v1 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v2 = floor(v0);
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v2 <= -9.22337204e18)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v2 >= 9.22337204e18)
      {
LABEL_20:
        __break(1u);
        return MEMORY[0x1EEE6C8D8]();
      }

      v1 = v2;
    }
  }

  else
  {
    v1 = 0x7FFFFFFFFFFFFFFFLL;
    v0 = 9.22337204e18;
  }

  v3 = (v0 - v1) * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return MEMORY[0x1EEE6C8D8]();
}

uint64_t sub_1BF3C2A38()
{
  v1 = v0;
  v44 = *v0;
  v2 = sub_1BF4E7FE4();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_1BF4E80D4();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BF4E7FF4();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BF4E8064();
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E8F84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF4E80E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v1[4];
  *v22 = v23;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v17, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1BF4E80F4();
  result = (*(v18 + 8))(v22, v17);
  if (v23)
  {
    if (*(v1 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer))
    {
      v26 = *(v1 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer);
    }

    else
    {
      v38 = v1[2];
      v39 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer;
      v37 = sub_1BF3901C0(0, &qword_1EDC9D6E8, 0x1E69E9630);
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BF3A1144(&unk_1EDC9D6F0, MEMORY[0x1E69E80B0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC8, &qword_1BF4F6098);
      sub_1BF38C8B4(&unk_1EDC9D740, &qword_1EBDD9BC8, &qword_1BF4F6098);
      sub_1BF4E91A4();
      v26 = sub_1BF4E8F94();
      (*(v13 + 8))(v16, v12);
      ObjectType = swift_getObjectType();
      v28 = swift_allocObject();
      v29 = v44;
      *(v28 + 16) = v38;
      *(v28 + 24) = v29;
      aBlock[4] = sub_1BF4B33E0;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BF38E868;
      aBlock[3] = &block_descriptor_8;
      v30 = _Block_copy(aBlock);

      sub_1BF4E8014();
      v31 = v41;
      sub_1BF3C30F8();
      sub_1BF4E8FA4();
      _Block_release(v30);
      (*(v43 + 8))(v31, v45);
      (*(v40 + 8))(v11, v42);

      v32 = v46;
      sub_1BF4E80B4();
      v33 = v48;
      *v48 = 0;
      v35 = v50;
      v34 = v51;
      (*(v50 + 104))(v33, *MEMORY[0x1E69E7F28], v51);
      MEMORY[0x1BFB592C0](v32, v33, ObjectType, INFINITY);
      (*(v35 + 8))(v33, v34);
      (*(v47 + 8))(v32, v49);
      sub_1BF4E8FC4();
      v36 = *(v1 + v39);
      *(v1 + v39) = v26;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3C30BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3C30F8()
{
  sub_1BF4E7FF4();
  sub_1BF3A1144(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  return sub_1BF4E91A4();
}

uint64_t sub_1BF3C31E4(uint64_t a1)
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

void *sub_1BF3C32CC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  BSDispatchQueueAssertMain();
  (*(v7 + 16))(v10, a2, v6);
  v16 = type metadata accessor for DuetWidgetViewEntry();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  (*(v7 + 56))(v19 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate, 1, 1, v6);
  v19[2] = v12;
  v19[3] = v11;
  v19[4] = v13;
  v19[5] = v14;
  v19[6] = v15;

  v20 = v13;

  sub_1BF4E7324();
  (*(v7 + 32))(v19 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_staleContentDate, v10, v6);
  type metadata accessor for DuetWidgetViewRecorder.Record();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x1BFB58DD0](v21);
  if (*((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1BF4E8BE4();
  }

  sub_1BF4E8C24();
  swift_endAccess();
  if (!*(v3 + 88))
  {
    sub_1BF3C36CC();
  }

  return v19;
}

uint64_t type metadata accessor for DuetWidgetViewEntry()
{
  result = qword_1EDC9A368;
  if (!qword_1EDC9A368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF3C3564()
{
  v0 = sub_1BF4E7334();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1BF3C363C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BF3C363C()
{
  if (!qword_1EDC9FFA8)
  {
    sub_1BF4E7334();
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9FFA8);
    }
  }
}

void sub_1BF3C36CC()
{
  BSDispatchQueueAssertMain();
  [*(v0 + 88) invalidate];
  v1 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v2 = sub_1BF4E88E4();
  v3 = [v1 initWithIdentifier_];

  v4 = *(v0 + 88);
  *(v0 + 88) = v3;
  v5 = v3;

  if (v5)
  {
    v6 = *(v0 + 16);
    sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v7 = sub_1BF4E8F34();
    v8 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_1BF4C6B40;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BF3CAF50;
    v10[3] = &block_descriptor_57;
    v9 = _Block_copy(v10);

    [v5 scheduleWithFireInterval:v7 leewayInterval:v9 queue:v6 handler:0.0];
    _Block_release(v9);
  }
}

uint64_t sub_1BF3C3864()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF3C38C4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    [*(v0 + 16) invalidate];
  }

  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t CHDMonotonicTimer.init(time:repeat:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *(v2 + 16) = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v2 + 24) = v5;
  *(v2 + 32) = 0;
  *(v2 + 40) = v4;
  *(v2 + 48) = a2 & ~(a2 >> 63);
  return v2;
}

uint64_t CHDMonotonicTimer.__allocating_init(time:repeat:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CHDMonotonicTimer.init(time:repeat:)(a1, a2);
  return v4;
}

void sub_1BF3C3A04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF3B9C50(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_1BF3C3A84(uint64_t a1)
{
  v44 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v38 - v5;
  v6 = *(v44 + 80);
  v45 = *(v6 - 8);
  isa = v45[8].isa;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_1BF4E7194();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160) == 1)
  {
    v43 = v3;
    sub_1BF3985D8(a1, v17);
    v42 = 0;
    (*(v19 + 56))(v17, 0, 1, v18);
    (*(v19 + 32))(v22, v17, v18);
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v23 = sub_1BF4E7B54();
    __swift_project_value_buffer(v23, qword_1EDCA6A48);
    v24 = v45;
    v41 = v45[2].isa;
    (v41)(v13, a1, v6);
    v25 = sub_1BF4E7B34();
    v26 = sub_1BF4E8E84();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = v26;
      v28 = v27;
      v39 = swift_slowAlloc();
      v48 = v39;
      *v28 = 136446210;
      (v41)(v10, v13, v6);
      v29 = v24[1].isa;
      v29(v13, v6);
      v30 = *(*(v44 + 104) + 8);
      v45 = v25;
      v31 = sub_1BF4E96A4();
      v33 = v32;
      v29(v10, v6);
      v34 = sub_1BF38D65C(v31, v33, &v48);

      *(v28 + 4) = v34;
      v25 = v45;
      _os_log_impl(&dword_1BF389000, v45, v40, "%{public}s marked as requiring reload", v28, 0xCu);
      v35 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1BFB5A5D0](v35, -1, -1);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
    }

    else
    {
      (v24[1].isa)(v13, v6);
    }

    v36 = v46;
    LOBYTE(v48) = 1;
    sub_1BF4E7604();
    sub_1BF38C8B4(&qword_1EDC9D5B8, &qword_1EBDD8F40, &qword_1BF4EF090);
    v37 = v42;
    sub_1BF4E7044();
    if (v37)
    {
    }

    (*(v47 + 8))(v36, v43);
    (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_1BF3C403C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1BF3B1E44(sub_1BF3C40E0, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BF3C40E0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1BF3BD60C(v1, v2);
}

unint64_t sub_1BF3C4114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8770, &unk_1BF4EB290);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1BF39C510(v5);
      result = sub_1BF3C42F4(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1BF3C4220()
{
  v0 = sub_1BF3C4114(&unk_1F3DECC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C30, &qword_1BF4F6F48);
  result = swift_arrayDestroy();
  off_1EDC97AE0 = v0;
  return result;
}

unint64_t sub_1BF3C42A0()
{
  result = qword_1EDC9A068[0];
  if (!qword_1EDC9A068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9A068);
  }

  return result;
}

unint64_t sub_1BF3C42F4(unint64_t a1)
{
  v3 = *(v1 + 40);
  v6[9] = a1;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v6);
  v4 = sub_1BF4E9844();

  return sub_1BF3C45D0(a1, v4);
}

uint64_t ReloadConfiguration.ReloadReason.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v15 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 14;
      goto LABEL_14;
    }

    if (v4 == 4)
    {
      v9 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 15;
      goto LABEL_14;
    }

    switch(__ROR8__(v3 + 0x6000000000000000, 3))
    {
      case 1:
        v17 = 1;
        break;
      case 2:
        v17 = 2;
        break;
      case 3:
        v17 = 3;
        break;
      case 4:
        v17 = 4;
        break;
      case 5:
        v17 = 7;
        break;
      case 6:
        v17 = 8;
        break;
      case 7:
        v17 = 9;
        break;
      case 8:
        v17 = 10;
        break;
      case 9:
        v17 = 11;
        break;
      case 0xALL:
        v17 = 12;
        break;
      case 0xBLL:
        v17 = 16;
        break;
      case 0xCLL:
        v17 = 17;
        break;
      case 0xDLL:
        v17 = 18;
        break;
      case 0xELL:
        v17 = 19;
        break;
      case 0xFLL:
        v17 = 20;
        break;
      default:
        v17 = 0;
        break;
    }

    return MEMORY[0x1BFB59A70](v17);
  }

  else
  {
    if (v4)
    {
      v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 == 1)
      {
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        MEMORY[0x1BFB59A70](6);

        sub_1BF4E89F4();
      }

      v16 = *(v5 + 16);
      v10 = 13;
LABEL_14:
      MEMORY[0x1BFB59A70](v10);
      return ReloadConfiguration.ReloadReason.hash(into:)(a1);
    }

    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    v13 = *(v3 + 32);
    MEMORY[0x1BFB59A70](5);
    sub_1BF4E9824();
    if (v12)
    {
      v14 = v12;
      sub_1BF4E90B4();
    }

    return sub_1BF4E89F4();
  }
}

unint64_t sub_1BF3C45D0(unint64_t a1, uint64_t a2)
{
  v9 = a1;
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);
      sub_1BF39C510(v8);
      v6 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v8, &v9);
      sub_1BF39C9A4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1BF3C468C(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  v6 = v2;
  sub_1BF39C510(v2);
  v3 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v6, &v5);
  sub_1BF39C9A4(v6);
  return v3 & 1;
}

uint64_t sub_1BF3C46E0(unint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1BF3C468C(a1, v1[5]) & 1;
}

uint64_t sub_1BF3C4704(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v77 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v77 - v20;
  v21 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B40, &unk_1BF4EC900);
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v77 - v27;
  if (_s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(v2, a1))
  {
    goto LABEL_2;
  }

  v80 = v11;
  v81 = v24;
  v78 = v16;
  v79 = v8;
  v82 = v4;
  v83 = v5;
  v30 = type metadata accessor for ReloadConfiguration(0);
  v31 = *(v30 + 24);
  v32 = *(v2 + v31);
  v87 = 0xA000000000000060;
  v88 = v32;
  sub_1BF39C510(v32);
  v33 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v88, &v87);
  sub_1BF39C9A4(v32);
  if (v33)
  {
    v34 = *(a1 + *(v30 + 24));
    v87 = 0xA000000000000060;
    v88 = v34;
    sub_1BF39C510(v34);
    v35 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v88, &v87);
    sub_1BF39C9A4(v34);
    if ((v35 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v36 = *(v2 + v31);
  v87 = 0xA000000000000030;
  v88 = v36;
  sub_1BF39C510(v36);
  v37 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v88, &v87);
  sub_1BF39C9A4(v36);
  if (v37)
  {
    v38 = *(a1 + *(v30 + 24));
    v87 = 0xA000000000000030;
    v88 = v38;
    sub_1BF39C510(v38);
    v39 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v88, &v87);
    sub_1BF39C9A4(v38);
    if ((v39 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v40 = *(v2 + v31);
  if ((v40 & 0xE000000000000000) == 0x6000000000000000)
  {
    if (*(a1 + *(v30 + 24)) >> 61 == 3)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if ((v40 & 0xE000000000000000) != 0xA000000000000000 || (v41 = __ROR8__(v40 + 0x6000000000000000, 3), v41 > 0xB) || ((1 << v41) & 0x84F) == 0)
  {
LABEL_16:
    v77 = v30;
    v44 = *(v30 + 20);
    v45 = *(v2 + v44);
    v46 = *(a1 + v44);
    v47 = v25[12];
    v48 = v25[16];
    v49 = v25[20];
    sub_1BF39B31C(v2, v28, type metadata accessor for ReloadConfiguration.ReloadType);
    sub_1BF39B31C(a1, &v28[v47], type metadata accessor for ReloadConfiguration.ReloadType);
    v28[v48] = v45;
    v28[v49] = v46;
    v50 = v28[v48];
    v51 = v82;
    v52 = *(v83 + 48);
    if (v52(v28, 1, v82) == 1)
    {
      if (v52(&v28[v47], 1, v51) == 1)
      {
        if (v50)
        {
          sub_1BF3B8DEC(v28);
          v29 = v46 ^ 1;
          return v29 & 1;
        }

        if (v46)
        {
          sub_1BF3B8DEC(v28);
          goto LABEL_2;
        }

        goto LABEL_37;
      }

      sub_1BF3B8DEC(&v28[v47]);
LABEL_25:
      sub_1BF3B8DEC(v28);
      v29 = 1;
      return v29 & 1;
    }

    v54 = v81;
    sub_1BF39B31C(v28, v81, type metadata accessor for ReloadConfiguration.ReloadType);
    if (v52(&v28[v47], 1, v51) == 1)
    {
      (*(v83 + 8))(v54, v51);
      sub_1BF38C9B4(v28, &qword_1EBDD8B40, &unk_1BF4EC900);
LABEL_2:
      v29 = 0;
      return v29 & 1;
    }

    if (v50)
    {
      v55 = v80;
      if ((v46 & 1) == 0)
      {
        v56 = v83;
        v57 = *(v83 + 32);
        v58 = v85;
        v57(v85, v81, v51);
        v59 = &v28[v47];
        v60 = v84;
        v57(v84, v59, v51);
        if (sub_1BF4E72D4())
        {
          v61 = *(v56 + 8);
          v61(v60, v51);
          v61(v58, v51);
          goto LABEL_25;
        }

        v29 = sub_1BF4E7274();
        v66 = *(v56 + 8);
        v66(v60, v51);
        v67 = v58;
        goto LABEL_34;
      }
    }

    else
    {
      v55 = v80;
      if ((v46 & 1) == 0)
      {
        v68 = v83;
        v69 = v51;
        v70 = *(v83 + 32);
        v71 = v78;
        v70(v78, v81, v69);
        v72 = &v28[v47];
        v73 = v86;
        v70(v86, v72, v69);
        if (sub_1BF4E72D4())
        {
          v74 = *(v68 + 8);
          v74(v73, v69);
          v74(v71, v69);
LABEL_37:
          v75 = *(v77 + 32);
          if (*(v2 + v75) == 1)
          {
            v29 = *(a1 + v75) ^ 1;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_42;
        }

        v29 = sub_1BF4E7274();
        v76 = *(v68 + 8);
        v76(v73, v69);
        v76(v71, v69);
LABEL_42:
        sub_1BF3B8DEC(v28);
        return v29 & 1;
      }
    }

    v62 = v83;
    v63 = *(v83 + 32);
    v63(v55, v81, v51);
    v64 = &v28[v47];
    v65 = v79;
    v63(v79, v64, v51);
    v29 = sub_1BF4E7274();
    v66 = *(v62 + 8);
    v66(v65, v51);
    v67 = v55;
LABEL_34:
    v66(v67, v51);
    goto LABEL_42;
  }

  v42 = *(a1 + *(v30 + 24));
  if (v42 >> 61 != 5)
  {
LABEL_20:
    v29 = 1;
    return v29 & 1;
  }

  v43 = __ROR8__(v42 + 0x6000000000000000, 3);
  v29 = 1;
  if (v43 <= 0xB && ((1 << v43) & 0x84F) != 0)
  {
    goto LABEL_16;
  }

  return v29 & 1;
}

uint64_t ReloadTaskCancellable.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3C4E94()
{
  v1 = (v0 + *(*v0 + 176));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

dispatch_time_t static CHDMonotonicTime.advancedFromNow(by:)@<X0>(int64_t a1@<X0>, dispatch_time_t *a2@<X8>)
{
  if (a1 < 0)
  {
    if (qword_1EDC9AA48 != -1)
    {
      swift_once();
    }

    result = qword_1EDC9AA50;
  }

  else
  {
    result = CHDMonotonicTimeFromNow(a1);
  }

  *a2 = result;
  return result;
}

{
  result = CHDMonotonicTimeFromNow(a1);
  *a2 = result;
  return result;
}

uint64_t Optional<A>.earlier(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  if (*(v2 + 8))
  {
    v6 = *result;
  }

  else
  {
    v6 = *v2;
  }

  v7 = *(v2 + 8) & *(result + 8);
  if ((*(v2 + 8) & 1) == 0 && (*(result + 8) & 1) == 0)
  {
    result = CHDMonotonicTimeLessThan(*result, *v2);
    v7 = 0;
    if (result)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t static KeepAliveTransaction.with<A>(reason:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for KeepAliveTransaction();
  swift_initStackObject();

  v10 = sub_1BF390264(a1, a2);

  v16 = v10;
  v14[2] = a5;
  v14[3] = a3;
  v14[4] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C28, &unk_1BF4F6C90);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  sub_1BF3C50E4(&v16, sub_1BF3C51BC, v14, v11, v12, a5, MEMORY[0x1E69E7288], &v15);
}

uint64_t sub_1BF3C50E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1BF3C51BC(void *a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = v4();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_1BF3C51F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v8[7] = *(v2 + qword_1EDC9AF58);
  v8[3] = a1;
  v8[4] = a2;
  v4 = type metadata accessor for UnfairLock();
  v5 = *(v3 + 96);
  v6 = sub_1BF4E90F4();

  sub_1BF38D774(sub_1BF3C52E8, v8, v4, v6, &off_1F3DEE010);
}

uint64_t sub_1BF3C52E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF3C5308(*(v1 + 16), a1);
}

uint64_t sub_1BF3C5308@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = qword_1EDCA6870;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = v4[10];
  v8 = v4[11];
  v9 = v4[12];
  v10 = v4[16];
  sub_1BF4E8834();
  v11 = v4[14];

  sub_1BF4E8854();

  if (!v13)
  {
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  sub_1BF4E8854();
}

uint64_t sub_1BF3C54B8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_1BF3C5554(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1BF3C5554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = *a1;
  v4 = type metadata accessor for EnvironmentModifiers();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v44 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  swift_beginAccess();
  v16 = a1[3];
  v17 = *(v3 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  v18 = *(v3 + 88);
  sub_1BF4E8854();

  v19 = v50;
  v20 = a1[4];

  sub_1BF4E8854();

  if (v19)
  {
    v42 = v15;
    v43 = v4;
    v21 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
    {
      v23 = 0;
      v49 = v19 & 0xC000000000000001;
      v24 = MEMORY[0x1E69E7CC0];
      v46 = i;
      v47 = v19;
      while (v49)
      {
        MEMORY[0x1BFB59570](v23, v19);
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_22;
        }

LABEL_10:
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v28 = Strong;
          v29 = v21;
          v30 = v5;
          v31 = *(Strong + 16);
          v32 = *(v31 + 16);

          os_unfair_lock_lock(v32);
          v33 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
          swift_beginAccess();
          v34 = v28 + v33;
          v35 = v48;
          sub_1BF44B0AC(v34, v48);
          os_unfair_lock_unlock(*(v31 + 16));

          sub_1BF44B9BC(v35, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1BF3C5AC4(0, v24[2] + 1, 1, v24);
          }

          v37 = v24[2];
          v36 = v24[3];
          v5 = v30;
          if (v37 >= v36 >> 1)
          {
            v24 = sub_1BF3C5AC4(v36 > 1, v37 + 1, 1, v24);
          }

          v21 = v29;
          v24[2] = v37 + 1;
          sub_1BF44B9BC(v51, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v37);
          i = v46;
          v19 = v47;
        }

        else
        {
        }

        ++v23;
        if (v26 == i)
        {
          goto LABEL_26;
        }
      }

      if (v23 >= *(v21 + 16))
      {
        goto LABEL_23;
      }

      v25 = *(v19 + 8 * v23 + 32);

      v26 = v23 + 1;
      if (!__OFADD__(v23, 1))
      {
        goto LABEL_10;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v15 = v42;
    v4 = v43;
    goto LABEL_27;
  }

  if ((*(v5 + 48))(v15, 1, v4) != 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v38 = v44;
    sub_1BF472A64(v15, v44);
    v39 = v45;
    sub_1BF3C5AEC(v38, v24, v45);
    (*(v5 + 56))(v39, 0, 1, v4);
    return sub_1BF4729FC(v15);
  }

  (*(v5 + 56))(v45, 1, 1, v4);
  return sub_1BF4729FC(v15);
}

uint64_t sub_1BF3C5A14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3C5AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v158 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v133 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v133 - v11;
  v12 = type metadata accessor for EnvironmentModifiers();
  v166 = *(v12 - 8);
  v13 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v133 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v156 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v159 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v154 = &v133 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v160 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v153 = &v133 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v133 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v161 = (&v133 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v133 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v137 = &v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v136 = &v133 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v141 = &v133 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v133 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v143 = &v133 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v142 = &v133 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v133 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v133 - v61;
  v164 = v12;
  v63 = *(v12 + 32);
  v64 = sub_1BF4E6F14();
  v148 = *(v64 - 8);
  v65 = *(v148 + 56);
  v140 = v63;
  v163 = v64;
  v145 = v148 + 56;
  v144 = v65;
  (v65)(a3 + v63, 1, 1);
  v134 = MEMORY[0x1E69E7CC0] >> 62;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_113;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = v132)
  {
    sub_1BF38C94C(v150, v62, &qword_1EBDD9578, &qword_1BF4F1920);
    v151 = *(v166 + 48);
    v152 = v166 + 48;
    v66 = v151(v62, 1, v164);
    v165 = a2;
    v162 = a3;
    v146 = v52;
    v138 = v17;
    if (v66 == 1)
    {
      sub_1BF38C9B4(v62, &qword_1EBDD9578, &qword_1BF4F1920);
    }

    else
    {
      v67 = *v62;
      sub_1BF44B050(v62);
      if (v67)
      {
        v68 = 1;
        v69 = v164;
        goto LABEL_20;
      }
    }

    v155 = v59;
    a3 = *(a2 + 16);
    if (a3)
    {
      v59 = 0;
      v62 = MEMORY[0x1E69E7CC0];
      while (v59 < *(a2 + 16))
      {
        v17 = (*(v166 + 80) + 32) & ~*(v166 + 80);
        v52 = *(v166 + 72);
        sub_1BF44B0AC(a2 + v17 + v52 * v59, v42);
        if (*v42 == 1)
        {
          sub_1BF44B9BC(v42, v161);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v167 = v62;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BF3E157C(0, *(v62 + 2) + 1, 1);
            v62 = v167;
          }

          v72 = *(v62 + 2);
          v71 = *(v62 + 3);
          if (v72 >= v71 >> 1)
          {
            sub_1BF3E157C(v71 > 1, v72 + 1, 1);
            v62 = v167;
          }

          *(v62 + 2) = v72 + 1;
          sub_1BF44B9BC(v161, &v62[v17 + v72 * v52]);
          a2 = v165;
        }

        else
        {
          sub_1BF44B050(v42);
        }

        if (a3 == ++v59)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_110;
    }

    v62 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v73 = *(v62 + 2);

    v68 = v73 != 0;
    a3 = v162;
    v69 = v164;
    v59 = v155;
LABEL_20:
    *a3 = v68;
    sub_1BF38C94C(v150, v59, &qword_1EBDD9578, &qword_1BF4F1920);
    if (v151(v59, 1, v69) == 1)
    {
      sub_1BF38C9B4(v59, &qword_1EBDD9578, &qword_1BF4F1920);
      v74 = 0;
    }

    else
    {
      v74 = *(v59 + 8);
      sub_1BF44B050(v59);
    }

    *(a3 + 8) = v74;
    v42 = *(a2 + 16);
    if (v42)
    {
      v75 = a2 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v76 = *(v166 + 72);
      v52 = *(a2 + 16);
      do
      {
        sub_1BF44B0AC(v75, v37);
        v77 = v37[1];
        sub_1BF44B050(v37);
        if ((v77 & ~v74) != 0)
        {
          v74 |= v77;
          *(a3 + 8) = v74;
        }

        v75 += v76;
        --v52;
      }

      while (v52);
    }

    v37 = v150;
    v78 = v142;
    sub_1BF38C94C(v150, v142, &qword_1EBDD9578, &qword_1BF4F1920);
    if (v151(v78, 1, v164) == 1)
    {
      sub_1BF38C9B4(v78, &qword_1EBDD9578, &qword_1BF4F1920);
      v79 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v79 = *(v78 + 16);

      sub_1BF44B050(v78);
    }

    *(a3 + 16) = v79;
    if (v42)
    {
      v80 = a2 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v81 = *(v166 + 72);
      v52 = v42;
      do
      {
        sub_1BF44B0AC(v80, v34);
        v82 = *(v34 + 16);

        sub_1BF44B050(v34);
        sub_1BF3C6CF0(v82);
        v80 += v81;
        --v52;
      }

      while (v52);
    }

    v17 = v143;
    sub_1BF38C94C(v37, v143, &qword_1EBDD9578, &qword_1BF4F1920);
    v62 = v164;
    if (v151(v17, 1, v164) == 1)
    {
      sub_1BF38C9B4(v17, &qword_1EBDD9578, &qword_1BF4F1920);
      v34 = v147;
    }

    else
    {
      v83 = *(v17 + 24);
      sub_1BF44B050(v17);
      v34 = v147;
      v17 = v146;
      if (v83)
      {
        v84 = 1;
        goto LABEL_51;
      }
    }

    if (!v42)
    {
      break;
    }

    v59 = 0;
    v62 = MEMORY[0x1E69E7CC0];
    v85 = v153;
    while (v59 < *(a2 + 16))
    {
      v17 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v52 = *(v166 + 72);
      sub_1BF44B0AC(a2 + v17 + v52 * v59, v85);
      if (*(v85 + 24) == 1)
      {
        sub_1BF44B9BC(v85, v160);
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v62;
        if ((v86 & 1) == 0)
        {
          sub_1BF3E157C(0, *(v62 + 2) + 1, 1);
          v62 = v167;
        }

        v88 = *(v62 + 2);
        v87 = *(v62 + 3);
        if (v88 >= v87 >> 1)
        {
          sub_1BF3E157C(v87 > 1, v88 + 1, 1);
          v62 = v167;
        }

        *(v62 + 2) = v88 + 1;
        sub_1BF44B9BC(v160, &v62[v17 + v88 * v52]);
        a2 = v165;
        v85 = v153;
      }

      else
      {
        sub_1BF44B050(v85);
      }

      if (v42 == ++v59)
      {
        goto LABEL_50;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    if (!sub_1BF4E9204())
    {
      goto LABEL_2;
    }

    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v89 = *(v62 + 2);

  v84 = v89 != 0;
  v62 = v164;
  v17 = v146;
LABEL_51:
  *(a3 + 24) = v84;
  sub_1BF38C94C(v37, v17, &qword_1EBDD9578, &qword_1BF4F1920);
  v90 = v151(v17, 1, v62);
  v59 = v154;
  if (v90 == 1)
  {
    sub_1BF38C9B4(v17, &qword_1EBDD9578, &qword_1BF4F1920);
    v144(v34, 1, 1, v163);
  }

  else
  {
    sub_1BF38C94C(v17 + *(v62 + 8), v34, &qword_1EBDD9518, &qword_1BF4F1660);
    sub_1BF44B050(v17);
    if ((*(v148 + 48))(v34, 1, v163) != 1)
    {
      v99 = v149;
      v100 = v163;
      (*(v148 + 32))(v149, v34, v163);
      v144(v99, 0, 1, v100);
      v17 = v141;
      v52 = v140;
      goto LABEL_72;
    }
  }

  if (v42)
  {
    v34 = 0;
    v161 = (v148 + 48);
    v62 = MEMORY[0x1E69E7CC0];
    v155 = v42;
    v37 = &qword_1BF4F1660;
    while (v34 < *(a2 + 16))
    {
      v91 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v17 = *(v166 + 72);
      sub_1BF44B0AC(a2 + v91 + v17 * v34, v59);
      v52 = v158;
      sub_1BF38C94C(v59 + *(v164 + 8), v158, &qword_1EBDD9518, &qword_1BF4F1660);
      v92 = (*v161)(v52, 1, v163);
      sub_1BF38C9B4(v52, &qword_1EBDD9518, &qword_1BF4F1660);
      if (v92 == 1)
      {
        sub_1BF44B050(v59);
        v42 = v155;
      }

      else
      {
        sub_1BF44B9BC(v59, v159);
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v62;
        if ((v93 & 1) == 0)
        {
          sub_1BF3E157C(0, *(v62 + 2) + 1, 1);
          v62 = v167;
        }

        v42 = v155;
        v95 = *(v62 + 2);
        v94 = *(v62 + 3);
        if (v95 >= v94 >> 1)
        {
          sub_1BF3E157C(v94 > 1, v95 + 1, 1);
          v62 = v167;
        }

        *(v62 + 2) = v95 + 1;
        sub_1BF44B9BC(v159, &v62[v91 + v95 * v17]);
        a2 = v165;
        v59 = v154;
      }

      ++v34;
      a3 = v162;
      if (v42 == v34)
      {
        goto LABEL_66;
      }
    }

    goto LABEL_111;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_66:
  v37 = v150;
  v96 = v147;
  if (*(v62 + 2))
  {
    v97 = v133;
    sub_1BF44B0AC(&v62[(*(v166 + 80) + 32) & ~*(v166 + 80)], v133);

    v62 = v164;
    sub_1BF38C94C(v97 + *(v164 + 8), v149, &qword_1EBDD9518, &qword_1BF4F1660);
    sub_1BF44B050(v97);
    v17 = v141;
    v52 = v140;
    v98 = v163;
  }

  else
  {

    v98 = v163;
    v144(v149, 1, 1, v163);
    v62 = v164;
    v17 = v141;
    v52 = v140;
  }

  if ((*(v148 + 48))(v96, 1, v98) != 1)
  {
    sub_1BF38C9B4(v96, &qword_1EBDD9518, &qword_1BF4F1660);
  }

LABEL_72:
  sub_1BF44982C(v149, a3 + v52);
  sub_1BF38C94C(v37, v17, &qword_1EBDD9578, &qword_1BF4F1920);
  if (v151(v17, 1, v62) == 1)
  {
    sub_1BF38C9B4(v17, &qword_1EBDD9578, &qword_1BF4F1920);
  }

  else
  {
    v101 = *(v17 + *(v62 + 9));
    sub_1BF44B050(v17);
    if (v101)
    {
      v102 = 1;
      goto LABEL_91;
    }
  }

  if (v42)
  {
    v59 = 0;
    v103 = MEMORY[0x1E69E7CC0];
    while (v59 < *(a2 + 16))
    {
      v17 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v34 = *(v166 + 72);
      v52 = v156;
      sub_1BF44B0AC(a2 + v17 + v34 * v59, v156);
      if (*(v52 + *(v62 + 9)) == 1)
      {
        sub_1BF44B9BC(v52, v157);
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v103;
        if ((v104 & 1) == 0)
        {
          sub_1BF3E157C(0, *(v103 + 2) + 1, 1);
          v62 = v164;
          v103 = v167;
        }

        v106 = *(v103 + 2);
        v105 = *(v103 + 3);
        v52 = v106 + 1;
        if (v106 >= v105 >> 1)
        {
          sub_1BF3E157C(v105 > 1, v106 + 1, 1);
          v62 = v164;
          v103 = v167;
        }

        *(v103 + 2) = v52;
        sub_1BF44B9BC(v157, &v103[v17 + v106 * v34]);
        a2 = v165;
      }

      else
      {
        sub_1BF44B050(v52);
      }

      if (v42 == ++v59)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_112;
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v107 = *(v103 + 2);

  v108 = v107 == 0;
  v62 = v164;
  v102 = !v108;
LABEL_91:
  *(a3 + *(v62 + 9)) = v102;
  v109 = v136;
  sub_1BF38C94C(v37, v136, &qword_1EBDD9578, &qword_1BF4F1920);
  if (v151(v109, 1, v62) == 1)
  {
    sub_1BF38C9B4(v109, &qword_1EBDD9578, &qword_1BF4F1920);
    if (v134 && sub_1BF4E9204())
    {
      v110 = a2;
      sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
      v112 = v111;
    }

    else
    {
      v110 = a2;
      v112 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v110 = a2;
    v112 = *(v109 + *(v62 + 10));

    sub_1BF44B050(v109);
  }

  *(a3 + *(v62 + 10)) = v112;
  v113 = a3;
  v114 = v138;
  if (v42)
  {
    v115 = *(v164 + 10);
    v116 = v110 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
    v117 = *(v166 + 72);
    v118 = v42;
    do
    {
      sub_1BF44B0AC(v116, v114);
      v119 = *(v114 + v115);

      sub_1BF44B050(v114);
      sub_1BF3C71E0(v119);
      v116 += v117;
      --v118;
    }

    while (v118);
  }

  v120 = v150;
  v121 = v137;
  sub_1BF38C94C(v150, v137, &qword_1EBDD9578, &qword_1BF4F1920);
  v122 = v164;
  if (v151(v121, 1, v164) == 1)
  {
    sub_1BF38C9B4(v121, &qword_1EBDD9578, &qword_1BF4F1920);
    v123 = 0;
  }

  else
  {
    v123 = *(v121 + *(v122 + 11));
    sub_1BF44B050(v121);
  }

  v124 = v139;
  v125 = v113;
  v126 = *(v122 + 11);
  *(v113 + v126) = v123;
  if (v42)
  {
    v127 = *(v122 + 11);
    v128 = v165 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
    v129 = *(v166 + 72);
    do
    {
      sub_1BF44B0AC(v128, v124);
      v130 = *(v124 + v127);
      sub_1BF44B050(v124);
      if ((v130 & ~v123) != 0)
      {
        v123 |= v130;
        *(v125 + v126) = v123;
      }

      v128 += v129;
      --v42;
    }

    while (v42);
  }

  return sub_1BF38C9B4(v120, &qword_1EBDD9578, &qword_1BF4F1920);
}

void sub_1BF3C6CF0(uint64_t a1)
{
  v2 = sub_1BF4E8174();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
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
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2, v11);
      (*(v3 + 32))(v6, v13, v2);
      sub_1BF3C6F00(v9, v6);
      (*(v3 + 8))(v9, v2);
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

      return;
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
}

uint64_t sub_1BF3C6F00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BF4E8174();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750]);
  v36 = a2;
  v13 = sub_1BF4E8874();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1BF391F90(&qword_1EDC96498, MEMORY[0x1E6985750]);
      v23 = sub_1BF4E88C4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1BF4AEE6C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

void sub_1BF3C71E0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    sub_1BF3A443C();
    sub_1BF4E8D64();
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
      sub_1BF39A9CC();
      return;
    }

    while (1)
    {
      sub_1BF3BD184(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BF4E9234())
      {
        sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
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

uint64_t sub_1BF3C73D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *EnvironmentModifiers.swiftUIColorSchemes.getter()
{
  v1 = sub_1BF4E7D24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v7;
  v10 = *(v0 + 8);
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E69E7CC0];
    if ((v10 & 2) == 0)
    {
      return v11;
    }

    goto LABEL_7;
  }

  (*(v2 + 104))(&v17 - v7, *MEMORY[0x1E697DBB8], v1, v8.n128_f64[0]);
  v11 = sub_1BF3C78C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1BF3C78C0(v12 > 1, v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v9, v1);
  if ((v10 & 2) != 0)
  {
LABEL_7:
    (*(v2 + 104))(v5, *MEMORY[0x1E697DBA8], v1, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1BF3C78C0(0, v11[2] + 1, 1, v11);
    }

    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      v11 = sub_1BF3C78C0(v14 > 1, v15 + 1, 1, v11);
    }

    v11[2] = v15 + 1;
    (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v5, v1);
  }

  return v11;
}

size_t sub_1BF3C76E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BF3C78E8(id *a1)
{
  v3 = v1;
  v63 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - v7;
  v9 = sub_1BF4E8424();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E7194();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  if (*(v3 + 160) != 1)
  {
    v26 = type metadata accessor for WidgetCacheManager.CacheManagementError(0);
    sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError);
    swift_allocError();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  v56 = v10;
  v57 = v9;
  v58 = v20;
  v59 = v19;
  v55 = v8;
  sub_1BF38E49C(v3 + 40, &v60);
  v23 = v61;
  v24 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, v61);
  v25 = (v24[5])(a1, v23, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(&v60);
  if ((v25 & 1) == 0)
  {
    v26 = type metadata accessor for WidgetCacheManager.CacheManagementError(0);
    sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError);
    swift_allocError();
    sub_1BF3A5A3C(a1, v30, type metadata accessor for WidgetEntryKey);
    goto LABEL_7;
  }

  v26 = v3;
  sub_1BF3F4FF4(a1, v22);
  if (!v2)
  {
    swift_beginAccess();
    sub_1BF38E49C(v3 + 120, &v60);
    v27 = v62;
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    v28 = [*a1 extensionIdentity];
    v29 = v27[2];
    v54 = v28;
    v29();

    __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    v33 = *(v3 + 16);
    sub_1BF4E7134();
    v34 = sub_1BF4E7094();
    v35 = *(v58 + 8);
    v53 = v58 + 8;
    v54 = v35;
    (v35)(v17, v59);
    *&v60 = 0;
    v36 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v60];

    v26 = v60;
    if (v36)
    {
      v37 = v60;
      *&v60 = WidgetEntryKey.description.getter();
      *(&v60 + 1) = v38;
      MEMORY[0x1BFB58C90](45, 0xE100000000000000);
      sub_1BF3A5AA4(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
      v39 = v59;
      v40 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v40);

      v53 = *(&v60 + 1);
      v54 = v60;
      v58 = *(v58 + 32);
      (v58)(v17, v22, v39);
      v42 = v55;
      v41 = v56;
      v43 = v57;
      (*(v56 + 32))(v55, v13, v57);
      (*(v41 + 56))(v42, 0, 1, v43);
      v44 = *(v3 + 16);
      v61 = sub_1BF3C82A8();
      v62 = &off_1F3DF3DC0;
      *&v60 = v44;
      v45 = type metadata accessor for WidgetArchiveFilePromise(0);
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      v26 = swift_allocObject();
      v48 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      v49 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
      (*(*(v49 - 8) + 56))(v26 + v48, 1, 1, v49);
      *(v26 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
      v50 = v53;
      *(v26 + 16) = v54;
      *(v26 + 24) = v50;
      (v58)(v26 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v17, v39);
      sub_1BF38E610(&v60, v26 + 32);
      sub_1BF3C846C(v42, v26 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel);
      v51 = v44;
    }

    else
    {
      v52 = v60;
      sub_1BF4E6FF4();

      swift_willThrow();
      (*(v56 + 8))(v13, v57);
      (v54)(v22, v59);
    }
  }

LABEL_8:
  v31 = *MEMORY[0x1E69E9840];
  return v26;
}

id sub_1BF3C8004()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19[-1] - v4;
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C((v0 + 4), v19);
  v11 = v20;
  v12 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v13 = (*(*(v1 + 96) + 16))(*(v1 + 80));
  (*(v12 + 8))(v13, v11, v12);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BF38C9B4(v5, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v15 = v0[9];
    sub_1BF4E7174();
    v16 = sub_1BF4E88E4();

    v17 = [v15 fileExistsAtPath_];

    (*(v7 + 8))(v10, v6);
    return v17;
  }
}

unint64_t sub_1BF3C82A8()
{
  result = qword_1EDC96398;
  if (!qword_1EDC96398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC96398);
  }

  return result;
}

uint64_t sub_1BF3C8348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF4E7194();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1BF4E7B24();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BF3C846C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3C851C()
{
  v2 = sub_1BF4E7B24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  result = sub_1BF3C88B0(v22 - v15);
  if (!v1)
  {
    v22[1] = 0;
    v18 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
    v24 = *(v18 - 8);
    (*(v24 + 56))(v16, 0, 1, v18);
    v19 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
    swift_beginAccess();
    sub_1BF3CA110(v16, v0 + v19);
    swift_endAccess();
    v23 = sub_1BF4E8FE4();
    if (qword_1EDC9D678 != -1)
    {
      swift_once();
    }

    v22[2] = qword_1EDCA69E8;
    sub_1BF38C94C(v0 + v19, v13, &qword_1EBDD8B00, &qword_1BF4EC378);
    v20 = *(v24 + 48);
    v24 += 48;
    result = v20(v13, 1, v18);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v3 + 16))(v6, &v13[*(v18 + 32)], v2);
      sub_1BF3CA2B8(v13);
      sub_1BF4E7AE4();
      (*(v3 + 8))(v6, v2);
      *(v0 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 1;
      sub_1BF38C94C(v0 + v19, v10, &qword_1EBDD8B00, &qword_1BF4EC378);
      result = v20(v10, 1, v18);
      if (result != 1)
      {
        v21 = *&v10[*(v18 + 24)];
        sub_1BF3CA2B8(v10);
        return v21;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3C88B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = &v82[-v5];
  v95 = sub_1BF4E8424();
  v94 = *(v95 - 1);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v82[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v82[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82[-v13];
  v15 = sub_1BF4E7194();
  v99 = *(v15 - 8);
  v100 = v15;
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v82[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v82[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82[-v22];
  v25 = v1[7];
  v24 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v25);
  sub_1BF4E7134();
  v26 = v98;
  (*(v24 + 8))(v20, v25, v24);
  if (v26)
  {
    return (*(v99 + 8))(v20, v100);
  }

  v86 = v14;
  v28 = *(v99 + 8);
  v88 = v99 + 8;
  v87 = v28;
  v28(v20, v100);
  sub_1BF4E7084();
  v29 = v97;
  v98 = v23;
  sub_1BF4E70F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B20, &unk_1BF4EC4F0);
  inited = swift_initStackObject();
  v31 = *MEMORY[0x1E696A370];
  *(inited + 32) = *MEMORY[0x1E696A370];
  *(inited + 16) = xmmword_1BF4EBEF0;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 438;
  v32 = v31;
  v89 = sub_1BF3C9454(inited);
  swift_setDeallocating();
  sub_1BF38C9B4(inited + 32, &qword_1EBDD8738, &qword_1BF4F6D40);
  v33 = v96;
  sub_1BF38C94C(v2 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel, v96, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v34 = v94;
  v35 = v95;
  v36 = v2;
  if ((*(v94 + 48))(v33, 1, v95) == 1)
  {
    sub_1BF38C9B4(v33, &qword_1EBDD8AF8, &qword_1BF4EC370);
    v37 = v89;
  }

  else
  {
    v38 = v86;
    (*(v34 + 32))(v86, v33, v35);
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v39 = sub_1BF4E7B54();
    __swift_project_value_buffer(v39, qword_1EDCA6A48);
    v40 = v91;
    v96 = *(v34 + 16);
    (v96)(v91, v38, v35);
    v41 = v34;
    v42 = sub_1BF4E7B34();
    v43 = sub_1BF4E8E54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v84 = v44;
      v85 = swift_slowAlloc();
      *&v102 = v85;
      *v44 = 136446210;
      sub_1BF3EE29C(&qword_1EDC9D780, MEMORY[0x1E69859A8]);
      v83 = v43;
      v45 = v35;
      v46 = sub_1BF4E96A4();
      v48 = v47;
      v91 = *(v41 + 8);
      (v91)(v40, v45);
      v49 = sub_1BF38D65C(v46, v48, &v102);

      v50 = v84;
      *(v84 + 1) = v49;
      v35 = v45;
      v38 = v86;
      _os_log_impl(&dword_1BF389000, v42, v83, "Specific FileDataProtectionLevel requested: %{public}s", v50, 0xCu);
      v51 = v85;
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x1BFB5A5D0](v51, -1, -1);
      MEMORY[0x1BFB5A5D0](v50, -1, -1);
    }

    else
    {

      v91 = *(v41 + 8);
      (v91)(v40, v35);
    }

    v52 = v41;
    v95 = *MEMORY[0x1E696A3A0];
    v53 = v92;
    v54 = v96;
    (v96)(v92, v38, v35);
    v55 = (*(v52 + 88))(v53, v35);
    v56 = v93;
    if (v55 == *MEMORY[0x1E6985988])
    {
      (*(v52 + 104))(v93, *MEMORY[0x1E6985990], v35);
      v57 = v56;
      v58 = v38;
      v59 = v35;
      v60 = v91;
    }

    else
    {
      (v54)(v93, v38, v35);
      v61 = v53;
      v60 = v91;
      (v91)(v61, v35);
      v57 = v56;
      v58 = v38;
      v59 = v35;
    }

    v62 = sub_1BF4E8404();
    v60(v57, v59);
    type metadata accessor for FileProtectionType(0);
    v103 = v63;
    *&v102 = v62;
    sub_1BF38EB2C(&v102, v101);
    v64 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v64;
    sub_1BF3C9714(v101, v95, isUniquelyReferenced_nonNull_native);
    v60(v58, v59);
    v37 = v104;
    v29 = v97;
  }

  v66 = v36[7];
  v67 = v36[8];
  __swift_project_boxed_opaque_existential_1(v36 + 4, v66);
  (*(v67 + 80))(v29, v37, v66, v67);

  v68 = v36[7];
  v69 = v36[8];
  __swift_project_boxed_opaque_existential_1(v36 + 4, v68);
  v70 = (*(v69 + 24))(v29, v68, v69);
  v71 = v36[7];
  v72 = v36[8];
  __swift_project_boxed_opaque_existential_1(v36 + 4, v71);
  v73 = (*(v72 + 16))(v29, v71, v72);
  if (qword_1EDC9D678 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDCA69E8;
  v75 = v98;
  sub_1BF4E7094();
  v76 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v77 = v90;
  v78 = v90 + v76[8];
  sub_1BF4E7B04();
  v79 = *(v99 + 32);
  v80 = v75;
  v81 = v100;
  v79(v77, v80, v100);
  result = (v79)(v77 + v76[5], v29, v81);
  *(v77 + v76[6]) = v70;
  *(v77 + v76[7]) = v73;
  return result;
}

void sub_1BF3C9360()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BF4E7094();
  v7[0] = 0;
  v2 = [v0 URLForDirectory:99 inDomain:1 appropriateForURL:v1 create:0 error:v7];

  v3 = v7[0];
  if (v2)
  {
    sub_1BF4E7154();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1BF3C9454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8730, &unk_1BF4EB250);
    v3 = sub_1BF4E94C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BF38C94C(v4, &v11, &qword_1EBDD8738, &qword_1BF4F6D40);
      v5 = v11;
      result = sub_1BF3C957C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BF38EB2C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1BF3C957C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BF4E8914();
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v4 = sub_1BF4E9844();

  return sub_1BF3C9610(a1, v4);
}

unint64_t sub_1BF3C9610(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BF4E8914();
      v9 = v8;
      if (v7 == sub_1BF4E8914() && v9 == v10)
      {
        break;
      }

      v12 = sub_1BF4E9734();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

_OWORD *sub_1BF3C9714(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BF3C957C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BF4A27C8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BF3C9868(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1BF3C957C(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for FileAttributeKey(0);
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_1BF38EB2C(a1, v20);
  }

  else
  {
    sub_1BF3C9B38(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1BF3C9868(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8730, &unk_1BF4EB250);
  v37 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_1BF38EB2C(v23, v38);
      }

      else
      {
        sub_1BF38D324(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1BF4E8914();
      sub_1BF4E9804();
      sub_1BF4E89F4();
      v26 = sub_1BF4E9844();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1BF38EB2C(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1BF3C9B38(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BF38EB2C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_1BF3C9BC4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1BF4E6D84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E7174();
  v10 = sub_1BF4E88E4();

  if (a2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1BF3C9DEC(&qword_1EDC9D710, type metadata accessor for FileAttributeKey);
    a2 = sub_1BF4E8744();
  }

  v11 = [v3 createFileAtPath:v10 contents:0 attributes:a2];

  if ((v11 & 1) == 0)
  {
    MEMORY[0x1BFB57DE0]();
    v12 = sub_1BF4E7B74();
    if ((v12 & 0x100000000) != 0)
    {
      v13 = 45;
    }

    else
    {
      v13 = v12;
    }

    v14[3] = v13;
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF3C9DEC(&qword_1EDC9D630, MEMORY[0x1E6967EB8]);
    sub_1BF4E6FD4();
    sub_1BF4E6D74();
    (*(v6 + 8))(v9, v5);
    swift_willThrow();
  }
}

uint64_t sub_1BF3C9DEC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BF3C9E54(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3C9F4C();
  (*(v7 + 16))(v10, a1, v6);
  return sub_1BF3C9F98(v10, a4);
}

unint64_t sub_1BF3C9F4C()
{
  result = qword_1EDC963A8;
  if (!qword_1EDC963A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC963A8);
  }

  return result;
}

id sub_1BF3C9F98(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BF4E7094();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1BF4E7194();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1BF4E6FF4();

    swift_willThrow();
    v11 = sub_1BF4E7194();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1BF3CA110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3CA194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1BF4E7B24();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BF3CA2B8(uint64_t a1)
{
  v2 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3CA314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v30 = a2;
  v31 = a3;
  v32 = a1;
  v27[1] = a6;
  v27[2] = a7;
  v8 = sub_1BF4E7624();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  v12 = sub_1BF4E90F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v27 - v24;
  (*(v13 + 16))(v16, v29, v12, v23);
  if ((*(v17 + 48))(v16, 1, a5) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return sub_1BF4E7054();
  }

  else
  {
    (*(v17 + 32))(v25, v16, a5);
    (*(v17 + 16))(v21, v25, a5);
    sub_1BF4E7604();
    swift_getWitnessTable();
    sub_1BF4E7044();
    (*(v28 + 8))(v11, v8);
    return (*(v17 + 8))(v25, a5);
  }
}

void sub_1BF3CA630(void (*a1)(void), void (*a2)(char *, uint64_t))
{
  v72 = a2;
  v73 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v62 - v6;
  v80 = sub_1BF4E7194();
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  v74 = sub_1BF4E7334();
  v79 = *(v74 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v85 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
  swift_beginAccess();
  v77 = v24;
  v78 = v2;
  sub_1BF38C94C(v2 + v24, v23, &qword_1EBDD8B00, &qword_1BF4EC378);
  v25 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v75 = v26 + 48;
  v76 = v27;
  if (v27(v23, 1, v25) == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1BF4E82C4();
  v28 = *&v23[*(v25 + 28)];
  sub_1BF3CA2B8(v23);
  v29 = sub_1BF4E82B4();

  if (v3)
  {
    return;
  }

  v67 = 0;
  v73();
  v83 = sub_1BF4E8714();
  v84 = MEMORY[0x1E6985B20];
  v82[0] = v29;
  v66 = v29;

  v30 = v85;
  sub_1BF3EC058(v82, v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  v31 = v78;
  sub_1BF38E49C(v78 + 32, v82);
  v32 = v84;
  v73 = v83;
  v72 = __swift_project_boxed_opaque_existential_1(v82, v83);
  sub_1BF38C94C(v31 + v77, v20, &qword_1EBDD8B00, &qword_1BF4EC378);
  if (v76(v20, 1, v25) == 1)
  {
    goto LABEL_13;
  }

  v33 = *(v25 + 20);
  v68 = v7;
  v35 = *(v7 + 16);
  v34 = (v7 + 16);
  v63 = v25;
  v36 = v12;
  v62 = v35;
  v35(v12, &v20[v33], v80);
  sub_1BF3CA2B8(v20);
  v65 = "WidgetArchiveFilePromise";
  v37 = v79;
  v38 = v71;
  v39 = v30;
  v40 = v74;
  (*(v79 + 16))(v71, v39, v74);
  (*(v37 + 56))(v38, 0, 1, v40);
  v64 = *(v32 + 48);
  v41 = MEMORY[0x1E6969530];
  v42 = sub_1BF3EE29C(&qword_1EDC9D5F0, MEMORY[0x1E6969530]);
  v43 = sub_1BF3EE29C(&qword_1EDC9D5F8, v41);
  v44 = v36;
  v45 = v67;
  v64(v36, 0xD00000000000001DLL, v65 | 0x8000000000000000, v38, v40, v42, v43, v73, v32);
  if (!v45)
  {
    v46 = v63;
    v73 = v34;
    sub_1BF38C9B4(v38, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v47 = *(v68 + 8);
    v48 = v80;
    v68 += 8;
    v47(v44, v80);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    v49 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
    if (!v49)
    {
      (*(v79 + 8))(v85, v40);

      return;
    }

    v72 = v47;
    v67 = 0;
    v50 = v49;
    v51 = [v49 stringRepresentation];

    v52 = sub_1BF4E8914();
    v54 = v53;

    v55 = v78;
    sub_1BF38E49C(v78 + 32, v82);
    v57 = v83;
    v56 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v58 = v55 + v77;
    v59 = v70;
    sub_1BF38C94C(v58, v70, &qword_1EBDD8B00, &qword_1BF4EC378);
    if (v76(v59, 1, v46) != 1)
    {
      v60 = v69;
      v62(v69, v59 + *(v46 + 20), v48);
      sub_1BF3CA2B8(v59);
      v81[0] = v52;
      v81[1] = v54;
      (*(v56 + 48))(v60, 0xD00000000000001FLL, 0x80000001BF4F9610, v81, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v57, v56);
      v61 = v79;

      v72(v60, v48);
      (*(v61 + 8))(v85, v74);
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

  sub_1BF38C9B4(v38, &qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(v68 + 8))(v36, v80);
  (*(v37 + 8))(v85, v40);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
}

dispatch_time_t static CHDMonotonicTime.now()@<X0>(dispatch_time_t *a1@<X8>)
{
  result = CHDMonotonicTimeFromNow(0);
  *a1 = result;
  return result;
}

uint64_t sub_1BF3CAEA4(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (!*(result + 48))
    {
      v5 = *(result + 24);
      os_unfair_lock_lock(*(v5 + 16));
      if ((*(v4 + 32) & 1) == 0)
      {
        *(v4 + 32) = 1;
        [*(v4 + 16) invalidate];
      }

      os_unfair_lock_unlock(*(v5 + 16));
    }

    a2(v4);
  }

  return result;
}

void sub_1BF3CAF50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1BF3CAFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *))
{
  v6 = sub_1BF4E80E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BF4E7B54();
  __swift_project_value_buffer(v11, qword_1EDCA6A90);
  v12 = sub_1BF4E7B34();
  v13 = sub_1BF4E8E84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BF389000, v12, v13, "Performing scheduled flush of powerlog view entries", v14, 2u);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(result + 72);
    *v10 = v17;
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
    v18 = v17;
    LOBYTE(v17) = sub_1BF4E80F4();
    result = (*(v7 + 8))(v10, v6);
    if (v17)
    {
      v19 = swift_beginAccess();
      v20 = v16[7];
      MEMORY[0x1EEE9AC00](v19);
      *&v25[-16] = v16;
      v25[-8] = 1;

      v22 = a4(v21, a3, &v25[-32]);

      v23 = v16[5];
      v24 = v16[6];
      __swift_project_boxed_opaque_existential_1(v16 + 2, v23);
      (*(v24 + 48))(v22, v23, v24);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF3CB2B4(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BF4E93A4();
    v5 = v2 + 64;
    v6 = -1 << *(v2 + 32);
    result = sub_1BF4E91B4();
    v7 = result;
    v8 = 0;
    v30 = *(v2 + 36);
    v28 = v2 + 72;
    v29 = v3;
    v31 = v2 + 64;
    v32 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_19;
      }

      v34 = v8;
      v12 = *(v2 + 48) + 40 * v7;
      v14 = *v12;
      v13 = *(v12 + 8);
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = *(v12 + 32);
      v35 = *(v12 + 33);
      v18 = *(*(v2 + 56) + 8 * v7);
      swift_retain_n();
      v19 = v14;

      v36[0] = v19;
      v36[1] = v13;
      v36[2] = v16;
      v36[3] = v15;
      v37 = v17;
      v38 = v35;
      v39 = v18;
      a2(v36, v18);

      sub_1BF4E9374();
      v20 = *(v40 + 16);
      sub_1BF4E93B4();
      v2 = v32;
      sub_1BF4E93C4();
      result = sub_1BF4E9384();
      v9 = 1 << *(v32 + 32);
      if (v7 >= v9)
      {
        goto LABEL_20;
      }

      v5 = v31;
      v21 = *(v31 + 8 * v11);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v30 != *(v32 + 36))
      {
        goto LABEL_22;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v29;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v10 = v29;
        v25 = (v28 + 8 * v11);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            v9 = __clz(__rbit64(v26)) + v23;
            break;
          }
        }
      }

      v8 = v34 + 1;
      v7 = v9;
      if (v34 + 1 == v10)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_1BF3CB51C(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EDC9D480 != -1)
    {
      swift_once();
    }

    v4 = sub_1BF4E7B54();
    __swift_project_value_buffer(v4, qword_1EDCA68C8);

    v5 = sub_1BF4E7B34();
    v6 = sub_1BF4E8E84();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = *(v3 + 112);
      *(v7 + 4) = v9;
      *v8 = v9;
      v10 = v9;
      _os_log_impl(&dword_1BF389000, v5, v6, "Flush timer for target=%{public}@ expired.", v7, 0xCu);
      sub_1BF38C9B4(v8, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v8, -1, -1);
      MEMORY[0x1BFB5A5D0](v7, -1, -1);
    }

    [a1 invalidate];
    v11 = *(v3 + 96);
    if (v11 && (sub_1BF3901C0(0, &qword_1EDC96338, 0x1E698E660), v12 = a1, v13 = v11, v14 = sub_1BF4E90A4(), v13, v12, (v14 & 1) != 0))
    {
      [*(v3 + 104) invalidate];
      v15 = *(v3 + 104);
      *(v3 + 104) = 0;

      v16 = *(v3 + 96);
      *(v3 + 96) = 0;
    }

    else
    {
    }
  }
}

dispatch_time_t CHDMonotonicTime.advanced(by:)@<X0>(int64_t a1@<X0>, dispatch_time_t *a2@<X8>)
{
  if (a1 < 0)
  {
    if (qword_1EDC9AA48 != -1)
    {
      swift_once();
    }

    result = qword_1EDC9AA50;
  }

  else
  {
    result = CHDMonotonicTimePlusInterval(*v2, a1);
  }

  *a2 = result;
  return result;
}

{
  result = CHDMonotonicTimePlusInterval(*v2, a1);
  *a2 = result;
  return result;
}

void sub_1BF3CB7BC(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  isa = v8[-1].isa;
  v10 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF3CBB4C(a1);
  if (v13)
  {
    v14 = v13;
    v24[0] = v8;
    v15 = *(v1 + 24);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v1;
    v16[4] = a1;
    aBlock[4] = sub_1BF43E420;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_5;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v19 = v14;

    sub_1BF4E8014();
    v24[1] = MEMORY[0x1E69E7CC0];
    sub_1BF43E42C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF43E484();
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v12, v7, v17);
    _Block_release(v17);

    (*(v4 + 8))(v7, v3);
    (*(isa + 1))(v12, v24[0]);
  }

  else
  {
    if (qword_1EDC9D4A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1BF4E7B54();
    __swift_project_value_buffer(v20, qword_1EDCA6910);
    v24[0] = sub_1BF4E7B34();
    v21 = sub_1BF4E8E84();
    if (os_log_type_enabled(v24[0], v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BF389000, v24[0], v21, "No powerlog view entries to flush.", v22, 2u);
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
    }

    v23 = v24[0];
  }
}

id sub_1BF3CBB4C(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    if ([v3 count])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1BF4ECFE0;
      v38 = v3;
      v39 = MEMORY[0x1E69E6158];
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 32) = 0x7374617473;
      *(v37 + 40) = 0xE500000000000000;
      [v38 copy];
      sub_1BF4E9164();
      swift_unknownObjectRelease();
      *(v37 + 120) = v39;
      *(v37 + 96) = 0x6D617473656D6974;
      *(v37 + 104) = 0xE900000000000070;
      v40 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
      [v40 timeIntervalSince1970];
      v42 = v41;

      *(v37 + 152) = MEMORY[0x1E69E63B0];
      *(v37 + 128) = v42;
      sub_1BF43E550();
      v43 = sub_1BF4E8E14();
    }

    else
    {

      return 0;
    }

    return v43;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    v44 = ", framesSubmitted=";
    v46 = a1 & 0xC000000000000001;
    v47 = v4;
    while (1)
    {
      if (v6)
      {
        v8 = MEMORY[0x1BFB59570](v5, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v5 + 32);
      }

      if (*(v8 + 88) <= 0.0)
      {
        if (qword_1EDC9D4A8 != -1)
        {
          swift_once();
        }

        v22 = sub_1BF4E7B54();
        __swift_project_value_buffer(v22, qword_1EDCA6910);

        v11 = sub_1BF4E7B34();
        v23 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v23))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v48 = v45;
        *v13 = 136446210;
        v24 = *(v8 + 24);
        v26 = *(v8 + 32);
        v25 = *(v8 + 40);
        v27 = *(v8 + 48);
        v28 = *(v8 + 49);
        *&v50 = *(v8 + 16);
        *(&v50 + 1) = v24;
        v51 = v26;
        v52 = v25;
        v53 = v27;
        v54 = v28;
        v29 = v50;

        v30 = PowerlogControlViewIdentity.description.getter();
        v32 = v31;
        v33 = a1;
        v34 = v3;
        v35 = v50;

        v3 = v34;
        a1 = v33;
        v36 = sub_1BF38D65C(v30, v32, &v48);

        *(v13 + 4) = v36;
        v4 = v47;
        _os_log_impl(&dword_1BF389000, v11, v23, "Dropped view entry for identity: [%{public}s] because it was incomplete.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      else
      {
        v9 = sub_1BF43E0B0(v8);
        [v3 addObject_];

        if (qword_1EDC9D4A8 != -1)
        {
          swift_once();
        }

        v10 = sub_1BF4E7B54();
        __swift_project_value_buffer(v10, qword_1EDCA6910);

        v11 = sub_1BF4E7B34();
        v12 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v49 = v14;
        *&v50 = 0;
        *v13 = 136446210;
        *(&v50 + 1) = 0xE000000000000000;
        sub_1BF4E92E4();
        v48 = v50;
        MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F9FB0);
        v15 = *(v8 + 32);
        v16 = *(v8 + 40);
        v17 = *(v8 + 48);
        v18 = *(v8 + 49);
        v50 = *(v8 + 16);
        v51 = v15;
        v52 = v16;
        v53 = v17;
        v54 = v18;
        sub_1BF4E9404();
        MEMORY[0x1BFB58C90](0x7363697274656D20, 0xE90000000000003DLL);
        v19 = *(v8 + 72);
        v55 = *(v8 + 56);
        v56 = v19;
        v57 = *(v8 + 88);
        v20 = sub_1BF408590();
        MEMORY[0x1BFB58C90](v20);

        MEMORY[0x1BFB58C90](62, 0xE100000000000000);
        v21 = sub_1BF38D65C(v48, *(&v48 + 1), &v49);
        v4 = v47;

        *(v13 + 4) = v21;
        _os_log_impl(&dword_1BF389000, v11, v12, "Flushing powerlog view entry: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      MEMORY[0x1BFB5A5D0]();
      v7 = v13;
      v6 = v46;
      MEMORY[0x1BFB5A5D0](v7, -1, -1);
LABEL_6:

      if (v4 == ++v5)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF3CC124(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_1BF3CC1DC(v1, v3);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

void sub_1BF3CC1DC(uint64_t a1, uint64_t a2)
{
  v236 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC0, &qword_1BF4EEA50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v191 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v214 = &v189 - v7;
  v8 = sub_1BF4E7404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v198 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v225 = &v189 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v212 = &v189 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v211 = &v189 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v203 = &v189 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v210 = &v189 - v21;
  v22 = sub_1BF4E74A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v202 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v222 = &v189 - v27;
  v28 = sub_1BF4E7484();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](*(v28 - 8));
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v189 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v41 = &v189 - v40;
  v42 = *(a1 + 16);
  if (!v42)
  {
    return;
  }

  v209 = v39;
  v197 = v38;
  v193 = v37;
  v234 = v23;
  v43 = v36;
  v44 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  v45 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v216 = v33;
  v46 = a1 + v45;
  v235 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors;
  swift_beginAccess();
  v201 = v44;
  swift_beginAccess();
  v232 = *(v43 + 16);
  v220 = (v234 + 88);
  v228 = (v43 + 8);
  v230 = (v9 + 8);
  v192 = (v234 + 8);
  v194 = v9 + 16;
  v208 = (v9 + 56);
  v215 = (v9 + 32);
  v219 = *MEMORY[0x1E6959C40];
  v213 = v9;
  v199 = v9 + 40;
  v218 = *MEMORY[0x1E6959C30];
  v204 = *MEMORY[0x1E6959C48];
  v196 = *MEMORY[0x1E6959C38];
  v217 = *(v43 + 72);
  *&v47 = 136446722;
  v200 = v47;
  *&v47 = 136446210;
  v189 = v47;
  *&v47 = 136446466;
  v190 = v47;
  v233 = v8;
  v221 = v22;
  v227 = v28;
  v229 = v43 + 16;
  v231 = v41;
  v232(v41, v46, v28);
  while (1)
  {
    v51 = v222;
    sub_1BF4E7474();
    v52 = (*v220)(v51, v22);
    v53 = v52 == v219 || v52 == v218;
    v234 = v42;
    if (v53)
    {
      break;
    }

    if (v52 == v204)
    {
      v67 = v198;
      sub_1BF4E7464();
      v68 = sub_1BF4E73F4();
      v70 = v69;
      v71 = *v230;
      (*v230)(v67, v8);
      v72 = *(v236 + v201);
      if (!*(v72 + 16) || (v73 = *(v236 + v201), , v74 = sub_1BF3CD5D0(v68, v70), v76 = v75, , (v76 & 1) == 0))
      {

        v28 = v227;
        (*v228)(v41, v227);
        goto LABEL_5;
      }

      v77 = *(*(v72 + 56) + 8 * v74);

      if (qword_1EDC9D470 != -1)
      {
        swift_once();
      }

      v78 = sub_1BF4E7B54();
      __swift_project_value_buffer(v78, qword_1EDCA68B0);

      v79 = sub_1BF4E7B34();
      v80 = sub_1BF4E8E84();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v237 = v82;
        *v81 = v189;
        v226 = v46;
        v83 = *(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
        v84 = *(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

        v85 = sub_1BF38D65C(v83, v84, &v237);
        v46 = v226;

        *(v81 + 4) = v85;
        _os_log_impl(&dword_1BF389000, v79, v80, "Dropping subscription for dismissed activity: %{public}s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        v86 = v82;
        v8 = v233;
        MEMORY[0x1BFB5A5D0](v86, -1, -1);
        MEMORY[0x1BFB5A5D0](v81, -1, -1);
      }

      if (*(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription))
      {
        v87 = *(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription);

        sub_1BF4E7BD4();
      }

      if (*(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription))
      {
        v88 = *(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription);

        sub_1BF4E7BD4();
      }

      v49 = *(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
      os_unfair_lock_lock(*(v49 + 16));
      v89 = v195;
      sub_1BF40DB04(v77);
      v90 = &v226;
      v195 = v89;
      if (v89)
      {
        goto LABEL_61;
      }

      os_unfair_lock_unlock(*(v49 + 16));
      v91 = v203;
      sub_1BF4E7464();
      v92 = sub_1BF4E73F4();
      v94 = v93;
      v71(v91, v8);
      v95 = v236;
      swift_beginAccess();
      v96 = v191;
      sub_1BF47AFD4(v92, v94, v191);

      sub_1BF38C9B4(v96, &qword_1EBDD8EC0, &qword_1BF4EEA50);
      swift_endAccess();
      v97 = *(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
      v98 = *(v77 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);
      v99 = v201;
      swift_beginAccess();
      v100 = *(v95 + v99);

      v101 = sub_1BF3CD5D0(v97, v98);
      LOBYTE(v100) = v102;

      v22 = v221;
      v28 = v227;
      v42 = v234;
      if (v100)
      {
        v103 = v46;
        v104 = v201;
        v105 = v236;
        v106 = *(v236 + v201);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *(v105 + v104);
        v238 = v108;
        *(v105 + v104) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BF4A3058();
          v108 = v238;
        }

        v109 = *(*(v108 + 48) + 16 * v101 + 8);

        v110 = *(*(v108 + 56) + 8 * v101);

        sub_1BF47C170(v101, v108);
        *(v236 + v104) = v108;
        v46 = v103;
      }

      swift_endAccess();

      v41 = v231;
      (*v228)(v231, v28);
      v8 = v233;
    }

    else
    {
      if (v52 == v196)
      {
        break;
      }

      if (qword_1EDC9D470 != -1)
      {
        swift_once();
      }

      v111 = sub_1BF4E7B54();
      __swift_project_value_buffer(v111, qword_1EDCA68B0);
      v113 = v231;
      v112 = v232;
      v232(v197, v231, v28);
      v114 = v193;
      v112(v193, v113, v28);
      v115 = sub_1BF4E7B34();
      v116 = sub_1BF4E8E74();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v237 = v224;
        *v117 = v190;
        v118 = v203;
        v119 = v197;
        LODWORD(v223) = v116;
        sub_1BF4E7464();
        v120 = sub_1BF4E73F4();
        v226 = v46;
        v122 = v121;
        (*v230)(v118, v233);
        v123 = *v228;
        (*v228)(v119, v28);
        v124 = sub_1BF38D65C(v120, v122, &v237);

        *(v117 + 4) = v124;
        *(v117 + 12) = 2082;
        sub_1BF4E7474();
        v125 = sub_1BF4E8994();
        v127 = v126;
        v123(v114, v28);
        v128 = v123;
        v129 = sub_1BF38D65C(v125, v127, &v237);
        v46 = v226;

        *(v117 + 14) = v129;
        _os_log_impl(&dword_1BF389000, v115, v223, "Ignoring activity descriptor change: %{public}s; unknown state: %{public}s", v117, 0x16u);
        v130 = v224;
        swift_arrayDestroy();
        v8 = v233;
        MEMORY[0x1BFB5A5D0](v130, -1, -1);
        v131 = v117;
        v22 = v221;
        MEMORY[0x1BFB5A5D0](v131, -1, -1);

        v41 = v231;
        v128(v231, v28);
        v42 = v234;
      }

      else
      {

        v187 = *v228;
        (*v228)(v114, v28);
        v187(v197, v28);
        v41 = v231;
        v187(v231, v28);
      }

      (*v192)(v222, v22);
    }

LABEL_6:
    v46 += v217;
    if (!--v42)
    {
      return;
    }

    v232(v41, v46, v28);
  }

  v54 = v210;
  sub_1BF4E7464();
  v55 = sub_1BF4E73F4();
  v57 = v56;
  v58 = *v230;
  (*v230)(v54, v8);
  v59 = *(v236 + v235);
  v60 = *(v59 + 16);
  v224 = v58;
  if (v60 && (, v61 = sub_1BF3CD5D0(v55, v57), v63 = v62, , (v63 & 1) != 0))
  {
    (*(v213 + 16))(v214, *(v59 + 56) + *(v213 + 72) * v61, v8);

    v64 = 0;
    v65 = 0xE800000000000000;
    v66 = 0x676E697461647055;
  }

  else
  {

    v65 = 0xE600000000000000;
    v64 = 1;
    v66 = 0x676E69646441;
  }

  v223 = v66;
  v132 = v214;
  (*v208)(v214, v64, 1, v8);
  sub_1BF38C9B4(v132, &qword_1EBDD8EC0, &qword_1BF4EEA50);
  v133 = v227;
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v134 = sub_1BF4E7B54();
  __swift_project_value_buffer(v134, qword_1EDCA68B0);
  v135 = v209;
  v136 = v231;
  v137 = v232;
  v232(v209, v231, v133);
  v138 = v216;
  v137(v216, v136, v133);

  v139 = sub_1BF4E7B34();
  v140 = sub_1BF4E8E84();

  v141 = os_log_type_enabled(v139, v140);
  v226 = v46;
  if (v141)
  {
    v142 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    v237 = v207;
    *v142 = v200;
    v143 = sub_1BF38D65C(v223, v65, &v237);
    v206 = v140;
    v144 = v143;

    *(v142 + 4) = v144;
    *(v142 + 12) = 2082;
    v145 = v203;
    sub_1BF4E7464();
    v146 = sub_1BF4E73F4();
    v148 = v147;
    v205 = v139;
    v149 = v135;
    v150 = v224;
    v224(v145, v233);
    v151 = *v228;
    v152 = v149;
    v153 = v133;
    (*v228)(v152, v133);
    v154 = sub_1BF38D65C(v146, v148, &v237);

    *(v142 + 14) = v154;
    *(v142 + 22) = 2082;
    v155 = v216;
    sub_1BF4E7474();
    v156 = sub_1BF4E8994();
    v158 = v157;
    v223 = v151;
    v151(v155, v153);
    v159 = v156;
    v160 = v233;
    v161 = sub_1BF38D65C(v159, v158, &v237);

    *(v142 + 24) = v161;
    v162 = v205;
    _os_log_impl(&dword_1BF389000, v205, v206, "%{public}s descriptor for changed activity: %{public}s; state: %{public}s", v142, 0x20u);
    v163 = v207;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v163, -1, -1);
    MEMORY[0x1BFB5A5D0](v142, -1, -1);
  }

  else
  {

    v164 = *v228;
    (*v228)(v138, v133);
    v223 = v164;
    v164(v135, v133);
    v160 = v233;
    v150 = v224;
  }

  v165 = v211;
  v41 = v231;
  sub_1BF4E7464();
  v166 = sub_1BF4E73F4();
  v168 = v167;
  v150(v165, v160);
  v169 = v212;
  sub_1BF4E7464();
  v171 = v235;
  v170 = v236;
  swift_beginAccess();
  v172 = *v215;
  (*v215)(v225, v169, v160);
  v173 = *(v170 + v171);
  v174 = swift_isUniquelyReferenced_nonNull_native();
  v238 = *(v170 + v171);
  v49 = v238;
  *(v170 + v171) = 0x8000000000000000;
  v175 = sub_1BF3CD5D0(v166, v168);
  v177 = *(v49 + 16);
  v178 = (v176 & 1) == 0;
  v179 = __OFADD__(v177, v178);
  v180 = v177 + v178;
  if (!v179)
  {
    v181 = v176;
    if (*(v49 + 24) >= v180)
    {
      v183 = v213;
      v46 = v226;
      if ((v174 & 1) == 0)
      {
        v188 = v175;
        sub_1BF4A31C8();
        v175 = v188;
        v28 = v227;
        if ((v181 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1BF3CD724(v180, v174);
      v49 = v238;
      v175 = sub_1BF3CD5D0(v166, v168);
      v183 = v213;
      v46 = v226;
      if ((v181 & 1) != (v182 & 1))
      {
        goto LABEL_60;
      }
    }

    v28 = v227;
    if ((v181 & 1) == 0)
    {
LABEL_50:
      v49 = v238;
      *(v238 + 8 * (v175 >> 6) + 64) |= 1 << v175;
      v184 = (*(v49 + 48) + 16 * v175);
      *v184 = v166;
      v184[1] = v168;
      v8 = v233;
      v172((*(v49 + 56) + *(v183 + 72) * v175), v225, v233);
      v185 = *(v49 + 16);
      v179 = __OFADD__(v185, 1);
      v186 = v185 + 1;
      if (v179)
      {
        goto LABEL_59;
      }

      *(v49 + 16) = v186;
      goto LABEL_4;
    }

LABEL_3:
    v48 = v175;

    v49 = v238;
    v8 = v233;
    (*(v183 + 40))(*(v238 + 56) + *(v183 + 72) * v48, v225, v233);
LABEL_4:
    v50 = *(v236 + v235);
    *(v236 + v235) = v49;

    swift_endAccess();
    v223(v41, v28);
    v22 = v221;
LABEL_5:
    v42 = v234;
    goto LABEL_6;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1BF4E9794();
  __break(1u);
LABEL_61:

  os_unfair_lock_unlock(*(v49 + 16));
  __break(1u);
}

uint64_t sub_1BF3CD5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v7 = sub_1BF4E9844();

  return a3(a1, a2, v7);
}

unint64_t sub_1BF3CD66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BF4E9734())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1BF3CD74C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_1BF4E94A4();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

void *sub_1BF3CDAE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1BF3CDB54(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1BF3CDB84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BF3CDBB0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BF3CDCAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BF3DA450(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BF3CDCF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF4E8914();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1BF3CDD4C()
{
  if (*v0)
  {
    result = 0x6C616D726F6ELL;
  }

  else
  {
    result = 0x676E697472656C61;
  }

  *v0;
  return result;
}

uint64_t sub_1BF3CDD84@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1BF3CDDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7394();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1BF4E7334();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BF3CDEEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF4E7394();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1BF4E7334();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

__n128 sub_1BF3CE0BC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1BF3CE12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC8, &qword_1BF4EC230);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3CE1A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC8, &qword_1BF4EC230);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BF3CE234()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3CE26C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CE2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3CE358(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BF4E7334();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BF3CE3E0()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3CE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Budget();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF3CE4EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Budget();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3CE5A4()
{
  v1 = (type metadata accessor for ActivityKey() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1BF4E7454();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF3CE6A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3CE6DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF3CE770()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3CE7B0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1BF3CE844(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BF3CE8F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BF3CE964()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CE9F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF4E7EA4();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3CEA78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF410180();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3CEAA4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

uint64_t sub_1BF3CEC04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CEC3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3CEC98(uint64_t a1, uint64_t *a2)
{
  sub_1BF38E49C(a1, v5);
  v3 = *a2;
  return sub_1BF417ADC(v5);
}

__n128 sub_1BF3CECE0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1BF3CED54(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1BF4E7394();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = sub_1BF4E7334();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_1BF4E7194();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[13]];

  return v16(v17, a2, v15);
}

char *sub_1BF3CEF14(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1BF4E7394();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1BF4E7334();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_1BF4E7194();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[13]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BF3CF0D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Budget();
  *a2 = *(a1 + *(result + 24));
  return result;
}

uint64_t sub_1BF3CF110(char *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + *(type metadata accessor for Budget() + 24)) = v2;
  return sub_1BF42EB2C();
}

uint64_t sub_1BF3CF148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BF3CF210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF4E7334();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_1BF3CF2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E8674();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BF4E8364();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1BF3CF414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BF4E8674();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BF4E8364();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1BF3CF56C()
{
  MEMORY[0x1BFB5A690](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CF5A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BF3CF5FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1BF3CF650()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF3CF690()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CF6D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3CF730()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF3CF778()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF3CF7B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_1BF3CF808(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF3CF818@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1BF3CF824(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 24);

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1BF3CF898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1BF3CF8A4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 144);

  *(a2 + 136) = v4;
  *(a2 + 144) = v3;
  return result;
}

uint64_t sub_1BF3CF8E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1BF3CF8F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 176);

  *(a2 + 168) = v4;
  *(a2 + 176) = v3;
  return result;
}

uint64_t sub_1BF3CF944(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 200);

  *(a2 + 200) = v3;
  return result;
}

uint64_t sub_1BF3CF990@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 48) + 16);
}

uint64_t sub_1BF3CF9E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 52) + 16);
}

uint64_t sub_1BF3CFA30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 56) + 16);
}

uint64_t sub_1BF3CFA80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a2 = *(a1 + *(result + 60) + 16);
  return result;
}

uint64_t sub_1BF3CFABC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(a2 + *(result + 60) + 16) = v3;
  return result;
}

uint64_t sub_1BF3CFAF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 64) + 16);
}

uint64_t sub_1BF3CFB44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 68) + 16);
}

uint64_t sub_1BF3CFB94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 72) + 16);
}

uint64_t sub_1BF3CFBE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a2 = *(a1 + *(result + 76) + 16);
  return result;
}

uint64_t sub_1BF3CFC20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(a2 + *(result + 76) + 16) = v3;
  return result;
}

uint64_t sub_1BF3CFC58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a2 = *(a1 + *(result + 80) + 16);
  return result;
}

uint64_t sub_1BF3CFC94(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(a2 + *(result + 80) + 16) = v3;
  return result;
}

uint64_t sub_1BF3CFCCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a2 = *(a1 + *(result + 84) + 16);
  return result;
}

uint64_t sub_1BF3CFD08(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(a2 + *(result + 84) + 16) = v3;
  return result;
}

uint64_t sub_1BF3CFD40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 88) + 16);
}

uint64_t sub_1BF3CFD90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TapToRadarDraft() + 92);
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1BF3CFDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF3CFE9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3CFFCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1BF3D001C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1BF3D006C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 120, a2);
}

uint64_t sub_1BF3D00BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D00F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E0C4();
  *a2 = result;
  return result;
}

__n128 sub_1BF3D0144(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1BF3D0158@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E124();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D01A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E220();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D01F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E318();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D0248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E400();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D0298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E4E8();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D02E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E5D0();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D0338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF44E6DC();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D03DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF3C2398();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BF3D04EC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = v3 | v6;
  v9 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);
  v10 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v8 | 7);
}

uint64_t sub_1BF3D05F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 80);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BF3D06C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D0710()
{
  v1 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BF3D0780(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BF4E7394();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_15;
  }

  v17 = sub_1BF4E8674();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_15;
  }

  v18 = sub_1BF4E8364();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[9];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[11];

  return v20(v21, a2, v19);
}

uint64_t sub_1BF3D09E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BF4E7394();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v17 = sub_1BF4E8674();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v18 = sub_1BF4E8364();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[11];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1BF3D0C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7394();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3D0CBC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BF4E7394();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BF3D0D44()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3D0D84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D0DBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF4E7F14();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D0E14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D0E4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D0E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7E24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D0EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7DC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D0F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7DE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D0F8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7E04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D10D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7E64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D112C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7F34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D1184@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF4E7EF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF3D12C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF46DEEC();
  *a2 = result;
  return result;
}

uint64_t sub_1BF3D12EC(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher);
  *(*a2 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher) = *a1;
}

uint64_t sub_1BF3D133C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_1BF46FFF4(v4);
}

uint64_t sub_1BF3D13CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF46EA10();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BF3D1404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a2);
}

uint64_t sub_1BF3D1454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1BF3D149C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_1BF3D14E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1BF3D1540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1BF3D15BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1BF3D1638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a2);
}

uint64_t sub_1BF3D168C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D16C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[12])
  {
    v6 = v0[13];
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1BF3D1730()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D1768()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BF3D17AC@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_1BF3D17F0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF3D1830()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D1884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1BF3D18D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1BF3D192C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EBDD9970;
}

uint64_t sub_1BF3D199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BF3D1A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF3D1BF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF3A331C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BF3D1C74@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = sub_1BF4E76B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF3D1CB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WidgetExtensionInfo();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BF3D1D64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WidgetExtensionInfo();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3D1E10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D1E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1BF3D1EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1BF3D1EF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D1F4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D1F84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D1FBC()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  if (v0[9] >= 6uLL)
  {
  }

  if (v0[10])
  {
    v2 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BF3D201C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_1BF4DE31C();
  a2[1] = v4;
}

uint64_t sub_1BF3D205C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1BF44BEB0(v2, v3);
}

__n128 sub_1BF3D20A8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BF3D2134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a2);
}

uint64_t sub_1BF3D21C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  return sub_1BF3ABF74(v3 + v4, a2);
}

uint64_t sub_1BF3D2224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF3D22E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *CodableHostConfiguration<>.toData()()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_1BF4E71C4();
  }

  else
  {
    v3 = v2;
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t CodableHostConfiguration<>.init(data:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BF4E8324();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  v10 = sub_1BF4E8EB4();
  if (v2)
  {
    return sub_1BF3B03C0(a1, a2);
  }

  if (!v10)
  {
    sub_1BF3901C0(0, &qword_1EDC962E8, 0x1E696ABC0);
    (*(v6 + 104))(v9, *MEMORY[0x1E6985878], v5);
    sub_1BF4E9074();
    swift_willThrow();
    return sub_1BF3B03C0(a1, a2);
  }

  v12 = v10;
  sub_1BF3B03C0(a1, a2);
  return v12;
}

void CodableHostConfiguration<>.succinctDescription()()
{
  v1 = [v0 succinctDescriptionBuilder];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 build];

    if (v3)
    {
      sub_1BF4E8914();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t HostRecord.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HostRecord.identity.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HostRecord.type.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1BF4E7854();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HostRecord.type.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1BF4E7854();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*HostRecord.type.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*HostRecord.configuration.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t HostRecord.activationState.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1BF4E7804();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HostRecord.activationState.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1BF4E7804();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*HostRecord.activationState.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t HostRecord.init(identity:type:configuration:activationState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for HostRecord();
  v14 = v13[9];
  v15 = sub_1BF4E7854();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  (*(*(a5 - 8) + 32))(a6 + v13[10], a3, a5);
  v16 = v13[11];
  v17 = sub_1BF4E7804();
  v18 = *(*(v17 - 8) + 32);

  return v18(a6 + v16, a4, v17);
}

uint64_t sub_1BF3D2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v68 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v56 - v7;
  v69 = a2;
  v70 = a3;
  v8 = type metadata accessor for HostRecord();
  v66 = sub_1BF4E90F4();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v56 - v13;
  v71 = v8;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = v56 - v18;
  v74 = 0;
  v75 = 0xE000000000000000;
  v19 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](45);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v21 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v22 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v22);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v23 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v23);

  MEMORY[0x1BFB58C90](0x204D4F52460ALL, 0xE600000000000000);
  v24 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v24);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v25 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v25);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v26 = sub_1BF4E7844();
  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v57 = v9;
  v58 = v15;
  v60 = v5;
  v27 = v61;
  v28 = sub_1BF3D7F44(v26);
  v30 = v29;
  v32 = v31;
  v72 = 0x676E69646E696240;
  v73 = 0xE800000000000000;
  v33 = v19;
  v76 = *(v19 + 16) + 1;
  v34 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v34);

  v35 = v72;
  v36 = v73;
  MEMORY[0x1BFB58C90](v72, v73);
  sub_1BF3D8840(v28, v30, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v33;
  sub_1BF3D6680(v28, v30, v32, v35, v36, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v28, v30, v32);
  v38 = v72;
  if (!swift_weakLoadStrong())
  {
LABEL_15:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v39 = sub_1BF3E4F48(v38);
  if (v27)
  {
  }

  else
  {
    v41 = v39;

    v42 = sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
    v43 = v71;
    v63 = v42;
    v44 = sub_1BF4E8724();
    v74 = v44;
    v45 = v41[2];
    if (v45)
    {
      v46 = (v58 + 6);
      v61 = v60 + 2;
      v62 = (v58 + 4);
      v59 = (v58 + 7);
      v60 = (v58 + 2);
      ++v58;
      v56[1] = 0;
      ++v57;
      v47 = 4;
      do
      {
        v53 = v41[v47];

        sub_1BF3D3600(v54, v69, v70, v14);

        if ((*v46)(v14, 1, v43) == 1)
        {
          (*v57)(v14, v66);
        }

        else
        {
          v48 = v41;
          v49 = v64;
          (*v62)(v64, v14, v43);
          (*v61)(v67, v49, v68);
          v50 = v14;
          v51 = v65;
          (*v60)(v65, v49, v71);
          (*v59)(v51, 0, 1, v71);
          sub_1BF4E8834();
          v14 = v50;
          v43 = v71;
          sub_1BF4E8864();
          v52 = v49;
          v41 = v48;
          (*v58)(v52, v43);
        }

        ++v47;
        --v45;
      }

      while (v45);

      return v74;
    }

    else
    {
      v55 = v44;

      return v55;
    }
  }
}

uint64_t sub_1BF3D3600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v156 = a3;
  v154 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v146 = &v137 - v8;
  v155 = a2;
  v144 = *(a2 - 8);
  v9 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v147 = &v137 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D8, &qword_1BF4EB2F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v137 - v16;
  v18 = sub_1BF4E7804();
  v149 = *(v18 - 8);
  v150 = v18;
  v19 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v137 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E0, &qword_1BF4EB2F8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v137 - v25;
  v27 = sub_1BF4E7854();
  v151 = *(v27 - 8);
  v152 = v27;
  v28 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v137 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v153 = &v137 - v35;
  v36 = sub_1BF4E92F4();
  v38 = sub_1BF48063C(v36, v37, a1);
  v40 = v39;
  v42 = v41;
  v43 = ~v41;

  if (!v43)
  {
    goto LABEL_13;
  }

  v44 = sub_1BF4244EC(v38, v40, v42);
  v46 = v45;
  sub_1BF3DB1FC(v38, v40, v42);
  if (!v46)
  {
    goto LABEL_13;
  }

  v141 = v44;
  v142 = v46;
  v47 = sub_1BF4E92F4();
  v49 = sub_1BF48063C(v47, v48, a1);
  v51 = v50;
  v53 = v52;
  v54 = ~v52;

  if (v54)
  {
    v55 = sub_1BF4244E0(v49, v51, v53);
    v57 = v56;
    sub_1BF3DB1FC(v49, v51, v53);
    if ((v57 & 1) == 0)
    {
      v140 = v55;
      v58 = sub_1BF4E92F4();
      v60 = sub_1BF48063C(v58, v59, a1);
      v62 = v61;
      v64 = v63;
      v65 = ~v63;

      if (v65)
      {
        sub_1BF424370(v60, v62, v64, &v158);
        sub_1BF3DB1FC(v60, v62, v64);
        if (*(&v158 + 1) >> 60 != 15)
        {
          v139 = *(&v158 + 1);
          v66 = v158;
          v67 = sub_1BF4E92F4();
          v69 = sub_1BF48063C(v67, v68, a1);
          v71 = v70;
          v73 = v72;
          v74 = ~v72;

          if (!v74)
          {
            v78 = v66;
            goto LABEL_11;
          }

          v138 = v66;
          v75 = sub_1BF4244E0(v69, v71, v73);
          v77 = v76;
          sub_1BF3DB1FC(v69, v71, v73);
          if (v77)
          {
            v78 = v138;
LABEL_11:
            sub_1BF3DB210(v78, v139);
            goto LABEL_12;
          }

          if (v140 < 0)
          {
            __break(1u);
          }

          else
          {
            sub_1BF4E7834();
            v89 = v151;
            v88 = v152;
            v90 = (*(v151 + 48))(v26, 1, v152);
            v91 = v153;
            v66 = v141;
            if (v90 == 1)
            {
              v92 = &qword_1EBDD87E0;
              v93 = &qword_1BF4EB2F8;
              v94 = v26;
            }

            else
            {
              v140 = *(v89 + 32);
              (v140)(v153, v26, v88);
              if (v75 < 0)
              {
                __break(1u);
                swift_once();
                v113 = sub_1BF4E7B54();
                __swift_project_value_buffer(v113, qword_1EDCA6898);
                v114 = v151;
                v115 = v152;
                v116 = v153;
                (*(v151 + 16))(v30, v153, v152);
                v117 = v142;

                v118 = v75;
                v119 = sub_1BF4E7B34();
                v120 = sub_1BF4E8E64();

                v121 = os_log_type_enabled(v119, v120);
                v122 = v148;
                if (v121)
                {
                  v123 = swift_slowAlloc();
                  v124 = swift_slowAlloc();
                  *&v158 = v124;
                  *v123 = 136446722;
                  v125 = sub_1BF38D65C(v141, v117, &v158);

                  *(v123 + 4) = v125;
                  *(v123 + 12) = 2050;
                  v126 = sub_1BF4E7844();
                  v127 = *(v114 + 8);
                  v127(v30, v115);
                  *(v123 + 14) = v126;
                  *(v123 + 22) = 2082;
                  swift_getErrorValue();
                  v128 = sub_1BF4A836C(v157);
                  v130 = sub_1BF38D65C(v128, v129, &v158);

                  *(v123 + 24) = v130;
                  _os_log_impl(&dword_1BF389000, v119, v120, "Encountered malformed result for host: %{public}s-%{public}lu: %{public}s", v123, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x1BFB5A5D0](v124, -1, -1);
                  MEMORY[0x1BFB5A5D0](v123, -1, -1);

                  sub_1BF3DB210(v138, v139);
                  (*(v149 + 8))(v148, v150);
                  v127(v153, v115);
                }

                else
                {
                  v136 = *(v114 + 8);
                  v136(v30, v115);

                  sub_1BF3DB210(v138, v139);

                  (*(v149 + 8))(v122, v150);
                  v136(v116, v115);
                }

                v104 = type metadata accessor for HostRecord();
                v105 = *(*(v104 - 8) + 56);
                v106 = v154;
                return v105(v106, 1, 1, v104);
              }

              sub_1BF4E77E4();
              v96 = v149;
              v95 = v150;
              if ((*(v149 + 48))(v17, 1, v150) != 1)
              {
                v137 = *(v96 + 32);
                v137(v148, v17, v95);
                v107 = v156;
                v108 = v139;
                v109 = *(v156 + 16);
                v110 = v138;
                sub_1BF3D8864(v138, v139);
                v111 = v110;
                v112 = v155;
                v109(v111, v108, v155, v107);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
                v151 = sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0);
                sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0);
                sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0);
                sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0);
                v131 = v146;
                sub_1BF4E7784();
                sub_1BF3DB210(v138, v108);
                (v140)(v33, v153, v152);
                v132 = v145;
                (*(v144 + 32))(v145, v147, v112);
                v133 = v143;
                v137(v143, v148, v150);
                v134 = v154;
                HostRecord.init(identity:type:configuration:activationState:)(v131, v33, v132, v133, v112, v154);
                v135 = type metadata accessor for HostRecord();
                return (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
              }

              (*(v89 + 8))(v91, v88);
              v92 = &qword_1EBDD87D8;
              v93 = &qword_1BF4EB2F0;
              v94 = v17;
            }

            sub_1BF38C9B4(v94, v92, v93);
            v30 = v138;
            v77 = v142;
            if (qword_1EDC9D460 == -1)
            {
LABEL_27:
              v97 = sub_1BF4E7B54();
              __swift_project_value_buffer(v97, qword_1EDCA6898);

              v98 = sub_1BF4E7B34();
              v99 = sub_1BF4E8E64();

              if (os_log_type_enabled(v98, v99))
              {
                v100 = swift_slowAlloc();
                v101 = swift_slowAlloc();
                *&v158 = v101;
                *v100 = 136446210;
                v102 = sub_1BF38D65C(v66, v77, &v158);

                *(v100 + 4) = v102;
                _os_log_impl(&dword_1BF389000, v98, v99, "Encountered malformed result for host data: %{public}s", v100, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v101);
                MEMORY[0x1BFB5A5D0](v101, -1, -1);
                MEMORY[0x1BFB5A5D0](v100, -1, -1);
                sub_1BF3DB210(v30, v139);
              }

              else
              {
                sub_1BF3DB210(v30, v139);
              }

              v103 = v154;
              v104 = type metadata accessor for HostRecord();
              v105 = *(*(v104 - 8) + 56);
              v106 = v103;
              return v105(v106, 1, 1, v104);
            }
          }

          swift_once();
          goto LABEL_27;
        }
      }
    }
  }

LABEL_12:

LABEL_13:
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v79 = sub_1BF4E7B54();
  __swift_project_value_buffer(v79, qword_1EDCA6898);
  v80 = sub_1BF4E7B34();
  v81 = sub_1BF4E8E64();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1BF389000, v80, v81, "Encountered malformed result for host configuration data.", v82, 2u);
    MEMORY[0x1BFB5A5D0](v82, -1, -1);
  }

  v83 = type metadata accessor for HostRecord();
  v84 = *(*(v83 - 8) + 56);
  v85 = v83;
  v86 = v154;

  return v84(v86, 1, 1, v85);
}

uint64_t ChronoMetadataStore.HostConfigurationStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3D4468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v8 = *(Strong + 24);
  v9 = Strong;
  os_unfair_lock_lock(*(v8 + 16));
  v10 = *(v9 + 64);
  os_unfair_lock_unlock(*(v8 + 16));

  if (!v10)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = type metadata accessor for HostRecord();
  v12 = v11[10];
  result = (*(a3 + 24))(a2, a3);
  if (v3)
  {
    return result;
  }

  v74 = result;
  v75 = v14;
  if (!swift_weakLoadStrong())
  {
LABEL_16:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v15 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](181);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v21 = sub_1BF4E7794();
  v76 = a1;
  v23 = v22;

  v24 = sub_1BF3D815C(v21, v23, MEMORY[0x1E69E6158], &off_1F3DF00A0);
  v26 = v25;
  v28 = v27;
  v77 = *(v15 + 16) + 1;
  v29 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v29);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v24, v26, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v24, v26, v28, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v24, v26, v28);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v31 = v76 + v11[9];
  v32 = sub_1BF4E7844();
  if (v32 < 0)
  {
    goto LABEL_13;
  }

  v33 = sub_1BF3D7F44(v32);
  v35 = v34;
  v37 = v36;
  v78 = *(v15 + 16) + 1;
  v38 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v38);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v33, v35, v37);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v33, v35, v37, 0x676E69646E696240, 0xE800000000000000, v39);

  sub_1BF3D88B8(v33, v35, v37);
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_1BF3D8864(v74, v75);
  sub_1BF3D8864(v74, v75);
  v40 = sub_1BF3D815C(v74, v75, MEMORY[0x1E6969080], &off_1F3DF00A8);
  v42 = v41;
  LOBYTE(v35) = v43;
  v79 = *(v15 + 16) + 1;
  v44 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v44);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v40, v42, v35);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v40, v42, v35, 0x676E69646E696240, 0xE800000000000000, v45);

  sub_1BF3D88B8(v40, v42, v35);
  sub_1BF3B03C0(v74, v75);
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v46 = v11[11];
  v47 = sub_1BF4E77F4();
  if (v47 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = sub_1BF3D7F44(v47);
  v50 = v49;
  v52 = v51;
  v80 = *(v15 + 16) + 1;
  v53 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v53);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v48, v50, v52);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v48, v50, v52, 0x676E69646E696240, 0xE800000000000000, v54);

  sub_1BF3D88B8(v48, v50, v52);
  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8890);
  v55 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v55);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v56 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v56);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F88B0);
  v57 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v57);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  sub_1BF3D8864(v74, v75);
  sub_1BF3D8864(v74, v75);
  v58 = sub_1BF3D815C(v74, v75, MEMORY[0x1E6969080], &off_1F3DF00A8);
  v60 = v59;
  v62 = v61;
  v81 = *(v15 + 16) + 1;
  v63 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v63);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v58, v60, v62);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v58, v60, v62, 0x676E69646E696240, 0xE800000000000000, v64);

  sub_1BF3D88B8(v58, v60, v62);
  sub_1BF3B03C0(v74, v75);
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v65 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v65);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v66 = sub_1BF4E77F4();
  if (v66 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v67 = sub_1BF3D7F44(v66);
  v69 = v68;
  v71 = v70;
  v82 = *(v15 + 16) + 1;
  v72 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v72);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v67, v69, v71);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v67, v69, v71, 0x676E69646E696240, 0xE800000000000000, v73);

  sub_1BF3D88B8(v67, v69, v71);
  sub_1BF3E4F48(v15);

  return sub_1BF3B03C0(v74, v75);
}