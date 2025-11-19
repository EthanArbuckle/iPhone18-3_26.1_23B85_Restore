uint64_t sub_1E4840D3C(uint64_t a1)
{
  v2 = v1;
  sub_1E487732C();
  sub_1E4844DF0(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  sub_1E4878AAC();
  v4 = type metadata accessor for DayEvents();
  sub_1E47F3784(a1, *(v2 + v4[5]));
  sub_1E47F3784(a1, *(v2 + v4[6]));
  v5 = *(v2 + v4[7]);
  sub_1E487916C();
  v6 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  MEMORY[0x1E6919800](*(v2 + v6[5]));
  MEMORY[0x1E6919800](*(v2 + v6[6]));
  sub_1E47F3784(a1, *(v2 + v6[7]));
  return MEMORY[0x1E6919800](*(v2 + v6[8]));
}

uint64_t sub_1E4840E34()
{
  v1 = v0;
  sub_1E487914C();
  sub_1E487732C();
  sub_1E4844DF0(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  sub_1E4878AAC();
  v2 = type metadata accessor for DayEvents();
  sub_1E47F3784(v6, *(v1 + v2[5]));
  sub_1E47F3784(v6, *(v1 + v2[6]));
  v3 = *(v1 + v2[7]);
  sub_1E487916C();
  v4 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  MEMORY[0x1E6919800](*(v1 + v4[5]));
  MEMORY[0x1E6919800](*(v1 + v4[6]));
  sub_1E47F3784(v6, *(v1 + v4[7]));
  MEMORY[0x1E6919800](*(v1 + v4[8]));
  return sub_1E487917C();
}

uint64_t sub_1E4840F58(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1E487914C();
  sub_1E487732C();
  sub_1E4844DF0(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  sub_1E4878AAC();
  v5 = type metadata accessor for DayEvents();
  sub_1E47F3784(v8, *(v4 + v5[5]));
  sub_1E47F3784(v8, *(v4 + v5[6]));
  v6 = *(v4 + v5[7]);
  sub_1E487916C();
  MEMORY[0x1E6919800](*(v4 + a2[5]));
  MEMORY[0x1E6919800](*(v4 + a2[6]));
  sub_1E47F3784(v8, *(v4 + a2[7]));
  MEMORY[0x1E6919800](*(v4 + a2[8]));
  return sub_1E487917C();
}

uint64_t sub_1E484106C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v98 = a6;
  v77 = a5;
  v101 = a4;
  v97 = a2;
  v103 = a1;
  v79 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v72 - v12;
  v96 = sub_1E48770FC();
  v102 = *(v96 - 8);
  v13 = *(v102 + 64);
  v14 = MEMORY[0x1EEE9AC00](v96);
  v92 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72 - v16;
  v18 = sub_1E487732C();
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = v99[8];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v76 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v75 = &v72 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v72 - v27;
  v78 = a3;
  v95 = *a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v29 = sub_1E487751C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = *(v30 + 80);
  v33 = (v32 + 32) & ~v32;
  v87 = v33 + 4 * v31;
  v88 = v32;
  v90 = v28;
  v34 = swift_allocObject();
  v85 = xmmword_1E487BC70;
  *(v34 + 16) = xmmword_1E487BC70;
  v89 = v33;
  v35 = v34 + v33;
  v36 = *(v30 + 104);
  v86 = *MEMORY[0x1E6969A50];
  v36(v35);
  v84 = *MEMORY[0x1E6969A68];
  v36(v35 + v31);
  v82 = *MEMORY[0x1E6969A78];
  v36(v35 + 2 * v31);
  v83 = 2 * v31;
  v37 = *MEMORY[0x1E6969A48];
  v81 = 3 * v31;
  v80 = v37;
  v36(v35 + 3 * v31);
  sub_1E486B81C(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E487747C();

  if (v95 == 24)
  {
    sub_1E48770BC();
    result = sub_1E487708C();
    if (v39)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v40 = __OFADD__(result++, 1);
    v41 = v94;
    if (v40)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_1E487709C();
  }

  else
  {
    sub_1E48770BC();
    v41 = v94;
  }

  v74 = v26;
  sub_1E48774AC();
  v42 = v41;
  v44 = v99;
  v43 = v100;
  v94 = v99[6];
  v95 = v99 + 6;
  result = (v94)(v42, 1, v100);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v45 = *(v102 + 8);
  v102 += 8;
  v73 = v45;
  v45(v17, v96);
  v46 = v91;
  v72 = v44[4];
  v72(v91, v42, v43);
  v91 = v44[5];
  (v91)(v97, v46, v43);
  v47 = *v98;
  v48 = swift_allocObject();
  *(v48 + 16) = v85;
  v49 = v48 + v89;
  (v36)(v48 + v89, v86, v29);
  (v36)(v49 + v31, v84, v29);
  (v36)(v49 + v83, v82, v29);
  (v36)(v49 + v81, v80, v29);
  sub_1E486B81C(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = v92;
  v51 = v103;
  sub_1E487747C();

  if (v47 != 24)
  {
    sub_1E48770BC();
    v52 = v93;
LABEL_12:
    sub_1E48774AC();
    v54 = v100;
    result = (v94)(v52, 1, v100);
    if (result != 1)
    {
      v73(v50, v96);
      v55 = v74;
      v72(v74, v52, v54);
      v56 = v77;
      (v91)(v77, v55, v54);
      v57 = type metadata accessor for DayEvents();
      v58 = *(v51 + v57[5]);
      v59 = v99;
      v60 = v99[2];
      v61 = v75;
      v60(v75, v97, v54);
      v62 = v76;
      v60(v76, v56, v54);
      v63 = sub_1E4842890(v58, v61, v62);
      v102 = v64;
      v65 = v59[1];
      v65(v62, v54);
      v65(v61, v54);
      v66 = v79;
      v67 = v103;
      v60(v79, v103, v54);
      v68 = *(v67 + v57[6]);
      *&v66[v57[5]] = v63;
      *&v66[v57[6]] = v68;
      v66[v57[7]] = 0;
      v69 = *v78;
      v70 = *v98;
      v71 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
      *&v66[v71[5]] = v69;
      *&v66[v71[6]] = v70;
      *&v66[v71[7]] = v102;
      v66[v71[8]] = 1;
    }

    goto LABEL_17;
  }

  sub_1E48770BC();
  result = sub_1E487708C();
  v52 = v93;
  if ((v53 & 1) == 0)
  {
    v40 = __OFADD__(result++, 1);
    if (!v40)
    {
      sub_1E487709C();
      goto LABEL_12;
    }

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E48418E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E487745C();
  v13 = *(a1 + *(type metadata accessor for DayEvents() + 20));
  v32 = a2;
  v33 = v12;
  v34 = a3;
  v14 = sub_1E4841D88(sub_1E4844CB4, v31, v13);
  v15 = *(v14 + 16);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v16 = *(v14 + 32);
  v17 = v15 - 1;
  if (v15 != 1)
  {
    if (v15 >= 5)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v19 = vdupq_n_s64(v16);
      v20 = (v14 + 56);
      v21 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = v19;
      do
      {
        v19 = vbslq_s8(vcgtq_s64(v19, v20[-1]), v19, v20[-1]);
        v22 = vbslq_s8(vcgtq_s64(v22, *v20), v22, *v20);
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      v23 = vbslq_s8(vcgtq_s64(v19, v22), v19, v22);
      v24 = vextq_s8(v23, v23, 8uLL).u64[0];
      v16 = vbsl_s8(vcgtd_s64(v23.i64[0], v24), *v23.i8, v24);
      if (v17 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v18 = 1;
    }

    v25 = v15 - v18;
    v26 = (v14 + 8 * v18 + 32);
    do
    {
      v28 = *v26++;
      v27 = v28;
      if (v16 <= v28)
      {
        v16 = v27;
      }

      --v25;
    }

    while (v25);
  }

LABEL_13:
  v29 = v15 == 0;

  *a4 = v16;
  *(a4 + 8) = v29;
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E4841AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28[1] = a2;
  v29 = a4;
  v30 = a5;
  v7 = sub_1E487732C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v28 - v13;
  v15 = sub_1E487751C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x1E6969A58], v15);
  v20 = type metadata accessor for Event();
  v21 = -*(a1 + *(v20 + 28));
  v22 = a1 + *(v20 + 20);
  sub_1E48772AC();
  sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  if (sub_1E4878ADC())
  {
    (*(v8 + 8))(v12, v7);
    (*(v8 + 16))(v14, a3, v7);
  }

  else
  {
    (*(v8 + 32))(v14, v12, v7);
  }

  v23 = sub_1E487752C();
  (*(v8 + 8))(v14, v7);
  result = (*(v16 + 8))(v19, v15);
  v25 = v30;
  v26 = v23 >= v29;
  if (v23 < v29)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0;
  }

  *v30 = v27;
  *(v25 + 8) = v26;
  return result;
}

uint64_t sub_1E4841D88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for Event();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4860A30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v8;
      v18 = *(v8 + 16);
      result = sub_1E4860A30((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v8 = result;
    }

    *(v8 + 16) = v16;
    *(v8 + 8 * v14 + 32) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_1E4841F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + *(type metadata accessor for DayEvents() + 20));
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = a3;
  v9 = sub_1E4841D88(sub_1E4844C94, v26, v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 >= 5)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v14 = vdupq_n_s64(v11);
      v15 = (v9 + 56);
      v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v14;
      do
      {
        v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v15[-1], v14);
        v17 = vbslq_s8(vcgtq_s64(v17, *v15), *v15, v17);
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      v18 = vbslq_s8(vcgtq_s64(v17, v14), v14, v17);
      v19 = vextq_s8(v18, v18, 8uLL).u64[0];
      v11 = vbsl_s8(vcgtd_s64(v19, v18.i64[0]), *v18.i8, v19);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 1;
    }

    v20 = v10 - v13;
    v21 = (v9 + 8 * v13 + 32);
    do
    {
      v23 = *v21++;
      v22 = v23;
      if (v23 < v11)
      {
        v11 = v22;
      }

      --v20;
    }

    while (v20);
  }

LABEL_13:
  v24 = v10 == 0;

  *a4 = v11;
  *(a4 + 8) = v24;
  return result;
}

uint64_t sub_1E484205C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v62 = a4;
  v61 = a3;
  v69 = a1;
  v5 = sub_1E487751C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v56 - v14;
  v16 = sub_1E487732C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v66 = v56 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v56 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v71 = v56 - v26;
  v65 = *(type metadata accessor for Event() + 24);
  sub_1E487745C();
  v27 = *MEMORY[0x1E6969A48];
  v28 = v6 + 13;
  v70 = v6[13];
  v70(v9, v27, v5);
  v74 = a2;
  sub_1E48774BC();
  v29 = v6[1];
  v67 = (v6 + 1);
  v64 = v29;
  v29(v9, v5);
  v57 = v17[6];
  v58 = v17 + 6;
  result = v57(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v72 = v17[1];
  v73 = v17 + 1;
  v72(v25, v16);
  v31 = v17 + 4;
  v68 = v17[4];
  v68(v71, v15, v16);
  v32 = v17[2];
  v56[2] = v17 + 2;
  v33 = v66;
  v34 = &v65[v69];
  v65 = v32;
  (v32)(v66, v34, v16);
  v35 = v5;
  v36 = v5;
  v37 = v70;
  v70(v9, *MEMORY[0x1E6969A88], v36);
  v38 = sub_1E487752C();
  v69 = v35;
  v39 = v64;
  v64(v9, v35);
  v40 = v37;
  v41 = v39;
  if (v38)
  {
    v56[1] = v31;
    v42 = v69;
    v40(v9, *MEMORY[0x1E6969A58], v69);
    v43 = v59;
    sub_1E48774BC();
    v41(v9, v42);
    result = v57(v43, 1, v16);
    if (result != 1)
    {
      v72(v33, v16);
      v68(v33, v43, v16);
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    return result;
  }

LABEL_5:
  v67 = v9;
  v60 = v28;
  sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  v44 = v71;
  if (sub_1E4878ACC())
  {
    v72(v33, v16);
    v45 = v63;
    (v65)(v63, v44, v16);
    v46 = v69;
    v68(v33, v45, v16);
  }

  else
  {
    v47 = v63;
    v48 = v68;
    v68(v63, v33, v16);
    v46 = v69;
    v48(v33, v47, v16);
  }

  v49 = v67;
  v70(v67, *MEMORY[0x1E6969A58], v46);
  v50 = sub_1E487752C();
  v41(v49, v46);
  if (v50)
  {
    v51 = v72;
    v72(v44, v16);
  }

  else
  {
    v52 = sub_1E48772EC();
    v51 = v72;
    v72(v44, v16);
    if (v52)
    {
      v50 = 24;
    }

    else
    {
      v50 = 0;
    }
  }

  result = v51(v33, v16);
  v53 = v62;
  v54 = v50 <= v61;
  if (v50 > v61)
  {
    v55 = v50;
  }

  else
  {
    v55 = 0;
  }

  *v62 = v55;
  *(v53 + 8) = v54;
  return result;
}

uint64_t type metadata accessor for TimeScalingEngine.SpatialViewParameters()
{
  result = qword_1EE2B3478;
  if (!qword_1EE2B3478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48426E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D920, &qword_1E4882C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4842750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1E48427B0(uint64_t a1, uint64_t a2)
{
  if (sub_1E48772EC() & 1) != 0 && (v4 = type metadata accessor for DayEvents(), (sub_1E47F35E8(*(a1 + v4[5]), *(a2 + v4[5]))) && (sub_1E47F35E8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && (v5 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(), *(a1 + v5[5]) == *(a2 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && (v6 = v5, (sub_1E47F35E8(*(a1 + v5[7]), *(a2 + v5[7]))))
  {
    return *(a1 + v6[8]) == *(a2 + v6[8]);
  }

  else
  {
    return 0;
  }
}

void *sub_1E4842890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v45 = a2;
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Event();
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v40 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v39 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = a1 + v39;
    v20 = *(v15 + 72);
    v21 = (v5 + 8);
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v20;
    v44 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E479B13C(v19, v17, type metadata accessor for Event);
      v23 = v9[5];
      v24 = -*&v17[v9[7]];
      sub_1E48772AC();
      v25 = sub_1E48772EC();
      v26 = *v21;
      (*v21)(v8, v4);
      if (v25)
      {
        v27 = v9[6];
        if (sub_1E48772EC())
        {
          break;
        }
      }

      sub_1E48772AC();
      v28 = sub_1E48772DC();
      v26(v8, v4);
      if (v28)
      {
        v29 = v9[6];
        if (sub_1E48772CC())
        {
          break;
        }
      }

      sub_1E48772AC();
      sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
      v35 = sub_1E4878ADC();
      v26(v8, v4);
      if (v35)
      {
        sub_1E479B13C(v17, v38, type metadata accessor for Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1E4860A08(0, v41[2] + 1, 1, v41);
        }

        v31 = v41[2];
        v36 = v41[3];
        if (v31 >= v36 >> 1)
        {
          v41 = sub_1E4860A08(v36 > 1, v31 + 1, 1, v41);
        }

        sub_1E4842750(v17, type metadata accessor for Event);
        v32 = v41;
        v41[2] = v31 + 1;
        v33 = v38;
        v34 = v39;
        goto LABEL_20;
      }

      sub_1E4842750(v17, type metadata accessor for Event);
      v22 = v42;
LABEL_4:
      v19 += v22;
      if (!--v18)
      {
        return v44;
      }
    }

    sub_1E479B13C(v17, v40, type metadata accessor for Event);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1E4860A08(0, v44[2] + 1, 1, v44);
    }

    v31 = v44[2];
    v30 = v44[3];
    if (v31 >= v30 >> 1)
    {
      v44 = sub_1E4860A08(v30 > 1, v31 + 1, 1, v44);
    }

    sub_1E4842750(v17, type metadata accessor for Event);
    v32 = v44;
    v44[2] = v31 + 1;
    v34 = v39;
    v33 = v40;
LABEL_20:
    v22 = v42;
    sub_1E4844C2C(v33, v32 + v34 + v31 * v42, type metadata accessor for Event);
    goto LABEL_4;
  }

  v41 = MEMORY[0x1E69E7CC0];
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E4842D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v232 = sub_1E48770FC();
  v237 = *(v232 - 8);
  v6 = *(v237 + 64);
  v7 = MEMORY[0x1EEE9AC00](v232);
  v213 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v215 = &v205 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v206 = &v205 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v208 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v205 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v212 = &v205 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v214 = &v205 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v205 = &v205 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v207 = &v205 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v210 = &v205 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v216 = &v205 - v30;
  MEMORY[0x1EEE9AC00](v29);
  *&v227 = &v205 - v31;
  v249 = type metadata accessor for Event();
  v252 = *(v249 - 8);
  v32 = *(v252 + 8);
  MEMORY[0x1EEE9AC00](v249);
  v248 = &v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1E487732C();
  v250 = *(v245 - 8);
  v34 = *(v250 + 64);
  v35 = MEMORY[0x1EEE9AC00](v245);
  v211 = &v205 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v222 = &v205 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v217 = &v205 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v228 = &v205 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  *&v229 = &v205 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v223 = &v205 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v225 = &v205 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v236 = &v205 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v205 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v235 = &v205 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v205 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v205 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v251 = &v205 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v240 = &v205 - v64;
  v65 = sub_1E487751C();
  v66 = *(v65 - 8);
  v67 = v66[8];
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v205 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v66[13];
  v224 = *MEMORY[0x1E6969A58];
  v244 = v66 + 13;
  v230 = v70;
  v70(v69);
  v242 = a3;
  v243 = a1;
  v234 = sub_1E487752C();
  v221 = v66;
  v238 = v66[1];
  v239 = v66 + 1;
  v226 = v69;
  v241 = v65;
  v238(v69, v65);
  v219 = type metadata accessor for DayEvents();
  v71 = *(v219 + 20);
  v220 = a2;
  v72 = *(a2 + v71);
  v73 = *(v72 + 16);
  v218 = v72;
  v209 = v16;
  v231 = v53;
  if (v73)
  {
    v253 = MEMORY[0x1E69E7CC0];
    sub_1E48580E0(0, v73, 0);
    v74 = v253;
    v75 = v72 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
    v76 = *(v252 + 9);
    v77 = (v250 + 16);
    v246 = v250 + 32;
    v247 = v76;
    v78 = v245;
    do
    {
      v79 = v248;
      sub_1E479B13C(v75, v248, type metadata accessor for Event);
      v80 = v79 + *(v249 + 24);
      v81 = v77;
      v252 = *v77;
      v252(v58, v80, v78);
      sub_1E4842750(v79, type metadata accessor for Event);
      v253 = v74;
      v83 = *(v74 + 16);
      v82 = *(v74 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1E48580E0(v82 > 1, v83 + 1, 1);
        v74 = v253;
      }

      *(v74 + 16) = v83 + 1;
      (*(v250 + 32))(v74 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v83, v58, v78);
      v75 += v247;
      --v73;
      v77 = v81;
    }

    while (v73);
    v84 = v81 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v85 = v252;
  }

  else
  {
    v85 = *(v250 + 16);
    v84 = (v250 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74 = MEMORY[0x1E69E7CC0];
    v78 = v245;
  }

  v86 = v251;
  v252 = v85;
  v85(v251, v243, v78);
  v87 = *(v74 + 16);
  v249 = v84;
  if (v87)
  {
    v88 = v74 + ((*(v250 + 80) + 32) & ~*(v250 + 80));
    v89 = *(v250 + 72);
    v90 = (v250 + 8);
    v91 = (v250 + 32);
    v247 = (v250 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v248 = v89;
    v92 = v245;
    v93 = v236;
    do
    {
      v252(v61, v88, v92);
      sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
      v94 = sub_1E4878ADC();
      v95 = (v94 & 1) == 0;
      if (v94)
      {
        v96 = v86;
      }

      else
      {
        v96 = v61;
      }

      if (v95)
      {
        v97 = v251;
      }

      else
      {
        v97 = v61;
      }

      (*v90)(v96, v92);
      v98 = *v91;
      v99 = v97;
      v86 = v251;
      (*v91)(v93, v99, v92);
      v98(v86, v93, v92);
      v88 += v248;
      --v87;
    }

    while (v87);

    v84 = v249;
    v100 = v247;
  }

  else
  {

    v98 = *(v250 + 32);
    v100 = (v250 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  v101 = v245;
  v98(v240, v86, v245);
  sub_1E487745C();
  v102 = v226;
  v233 = *MEMORY[0x1E6969A48];
  v103 = v241;
  v230(v226);
  v104 = v227;
  sub_1E48774BC();
  v238(v102, v103);
  v105 = *(v250 + 48);
  v246 = v250 + 48;
  v236 = v105;
  result = (v105)(v104, 1, v101);
  v107 = v252;
  v108 = v235;
  if (result == 1)
  {
    goto LABEL_108;
  }

  v109 = *(v250 + 8);
  v250 += 8;
  v248 = v109;
  v109(v231, v101);
  v247 = v100;
  v98(v108, v104, v101);
  v110 = v225;
  v107(v225, v240, v101);
  v111 = v230;
  (v230)(v102, *MEMORY[0x1E6969A88], v103);
  v112 = sub_1E487752C();
  v238(v102, v103);
  v251 = v98;
  v113 = v110;
  v114 = v224;
  if (v112)
  {
    v115 = v241;
    (v111)(v102, v224, v241);
    v116 = v216;
    sub_1E48774BC();
    v238(v102, v115);
    result = (v236)(v116, 1, v101);
    if (result == 1)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    (v248)(v113, v101);
    (v251)(v113, v116, v101);
  }

  sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  v117 = v235;
  if (sub_1E4878ACC())
  {
    (v248)(v113, v101);
    v118 = v223;
    v252(v223, v117, v101);
    (v251)(v113, v118, v101);
  }

  else
  {
    v119 = v223;
    v120 = v251;
    (v251)(v223, v113, v101);
    v120(v113, v119, v101);
  }

  v121 = v114;
  v122 = v241;
  (v111)(v102, v121, v241);
  v123 = sub_1E487752C();
  v238(v102, v122);
  if (v123)
  {
    v124 = v248;
    (v248)(v235, v101);
    v125 = v240;
    v124(v240, v101);
  }

  else
  {
    v126 = v235;
    v127 = sub_1E48772EC();
    v128 = v248;
    (v248)(v126, v101);
    v125 = v240;
    v128(v240, v101);
    if (v127)
    {
      v123 = 24;
    }

    else
    {
      v123 = 0;
    }
  }

  result = (v251)(v125, v113, v101);
  v129 = v234;
  v130 = v123 - v234;
  v131 = __OFSUB__(v123, v234);
  if (__OFSUB__(v123, v234))
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v130 < 4)
  {
    if (__OFADD__(v234, 4))
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v234 + 4 >= 24)
    {
      v123 = 24;
    }

    else
    {
      v123 = v234 + 4;
    }

    v130 = v123 - v234;
    v131 = __OFSUB__(v123, v234);
  }

  if (v131)
  {
    goto LABEL_96;
  }

  if (v130 <= 3)
  {
    v129 = v123 - 4;
    if (__OFSUB__(v123, 4))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v130 = 4;
    v131 = __OFSUB__(v123, v129);
  }

  if (v131)
  {
    goto LABEL_97;
  }

  if (v130 < 8)
  {
    v239 = v123;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
    v84 = v221[9];
    v123 = (*(v221 + 80) + 32) & ~*(v221 + 80);
    v238 = v132;
    v235 = (v123 + 4 * v84);
    v133 = swift_allocObject();
    v229 = xmmword_1E487BC70;
    *(v133 + 16) = xmmword_1E487BC70;
    LODWORD(v231) = *MEMORY[0x1E6969A50];
    v111((v133 + v123));
    LODWORD(v228) = *MEMORY[0x1E6969A68];
    v111((v133 + v123 + v84));
    LODWORD(v226) = *MEMORY[0x1E6969A78];
    v111((v133 + v123 + 2 * v84));
    *&v227 = 2 * v84;
    v225 = 3 * v84;
    (v111)(v133 + v123 + 3 * v84, v233, v122);
    sub_1E486B81C(v133);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v113 = v215;
    sub_1E487747C();

    v234 = v129;
    if (v129 == 24)
    {
      sub_1E48770BC();
      result = sub_1E487708C();
      v134 = v251;
      if (v135)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v136 = __OFADD__(result++, 1);
      v137 = v245;
      v138 = v214;
      if (v136)
      {
        goto LABEL_102;
      }

      sub_1E487709C();
LABEL_64:
      sub_1E48774AC();
      result = (v236)(v138, 1, v137);
      if (result == 1)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v139 = *(v237 + 8);
      v237 += 8;
      v139(v113, v232);
      v134(v222, v138, v137);
      v140 = swift_allocObject();
      *(v140 + 16) = v229;
      v141 = v241;
      (v111)(v140 + v123, v231, v241);
      (v111)(v140 + v123 + v84, v228, v141);
      (v111)(v140 + v123 + v227, v226, v141);
      (v111)(v140 + v123 + v225, v233, v141);
      sub_1E486B81C(v140);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v142 = v213;
      sub_1E487747C();

      if (v239 == 24)
      {
        sub_1E48770BC();
        result = sub_1E487708C();
        v143 = v252;
        v144 = v212;
        if (v145)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v136 = __OFADD__(result++, 1);
        v146 = v245;
        if (v136)
        {
          goto LABEL_103;
        }

        sub_1E487709C();
      }

      else
      {
        sub_1E48770BC();
        v146 = v245;
        v143 = v252;
        v144 = v212;
      }

      sub_1E48774AC();
      result = (v236)(v144, 1, v146);
      if (result != 1)
      {
        v139(v142, v232);
        v147 = v211;
        v134(v211, v144, v146);
        v148 = v222;
        v149 = sub_1E4842890(v218, v222, v147);
        v151 = v150;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D930, &unk_1E4882C40);
        v152 = (type metadata accessor for TimeScalingEngine.SpatialViewParameters() - 8);
        v153 = *(*v152 + 72);
        v154 = (*(*v152 + 80) + 32) & ~*(*v152 + 80);
        v155 = swift_allocObject();
        *(v155 + 16) = xmmword_1E487A7E0;
        v156 = v155 + v154;
        v157 = v220;
        v143(v156, v220, v245);
        v158 = v219;
        v159 = *(v157 + *(v219 + 24));
        *(v156 + *(v219 + 20)) = v149;
        v160 = v245;
        *(v156 + *(v158 + 24)) = v159;
        *(v156 + *(v158 + 28)) = 0;
        *(v156 + v152[7]) = v234;
        *(v156 + v152[8]) = v239;
        *(v156 + v152[9]) = v151;
        *(v156 + v152[10]) = 0;

        v161 = v147;
        v162 = v248;
LABEL_94:
        v162(v161, v160);
        v162(v148, v160);
        v162(v240, v160);
        return v155;
      }

      goto LABEL_111;
    }

LABEL_63:
    v134 = v251;
    sub_1E48770BC();
    v137 = v245;
    v138 = v214;
    goto LABEL_64;
  }

  if (v130 >= 0xE)
  {
    if (v130 == 14)
    {
      goto LABEL_73;
    }

    v123 = v129 + 14;
    if (!__OFADD__(v129, 14))
    {
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (v130)
  {
    if (v123 > 23)
    {
      v136 = __OFSUB__(v129--, 1);
      if (v136)
      {
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }
    }

    else
    {
      ++v123;
    }
  }

LABEL_73:
  if (__OFSUB__(v123, v129))
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (__OFADD__(v129, (v123 - v129) / 2))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v239 = v123;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v164 = v221[9];
  v165 = (*(v221 + 80) + 32) & ~*(v221 + 80);
  v238 = v163;
  v235 = (v165 + 4 * v164);
  v166 = swift_allocObject();
  v227 = xmmword_1E487BC70;
  *(v166 + 16) = xmmword_1E487BC70;
  v234 = v165;
  v167 = v166 + v165;
  LODWORD(v231) = *MEMORY[0x1E6969A50];
  v111(v167);
  LODWORD(v226) = *MEMORY[0x1E6969A68];
  v111((v167 + v164));
  v224 = *MEMORY[0x1E6969A78];
  v111((v167 + 2 * v164));
  v225 = 2 * v164;
  v223 = 3 * v164;
  (v111)(v167 + 3 * v164, v233, v122);
  sub_1E486B81C(v166);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v168 = v209;
  sub_1E487747C();

  v222 = v129 + (v123 - v129) / 2;
  if (v129 == 24)
  {
    sub_1E48770BC();
    result = sub_1E487708C();
    v169 = v210;
    if (v170)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v136 = __OFADD__(result++, 1);
    v171 = v245;
    v172 = v234;
    if (!v136)
    {
      sub_1E487709C();
      goto LABEL_80;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_1E48770BC();
  v171 = v245;
  v169 = v210;
  v172 = v234;
LABEL_80:
  v234 = v129;
  sub_1E48774AC();
  result = (v236)(v169, 1, v171);
  if (result == 1)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v173 = *(v237 + 8);
  v237 += 8;
  v173(v168, v232);
  (v251)(v229, v169, v171);
  v174 = swift_allocObject();
  *(v174 + 16) = v227;
  v175 = v241;
  (v111)(v174 + v172, v231, v241);
  (v111)(v174 + v172 + v164, v226, v175);
  (v111)(v174 + v172 + v225, v224, v175);
  (v111)(v174 + v172 + v223, v233, v175);
  sub_1E486B81C(v174);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v176 = v208;
  sub_1E487747C();

  if (v222 == 24)
  {
    sub_1E48770BC();
    result = sub_1E487708C();
    v177 = v207;
    if (v178)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v136 = __OFADD__(result++, 1);
    v179 = v245;
    if (!v136)
    {
      sub_1E487709C();
      goto LABEL_86;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_1E48770BC();
  v179 = v245;
  v177 = v207;
LABEL_86:
  sub_1E48774AC();
  result = (v236)(v177, 1, v179);
  if (result == 1)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v173(v176, v232);
  (v251)(v228, v177, v179);
  v180 = swift_allocObject();
  *(v180 + 16) = v227;
  v181 = v180 + v172;
  v182 = v180 + v172;
  v183 = v241;
  (v111)(v182, v231, v241);
  (v111)(v181 + v164, v226, v183);
  (v111)(v181 + v225, v224, v183);
  (v111)(v181 + v223, v233, v183);
  sub_1E486B81C(v180);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v184 = v206;
  sub_1E487747C();

  if (v239 != 24)
  {
    sub_1E48770BC();
    v186 = v245;
    v187 = v251;
LABEL_92:
    v188 = v205;
    sub_1E48774AC();
    result = (v236)(v188, 1, v186);
    if (result != 1)
    {
      v173(v184, v232);
      v189 = v217;
      v187(v217, v188, v186);
      v190 = v218;
      v191 = v228;
      v192 = sub_1E4842890(v218, v229, v228);

      v247 = sub_1E4842890(v190, v191, v189);
      v251 = v193;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D930, &unk_1E4882C40);
      v194 = (type metadata accessor for TimeScalingEngine.SpatialViewParameters() - 8);
      v195 = *v194;
      v246 = *(*v194 + 72);
      v196 = (*(v195 + 80) + 32) & ~*(v195 + 80);
      v155 = swift_allocObject();
      *(v155 + 16) = xmmword_1E487A7F0;
      v197 = v155 + v196;
      v198 = v220;
      v199 = v252;
      v252(v197, v220, v245);
      v200 = v219;
      v201 = *(v198 + *(v219 + 24));
      *(v197 + *(v219 + 20)) = v192;
      *(v197 + v200[6]) = v201;
      *(v197 + v200[7]) = 0;
      *(v197 + v194[7]) = v234;
      v202 = v222;
      *(v197 + v194[8]) = v222;
      v203 = MEMORY[0x1E69E7CC0];
      *(v197 + v194[9]) = MEMORY[0x1E69E7CC0];
      *(v197 + v194[10]) = 0;
      v204 = v197 + v246;
      v199(v204, v198, v245);
      *(v204 + v200[5]) = v247;
      *(v204 + v200[6]) = v203;
      *(v204 + v200[7]) = 0;
      *(v204 + v194[7]) = v202;
      *(v204 + v194[8]) = v239;
      *(v204 + v194[9]) = v251;
      *(v204 + v194[10]) = 2;
      v160 = v245;

      v162 = v248;
      (v248)(v217, v160);
      v161 = v228;
      v148 = v229;
      goto LABEL_94;
    }

    goto LABEL_114;
  }

  sub_1E48770BC();
  result = sub_1E487708C();
  if ((v185 & 1) == 0)
  {
    v136 = __OFADD__(result++, 1);
    v186 = v245;
    v187 = v251;
    if (!v136)
    {
      sub_1E487709C();
      goto LABEL_92;
    }

    goto LABEL_106;
  }

LABEL_119:
  __break(1u);
  return result;
}

char *sub_1E4844968(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v32 = a3;
  v9 = type metadata accessor for DayEvents();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v28 = v14 - 1;
  result = MEMORY[0x1E69E7CC0];
  v16 = a4;
  do
  {
    v29 = result;
    v17 = v16;
    while (1)
    {
      if (v16 < a4 || v17 >= v14)
      {
        __break(1u);
        return result;
      }

      sub_1E479B13C(v32 + *(v10 + 72) * v17, v13, type metadata accessor for DayEvents);
      a1(&v30, v13);
      if (v5)
      {
        sub_1E4842750(v13, type metadata accessor for DayEvents);
        v25 = v29;

        return v25;
      }

      result = sub_1E4842750(v13, type metadata accessor for DayEvents);
      if ((v31 & 1) == 0)
      {
        break;
      }

      if (v14 == ++v17)
      {
        return v29;
      }
    }

    v18 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1E4860A30(0, *(v29 + 2) + 1, 1, v29);
    }

    v20 = *(v29 + 2);
    v19 = *(v29 + 3);
    v21 = v20 + 1;
    v27 = v18;
    if (v20 >= v19 >> 1)
    {
      v26 = v20 + 1;
      v23 = v20;
      v24 = sub_1E4860A30((v19 > 1), v20 + 1, 1, v29);
      v20 = v23;
      v21 = v26;
      v29 = v24;
    }

    v16 = v17 + 1;
    v22 = v29;
    *(v29 + 2) = v21;
    *&v22[8 * v20 + 32] = v27;
    result = v22;
  }

  while (v28 != v17);
  return result;
}

uint64_t sub_1E4844C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E4844D0C()
{
  type metadata accessor for DayEvents();
  if (v0 <= 0x3F)
  {
    sub_1E47F2E50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4844DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4844E38()
{
  sub_1E478E700();
  sub_1E4877F2C();
  return v1;
}

uint64_t sub_1E4844EF0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E4845034(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E4878F0C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1E4878F0C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1E48478C8(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E4847B04(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E4845124()
{
  v0 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v0, qword_1EE2BAEC8);
  v1 = __swift_project_value_buffer(v0, qword_1EE2BAEC8);
  if (qword_1EE2B16E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2BAD00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1E48451EC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v193 = a3;
  v194 = a4;
  v180 = a5;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D940, &qword_1E4882DA8);
  v7 = *(*(v174 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v174);
  v170 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v175 = &v169 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v173 = &v169 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v169 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v183 = &v169 - v17;
  v184 = sub_1E48779FC();
  v187 = *(v184 - 8);
  v18 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v191 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v196 = &v169 - v22;
  v195 = type metadata accessor for Event();
  v185 = *(v195 - 8);
  v23 = *(v185 + 64);
  v24 = MEMORY[0x1EEE9AC00](v195);
  v177 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v192 = &v169 - v26;
  v200 = sub_1E487732C();
  v27 = *(v200 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x1EEE9AC00](v200);
  v169 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v197 = &v169 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v199 = &v169 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v198 = (&v169 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v201 = &v169 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v190 = &v169 - v39;
  v40 = sub_1E487757C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v169 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1E487753C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v169 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a1 + 16);
  sub_1E4877A7C();
  sub_1E487750C();
  (*(v46 + 8))(v49, v45);
  v51 = sub_1E487756C();
  (*(v41 + 8))(v44, v40);
  [v50 setTimeZone_];

  v189 = a2;
  v181 = v50;
  v52 = sub_1E4848A7C(a2, v50);
  v53 = v52;
  v54 = v52 >> 62;
  if (v52 >> 62)
  {
    goto LABEL_66;
  }

  v55 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v56 = v201;
  if (!v55)
  {

    if (qword_1EE2B3298 == -1)
    {
LABEL_10:
      v67 = sub_1E4877ADC();
      __swift_project_value_buffer(v67, qword_1EE2BAEC8);
      v68 = sub_1E4877ABC();
      v69 = sub_1E4878DEC();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1E475C000, v68, v69, "No calendars are selected.  Will not refresh from the EventKit store.", v70, 2u);
        MEMORY[0x1E6919FE0](v70, -1, -1);
      }

      v71 = MEMORY[0x1E69E7CC0];
      v72 = v180;
      goto LABEL_63;
    }

LABEL_69:
    swift_once();
    goto LABEL_10;
  }

  if (qword_1EE2B3298 != -1)
  {
    swift_once();
  }

  v57 = sub_1E4877ADC();
  v58 = __swift_project_value_buffer(v57, qword_1EE2BAEC8);
  v59 = v27[2];
  v60 = v190;
  v61 = v200;
  (v59)(v190, v193, v200);
  v204 = v27 + 2;
  v202 = v59;
  (v59)(v56, v194, v61);

  v179 = v58;
  v62 = sub_1E4877ABC();
  v63 = sub_1E4878DEC();
  v64 = os_log_type_enabled(v62, v63);
  v188 = v53;
  v178 = v27;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v203[0] = v171;
    *v65 = 134218498;
    v186 = v62;
    LODWORD(v172) = v63;
    if (v54)
    {
      v66 = sub_1E4878F0C();
    }

    else
    {
      v66 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = v190;
    *(v65 + 4) = v66;

    *(v65 + 12) = 2082;
    sub_1E484948C(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
    v75 = v200;
    v76 = sub_1E48790CC();
    v78 = v77;
    v79 = v178[1];
    v79(v74, v75);
    v80 = sub_1E47A0DEC(v76, v78, v203);

    *(v65 + 14) = v80;
    *(v65 + 22) = 2082;
    v81 = v201;
    v82 = sub_1E48790CC();
    v84 = v83;
    v201 = v79;
    v79(v81, v75);
    v85 = sub_1E47A0DEC(v82, v84, v203);

    *(v65 + 24) = v85;
    v86 = v186;
    _os_log_impl(&dword_1E475C000, v186, v172, "Fetching events in [%ld] calendars, from %{public}s to %{public}s", v65, 0x20u);
    v87 = v171;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v87, -1, -1);
    MEMORY[0x1E6919FE0](v65, -1, -1);
  }

  else
  {

    v73 = v27[1];
    v73(v56, v61);
    v201 = v73;
    v73(v60, v61);
  }

  v88 = sub_1E48772BC();
  v89 = sub_1E48772BC();
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v90 = sub_1E4878C9C();
  v91 = v181;
  v92 = [v181 predicateForEventsWithStartDate:v88 endDate:v89 calendars:v90];

  v93 = v182;
  if (v92)
  {
    v94 = [v91 eventsMatchingPredicate_];
    sub_1E48493B4(0, &qword_1EE2B46C0, 0x1E6966A08);
    v95 = sub_1E4878CAC();

    v96 = sub_1E4877ABC();
    v97 = sub_1E4878DEC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 134217984;
      if (v95 >> 62)
      {
        v99 = sub_1E4878F0C();
      }

      else
      {
        v99 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v98 + 4) = v99;

      _os_log_impl(&dword_1E475C000, v96, v97, "Fetched [%ld] events from the EventKit store", v98, 0xCu);
      MEMORY[0x1E6919FE0](v98, -1, -1);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v100);
    *(&v169 - 2) = v189;

    sub_1E4856338(sub_1E48493FC, (&v169 - 4), v95);
    v101 = v93;

    v203[0] = sub_1E4847A70(v172);
    sub_1E4846CD8(v203);
    v91 = v93;
    v27 = v184;
    if (!v101)
    {

      v102 = v203[0];
      v103 = v196;
      if (v203[0] < 0 || (v203[0] & 0x4000000000000000) != 0)
      {
        v53 = sub_1E4878F0C();
      }

      else
      {
        v53 = *(v203[0] + 16);
      }

      v171 = v92;
      v182 = 0;
      if (v53)
      {
        v104 = 0;
        v194 = v102 & 0xC000000000000001;
        v105 = (v187 + 48);
        v189 = (v187 + 16);
        v190 = (v187 + 32);
        v188 = (v187 + 8);
        v187 = v185 + 48;
        v186 = (v185 + 56);
        v193 = MEMORY[0x1E69E7CC0];
        v54 = v183;
        while (1)
        {
          if (v194)
          {
            v106 = MEMORY[0x1E6919650](v104, v102);
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v104 >= *(v102 + 16))
            {
              goto LABEL_65;
            }

            v106 = *(v102 + 8 * v104 + 32);
            v107 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              v55 = sub_1E4878F0C();
              goto LABEL_3;
            }
          }

          v108 = v106;
          sub_1E4877A0C();
          if ((*v105)(v54, 1, v27) == 1)
          {

            sub_1E47738B8(v54, &qword_1ECF7C210, &unk_1E4882DB0);
            (v186->isa)(v103, 1, 1, v195);
          }

          else
          {
            v109 = v191;
            (*v190)(v191, v54, v27);
            v203[3] = v27;
            v203[4] = sub_1E484948C(&qword_1EE2B4618, MEMORY[0x1E6993278]);
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v203);
            (*v189)(boxed_opaque_existential_0, v109, v27);
            sub_1E47CCD88(v203, v196);

            v111 = v109;
            v103 = v196;
            (*v188)(v111, v27);
            if ((*v187)(v103, 1, v195) != 1)
            {
              sub_1E4770850(v103, v192);
              v112 = v193;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v112 = sub_1E4860A08(0, v112[2] + 1, 1, v112);
              }

              v114 = v112[2];
              v113 = v112[3];
              if (v114 >= v113 >> 1)
              {
                v112 = sub_1E4860A08(v113 > 1, v114 + 1, 1, v112);
              }

              v112[2] = v114 + 1;
              v115 = (*(v185 + 80) + 32) & ~*(v185 + 80);
              v193 = v112;
              sub_1E4770850(v192, v112 + v115 + *(v185 + 72) * v114);
              v54 = v183;
              v27 = v184;
              goto LABEL_30;
            }
          }

          sub_1E47738B8(v103, &qword_1ECF7B950, &unk_1E487AE90);
LABEL_30:
          ++v104;
          if (v107 == v53)
          {
            goto LABEL_45;
          }
        }
      }

      v193 = MEMORY[0x1E69E7CC0];
LABEL_45:

      v116 = v193;
      swift_bridgeObjectRetain_n();
      v117 = v172;

      v118 = sub_1E4877ABC();
      v119 = sub_1E4878DEC();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 134218240;
        v121 = v197;
        if (v117 >> 62)
        {
          v122 = sub_1E4878F0C();
        }

        else
        {
          v122 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v120 + 4) = v122;

        *(v120 + 12) = 2048;
        v116 = v193;
        *(v120 + 14) = v193[2];

        _os_log_impl(&dword_1E475C000, v118, v119, "Filtered down to [%ld] events, converted to [%ld] Events", v120, 0x16u);
        MEMORY[0x1E6919FE0](v120, -1, -1);

        v72 = v180;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v72 = v180;
        v121 = v197;
      }

      v123 = v116[2];

      v71 = v116;
      v124 = v200;
      v125 = v177;
      if (!v123)
      {

LABEL_63:
        result = [v181 reset];
        *v72 = v71;
        return result;
      }

      v126 = v116[2];
      if (v126)
      {
        v127 = v185;
        v128 = v71 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
        v129 = v195;
        v130 = v202;
        (v202)(v198, v128 + *(v195 + 20), v200);
        v130(v199, v128 + *(v129 + 24), v124);
        v131 = *(v127 + 72);
        do
        {
          sub_1E47707EC(v128, v125);
          (v202)(v121, v125 + *(v129 + 20), v124);
          if (sub_1E48772DC())
          {
            v132 = v198;
            (v201)(v198, v124);
            (v202)(v132, v121, v124);
          }

          v133 = *(v129 + 24);
          v134 = sub_1E48772CC();
          v135 = v121;
          v136 = v125;
          v137 = v134;
          (v201)(v135, v124);
          if (v137)
          {
            v139 = v199;
            v138 = v200;
            (v201)(v199, v200);
            (v202)(v139, v136 + v133, v138);
          }

          sub_1E47710AC(v136);
          v128 += v131;
          --v126;
          v124 = v200;
          v125 = v136;
          v121 = v197;
        }

        while (v126);
        v140 = v174;
        v141 = *(v174 + 48);
        v142 = v178[4];
        v143 = v176;
        v142(v176, v198, v200);
        v142(v143 + v141, v199, v124);
        v144 = v173;
        sub_1E484941C(v143, v173);
        v145 = v175;
        sub_1E484941C(v143, v175);
        v146 = sub_1E4877ABC();
        LODWORD(v204) = sub_1E4878DEC();
        if (os_log_type_enabled(v146, v204))
        {
          v147 = swift_slowAlloc();
          v202 = v147;
          v199 = swift_slowAlloc();
          v203[0] = v199;
          *v147 = 136446466;
          v148 = v144;
          v149 = v170;
          sub_1E484941C(v148, v170);
          v198 = v146;
          v150 = *(v140 + 48);
          v151 = v169;
          v142(v169, v149, v124);
          v152 = v201;
          (v201)(v149 + v150, v124);
          v197 = sub_1E484948C(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
          v153 = sub_1E48790CC();
          v155 = v154;
          v152(v151, v124);
          sub_1E47738B8(v173, &qword_1ECF7D940, &qword_1E4882DA8);
          v156 = sub_1E47A0DEC(v153, v155, v203);

          v157 = v202;
          *(v202 + 1) = v156;
          *(v157 + 6) = 2082;
          v158 = v142;
          v159 = v175;
          sub_1E484941C(v175, v149);
          v158(v151, v149 + *(v174 + 48), v124);
          v152(v149, v124);
          v160 = sub_1E48790CC();
          v162 = v161;
          v152(v151, v124);
          sub_1E47738B8(v159, &qword_1ECF7D940, &qword_1E4882DA8);
          v163 = sub_1E47A0DEC(v160, v162, v203);

          v164 = v202;
          *(v202 + 14) = v163;
          v165 = v198;
          _os_log_impl(&dword_1E475C000, v198, v204, "Converted events first start time: %{public}s, last end time: %{public}s", v164, 0x16u);
          v166 = v199;
          swift_arrayDestroy();
          v167 = v166;
          v72 = v180;
          MEMORY[0x1E6919FE0](v167, -1, -1);
          MEMORY[0x1E6919FE0](v164, -1, -1);

          sub_1E47738B8(v176, &qword_1ECF7D940, &qword_1E4882DA8);
        }

        else
        {

          sub_1E47738B8(v145, &qword_1ECF7D940, &qword_1E4882DA8);
          sub_1E47738B8(v144, &qword_1ECF7D940, &qword_1E4882DA8);
          sub_1E47738B8(v143, &qword_1ECF7D940, &qword_1E4882DA8);
          v72 = v180;
        }

        v71 = v193;
        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_69;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E484679C(void **a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = sub_1E48779FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  if (!v15)
  {
    v18 = v12;
LABEL_6:
    v33 = 0;
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v15 BOOLValue];

  if (!v17)
  {
    v18 = v12;
    goto LABEL_6;
  }

  v18 = v12;
  v33 = [v12 isAllDay];
LABEL_7:
  v20 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v20);
  v21 = (*(v19 + 32))(v20, v19);
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v21 &selRef_setTimeStyle_];

  if (!v23)
  {
    goto LABEL_12;
  }

  if ([v18 isIntegrationEvent])
  {
    v23 = [v18 completed];
  }

  else
  {
LABEL_11:
    v23 = 0;
  }

LABEL_12:
  v24 = v18;
  sub_1E4877A0C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E47738B8(v7, &qword_1ECF7C210, &unk_1E4882DB0);
    v25 = 0;
  }

  else
  {
    v26 = v32;
    (*(v9 + 32))(v32, v7, v8);
    v27 = sub_1E4847F30(v26);
    (*(v9 + 8))(v26, v8);
    v25 = v27;
  }

  result = [objc_opt_self() sharedPreferences];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = [result showDeclinedAndCancelledEventsInWidgets];

  if (v30)
  {
    v31 = 0;
    result = 0;
    if ((v33 | v23))
    {
      return result;
    }

    return !v31;
  }

  if (v25 != 3)
  {
    v31 = v25 == 4;
    if (((v33 | v23) & 1) == 0)
    {
      return !v31;
    }

    return 0;
  }

  if ((v33 | v23))
  {
    return 0;
  }

  v31 = 1;
  return !v31;
}

uint64_t sub_1E4846AF4()
{

  return swift_deallocClassInstance();
}

size_t sub_1E4846B50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v4 = *(sub_1E487732C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E4846C50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D958, &qword_1E4882DC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1E4846CD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E48478B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E4846D54(v6);
  return sub_1E4878FEC();
}

char *sub_1E4846D54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E48790BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E48493B4(0, &qword_1EE2B46C0, 0x1E6966A08);
        v6 = sub_1E4878CDC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1E4846F24(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E4846E68(0, v2, 1, a1);
  }

  return result;
}

char *sub_1E4846E68(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compareStartDateWithEvent_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E4846F24(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 compareStartDateWithEvent_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 compareStartDateWithEvent_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
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

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = (v8 + v81);
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 compareStartDateWithEvent_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E484779C(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_1E484779C((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
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
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_1E48474C8((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1E4847788(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_1E48476FC(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1E4847788(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_1E48474C8((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1E4847788(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_1E48476FC(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1E48474C8(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 compareStartDateWithEvent_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 compareStartDateWithEvent_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1E48476FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E4847788(v3);
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

char *sub_1E484779C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D960, &qword_1E4882DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E48478C8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1E4878F0C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1E4878FBC();
  *v1 = result;
  return result;
}

void (*sub_1E4847968(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6919650](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E48479E8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E48479F0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6919650](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E4849528;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4847A70(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1E4878F0C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1E4846C50(v3, 0);
  sub_1E4847CA4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E4847B04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E4878F0C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E4878F0C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E48494D4(&qword_1EE2B46D8, &qword_1ECF7D968, &qword_1E4882DD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D968, &qword_1E4882DD8);
            v9 = sub_1E4847968(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4847CA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E4878F0C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E4878F0C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E48494D4(&qword_1ECF7D950, &qword_1ECF7D948, &qword_1E4882DC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D948, &qword_1E4882DC0);
            v9 = sub_1E48479F0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E48493B4(0, &qword_1EE2B46C0, 0x1E6966A08);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4847E44(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v18[3] = a5;
  v18[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  v13 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a3, a5);
  v14 = MEMORY[0x1E6919990](v13);
  sub_1E48451EC(a4, v18, a1, a2, &v17);
  objc_autoreleasePoolPop(v14);
  v15 = v17;
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t sub_1E4847F30(uint64_t a1)
{
  v2 = sub_1E48779FC();
  v77 = v2;
  v78 = sub_1E484948C(&qword_1EE2B4618, MEMORY[0x1E6993278]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, a1, v2);
  if (sub_1E487767C() == 3)
  {
    v4 = 4;
    goto LABEL_37;
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    if ((v5 = sub_1E487771C(), (v6 & 1) == 0) && !v5 || (v7 = sub_1E487771C(), (v8 & 1) == 0) && v7 == 1)
    {
      v4 = 1;
      goto LABEL_37;
    }
  }

  __swift_project_boxed_opaque_existential_0(v76, v77);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = sub_1E4878E5C();
  v69 = &v67;
  v10 = *(v68 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v13 = &v67 - v12;
  sub_1E487769C();
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v13, v68);
  }

  else
  {
    v74 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v73);
    (*(v14 + 32))();
    v15 = sub_1E48775AC();
    __swift_destroy_boxed_opaque_existential_1(v73);
    if (v15)
    {
LABEL_17:
      v4 = 2;
      goto LABEL_37;
    }
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    v16 = sub_1E487771C();
    if ((v17 & 1) == 0 && v16 == 4)
    {
      goto LABEL_17;
    }
  }

  if (sub_1E487770C())
  {
    v18 = sub_1E487771C();
    if ((v19 & 1) == 0 && v18 == 3)
    {
      v4 = 3;
      goto LABEL_37;
    }
  }

  if (sub_1E48776CC())
  {
LABEL_23:
    v4 = 5;
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_0(v76, v77);
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_1E4878E5C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v67 - v24;
  sub_1E487761C();
  v26 = *(v20 - 8);
  if ((*(v26 + 48))(v25, 1, v20) == 1)
  {
    (*(v22 + 8))(v25, v21);
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v27 = swift_getAssociatedTypeWitness();
    v28 = sub_1E4878E5C();
    v29 = *(v28 - 8);
    v30 = *(v29 + 64);
    MEMORY[0x1EEE9AC00](v28);
    v32 = &v67 - v31;
    sub_1E487769C();
    v33 = *(v27 - 8);
    if ((*(v33 + 48))(v32, 1, v27) == 1)
    {
      (*(v29 + 8))(v32, v28);
    }

    else
    {
      v71 = v27;
      v72 = swift_getAssociatedConformanceWitness();
      v35 = __swift_allocate_boxed_opaque_existential_0(&v70);
      (*(v33 + 32))(v35, v32, v27);
      __swift_project_boxed_opaque_existential_0(&v70, v71);
      v36 = swift_getAssociatedTypeWitness();
      v37 = sub_1E4878E5C();
      v38 = *(v37 - 8);
      v39 = *(v38 + 64);
      MEMORY[0x1EEE9AC00](v37);
      v41 = &v67 - v40;
      sub_1E48775DC();
      v42 = *(v36 - 8);
      if ((*(v42 + 48))(v41, 1, v36) != 1)
      {
        v74 = v36;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(v73);
        (*(v42 + 32))();
        v46 = sub_1E48779EC();
        v48 = v47;
        __swift_destroy_boxed_opaque_existential_1(v73);
        __swift_destroy_boxed_opaque_existential_1(&v70);
        v49 = *MEMORY[0x1E6966948];
        v50 = sub_1E4878BDC();
        if (!v48)
        {
          goto LABEL_35;
        }

        if (v46 == v50 && v48 == v51)
        {
        }

        else
        {
          v52 = sub_1E48790EC();

          if ((v52 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        __swift_project_boxed_opaque_existential_0(v76, v77);
        v53 = swift_getAssociatedTypeWitness();
        v54 = sub_1E4878E5C();
        v55 = *(v54 - 8);
        v56 = *(v55 + 64);
        MEMORY[0x1EEE9AC00](v54);
        v58 = &v67 - v57;
        sub_1E487769C();
        v59 = *(v53 - 8);
        if ((*(v59 + 48))(v58, 1, v53) != 1)
        {
          v74 = v53;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(v73);
          (*(v59 + 32))();
          v60 = sub_1E48775BC();
          v62 = v61;
          __swift_destroy_boxed_opaque_existential_1(v73);
          v63 = *MEMORY[0x1E6966810];
          v64 = sub_1E4878BDC();
          if (v62)
          {
            if (v60 == v64 && v62 == v65)
            {

              v4 = 5;
              goto LABEL_37;
            }

            v66 = sub_1E48790EC();

            if (v66)
            {
              goto LABEL_23;
            }

LABEL_36:
            v4 = 0;
            goto LABEL_37;
          }

LABEL_35:

          goto LABEL_36;
        }

        (*(v55 + 8))(v58, v54);
        v43 = MEMORY[0x1E6966810];
LABEL_34:
        v44 = *v43;
        sub_1E4878BDC();
        goto LABEL_35;
      }

      (*(v38 + 8))(v41, v37);
      __swift_destroy_boxed_opaque_existential_1(&v70);
    }

    v43 = MEMORY[0x1E6966948];
    goto LABEL_34;
  }

  v71 = v20;
  v72 = swift_getAssociatedConformanceWitness();
  v34 = __swift_allocate_boxed_opaque_existential_0(&v70);
  (*(v26 + 32))(v34, v25, v20);
  sub_1E47B488C(&v70, v73);
  __swift_project_boxed_opaque_existential_0(v73, v74);
  if (sub_1E4877A2C())
  {
    v4 = 6;
  }

  else
  {
    v4 = 7;
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
LABEL_37:
  __swift_destroy_boxed_opaque_existential_1(v76);
  return v4;
}

uint64_t sub_1E4848A7C(void *a1, void *a2)
{
  v98 = MEMORY[0x1E69E7CC0];
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (!v5)
  {
LABEL_11:
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v15);
    v17 = (*(v16 + 16))(v15, v16);
    if (!v17)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v18 = v17;
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
LABEL_51:
      v20 = sub_1E4878F0C();
      if (v20)
      {
LABEL_14:
        v21 = 0;
        v91 = v18 & 0xC000000000000001;
        v9 = MEMORY[0x1E69E7CC0];
        v87 = v20;
        v84 = v18;
        do
        {
          v83 = v9;
          v22 = v21;
          while (1)
          {
            if (v91)
            {
              v23 = MEMORY[0x1E6919650](v22, v18);
              v21 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                goto LABEL_49;
              }
            }

            else
            {
              if (v22 >= *(v19 + 16))
              {
                goto LABEL_50;
              }

              v23 = *(v18 + 8 * v22 + 32);
              v21 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
LABEL_49:
                __break(1u);
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }
            }

            v24 = v23;
            v25 = [v23 identifier];
            if (!v25)
            {
              goto LABEL_79;
            }

            v26 = v25;
            v27 = sub_1E4878BDC();
            v29 = v28;
            v30 = [a2 calendarWithIdentifier_];

            if (v30)
            {
              break;
            }

            if (qword_1EE2B3298 != -1)
            {
              swift_once();
            }

            v31 = sub_1E4877ADC();
            __swift_project_value_buffer(v31, qword_1EE2BAEC8);

            v32 = sub_1E4877ABC();
            v33 = sub_1E4878DCC();

            if (os_log_type_enabled(v32, v33))
            {
              v34 = v19;
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v97 = v36;
              *v35 = 136315138;
              v37 = sub_1E47A0DEC(v27, v29, &v97);

              *(v35 + 4) = v37;
              _os_log_impl(&dword_1E475C000, v32, v33, "EKUICalendar with identifier %s was not found. This indicates the calendar identifier was changed or removed in the database but not on the intent.", v35, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x1E6919FE0](v36, -1, -1);
              v38 = v35;
              v19 = v34;
              v18 = v84;
              v20 = v87;
              MEMORY[0x1E6919FE0](v38, -1, -1);
            }

            else
            {
            }

            ++v22;
            if (v21 == v20)
            {
              v9 = v83;
              goto LABEL_53;
            }
          }

          v39 = v19;

          v40 = v30;
          MEMORY[0x1E6919330]();
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1E4878CCC();
          }

          sub_1E4878CEC();

          v9 = v98;
          v19 = v39;
        }

        while (v21 != v20);
        goto LABEL_53;
      }
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_14;
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_53:

    if (qword_1EE2B3298 != -1)
    {
      swift_once();
    }

    v58 = sub_1E4877ADC();
    __swift_project_value_buffer(v58, qword_1EE2BAEC8);

    v59 = sub_1E4877ABC();
    v60 = sub_1E4878DEC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v97 = v62;
      *v61 = 134218242;
      if (v9 >> 62)
      {
        v63 = sub_1E4878F0C();
      }

      else
      {
        v63 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v61 + 4) = v63;

      *(v61 + 12) = 2082;
      if (v9 >> 62)
      {
        v64 = sub_1E4878F0C();
      }

      else
      {
        v64 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = MEMORY[0x1E69E7CC0];
      if (v64)
      {
        v86 = v62;
        v89 = v60;
        v92 = v61;
        v96 = MEMORY[0x1E69E7CC0];
        sub_1E485807C(0, v64 & ~(v64 >> 63), 0);
        if (v64 < 0)
        {
          __break(1u);
          goto LABEL_78;
        }

        v66 = 0;
        v65 = v96;
        v67 = v9 & 0xC000000000000001;
        v68 = v9;
        do
        {
          if (v67)
          {
            v69 = MEMORY[0x1E6919650](v66, v9);
          }

          else
          {
            v69 = *(v9 + 8 * v66 + 32);
          }

          v70 = v69;
          v71 = [v69 calendarIdentifier];
          v72 = sub_1E4878BDC();
          v74 = v73;

          v76 = *(v96 + 16);
          v75 = *(v96 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_1E485807C((v75 > 1), v76 + 1, 1);
          }

          ++v66;
          *(v96 + 16) = v76 + 1;
          v77 = v96 + 16 * v76;
          *(v77 + 32) = v72;
          *(v77 + 40) = v74;
          v9 = v68;
        }

        while (v64 != v66);
        v61 = v92;
        v60 = v89;
        v62 = v86;
      }

      v78 = MEMORY[0x1E6919360](v65, MEMORY[0x1E69E6158]);
      v80 = v79;

      v81 = sub_1E47A0DEC(v78, v80, &v97);

      *(v61 + 14) = v81;
      _os_log_impl(&dword_1E475C000, v59, v60, "Mirror calendar app is off, returning [%ld] calendars: %{public}s", v61, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1E6919FE0](v62, -1, -1);
      MEMORY[0x1E6919FE0](v61, -1, -1);

      return v9;
    }

LABEL_61:

    return v9;
  }

  v6 = v5;
  if (![v5 BOOLValue])
  {

    goto LABEL_11;
  }

  sub_1E486C1BC(a2);
  sub_1E4845034(v7);
  if (qword_1EE2B3298 != -1)
  {
    swift_once();
  }

  v8 = sub_1E4877ADC();
  __swift_project_value_buffer(v8, qword_1EE2BAEC8);
  v9 = v98;

  v10 = sub_1E4877ABC();
  v11 = sub_1E4878DEC();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_61;
  }

  v12 = swift_slowAlloc();
  v90 = swift_slowAlloc();
  v97 = v90;
  *v12 = 134218242;
  if (v9 >> 62)
  {
    v13 = sub_1E4878F0C();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v12 + 4) = v13;

  *(v12 + 12) = 2082;
  if (v9 >> 62)
  {
    v14 = sub_1E4878F0C();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = MEMORY[0x1E69E7CC0];
  v94 = v11;
  if (!v14)
  {
LABEL_48:
    v54 = MEMORY[0x1E6919360](v42, MEMORY[0x1E69E6158]);
    v56 = v55;

    v57 = sub_1E47A0DEC(v54, v56, &v97);

    *(v12 + 14) = v57;
    _os_log_impl(&dword_1E475C000, v10, v94, "Mirror calendar app is on, returning [%ld] calendars: %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x1E6919FE0](v90, -1, -1);
    MEMORY[0x1E6919FE0](v12, -1, -1);

    return v9;
  }

  v85 = v10;
  v88 = v6;
  v43 = v9;
  v95 = MEMORY[0x1E69E7CC0];
  sub_1E485807C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v42 = v95;
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1E6919650](v44, v43);
      }

      else
      {
        v45 = *(v43 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = [v45 calendarIdentifier];
      v48 = sub_1E4878BDC();
      v50 = v49;

      v52 = *(v95 + 16);
      v51 = *(v95 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1E485807C((v51 > 1), v52 + 1, 1);
      }

      ++v44;
      *(v95 + 16) = v52 + 1;
      v53 = v95 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
    }

    while (v14 != v44);
    v9 = v43;
    v6 = v88;
    v10 = v85;
    goto LABEL_48;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E48493B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E484941C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D940, &qword_1E4882DA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E484948C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E48494D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E484952C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_1E4877FBC();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D970, &qword_1E4882F50);
  sub_1E484961C(a2, v7, a3, a4 + *(v8 + 44));
}

uint64_t sub_1E484961C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = a3;
  v64 = a1;
  v71 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D978, &qword_1E4882F58);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v61 - v9;
  v62 = sub_1E48782AC();
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D980, &qword_1E4882F60);
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D988, &qword_1E4882F68);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v68 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - v21;
  v23 = type metadata accessor for WideTextHeaderView();
  v24 = *(*(v23 - 1) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v67 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - v27;
  sub_1E4878D2C();
  v66 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = sub_1E487732C();
  v30 = *(*(v29 - 8) + 16);
  v30(v28, v64, v29);
  v30(&v28[v23[5]], a2 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date, v29);
  *&v28[v23[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v32 = &v28[v23[7]];
  *v32 = KeyPath;
  v32[8] = 0;
  v33 = v23[8];
  v72 = 0x402A000000000000;
  sub_1E4773794();
  sub_1E4877B6C();
  v34 = &v28[v23[9]];
  *v34 = 0x4D4D202C45454545;
  *(v34 + 1) = 0xEB0000000064204DLL;
  v35 = &v28[v23[10]];
  strcpy(v35, "EEEE, MMMM d");
  v35[13] = 0;
  *(v35 + 7) = -5120;
  v36 = v23[11];
  sub_1E48782EC();
  v37 = sub_1E48781FC();

  *&v28[v36] = v37;
  v38 = v23[12];
  sub_1E48782EC();
  sub_1E487827C();
  v39 = sub_1E487829C();

  *&v28[v38] = v39;
  *&v28[v23[13]] = 0x4018000000000000;
  if (*(*(a2 + 32) + 16) || (swift_beginAccess(), *(*(a2 + 24) + 16)))
  {
    v40 = sub_1E4877FBC();
    v41 = *(v63 + 64);
    *v16 = v40;
    *(v16 + 1) = v41;
    v16[16] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D990, &qword_1E4882FD0);
    sub_1E4849D6C(a2, &v16[*(v42 + 44)]);
    v43 = v22;
    sub_1E477372C(v16, v22, &qword_1ECF7D980, &qword_1E4882F60);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v22;
  }

  (*(v13 + 56))(v43, v44, 1, v65);
  if (*(a2 + 42))
  {
    v45 = ~*(a2 + 44);
    v46 = *(a2 + 43);
    sub_1E48781BC();
    v48 = v61;
    v47 = v62;
    (*(v10 + 104))(v61, *MEMORY[0x1E6980EA0], v62);
    v65 = sub_1E48782CC();

    (*(v10 + 8))(v48, v47);
    if (v46)
    {
      v49 = 256;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49 & 0xFFFFFFFFFFFFFFFELL | v45 & 1;
    v64 = 0x4020000000000000;
  }

  else
  {
    v50 = 0;
    v64 = 0;
    v65 = 0;
  }

  v51 = v69;
  sub_1E484B854(a2, v69);
  v52 = v67;
  sub_1E484E374(v28, v67, type metadata accessor for WideTextHeaderView);
  v53 = v43;
  v63 = v43;
  v54 = v68;
  sub_1E4773850(v53, v68, &qword_1ECF7D988, &qword_1E4882F68);
  v55 = v70;
  sub_1E4773850(v51, v70, &qword_1ECF7D978, &qword_1E4882F58);
  v56 = v71;
  sub_1E484E374(v52, v71, type metadata accessor for WideTextHeaderView);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D998, &qword_1E4882FD8);
  sub_1E4773850(v54, v56 + v57[12], &qword_1ECF7D988, &qword_1E4882F68);
  v58 = (v56 + v57[16]);
  v59 = v64;
  *v58 = v50;
  v58[1] = v59;
  v58[2] = v65;
  sub_1E4773850(v55, v56 + v57[20], &qword_1ECF7D978, &qword_1E4882F58);

  sub_1E47738B8(v51, &qword_1ECF7D978, &qword_1E4882F58);
  sub_1E47738B8(v63, &qword_1ECF7D988, &qword_1E4882F68);
  sub_1E484E3DC(v28, type metadata accessor for WideTextHeaderView);
  sub_1E47738B8(v55, &qword_1ECF7D978, &qword_1E4882F58);

  sub_1E47738B8(v54, &qword_1ECF7D988, &qword_1E4882F68);
  sub_1E484E3DC(v52, type metadata accessor for WideTextHeaderView);
}

uint64_t sub_1E4849D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9A0, &qword_1E4882FE0);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v81 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v68 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9A8, &qword_1E4882FE8);
  v8 = *(v75 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v68 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9B0, &qword_1E4882FF0);
  v12 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v68 - v13;
  v14 = type metadata accessor for WideAllDayView();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C230, &qword_1E487C998);
  v18 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v20 = &v68 - v19;
  v21 = type metadata accessor for WideReminderView();
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  v25 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v68 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9B8, &qword_1E4882FF8);
  v76 = *(v27 - 8);
  v77 = v27;
  v28 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v71 = &v68 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9C0, &unk_1E4883000);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v78 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v85 = &v68 - v34;
  sub_1E4878D2C();
  v80 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = *(a1 + 32);
  v36 = *(v35 + 16);
  if (v36)
  {
    if (v36 > 2 || *(a1 + 41))
    {
      if (v36 == 1 && (v42 = (type metadata accessor for Event() - 8), v43 = v35 + ((*(*v42 + 80) + 32) & ~*(*v42 + 80)), (*(v43 + v42[16]) & 0xFE) == 6))
      {
        sub_1E484E374(v43, v24, type metadata accessor for Event);
        v44 = v21[5];
        v45 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
        v46 = sub_1E487732C();
        (*(*(v46 - 8) + 16))(&v24[v44], a1 + v45, v46);
        type metadata accessor for CellDisplayContext(0);
        swift_storeEnumTagMultiPayload();
        *&v24[v21[6]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
        swift_storeEnumTagMultiPayload();
        *&v24[v21[7]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
        swift_storeEnumTagMultiPayload();
        *&v24[v21[8]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
        swift_storeEnumTagMultiPayload();
        KeyPath = swift_getKeyPath();
        *&v24[v21[10]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
        swift_storeEnumTagMultiPayload();
        v48 = &v24[v21[9]];
        *v48 = KeyPath;
        v48[8] = 0;
        sub_1E484E374(v24, v20, type metadata accessor for WideReminderView);
        swift_storeEnumTagMultiPayload();
        sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView);
        sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView);
        v49 = v70;
        sub_1E487803C();
        v50 = v24;
        v51 = type metadata accessor for WideReminderView;
      }

      else
      {
        v52 = v14[5];
        v53 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
        v54 = sub_1E487732C();
        (*(*(v54 - 8) + 16))(&v17[v52], a1 + v53, v54);
        type metadata accessor for CellDisplayContext(0);
        swift_storeEnumTagMultiPayload();
        *&v17[v14[6]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
        swift_storeEnumTagMultiPayload();
        *&v17[v14[7]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
        swift_storeEnumTagMultiPayload();
        *&v17[v14[8]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
        swift_storeEnumTagMultiPayload();
        v55 = swift_getKeyPath();
        *v17 = v35;
        v56 = &v17[v14[9]];
        *v56 = v55;
        v56[8] = 0;
        sub_1E484E374(v17, v20, type metadata accessor for WideAllDayView);
        swift_storeEnumTagMultiPayload();
        sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView);
        sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView);

        v49 = v70;
        sub_1E487803C();
        v50 = v17;
        v51 = type metadata accessor for WideAllDayView;
      }

      sub_1E484E3DC(v50, v51);
      sub_1E4773850(v49, v74, &qword_1ECF7C238, &qword_1E487C9A0);
      swift_storeEnumTagMultiPayload();
      sub_1E47A1690();
      sub_1E484C5FC();
      v40 = v71;
      sub_1E487803C();
      sub_1E47738B8(v49, &qword_1ECF7C238, &qword_1E487C9A0);
    }

    else
    {
      v88 = 0;
      v89 = v36;
      swift_getKeyPath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9C8, &qword_1E4883028);
      sub_1E484C570();
      sub_1E47A1690();
      sub_1E487885C();
      v37 = v75;
      (*(v8 + 16))(v74, v11, v75);
      swift_storeEnumTagMultiPayload();
      sub_1E484C5FC();
      v38 = v71;
      sub_1E487803C();
      v39 = v11;
      v40 = v38;
      (*(v8 + 8))(v39, v37);
    }

    v41 = v85;
    sub_1E477372C(v40, v85, &qword_1ECF7D9B8, &qword_1E4882FF8);
    (*(v76 + 56))(v41, 0, 1, v77);
  }

  else
  {
    v41 = v85;
    (*(v76 + 56))(v85, 1, 1, v77);
  }

  swift_beginAccess();
  v57 = *(*(a1 + 24) + 16);
  v86 = 0;
  v87 = v57;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9C8, &qword_1E4883028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9D8, &qword_1E4883030);
  sub_1E484C570();
  sub_1E484C688();
  v58 = v79;
  sub_1E487885C();
  v59 = v78;
  sub_1E4773850(v41, v78, &qword_1ECF7D9C0, &unk_1E4883000);
  v61 = v83;
  v60 = v84;
  v62 = *(v83 + 16);
  v63 = v81;
  v62(v81, v58, v84);
  v64 = v82;
  sub_1E4773850(v59, v82, &qword_1ECF7D9C0, &unk_1E4883000);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9E0, &qword_1E4883038);
  v62((v64 + *(v65 + 48)), v63, v60);
  v66 = *(v61 + 8);
  v66(v58, v60);
  sub_1E47738B8(v85, &qword_1ECF7D9C0, &unk_1E4883000);
  v66(v63, v60);
  sub_1E47738B8(v59, &qword_1ECF7D9C0, &unk_1E4883000);
}

uint64_t sub_1E484AA28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WideAllDayView();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C230, &qword_1E487C998);
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v41 - v11;
  v13 = type metadata accessor for WideReminderView();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v46 = &v41 - v19;
  v20 = *a1;
  sub_1E4878D2C();
  v45 = sub_1E4878D1C();
  sub_1E4878D0C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = *(a2 + 32);
  if (v20 >= *(v22 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v42 = v12;
  v43 = a3;
  v23 = type metadata accessor for Event();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = v22 + v25 + *(v24 + 72) * v20;
  if ((*(v26 + *(v23 + 56)) & 0xFE) == 6)
  {
    sub_1E484E374(v26, v16, type metadata accessor for Event);
    v27 = v13[5];
    v28 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v29 = sub_1E487732C();
    (*(*(v29 - 8) + 16))(&v16[v27], a2 + v28, v29);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *&v16[v13[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v16[v13[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v16[v13[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v16[v13[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v31 = &v16[v13[9]];
    *v31 = KeyPath;
    v31[8] = 0;
    v32 = type metadata accessor for WideReminderView;
    sub_1E484E374(v16, v42, type metadata accessor for WideReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView);
    sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView);
    v33 = v46;
    sub_1E487803C();
    v34 = v16;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E487A7E0;
    sub_1E484E374(v26, v35 + v25, type metadata accessor for Event);
    v36 = v6[5];
    v37 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v38 = sub_1E487732C();
    (*(*(v38 - 8) + 16))(v9 + v36, a2 + v37, v38);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *(v9 + v6[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v9 + v6[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v9 + v6[8]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v39 = swift_getKeyPath();
    *v9 = v35;
    v40 = v9 + v6[9];
    *v40 = v39;
    v40[8] = 0;
    v32 = type metadata accessor for WideAllDayView;
    sub_1E484E374(v9, v42, type metadata accessor for WideAllDayView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView);
    sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView);
    v33 = v46;
    sub_1E487803C();
    v34 = v9;
  }

  sub_1E484E3DC(v34, v32);
  sub_1E477372C(v33, v43, &qword_1ECF7C238, &qword_1E487C9A0);
}

uint64_t sub_1E484B15C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = type metadata accessor for WideEventDetailsView();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9E8, &qword_1E48830B0);
  v9 = *(*(v37[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v37[0]);
  v11 = v37 - v10;
  v12 = type metadata accessor for WideReminderView();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9D8, &qword_1E4883030);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v37 - v18;
  v20 = *a1;
  sub_1E4878D2C();
  v37[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = swift_beginAccess();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = *(a2 + 24);
  if (v20 >= *(v22 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v23 = (type metadata accessor for Event() - 8);
  v24 = v22 + ((*(*v23 + 80) + 32) & ~*(*v23 + 80)) + *(*v23 + 72) * v20;
  if ((*(v24 + v23[16]) & 0xFE) == 6)
  {
    sub_1E484E374(v24, v15, type metadata accessor for Event);
    v25 = v12[5];
    v26 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v27 = sub_1E487732C();
    (*(*(v27 - 8) + 16))(&v15[v25], a2 + v26, v27);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *&v15[v12[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v15[v12[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v15[v12[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v15[v12[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v29 = &v15[v12[9]];
    *v29 = KeyPath;
    v29[8] = 0;
    v30 = type metadata accessor for WideReminderView;
    sub_1E484E374(v15, v11, type metadata accessor for WideReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView);
    sub_1E484C774(qword_1EE2B2788, type metadata accessor for WideEventDetailsView);
    sub_1E487803C();
    v31 = v15;
  }

  else
  {
    sub_1E484E374(v24, v8, type metadata accessor for Event);
    v32 = v5[5];
    v33 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v34 = sub_1E487732C();
    (*(*(v34 - 8) + 16))(&v8[v32], a2 + v33, v34);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *&v8[v5[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v8[v5[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v8[v5[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v35 = swift_getKeyPath();
    v36 = &v8[v5[9]];
    *v36 = v35;
    v36[8] = 0;
    v30 = type metadata accessor for WideEventDetailsView;
    sub_1E484E374(v8, v11, type metadata accessor for WideEventDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView);
    sub_1E484C774(qword_1EE2B2788, type metadata accessor for WideEventDetailsView);
    sub_1E487803C();
    v31 = v8;
  }

  sub_1E484E3DC(v31, v30);
  sub_1E477372C(v19, v38, &qword_1ECF7D9D8, &qword_1E4883030);
}

uint64_t sub_1E484B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WideXMoreView();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (*(v9 + 16) && (*(a1 + 40) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    *&v8[v4[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v8 = v9;
    *(v8 + 1) = KeyPath;
    v8[16] = 0;
    v12 = v4[7];

    *&v8[v12] = sub_1E48782BC();
    *&v8[v4[8]] = 0x4018000000000000;
    sub_1E484E43C(v8, a2, type metadata accessor for WideXMoreView);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v5 + 56))(a2, v10, 1, v4);
}

uint64_t sub_1E484B9F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E487736C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = v13;
  *(v4 + 32) = v13;
  *(v4 + 40) = 0;
  *(v4 + 44) = 0;
  v14 = *(a1 + 48);
  *(v4 + 80) = *(a1 + 32);
  *(v4 + 96) = v14;
  *(v4 + 112) = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v4 + 48) = *a1;
  *(v4 + 64) = v15;
  v16 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
  v17 = sub_1E487732C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v4 + v16, a2, v17);
  *(v4 + 44) = a3;
  sub_1E487735C();
  v19 = sub_1E487733C();
  v21 = v20;
  (*(v18 + 8))(a2, v17);
  (*(v9 + 8))(v12, v8);
  v22 = (v4 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_id);
  *v22 = v19;
  v22[1] = v21;
  return v4;
}

uint64_t sub_1E484BBA4()
{
  if ((*(v0 + 40) & 1) == 0 && (swift_beginAccess(), *(*(v0 + 16) + 16)) || (swift_beginAccess(), *(*(v0 + 24) + 16)) || *(*(v0 + 32) + 16))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 42) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1E484BC28()
{
  v1 = type metadata accessor for Event();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(*(v0 + 32) + 16);
  if (v7)
  {
    if (v7 <= 2 && *(v0 + 41) == 0)
    {
      v6 = v6 + *(v0 + 56) * v7;
    }

    else
    {
      v6 = v6 + *(v0 + 56);
      v7 = 1;
    }
  }

  swift_beginAccess();
  result = *(v0 + 24);
  v10 = *(result + 16);
  if (v10)
  {
    v11 = result + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    v19[1] = *(v0 + 24);

    v13 = 0;
    while (1)
    {
      result = sub_1E484E374(v11, v5, type metadata accessor for Event);
      if ((v7 ^ v13) == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((v5[*(v1 + 56)] & 0xFE) == 6)
      {
        sub_1E484E3DC(v5, type metadata accessor for Event);
        v16 = (v0 + 64);
      }

      else
      {
        v14 = *&v5[*(v1 + 28)];
        sub_1E484E3DC(v5, type metadata accessor for Event);
        v15 = 80;
        if (v14 == 0.0)
        {
          v15 = 72;
        }

        v16 = (v0 + v15);
      }

      ++v13;
      v6 = v6 + *v16;
      v11 += v12;
      if (v10 == v13)
      {

        v7 += v13;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
  if (__OFSUB__(v7, 1))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v17 = v6 + *(v0 + 112) * ((v7 - 1) & ~((v7 - 1) >> 63));
  if (*(v0 + 42) == 1)
  {
    v17 = v17 + *(v0 + 96);
  }

  result = swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    if ((*(v0 + 40) & 1) == 0)
    {
      v18 = v17 + *(v0 + 88);
    }
  }

  return result;
}

uint64_t sub_1E484BEA4()
{
  v1 = v0;
  v21 = type metadata accessor for WideMultidayLayout.SingleDayViewModel();
  v19 = v0;
  __swift_project_boxed_opaque_existential_0(&v19, v21);
  v18[0] = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v2 = sub_1E4878BFC();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v22 = v2;
  v23 = v4;
  sub_1E487732C();
  sub_1E484C774(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
  v5 = sub_1E48790CC();
  v19 = 32;
  v20 = 0xE100000000000000;
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](v19, v20);

  if (sub_1E484BBA4())
  {
    v19 = v22;
    v20 = v23;

    MEMORY[0x1E69192D0](10, 0xE100000000000000);

    MEMORY[0x1E69192D0](0x7974706D45, 0xE500000000000000);

    return v19;
  }

  else
  {
    swift_beginAccess();
    v18[0] = *(*(v1 + 16) + 16);
    v7 = sub_1E48790CC();
    strcpy(v18, "\nxMoreEvents: ");
    HIBYTE(v18[1]) = -18;
    MEMORY[0x1E69192D0](v7);

    MEMORY[0x1E69192D0](v18[0], v18[1]);

    swift_beginAccess();
    v16 = *(*(v1 + 24) + 16);
    v8 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v8);

    MEMORY[0x1E69192D0](0xD000000000000015, 0x80000001E48AA070);

    v17 = *(*(v1 + 32) + 16);
    v9 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v9);

    MEMORY[0x1E69192D0](0x457961446C6C610ALL, 0xEF203A73746E6576);

    if (*(v1 + 40))
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (*(v1 + 40))
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v10, v11);

    MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48AA090);

    if (*(v1 + 41))
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (*(v1 + 41))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v12, v13);

    MEMORY[0x1E69192D0](0xD000000000000019, 0x80000001E48AA0B0);

    if (*(v1 + 42))
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (*(v1 + 42))
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v14, v15);

    MEMORY[0x1E69192D0](0xD000000000000018, 0x80000001E48AA0D0);

    return v22;
  }
}

uint64_t sub_1E484C2D0()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_id + 8];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WideMultidayLayout.SingleDayViewModel()
{
  result = qword_1EE2B3128;
  if (!qword_1EE2B3128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E484C434()
{
  result = sub_1E487732C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E484C4FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E484C51C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_1E484C570()
{
  result = qword_1EE2B0D90;
  if (!qword_1EE2B0D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D9C8, &qword_1E4883028);
    sub_1E483AA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0D90);
  }

  return result;
}

unint64_t sub_1E484C5FC()
{
  result = qword_1ECF7D9D0;
  if (!qword_1ECF7D9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D9A8, &qword_1E4882FE8);
    sub_1E47A1690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D9D0);
  }

  return result;
}

unint64_t sub_1E484C688()
{
  result = qword_1EE2B1228;
  if (!qword_1EE2B1228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D9D8, &qword_1E4883030);
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView);
    sub_1E484C774(qword_1EE2B2788, type metadata accessor for WideEventDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1228);
  }

  return result;
}

uint64_t sub_1E484C774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E484C7BC(uint64_t a1, uint64_t a2, double a3)
{
  v235 = sub_1E487736C();
  v6 = *(v235 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v234 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for Event();
  v225 = *(v256 - 8);
  v9 = *(v225 + 64);
  v10 = MEMORY[0x1EEE9AC00](v256);
  v253 = &v218 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v252 = &v218 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v255 = &v218 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v254 = &v218 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v226 = &v218 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v224 = &v218 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v244 = (&v218 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v218 - v24;
  j = type metadata accessor for DayEvents();
  v27 = *(j - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](j);
  v247 = &v218 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v249 = &v218 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v218 - v33;
  v242 = sub_1E487732C();
  v35 = *(*(v242 - 8) + 64);
  MEMORY[0x1EEE9AC00](v242);
  v241 = &v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = MEMORY[0x1E69E7CC0];
  v38.n128_u64[0] = *a2;
  if (*a2 == 0.0)
  {
    v38.n128_u64[0] = *(a2 + 8);
    if (v38.n128_f64[0] == 0.0)
    {
      v38.n128_u64[0] = *(a2 + 16);
      if (v38.n128_f64[0] == 0.0)
      {
        v38.n128_u64[0] = *(a2 + 24);
        if (v38.n128_f64[0] == 0.0)
        {
          v38.n128_u64[0] = *(a2 + 32);
          if (v38.n128_f64[0] == 0.0)
          {
            v38.n128_u64[0] = *(a2 + 40);
            if (v38.n128_f64[0] == 0.0)
            {
              v38.n128_u64[0] = *(a2 + 48);
              if (v38.n128_f64[0] == 0.0)
              {
                return MEMORY[0x1E69E7CC0];
              }
            }
          }
        }
      }
    }
  }

  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_285;
  }

  v250 = v25;
  v40 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v239 = v36;
  v41 = v241;
  v232 = *(v36 + 16);
  v233 = v36 + 16;
  v232(v241, v40, v242, v38);
  v42 = *(v40 + *(j + 28));
  v43 = type metadata accessor for WideMultidayLayout.SingleDayViewModel();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v231 = v43;
  v46 = swift_allocObject();
  v243 = a2;
  v245 = v46;
  sub_1E484B9F0(a2, v41, v42);
  v47 = *(v40 + *(j + 20));
  v48 = *(v47 + 16);
  v251 = v39;
  v240 = v6;
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = *(*(v40 + *(j + 24)) + 16) == 0;
  }

  v50 = v245;
  *(v245 + 42) = v49;
  v51 = 1;
  swift_beginAccess();
  v52 = *(v50 + 24);
  *(v50 + 24) = v47;

  v39 = v40;
  v53 = *(v50 + 32);
  *(v50 + 32) = *(v40 + *(j + 24));

  v6 = v251;
  while (1)
  {
    a2 = v51;
    if (v6 == v51)
    {
      *(v245 + 43) = 1;
      goto LABEL_20;
    }

    sub_1E484E374(v40 + *(v27 + 72) * v51, v34, type metadata accessor for DayEvents);
    if (*(*&v34[*(j + 20)] + 16))
    {
      break;
    }

    ++v51;
    v54 = *(*&v34[*(j + 24)] + 16);
    sub_1E484E3DC(v34, type metadata accessor for DayEvents);
    if (v54)
    {
      goto LABEL_20;
    }
  }

  sub_1E484E3DC(v34, type metadata accessor for DayEvents);
LABEL_20:
  v55 = v245;

  MEMORY[0x1E6919330](v56);
  if (*((v257 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v257 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_286;
  }

LABEL_21:
  sub_1E4878CEC();
  v248 = v257;
  if (v6 == a2 && (*(v55 + 42) & 1) != 0)
  {
LABEL_23:

    return v248;
  }

  v237 = j;
  v58 = 0;
  v229 = (v239 + 8);
  v230 = (v240 + 8);
  v59 = *(v27 + 72);
  v60 = v250;
  v246 = v39;
  v223 = v59;
  while (1)
  {
    if (v58 == v6)
    {
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      sub_1E4878CCC();
      v55 = v245;
      goto LABEL_21;
    }

    v228 = v58;
    sub_1E484E374(v39 + v59 * v58, v249, type metadata accessor for DayEvents);
    sub_1E484E374(v39, v247, type metadata accessor for DayEvents);
    if (sub_1E48772EC())
    {
      v61 = v237[5];
      v62 = *(v247 + v61);
      v63 = *(v249 + v61);
      v64 = *(v62 + 16);
      if (v64 == *(v63 + 16))
      {
        if (!v64 || v62 == v63)
        {
LABEL_34:
          v70 = v237[6];
          v71 = *(v247 + v70);
          v72 = *(v249 + v70);
          v73 = *(v71 + 16);
          if (v73 == *(v72 + 16))
          {
            if (!v73 || v71 == v72)
            {
LABEL_40:
              if (*(v247 + v237[7]) == *(v249 + v237[7]))
              {
                sub_1E484E3DC(v247, type metadata accessor for DayEvents);
                v95 = v245;

                j = v248;
                goto LABEL_49;
              }
            }

            else
            {
              v74 = (*(v225 + 80) + 32) & ~*(v225 + 80);
              v75 = v71 + v74;
              v27 = v72 + v74;
              v76 = *(v225 + 72);
              while (1)
              {
                sub_1E484E374(v75, v60, type metadata accessor for Event);
                v77 = v244;
                sub_1E484E374(v27, v244, type metadata accessor for Event);
                v78 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v60, v77);
                sub_1E484E3DC(v77, type metadata accessor for Event);
                sub_1E484E3DC(v60, type metadata accessor for Event);
                if ((v78 & 1) == 0)
                {
                  break;
                }

                v27 += v76;
                v75 += v76;
                if (!--v73)
                {
                  goto LABEL_40;
                }
              }
            }
          }
        }

        else
        {
          v65 = (*(v225 + 80) + 32) & ~*(v225 + 80);
          v66 = v62 + v65;
          v27 = v63 + v65;
          v67 = *(v225 + 72);
          while (1)
          {
            sub_1E484E374(v66, v60, type metadata accessor for Event);
            v68 = v244;
            sub_1E484E374(v27, v244, type metadata accessor for Event);
            v69 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v60, v68);
            sub_1E484E3DC(v68, type metadata accessor for Event);
            sub_1E484E3DC(v60, type metadata accessor for Event);
            if ((v69 & 1) == 0)
            {
              break;
            }

            v27 += v67;
            v66 += v67;
            if (!--v64)
            {
              goto LABEL_34;
            }
          }
        }
      }
    }

    sub_1E484E3DC(v247, type metadata accessor for DayEvents);
    v79 = v241;
    j = v242;
    v80 = v249;
    v81 = v232;
    (v232)(v241, v249, v242);
    v82 = v237;
    v83 = *(v80 + v237[7]);
    v84 = *(v231 + 48);
    v85 = *(v231 + 52);
    v27 = swift_allocObject();
    v86 = MEMORY[0x1E69E7CC0];
    *(v27 + 16) = MEMORY[0x1E69E7CC0];
    v240 = v27 + 16;
    *(v27 + 24) = v86;
    a2 = v27 + 24;
    *(v27 + 32) = v86;
    *(v27 + 40) = 0;
    *(v27 + 44) = 0;
    v87 = v243;
    v88 = *(v243 + 48);
    *(v27 + 80) = *(v243 + 32);
    *(v27 + 96) = v88;
    *(v27 + 112) = *(v87 + 64);
    v89 = *(v87 + 16);
    *(v27 + 48) = *v87;
    *(v27 + 64) = v89;
    v81(v27 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date, v79, j);
    *(v27 + 44) = v83;
    v90 = v234;
    sub_1E487735C();
    v91 = sub_1E487733C();
    v93 = v92;
    v94 = v90;
    v95 = v27;
    (*v230)(v94, v235);
    (*v229)(v79, j);
    v96 = (v27 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_id);
    *v96 = v91;
    v96[1] = v93;
    v97 = *(v27 + 32);
    *(v27 + 32) = *(v80 + v82[6]);

    v98 = *(v80 + v82[5]);
    swift_beginAccess();
    v99 = *(v27 + 24);
    *(v27 + 24) = v98;

    if ((*(v27 + 40) & 1) == 0)
    {
      v100 = v240;
      swift_beginAccess();
      if (*(*v100 + 16))
      {
        goto LABEL_45;
      }
    }

    if (*(*a2 + 16) || *(*(v27 + 32) + 16))
    {
LABEL_45:

      v6 = v251;
    }

    else
    {
      v114 = *(v27 + 42);

      v6 = v251;
      if ((v114 & 1) == 0)
      {
        sub_1E484E3DC(v249, type metadata accessor for DayEvents);

        v39 = v246;
        v60 = v250;
        goto LABEL_259;
      }
    }

    MEMORY[0x1E6919330](v101);
    v60 = v250;
    if (*((v257 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v257 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v115 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E4878CCC();
      v95 = v27;
    }

    sub_1E4878CEC();
    j = v257;
LABEL_49:
    v102 = *(v243 + 56);
    a2 = j >> 62;
    v240 = v95;
    v103 = j & 0xFFFFFFFFFFFFFF8;
    if (j >> 62)
    {
      result = sub_1E4878F0C();
      if (!result)
      {
        v105 = 0.0;
        v39 = v246;
        goto LABEL_69;
      }

      v27 = result;
      if (result < 1)
      {
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
        goto LABEL_297;
      }
    }

    else
    {
      v27 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        v105 = 0.0;
        v39 = v246;
LABEL_59:
        v112 = *(v103 + 16);
        v113 = v112 - 1;
        if (__OFSUB__(v112, 1))
        {
          goto LABEL_284;
        }

        goto LABEL_70;
      }
    }

    if ((j & 0xC000000000000001) != 0)
    {
      v104 = 0;
      v105 = 0.0;
      v39 = v246;
      do
      {
        MEMORY[0x1E6919650](v104++, j);
        sub_1E484BC28();
        v107 = v106;
        swift_unknownObjectRelease();
        v105 = v105 + v107;
      }

      while (v27 != v104);
    }

    else
    {
      v108 = (j + 32);
      v105 = 0.0;
      v39 = v246;
      do
      {
        v109 = *v108++;

        sub_1E484BC28();
        v111 = v110;

        v105 = v105 + v111;
        --v27;
      }

      while (v27);
    }

    v103 = j & 0xFFFFFFFFFFFFFF8;
    v95 = v240;
    a2 = j >> 62;
    if (!(j >> 62))
    {
      goto LABEL_59;
    }

LABEL_69:
    v116 = sub_1E4878F0C();
    v113 = v116 - 1;
    if (__OFSUB__(v116, 1))
    {
      goto LABEL_284;
    }

LABEL_70:
    v248 = j;
    if (v105 + v102 * (v113 & ~(v113 >> 63)) <= a3)
    {
      goto LABEL_235;
    }

    *(v95 + 41) = 1;
    v117 = j & 0xFFFFFFFFFFFFFF8;
    if (a2)
    {
      v123 = sub_1E4878F0C();
      if (!v123)
      {
        v120 = 0.0;
        goto LABEL_86;
      }

      v27 = v123;
      if (v123 < 1)
      {
        goto LABEL_262;
      }
    }

    else
    {
      v27 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        v120 = 0.0;
LABEL_85:
        result = *(v117 + 16);
        goto LABEL_87;
      }
    }

    v118 = a2;
    if ((j & 0xC000000000000001) != 0)
    {
      v119 = 0;
      v120 = 0.0;
      do
      {
        MEMORY[0x1E6919650](v119++, j);
        sub_1E484BC28();
        v122 = v121;
        swift_unknownObjectRelease();
        v120 = v120 + v122;
      }

      while (v27 != v119);
    }

    else
    {
      v124 = (j + 32);
      v120 = 0.0;
      do
      {
        v125 = *v124++;

        sub_1E484BC28();
        v127 = v126;

        v120 = v120 + v127;
        --v27;
      }

      while (v27);
    }

    v117 = j & 0xFFFFFFFFFFFFFF8;
    v95 = v240;
    a2 = v118;
    if (!v118)
    {
      goto LABEL_85;
    }

LABEL_86:
    result = sub_1E4878F0C();
LABEL_87:
    if (__OFSUB__(result, 1))
    {
      goto LABEL_292;
    }

    if (v120 + v102 * ((result - 1) & ~((result - 1) >> 63)) > a3)
    {
      swift_beginAccess();
      v128 = *(*(v95 + 24) + 16);
      if (v128)
      {
        v129 = j & 0xFFFFFFFFFFFFFF8;
        v221 = j & 0xFFFFFFFFFFFFFF8;
        if ((j & 0x8000000000000000) != 0)
        {
          v129 = j;
        }

        v222 = v129;
        v219 = j & 0xC000000000000001;
        v227 = j + 32;
        do
        {
          v220 = v128;
          result = swift_beginAccess();
          v130 = *(v95 + 24);
          if (!v130[2])
          {
            goto LABEL_293;
          }

          v131 = *(v95 + 24);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v95 + 24) = v130;
          if (result)
          {
            v132 = v130[2];
            if (!v132)
            {
              goto LABEL_294;
            }
          }

          else
          {
            result = sub_1E4866E34(v130);
            v130 = result;
            v132 = *(result + 16);
            if (!v132)
            {
              goto LABEL_294;
            }
          }

          v133 = v132 - 1;
          v239 = (*(v225 + 80) + 32) & ~*(v225 + 80);
          v134 = v95;
          v135 = *(v225 + 72);
          v136 = v130 + v239 + v135 * v133;
          v130[2] = v133;
          *(v134 + 24) = v130;
          v137 = v224;
          sub_1E484E43C(v136, v224, type metadata accessor for Event);
          swift_endAccess();
          sub_1E484E374(v137, v226, type metadata accessor for Event);
          swift_beginAccess();
          v138 = *(v134 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v134 + 16) = v138;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v138 = sub_1E4860A08(0, v138[2] + 1, 1, v138);
            *(v240 + 16) = v138;
          }

          v141 = v138[2];
          v140 = v138[3];
          v27 = v141 + 1;
          if (v141 >= v140 >> 1)
          {
            v138 = sub_1E4860A08(v140 > 1, v141 + 1, 1, v138);
          }

          v138[2] = v27;
          sub_1E484E43C(v226, v138 + v239 + v141 * v135, type metadata accessor for Event);
          v142 = v240;
          *(v240 + 16) = v138;
          swift_endAccess();
          *(v142 + 40) = 0;
          if (a2)
          {
            result = sub_1E4878F0C();
            if (!result)
            {
              v144 = 0.0;
LABEL_160:
              result = sub_1E4878F0C();
              goto LABEL_161;
            }

            if (result < 1)
            {
              goto LABEL_263;
            }
          }

          else
          {
            result = *(v221 + 16);
            if (!result)
            {
              v144 = 0.0;
              goto LABEL_161;
            }
          }

          v236 = result;
          v218 = a2;
          if (v219)
          {
            v143 = 0;
            v144 = 0.0;
            while (1)
            {
              v145 = v60;
              v238 = v143;
              v146 = MEMORY[0x1E6919650]();
              a2 = v146;
              v147 = *(v146 + 48);
              v148 = *(*(v146 + 32) + 16);
              if (v148)
              {
                if (v148 > 2 || (*(v146 + 41) & 1) != 0)
                {
                  v147 = v147 + *(v146 + 56);
                  v148 = 1;
                }

                else
                {
                  v147 = v147 + *(v146 + 56) * v148;
                }
              }

              swift_beginAccess();
              v27 = *(a2 + 24);
              v149 = *(v27 + 16);
              if (v149)
              {
                break;
              }

LABEL_121:
              if (__OFSUB__(v148, 1))
              {
LABEL_282:
                __break(1u);
                goto LABEL_283;
              }

              v156 = v147 + *(a2 + 112) * ((v148 - 1) & ~((v148 - 1) >> 63));
              if (*(a2 + 42) == 1)
              {
                v156 = v156 + *(a2 + 96);
              }

              v60 = v145;
              swift_beginAccess();
              if (!*(*(a2 + 16) + 16) || (*(a2 + 40) & 1) != 0)
              {
                swift_unknownObjectRelease();
              }

              else
              {
                v157 = *(a2 + 88);
                swift_unknownObjectRelease();
                v156 = v156 + v157;
              }

              v143 = v238 + 1;
              v144 = v144 + v156;
              if (v238 + 1 == v236)
              {
                goto LABEL_158;
              }
            }

            v150 = v27 + v239;
            v151 = *(a2 + 24);

            j = 0;
            while (1)
            {
              v153 = v255;
              sub_1E484E374(v150, v255, type metadata accessor for Event);
              if ((v148 ^ j) == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if ((*(v153 + *(v256 + 56)) & 0xFE) == 6)
              {
                sub_1E484E3DC(v153, type metadata accessor for Event);
                v152 = (a2 + 64);
              }

              else
              {
                v154 = *(v153 + *(v256 + 28));
                sub_1E484E3DC(v153, type metadata accessor for Event);
                v155 = 80;
                if (v154 == 0.0)
                {
                  v155 = 72;
                }

                v152 = (a2 + v155);
              }

              ++j;
              v147 = v147 + *v152;
              v150 += v135;
              if (v149 == j)
              {

                v148 += j;
                v145 = v250;
                v6 = v251;
                v39 = v246;
                j = v248;
                goto LABEL_121;
              }
            }

            __break(1u);
            goto LABEL_268;
          }

          v158 = 0;
          v144 = 0.0;
          do
          {
            v159 = v60;
            v160 = *(v227 + 8 * v158);
            v161 = *(v160 + 48);
            v162 = *(*(v160 + 32) + 16);
            v238 = v158;
            if (v162)
            {
              if (v162 > 2 || (*(v160 + 41) & 1) != 0)
              {
                v161 = v161 + *(v160 + 56);
                v162 = 1;
              }

              else
              {
                v161 = v161 + *(v160 + 56) * v162;
              }
            }

            swift_beginAccess();
            v27 = *(v160 + 24);
            v163 = *(v27 + 16);
            if (v163)
            {
              v164 = v27 + v239;

              for (i = 0; i != v163; ++i)
              {
                j = v254;
                sub_1E484E374(v164, v254, type metadata accessor for Event);
                if ((v162 ^ i) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                  goto LABEL_279;
                }

                if ((*(j + *(v256 + 56)) & 0xFE) == 6)
                {
                  sub_1E484E3DC(j, type metadata accessor for Event);
                  v166 = (v160 + 64);
                }

                else
                {
                  v167 = *(j + *(v256 + 28));
                  sub_1E484E3DC(j, type metadata accessor for Event);
                  v168 = 80;
                  if (v167 == 0.0)
                  {
                    v168 = 72;
                  }

                  v166 = (v160 + v168);
                }

                v161 = v161 + *v166;
                v164 += v135;
              }

              v169 = v162 + i;
              v159 = v250;
              v6 = v251;
              v39 = v246;
              j = v248;
              v170 = v169 - 1;
              if (__OFSUB__(v169, 1))
              {
                goto LABEL_287;
              }
            }

            else
            {

              v170 = v162 - 1;
              if (__OFSUB__(v162, 1))
              {
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
                __break(1u);
                goto LABEL_289;
              }
            }

            v171 = v161 + *(v160 + 112) * (v170 & ~(v170 >> 63));
            if (*(v160 + 42) == 1)
            {
              v171 = v171 + *(v160 + 96);
            }

            v60 = v159;
            swift_beginAccess();
            if (!*(*(v160 + 16) + 16) || (*(v160 + 40) & 1) != 0)
            {
            }

            else
            {
              v172 = *(v160 + 88);

              v171 = v171 + v172;
            }

            v158 = v238 + 1;
            v144 = v144 + v171;
          }

          while (v238 + 1 != v236);
LABEL_158:
          a2 = v218;
          if (v218)
          {
            goto LABEL_160;
          }

          result = *(v221 + 16);
LABEL_161:
          if (__OFSUB__(result, 1))
          {
            goto LABEL_295;
          }

          if (v144 + v102 * ((result - 1) & ~((result - 1) >> 63)) <= a3)
          {
            goto LABEL_280;
          }

          *(v240 + 40) = 1;
          if (a2)
          {
            v173 = sub_1E4878F0C();
            if (!v173)
            {
              v175 = 0.0;
              goto LABEL_223;
            }

            if (v173 < 1)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v173 = *(v221 + 16);
            if (!v173)
            {
              v190 = 0;
              v175 = 0.0;
              v95 = v240;
              goto LABEL_224;
            }
          }

          v236 = v173;
          v218 = a2;
          if (v219)
          {
            v174 = 0;
            v175 = 0.0;
            while (1)
            {
              v176 = v60;
              v238 = v174;
              v177 = MEMORY[0x1E6919650]();
              v178 = v177;
              v179 = *(v177 + 48);
              v180 = *(*(v177 + 32) + 16);
              if (v180)
              {
                if (v180 > 2 || (*(v177 + 41) & 1) != 0)
                {
                  v179 = v179 + *(v177 + 56);
                  v180 = 1;
                }

                else
                {
                  v179 = v179 + *(v177 + 56) * v180;
                }
              }

              result = swift_beginAccess();
              v27 = *(v178 + 24);
              v181 = *(v27 + 16);
              if (v181)
              {
                break;
              }

LABEL_184:
              if (__OFSUB__(v180, 1))
              {
                goto LABEL_288;
              }

              v188 = v179 + *(v178 + 112) * ((v180 - 1) & ~((v180 - 1) >> 63));
              if (*(v178 + 42) == 1)
              {
                v188 = v188 + *(v178 + 96);
              }

              v60 = v176;
              swift_beginAccess();
              if (!*(*(v178 + 16) + 16) || (*(v178 + 40) & 1) != 0)
              {
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = *(v178 + 88);
                swift_unknownObjectRelease();
                v188 = v188 + v189;
              }

              v174 = v238 + 1;
              v175 = v175 + v188;
              if (v238 + 1 == v236)
              {
                goto LABEL_221;
              }
            }

            v182 = v27 + v239;
            v183 = *(v178 + 24);

            j = 0;
            while (1)
            {
              v185 = v253;
              sub_1E484E374(v182, v253, type metadata accessor for Event);
              if ((v180 ^ j) == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if ((*(v185 + *(v256 + 56)) & 0xFE) == 6)
              {
                sub_1E484E3DC(v185, type metadata accessor for Event);
                v184 = (v178 + 64);
              }

              else
              {
                v186 = *(v185 + *(v256 + 28));
                sub_1E484E3DC(v185, type metadata accessor for Event);
                v187 = 80;
                if (v186 == 0.0)
                {
                  v187 = 72;
                }

                v184 = (v178 + v187);
              }

              ++j;
              v179 = v179 + *v184;
              v182 += v135;
              if (v181 == j)
              {

                v180 += j;
                v176 = v250;
                v6 = v251;
                v39 = v246;
                j = v248;
                goto LABEL_184;
              }
            }

LABEL_279:
            __break(1u);
LABEL_280:
            sub_1E484E3DC(v224, type metadata accessor for Event);

            goto LABEL_277;
          }

          v191 = 0;
          v175 = 0.0;
          do
          {
            v192 = v60;
            v193 = *(v227 + 8 * v191);
            v194 = *(v193 + 48);
            v195 = *(*(v193 + 32) + 16);
            v238 = v191;
            if (v195)
            {
              if (v195 > 2 || (*(v193 + 41) & 1) != 0)
              {
                v194 = v194 + *(v193 + 56);
                v195 = 1;
              }

              else
              {
                v194 = v194 + *(v193 + 56) * v195;
              }
            }

            swift_beginAccess();
            v27 = *(v193 + 24);
            v196 = *(v27 + 16);
            if (v196)
            {
              a2 = v27 + v239;
              v39 = v193 + 64;

              for (j = 0; j != v196; ++j)
              {
                v6 = v252;
                sub_1E484E374(a2, v252, type metadata accessor for Event);
                if ((v195 ^ j) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                  __break(1u);
                  goto LABEL_282;
                }

                if ((*(v6 + *(v256 + 56)) & 0xFE) == 6)
                {
                  sub_1E484E3DC(v6, type metadata accessor for Event);
                  v197 = (v193 + 64);
                }

                else
                {
                  v198 = *(v6 + *(v256 + 28));
                  sub_1E484E3DC(v6, type metadata accessor for Event);
                  v199 = 80;
                  if (v198 == 0.0)
                  {
                    v199 = 72;
                  }

                  v197 = (v193 + v199);
                }

                v194 = v194 + *v197;
                a2 += v135;
              }

              v200 = v195 + j;
              v192 = v250;
              v6 = v251;
              v39 = v246;
              j = v248;
              v201 = v200 - 1;
              if (__OFSUB__(v200, 1))
              {
                goto LABEL_291;
              }
            }

            else
            {

              v201 = v195 - 1;
              if (__OFSUB__(v195, 1))
              {
                goto LABEL_291;
              }
            }

            v202 = v194 + *(v193 + 112) * (v201 & ~(v201 >> 63));
            if (*(v193 + 42) == 1)
            {
              v202 = v202 + *(v193 + 96);
            }

            v60 = v192;
            swift_beginAccess();
            if (!*(*(v193 + 16) + 16) || (*(v193 + 40) & 1) != 0)
            {
            }

            else
            {
              v203 = *(v193 + 88);

              v202 = v202 + v203;
            }

            v191 = v238 + 1;
            v175 = v175 + v202;
          }

          while (v238 + 1 != v236);
LABEL_221:
          a2 = v218;
          if (!v218)
          {
            v190 = *(v221 + 16);
            v95 = v240;
            goto LABEL_224;
          }

LABEL_223:
          v95 = v240;
          v190 = sub_1E4878F0C();
LABEL_224:
          result = sub_1E484E3DC(v224, type metadata accessor for Event);
          if (__OFSUB__(v190, 1))
          {
            goto LABEL_296;
          }

          if (v175 + v102 * ((v190 - 1) & ~((v190 - 1) >> 63)) <= a3 && ((*(v95 + 40) & 1) == 0 && *(*(v95 + 16) + 16) || *(*(v95 + 24) + 16) || *(*(v95 + 32) + 16) || *(v95 + 42) == 1))
          {
            goto LABEL_276;
          }

          v128 = v220 - 1;
        }

        while (v220 != 1);
      }
    }

LABEL_235:
    v204 = j & 0xFFFFFFFFFFFFFF8;
    if (a2)
    {
      break;
    }

    v27 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      v207 = 0.0;
      goto LABEL_249;
    }

LABEL_237:
    v205 = a2;
    if ((j & 0xC000000000000001) != 0)
    {
      v206 = 0;
      v207 = 0.0;
      do
      {
        MEMORY[0x1E6919650](v206++, j);
        sub_1E484BC28();
        v209 = v208;
        swift_unknownObjectRelease();
        v207 = v207 + v209;
      }

      while (v27 != v206);
    }

    else
    {
      v211 = (j + 32);
      v207 = 0.0;
      do
      {
        v212 = *v211++;

        sub_1E484BC28();
        v214 = v213;

        v207 = v207 + v214;
        --v27;
      }

      while (v27);
    }

    v204 = j & 0xFFFFFFFFFFFFFF8;
    v95 = v240;
    a2 = v205;
    if (v205)
    {
      goto LABEL_250;
    }

LABEL_249:
    result = *(v204 + 16);
LABEL_251:
    if (__OFSUB__(result, 1))
    {
      goto LABEL_290;
    }

    if (v207 + v102 * ((result - 1) & ~((result - 1) >> 63)) > a3)
    {
      goto LABEL_265;
    }

    if ((*(v95 + 40) & 1) != 0 || (swift_beginAccess(), !*(*(v95 + 16) + 16)))
    {
      swift_beginAccess();
      if (!*(*(v95 + 24) + 16) && !*(*(v95 + 32) + 16) && (*(v95 + 42) & 1) == 0)
      {
        goto LABEL_265;
      }
    }

    sub_1E484E3DC(v249, type metadata accessor for DayEvents);
LABEL_259:
    v58 = v228 + 1;
    v59 = v223;
    if (v228 + 1 == v6)
    {
      goto LABEL_23;
    }
  }

  v210 = sub_1E4878F0C();
  if (!v210)
  {
    v207 = 0.0;
LABEL_250:
    result = sub_1E4878F0C();
    goto LABEL_251;
  }

  v27 = v210;
  if (v210 >= 1)
  {
    goto LABEL_237;
  }

  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  if (a2)
  {
LABEL_268:
    result = sub_1E4878F0C();
  }

  else
  {
    result = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (j & 0x8000000000000000) != 0 || (j & 0x4000000000000000) != 0)
  {
    result = sub_1E4866E30(j);
    j = result;
  }

  v215 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v215)
  {
    v216 = v215 - 1;
    v217 = *((j & 0xFFFFFFFFFFFFFF8) + 8 * v216 + 0x20);
    *((j & 0xFFFFFFFFFFFFFF8) + 0x10) = v216;

LABEL_276:

LABEL_277:

    sub_1E484E3DC(v249, type metadata accessor for DayEvents);
    return j;
  }

LABEL_298:
  __break(1u);
  return result;
}

uint64_t sub_1E484E374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E484E3DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E484E43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NoEventsView()
{
  result = qword_1EE2B3DD0;
  if (!qword_1EE2B3DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E484E518()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E478305C();
    if (v1 <= 0x3F)
    {
      sub_1E484E620(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v2 <= 0x3F)
      {
        sub_1E484E620(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E484E620(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E484E690()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NoEventsView() + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E484E7E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NoEventsView();
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E484E9F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NoEventsView();
  sub_1E4773850(v1 + *(v12 + 44), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

BOOL sub_1E484EBF8()
{
  v1 = sub_1E487751C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487753C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487732C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v0, v11);
  sub_1E4877A7C();
  (*(v2 + 104))(v5, *MEMORY[0x1E6969A58], v1);
  v16 = sub_1E487752C();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  return v16 > 16;
}

uint64_t sub_1E484EE58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v31 - v2;
  v4 = sub_1E487757C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487753C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  if (sub_1E484EBF8())
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    return sub_1E48771EC();
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v31 = v4;
    v19 = v18;
    sub_1E484E7E8(v16);
    v20 = sub_1E487748C();
    v32 = v3;
    v21 = *(v10 + 8);
    v21(v16, v9);
    [v19 setCalendar_];

    sub_1E484E7E8(v16);
    sub_1E487750C();
    v21(v16, v9);
    v22 = sub_1E487756C();
    (*(v5 + 8))(v8, v31);
    [v19 setTimeZone_];

    v23 = v32;
    sub_1E484E7E8(v14);
    sub_1E48774EC();
    v21(v14, v9);
    v24 = sub_1E487744C();
    v25 = *(v24 - 8);
    v26 = 0;
    if ((*(v25 + 48))(v23, 1, v24) != 1)
    {
      v26 = sub_1E48773DC();
      (*(v25 + 8))(v23, v24);
    }

    [v19 setLocale_];

    [v19 setFormattingContext_];
    v27 = sub_1E4878B9C();
    [v19 setLocalizedDateFormatFromTemplate_];

    v28 = sub_1E48772BC();
    v29 = [v19 stringFromDate_];

    v30 = sub_1E4878BDC();
    return v30;
  }
}

double sub_1E484F2C4()
{
  if (sub_1E484EBF8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E487A7E0;
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    *(v1 + 32) = sub_1E48771EC();
    *(v1 + 40) = v2;
  }

  else
  {
    v4 = *(v0 + *(type metadata accessor for NoEventsView() + 20));

    return sub_1E486E640(v4, 1);
  }

  return result;
}

uint64_t sub_1E484F3E0()
{
  if (sub_1E484EBF8())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E487A7F0;
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1E48771EC();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1E48771EC();
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_1E484F540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v20 - v2;
  v21 = sub_1E487753C();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487893C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  sub_1E484E9F0(&v20 - v14);
  sub_1E487892C();
  v16 = sub_1E48788FC();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  if ((v16 & 1) == 0)
  {
    return sub_1E48786EC();
  }

  sub_1E484E7E8(v7);
  sub_1E48774EC();
  (*(v4 + 8))(v7, v21);
  v18 = MEMORY[0x1E6918080](v3);
  sub_1E47738B8(v3, &qword_1ECF7BE58, &unk_1E487DDB0);
  return v18;
}

uint64_t sub_1E484F78C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v257 = a2;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9F8, &qword_1E4883138);
  v3 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v256 = &v219 - v4;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA00, &qword_1E4883140);
  v5 = *(*(v237 - 8) + 64);
  MEMORY[0x1EEE9AC00](v237);
  v229 = &v219 - v6;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA08, &qword_1E4883148);
  v7 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234);
  v236 = &v219 - v8;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA10, &qword_1E4883150);
  v9 = *(*(v235 - 8) + 64);
  MEMORY[0x1EEE9AC00](v235);
  v220 = &v219 - v10;
  v265 = sub_1E487719C();
  v11 = *(v265 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v265);
  v264 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v263 = &v219 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v262 = &v219 - v17;
  v244 = type metadata accessor for TextStringThatFits();
  v18 = *(*(v244 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v244);
  v240 = (&v219 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v226 = &v219 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v239 = (&v219 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v224 = &v219 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v238 = (&v219 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v223 = &v219 - v29;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA18, &qword_1E4883158);
  v30 = *(*(v246 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v246);
  v227 = &v219 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v225 = &v219 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v228 = &v219 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v222 = &v219 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v245 = &v219 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v232 = &v219 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v221 = &v219 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v243 = &v219 - v45;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA20, &qword_1E4883160);
  v46 = *(*(v252 - 8) + 64);
  MEMORY[0x1EEE9AC00](v252);
  v233 = &v219 - v47;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA28, &qword_1E4883168);
  v242 = *(v249 - 8);
  v48 = *(v242 + 64);
  v49 = MEMORY[0x1EEE9AC00](v249);
  v219 = &v219 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v231 = &v219 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v230 = &v219 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA30, &qword_1E4883170);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v254 = &v219 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v250 = &v219 - v58;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0D8, &qword_1E487C680);
  v251 = *(v253 - 8);
  v59 = *(v251 + 64);
  v60 = MEMORY[0x1EEE9AC00](v253);
  v248 = &v219 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v260 = &v219 - v62;
  sub_1E4878D2C();
  v247 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v266 = sub_1E484EE58();
  v267 = v63;
  v241 = sub_1E477A374();
  v64 = sub_1E487848C();
  v66 = v65;
  v68 = v67;
  sub_1E484F540();
  v69 = sub_1E48783FC();
  v261 = a1;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v258 = v75;

  sub_1E477A3C8(v64, v66, v68 & 1);

  v259 = type metadata accessor for NoEventsView();
  v76 = *(v261 + *(v259 + 28));
  v77 = sub_1E487842C();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_1E477A3C8(v70, v72, v74 & 1);

  KeyPath = swift_getKeyPath();
  v266 = v77;
  v267 = v79;
  v268 = v81 & 1;
  v269 = v83;
  v270 = KeyPath;
  v271 = 1;
  v272 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E48784AC();
  sub_1E477A3C8(v77, v79, v81 & 1);
  v85 = v261;

  v86 = sub_1E484F3E0();
  if (v86)
  {
    v87 = v86;
    v88 = v259;
    v89 = *(v85 + *(v259 + 24));
    sub_1E484F2C4();
    if ((v89 & 1) == 0)
    {
      v258 = v87;
      v108 = MEMORY[0x1E69E7CD0];
      v266 = MEMORY[0x1E69E7CD0];
      v109 = sub_1E477A548(v90);
      v243 = 0;

      v110 = *(v85 + *(v88 + 32));
      v111 = *(v244 + 32);
      *(v239 + v111) = swift_getKeyPath();
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      v112 = *(v109 + 16);
      v259 = v110;
      if (v112)
      {
        v266 = MEMORY[0x1E69E7CC0];
        swift_retain_n();
        sub_1E4858274(0, v112, 0);
        v113 = v266;
        v262 = (v11 + 32);
        v241 = v109;
        v114 = (v109 + 40);
        do
        {
          v116 = *(v114 - 1);
          v115 = *v114;

          sub_1E4878D1C();
          sub_1E4878D0C();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v117 = v263;
          sub_1E487712C();

          v266 = v113;
          v119 = *(v113 + 16);
          v118 = *(v113 + 24);
          if (v119 >= v118 >> 1)
          {
            sub_1E4858274(v118 > 1, v119 + 1, 1);
            v113 = v266;
          }

          *(v113 + 16) = v119 + 1;
          (*(v11 + 32))(v113 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v119, v117, v265);
          v114 += 2;
          --v112;
        }

        while (v112);

        v110 = v259;
        v108 = MEMORY[0x1E69E7CD0];
      }

      else
      {
        swift_retain_n();

        v113 = MEMORY[0x1E69E7CC0];
      }

      v179 = v239;
      *v239 = v113;
      *(v179 + 8) = v110;
      *(v179 + 16) = 0;
      *(v179 + 24) = 0;
      v180 = v224;
      sub_1E4851394(v179, v224);
      v181 = 0;
      if (sub_1E484E690())
      {
        if (qword_1EE2B3C68 != -1)
        {
          swift_once();
        }

        v181 = qword_1EE2B3C70;
      }

      v182 = swift_getKeyPath();
      v183 = v180;
      v184 = v222;
      sub_1E4851394(v183, v222);
      v185 = (v184 + *(v246 + 36));
      *v185 = v182;
      v185[1] = v181;
      sub_1E48513F8(v184, v245);
      v266 = v108;
      v186 = sub_1E477A548(v258);

      v187 = *(v244 + 32);
      *(v240 + v187) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v188 = *(v186 + 16);
      if (v188)
      {
        v266 = MEMORY[0x1E69E7CC0];
        sub_1E4858274(0, v188, 0);
        v189 = v266;
        v262 = v186;
        v263 = (v11 + 32);
        v190 = (v186 + 40);
        do
        {
          v192 = *(v190 - 1);
          v191 = *v190;

          sub_1E4878D1C();
          sub_1E4878D0C();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v193 = v264;
          sub_1E487712C();

          v266 = v189;
          v195 = *(v189 + 16);
          v194 = *(v189 + 24);
          if (v195 >= v194 >> 1)
          {
            sub_1E4858274(v194 > 1, v195 + 1, 1);
            v189 = v266;
          }

          *(v189 + 16) = v195 + 1;
          (*(v11 + 32))(v189 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v195, v193, v265);
          v190 += 2;
          --v188;
        }

        while (v188);

        v110 = v259;
      }

      else
      {

        v189 = MEMORY[0x1E69E7CC0];
      }

      v196 = v240;
      *v240 = v189;
      *(v196 + 8) = v110;
      *(v196 + 16) = 0;
      *(v196 + 24) = 0;
      v197 = v226;
      sub_1E4851394(v196, v226);
      if (sub_1E484E690())
      {
        v178 = v256;
        v198 = v225;
        if (qword_1EE2B3C50 != -1)
        {
          swift_once();
        }

        v199 = qword_1EE2B3C58;
      }

      else
      {
        v199 = sub_1E48786FC();
        v178 = v256;
        v198 = v225;
      }

      v200 = swift_getKeyPath();
      sub_1E4851394(v197, v198);
      v201 = (v198 + *(v246 + 36));
      *v201 = v200;
      v201[1] = v199;
      v202 = v228;
      sub_1E48513F8(v198, v228);
      v203 = v232;
      sub_1E4773850(v245, v232, &qword_1ECF7DA18, &qword_1E4883158);
      v204 = v227;
      sub_1E4773850(v202, v227, &qword_1ECF7DA18, &qword_1E4883158);
      v205 = v229;
      sub_1E4773850(v203, v229, &qword_1ECF7DA18, &qword_1E4883158);
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA58, &qword_1E4883210);
      sub_1E4773850(v204, v205 + *(v206 + 48), &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E47738B8(v204, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E47738B8(v203, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E4773850(v205, v236, &qword_1ECF7DA00, &qword_1E4883140);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1ECF7DA40, &qword_1ECF7DA10, &qword_1E4883150);
      sub_1E4773680(&qword_1ECF7DA48, &qword_1ECF7DA00, &qword_1E4883140);
      v207 = v233;
      sub_1E487803C();
      v208 = v205;
      v176 = v207;
      sub_1E47738B8(v208, &qword_1ECF7DA00, &qword_1E4883140);
      sub_1E47738B8(v202, &qword_1ECF7DA18, &qword_1E4883158);
      v177 = v245;
      goto LABEL_59;
    }

    v266 = MEMORY[0x1E69E7CD0];
    v91 = sub_1E477A548(v90);

    v92 = *(v85 + *(v88 + 32));
    v93 = *(v244 + 32);
    *(v238 + v93) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v94 = *(v91 + 16);
    if (v94)
    {
      v258 = v87;
      v266 = MEMORY[0x1E69E7CC0];
      v263 = v92;

      sub_1E4858274(0, v94, 0);
      v95 = v266;
      v264 = (v11 + 32);
      v259 = v91;
      v96 = (v91 + 40);
      do
      {
        v97 = *(v96 - 1);
        v98 = *v96;

        sub_1E4878D1C();
        sub_1E4878D0C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v99 = v262;
        sub_1E487712C();

        v266 = v95;
        v101 = *(v95 + 16);
        v100 = *(v95 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_1E4858274(v100 > 1, v101 + 1, 1);
          v95 = v266;
        }

        *(v95 + 16) = v101 + 1;
        (*(v11 + 32))(v95 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v101, v99, v265);
        v96 += 2;
        --v94;
      }

      while (v94);

      v87 = v258;
      v92 = v263;
    }

    else
    {

      v95 = MEMORY[0x1E69E7CC0];
    }

    v139 = v238;
    *v238 = v95;
    *(v139 + 8) = v92;
    *(v139 + 16) = 0;
    *(v139 + 24) = 0;
    v140 = v223;
    sub_1E4851394(v139, v223);
    v141 = sub_1E484E690();
    v142 = 0;
    v143 = v243;
    if (v141)
    {
      if (qword_1EE2B3C68 != -1)
      {
        swift_once();
      }

      v142 = qword_1EE2B3C70;
    }

    v144 = swift_getKeyPath();
    v145 = v140;
    v105 = v221;
    sub_1E4851394(v145, v221);
    v146 = (v105 + *(v246 + 36));
    *v146 = v144;
    v146[1] = v142;
    sub_1E48513F8(v105, v143);
    if (v87[2])
    {
      v148 = v87[4];
      v147 = v87[5];

      v266 = v148;
      v267 = v147;
      v149 = sub_1E487848C();
      v151 = v150;
      v153 = v152;
      if (sub_1E484E690())
      {
        if (qword_1EE2B3C50 != -1)
        {
          swift_once();
        }
      }

      else
      {
        sub_1E48786FC();
      }

      v154 = sub_1E48783FC();
      v156 = v155;
      v158 = v157;

      sub_1E477A3C8(v149, v151, v153 & 1);

      v159 = sub_1E487842C();
      v161 = v160;
      v163 = v162;
      v165 = v164;
      sub_1E477A3C8(v154, v156, v158 & 1);

      v266 = v159;
      v267 = v161;
      v268 = v163 & 1;
      v269 = v165;
      v166 = v231;
      sub_1E48785EC();
      sub_1E477A3C8(v159, v161, v163 & 1);

      v167 = v232;
      sub_1E4773850(v243, v232, &qword_1ECF7DA18, &qword_1E4883158);
      v168 = v242;
      v169 = *(v242 + 16);
      v170 = v219;
      v171 = v166;
      v172 = v249;
      v169(v219, v171, v249);
      v173 = v220;
      sub_1E4773850(v167, v220, &qword_1ECF7DA18, &qword_1E4883158);
      v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA60, &qword_1E4883218);
      v169((v173 + *(v174 + 48)), v170, v172);
      v175 = *(v168 + 8);
      v175(v170, v172);
      sub_1E47738B8(v167, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E4773850(v173, v236, &qword_1ECF7DA10, &qword_1E4883150);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1ECF7DA40, &qword_1ECF7DA10, &qword_1E4883150);
      sub_1E4773680(&qword_1ECF7DA48, &qword_1ECF7DA00, &qword_1E4883140);
      v176 = v233;
      sub_1E487803C();
      v177 = v243;
      sub_1E47738B8(v173, &qword_1ECF7DA10, &qword_1E4883150);
      v175(v231, v172);
      v178 = v256;
LABEL_59:
      sub_1E47738B8(v177, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E4773850(v176, v178, &qword_1ECF7DA20, &qword_1E4883160);
      swift_storeEnumTagMultiPayload();
      sub_1E48512B4();
      v266 = MEMORY[0x1E6981150];
      v267 = MEMORY[0x1E6981140];
      swift_getOpaqueTypeConformance2();
      v138 = v250;
      sub_1E487803C();
      sub_1E47738B8(v176, &qword_1ECF7DA20, &qword_1E4883160);
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_62;
  }

  v95 = v259;
  sub_1E484F2C4();
  if (v102[2])
  {
    v104 = v102[4];
    v103 = v102[5];

    v266 = v104;
    v267 = v103;
    v105 = sub_1E487848C();
    v87 = v106;
    LOBYTE(v11) = v107;
    if ((sub_1E484E690() & 1) == 0)
    {
      sub_1E48786FC();
      goto LABEL_26;
    }

    if (qword_1EE2B3C50 == -1)
    {
LABEL_16:

LABEL_26:
      v120 = sub_1E48783FC();
      v122 = v121;
      v124 = v123;

      sub_1E477A3C8(v105, v87, v11 & 1);

      v125 = *(v261 + *(v95 + 32));
      v126 = sub_1E487842C();
      v128 = v127;
      v130 = v129;
      v132 = v131;
      sub_1E477A3C8(v120, v122, v124 & 1);

      v266 = v126;
      v267 = v128;
      v268 = v130 & 1;
      v269 = v132;
      v133 = MEMORY[0x1E6981150];
      v134 = MEMORY[0x1E6981140];
      v135 = v230;
      sub_1E48785EC();
      sub_1E477A3C8(v126, v128, v130 & 1);

      v136 = v242;
      v137 = v249;
      (*(v242 + 16))(v256, v135, v249);
      swift_storeEnumTagMultiPayload();
      sub_1E48512B4();
      v266 = v133;
      v267 = v134;
      swift_getOpaqueTypeConformance2();
      v138 = v250;
      sub_1E487803C();
      (*(v136 + 8))(v135, v137);
LABEL_60:
      v209 = v257;
      v210 = v251;
      v211 = *(v251 + 16);
      v212 = v248;
      v213 = v260;
      v214 = v253;
      v211(v248, v260, v253);
      v215 = v254;
      sub_1E4773850(v138, v254, &qword_1ECF7DA30, &qword_1E4883170);
      v211(v209, v212, v214);
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA50, &qword_1E48831A8);
      sub_1E4773850(v215, &v209[*(v216 + 48)], &qword_1ECF7DA30, &qword_1E4883170);
      sub_1E47738B8(v138, &qword_1ECF7DA30, &qword_1E4883170);
      v217 = *(v210 + 8);
      v217(v213, v214);
      sub_1E47738B8(v215, &qword_1ECF7DA30, &qword_1E4883170);
      v217(v212, v214);
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4851264@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4877FBC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9F0, &qword_1E4883130);
  return sub_1E484F78C(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_1E48512B4()
{
  result = qword_1ECF7DA38;
  if (!qword_1ECF7DA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA20, &qword_1E4883160);
    sub_1E4773680(&qword_1ECF7DA40, &qword_1ECF7DA10, &qword_1E4883150);
    sub_1E4773680(&qword_1ECF7DA48, &qword_1ECF7DA00, &qword_1E4883140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DA38);
  }

  return result;
}

uint64_t sub_1E4851394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextStringThatFits();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48513F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA18, &qword_1E4883158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E48514B0()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E485531C(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E485531C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E478305C();
        if (v3 <= 0x3F)
        {
          sub_1E485531C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_1E4851628@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = type metadata accessor for Event();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E487732C();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DayEvents();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  v57 = a3;
  v20 = sub_1E485E54C(v19, a1, a2, a3);

  sub_1E48547B8(v19, type metadata accessor for DayEvents);
  v21 = *(v20 + 16);
  v56 = v12;
  if (!v21)
  {
    v44 = sub_1E4854818();
    v42 = 0;
    v33 = 0;
    v45 = v57;
    v35 = v58;
LABEL_14:
    *a4 = v44;
    *(a4 + 8) = v33;
    EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
    sub_1E476DFDC(v20, a4 + *(EventContentViewModel + 28));

    v48 = sub_1E487753C();
    (*(*(v48 - 8) + 8))(v45, v48);
    result = (*(v56 + 8))(a1, v35);
    *(a4 + 16) = v42;
    return result;
  }

  v50 = a1;
  v51 = a4;
  v22 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v23 = *(v12 + 16);
  v52 = *(v55 + 20);
  v53 = v12 + 16;
  v54 = v23;
  v23(v15, v22 + v52, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D958, &qword_1E4882DC8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E4883230;
  v25 = objc_opt_self();
  v26 = sub_1E48772BC();
  v27 = v57;
  v28 = v26;
  v29 = sub_1E487748C();
  v30 = [v25 timeAttributedTextWithDate:v28 calendar:v29 font:0 options:17];

  v49 = v24;
  *(v24 + 32) = v30;
  v31 = *(v56 + 8);
  v32 = v58;
  v31(v15, v58);
  v54(v15, v22 + v52, v32);
  v33 = sub_1E4854B18(v15, v27);
  v31(v15, v32);
  v34 = *(v20 + 16);
  v35 = v32;
  if (!v34)
  {
    v46 = v33;
    v42 = 1;
LABEL_13:
    a1 = v50;
    a4 = v51;
    v45 = v57;
    v44 = v49;
    goto LABEL_14;
  }

  v36 = *(v55 + 56);
  result = v33;
  v38 = 0;
  v39 = v34 - 1;
  while (v38 < *(v20 + 16))
  {
    sub_1E485569C(v22 + *(v8 + 72) * v38, v11, type metadata accessor for Event);
    v40 = v11[v36];
    result = sub_1E48547B8(v11, type metadata accessor for Event);
    v41 = v40 - 3;
    v42 = (v40 - 3) < 2;
    if (v41 > 1 || v39 == v38++)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4851A84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA90, &qword_1E4883430);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA98, &qword_1E4883438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v11[0] = sub_1E487874C();
  sub_1E487852C();

  *&v3[*(v0 + 36)] = sub_1E487863C();
  v9 = sub_1E4855A4C();
  sub_1E48784AC();
  sub_1E47738B8(v3, &qword_1ECF7DA90, &qword_1E4883430);
  v11[0] = v0;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_1E48784FC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E4851C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  EventContentView = type metadata accessor for CircularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 24), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4851E84()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CircularNextEventContentView(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E4851FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  EventContentView = type metadata accessor for CircularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 32), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_1E48521E4()
{
  sub_1E485573C(v1);
  xmmword_1EE2BAD80 = v1[2];
  unk_1EE2BAD90 = v1[3];
  xmmword_1EE2BADA0 = v1[4];
  unk_1EE2BADB0 = v1[5];
  result = *v1;
  xmmword_1EE2BAD60 = v1[0];
  *algn_1EE2BAD70 = v1[1];
  return result;
}

uint64_t sub_1E4852228@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1E4773850(v2, &v17 - v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E4852428@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB10, &qword_1E4883560);
  v3 = *(*(v27[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v27[0]);
  v5 = (v27 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF38, &qword_1E487FAC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  v10 = sub_1E4877CCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v27 - v16;
  sub_1E4852228(v27 - v16);
  sub_1E4877CAC();
  sub_1E4854770(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v18 = sub_1E4878EAC();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  if (v18)
  {
    v28 = xmmword_1E4883240;
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1E48784FC();
    v20 = *(v2 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24) + 8);
    KeyPath = swift_getKeyPath();
    v22 = &v9[*(v6 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    sub_1E4773850(v9, v5, &qword_1ECF7CF38, &qword_1E487FAC8);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C028, &qword_1E487C598);
    sub_1E4855E88();
    sub_1E479A3B0();
    sub_1E487803C();
    return sub_1E47738B8(v9, &qword_1ECF7CF38, &qword_1E487FAC8);
  }

  else
  {
    v24 = sub_1E487874C();
    v25 = *(v2 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24) + 8);
    v26 = swift_getKeyPath();
    *v5 = v24;
    v5[1] = v26;
    v5[2] = v25;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C028, &qword_1E487C598);
    sub_1E4855E88();
    sub_1E479A3B0();
    return sub_1E487803C();
  }
}

uint64_t sub_1E48527D0@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_1E4877CCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - v8;
  v10 = sub_1E487719C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF30, &qword_1E487FAC0);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v57 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF38, &qword_1E487FAC8);
  v15 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF40, &qword_1E487FAD0);
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v57 - v23;
  EventContent = type metadata accessor for CircularNextEventContentView.ScheduleContentView(0);
  v25 = v1 + *(EventContent + 20);
  v26 = *(v25 + 8);
  if (v26)
  {
    v57 = EventContent;
    v58 = v18;
    v27 = v26;
    v59 = v1;
    v60 = v27;
    sub_1E4852228(v9);
    sub_1E4877CAC();
    sub_1E4854770(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
    v28 = sub_1E4878EAC();
    v29 = *(v3 + 8);
    v29(v7, v2);
    v29(v9, v2);
    if (v28)
    {
      sub_1E487712C();
    }

    else
    {
      v33 = v60;
      sub_1E48771DC();
    }

    v34 = sub_1E487847C();
    v36 = v35;
    v38 = v37;
    v39 = *(v25 + 16);
    v40 = sub_1E48783EC();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_1E477A3C8(v34, v36, v38 & 1);

    v68 = v40;
    v69 = v42;
    v70 = v44 & 1;
    v71 = v46;
    v47 = v63;
    sub_1E48784FC();

    sub_1E477A3C8(v40, v42, v44 & 1);

    v48 = *(v59 + *(v57 + 24) + 80);
    KeyPath = swift_getKeyPath();
    (*(v64 + 32))(v17, v47, v65);
    v50 = &v17[*(v62 + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = swift_getKeyPath();
    sub_1E477372C(v17, v22, &qword_1ECF7CF38, &qword_1E487FAC8);
    v52 = v58;
    v53 = &v22[*(v58 + 36)];
    *v53 = v51;
    *(v53 + 1) = 1;
    v53[16] = 0;
    v54 = v61;
    sub_1E477372C(v22, v61, &qword_1ECF7CF40, &qword_1E487FAD0);
    v55 = v54;
    v56 = v67;
    sub_1E477372C(v55, v67, &qword_1ECF7CF40, &qword_1E487FAD0);
    (*(v66 + 56))(v56, 0, 1, v52);
  }

  else
  {
    v30 = v67;
    v31 = *(v66 + 56);

    return v31(v30, 1, 1, v18);
  }
}

uint64_t sub_1E4852D3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB00, &qword_1E4883548);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB18, &qword_1E48835D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAF0, &qword_1E4883538);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = (v0 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24));
  if (*v13 == 1 && v13[1] == 1)
  {
    sub_1E48527D0(v12);
    sub_1E4773850(v12, v8, &qword_1ECF7DAF0, &qword_1E4883538);
    swift_storeEnumTagMultiPayload();
    sub_1E4855F70();
    sub_1E4855DFC();
    sub_1E487803C();
    v14 = v12;
    v15 = &qword_1ECF7DAF0;
    v16 = &qword_1E4883538;
  }

  else
  {
    sub_1E4852428(v4);
    sub_1E4773850(v4, v8, &qword_1ECF7DB00, &qword_1E4883548);
    swift_storeEnumTagMultiPayload();
    sub_1E4855F70();
    sub_1E4855DFC();
    sub_1E487803C();
    v14 = v4;
    v15 = &qword_1ECF7DB00;
    v16 = &qword_1E4883548;
  }

  return sub_1E47738B8(v14, v15, v16);
}

uint64_t sub_1E4852F84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAF0, &qword_1E4883538);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAF8, &qword_1E4883540);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB00, &qword_1E4883548);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB08, &unk_1E4883550);
  v26 = *(v15 - 8);
  v16 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v19 = (v1 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24));
  if (v19[1] == 1)
  {
    if (*v19 == 1)
    {
      sub_1E4852428(v14);
      sub_1E4773850(v14, v10, &qword_1ECF7DB00, &qword_1E4883548);
      swift_storeEnumTagMultiPayload();
      sub_1E4855DFC();
      sub_1E4855F70();
      sub_1E487803C();
      v20 = v14;
      v21 = &qword_1ECF7DB00;
      v22 = &qword_1E4883548;
    }

    else
    {
      sub_1E48527D0(v6);
      sub_1E4773850(v6, v10, &qword_1ECF7DAF0, &qword_1E4883538);
      swift_storeEnumTagMultiPayload();
      sub_1E4855DFC();
      sub_1E4855F70();
      sub_1E487803C();
      v20 = v6;
      v21 = &qword_1ECF7DAF0;
      v22 = &qword_1E4883538;
    }

    sub_1E47738B8(v20, v21, v22);
    sub_1E477372C(v18, a1, &qword_1ECF7DB08, &unk_1E4883550);
    return (*(v26 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v23 = *(v26 + 56);

    return v23(a1, 1, 1, v15);
  }
}

uint64_t sub_1E48532E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAB8, &qword_1E4883500);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = sub_1E48788EC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  sub_1E4878D2C();
  v27 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E48788DC();
  *v9 = sub_1E4877FAC();
  *(v9 + 1) = 0xBFF0000000000000;
  v9[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAC0, &qword_1E4883508);
  sub_1E48535C4(a1, &v9[*(v18 + 44)]);
  v19 = v11[2];
  v19(v15, v17, v10);
  sub_1E4773850(v9, v7, &qword_1ECF7DAB8, &qword_1E4883500);
  v20 = v17;
  v21 = v15;
  v22 = v7;
  v23 = v28;
  v19(v28, v21, v10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAC8, &qword_1E4883510);
  sub_1E4773850(v22, &v23[*(v24 + 48)], &qword_1ECF7DAB8, &qword_1E4883500);
  sub_1E47738B8(v9, &qword_1ECF7DAB8, &qword_1E4883500);
  v25 = v11[1];
  v25(v20, v10);
  sub_1E47738B8(v22, &qword_1ECF7DAB8, &qword_1E4883500);
  v25(v21, v10);
}

size_t sub_1E48535C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  *&v84 = sub_1E487719C();
  v3 = *(v84 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAD0, &qword_1E4883518);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v65[-v10];
  v11 = type metadata accessor for TextStringThatFits();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v81 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65[-v15];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAD8, &qword_1E4883520);
  v16 = *(*(v69 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v69);
  v19 = &v65[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v68 = &v65[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v65[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAE0, &qword_1E4883528);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = &v65[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v65[-v27];
  sub_1E4878D2C();
  v29 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4852D3C();
  EventContent = type metadata accessor for CircularNextEventContentView.ScheduleContentView(0);
  v31 = (a1 + *(EventContent + 20));
  v32 = *v31;
  v33 = a1 + *(EventContent + 24);
  v79 = *(v33 + 40);
  v67 = v33;
  v34 = *(v33 + 88);
  v66 = *(v31 + 16);
  v35 = *(v11 + 32);
  *(v81 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v36 = v32;
  swift_storeEnumTagMultiPayload();
  if (v32 >> 62)
  {
    v37 = sub_1E4878F0C();
  }

  else
  {
    v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v80;
  v74 = v19;
  v75 = a1;
  v71 = v29;
  v78 = v28;
  if (!v37)
  {
    v48 = v79;

    v41 = MEMORY[0x1E69E7CC0];
    v49 = v77;
LABEL_18:
    v50 = v81;
    *v81 = v41;
    *(v50 + 8) = v48;
    *(v50 + 16) = v34;
    *(v50 + 24) = v66;
    v51 = v70;
    sub_1E4851394(v50, v70);
    v52 = *(v67 + 48);
    v84 = *(v67 + 64);
    v85 = v52;
    v53 = sub_1E487814C();
    v54 = v51;
    v55 = v68;
    sub_1E4851394(v54, v68);
    v56 = &v55[*(v69 + 36)];
    *v56 = v53;
    v57 = v85;
    *(v56 + 24) = v84;
    *(v56 + 8) = v57;
    v56[40] = 0;
    v58 = v72;
    sub_1E4855D8C(v55, v72);
    v59 = v76;
    sub_1E4852F84(v76);
    v60 = v28;
    v61 = v73;
    sub_1E4773850(v60, v73, &qword_1ECF7DAE0, &qword_1E4883528);
    v62 = v74;
    sub_1E4773850(v58, v74, &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E4773850(v59, v49, &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E4773850(v61, v38, &qword_1ECF7DAE0, &qword_1E4883528);
    v63 = v38;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAE8, &qword_1E4883530);
    sub_1E4773850(v62, v63 + *(v64 + 48), &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E4773850(v49, v63 + *(v64 + 64), &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E47738B8(v59, &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E47738B8(v58, &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E47738B8(v78, &qword_1ECF7DAE0, &qword_1E4883528);
    sub_1E47738B8(v49, &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E47738B8(v62, &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E47738B8(v61, &qword_1ECF7DAE0, &qword_1E4883528);
  }

  *&v85 = v36;
  v86 = MEMORY[0x1E69E7CC0];

  result = sub_1E4858274(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v82 = v37;
    v40 = 0;
    v41 = v86;
    v42 = v85;
    v43 = v85 & 0xC000000000000001;
    do
    {
      if (v43)
      {
        MEMORY[0x1E6919650](v40);
      }

      else
      {
        v44 = *(v42 + 8 * v40 + 32);
      }

      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v45 = v83;
      sub_1E48771DC();

      v86 = v41;
      v47 = *(v41 + 16);
      v46 = *(v41 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1E4858274(v46 > 1, v47 + 1, 1);
        v41 = v86;
      }

      ++v40;
      *(v41 + 16) = v47 + 1;
      (*(v3 + 32))(v41 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v47, v45, v84);
      v42 = v85;
    }

    while (v82 != v40);
    v48 = v79;
    v38 = v80;
    v49 = v77;
    v28 = v78;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4853D14@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E487889C();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAB0, &qword_1E48834F8);
  return sub_1E48532E8(v1, a1 + *(v4 + 44));
}

uint64_t sub_1E4853D60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  EventContent = type metadata accessor for CircularNextEventContentView.ScheduleContentView(0);
  sub_1E485569C(v2 + v4, a2 + *(EventContent + 20), type metadata accessor for CircularNextEventContentViewModel);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v6 = *(EventContent + 24);
  if (qword_1EE2B2090 != -1)
  {
    swift_once();
  }

  v7 = (a2 + v6);
  v8 = unk_1EE2BAD90;
  v15[2] = xmmword_1EE2BAD80;
  v15[3] = unk_1EE2BAD90;
  v9 = xmmword_1EE2BADA0;
  v10 = unk_1EE2BADB0;
  v15[4] = xmmword_1EE2BADA0;
  v15[5] = unk_1EE2BADB0;
  v11 = xmmword_1EE2BAD60;
  v12 = *algn_1EE2BAD70;
  v15[0] = xmmword_1EE2BAD60;
  v15[1] = *algn_1EE2BAD70;
  v7[2] = xmmword_1EE2BAD80;
  v7[3] = v8;
  v7[4] = v9;
  v7[5] = v10;
  *v7 = v11;
  v7[1] = v12;
  return sub_1E4855704(v15, &v14);
}

uint64_t sub_1E4853E68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_1E48780BC();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
  v6 = *(*(EventContentViewModel - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v67 - v10;
  v11 = sub_1E487753C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContent = type metadata accessor for CircularNextEventContentView.BodyContentContainer(0);
  v19 = *(*(EventContent - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContent);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA78, &qword_1E48832C8);
  v72 = *(v86 - 8);
  v22 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v71 = &v67 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA80, &qword_1E48832D0);
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v67 - v26;
  v27 = sub_1E4877CCC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v67 - v33;
  sub_1E4851FDC(&v67 - v33);
  sub_1E4877CAC();
  sub_1E4854770(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v83 = sub_1E4878EAC();
  v35 = *(v28 + 8);
  v35(v32, v27);
  v35(v34, v27);
  v37 = v81;
  v36 = EventContent;
  v38 = *(v15 + 16);
  v38(&v21[*(EventContent + 24)], v2, v14);
  v39 = v2;
  v40 = *(v2 + *(type metadata accessor for CircularNextEventContentView(0) + 20));
  v74 = v15 + 16;
  v38(v18, v39, v14);
  swift_bridgeObjectRetain_n();
  v41 = v39;
  sub_1E4851C7C(v37);
  sub_1E4851628(v18, v40, v37, &v21[v36[8]]);
  KeyPath = swift_getKeyPath();
  *&v21[v36[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *v21 = KeyPath;
  v21[8] = 0;
  *&v21[v36[7]] = v40;
  v70 = v14;
  v68 = v38;
  if (v83)
  {
    v43 = sub_1E487725C();
    (*(*(v43 - 8) + 56))(v84, 1, 1, v43);
    v44 = v73;
  }

  else
  {
    v45 = v41;
    v38(v18, v41, v14);

    sub_1E4851C7C(v37);
    v46 = v73;
    sub_1E4851628(v18, v40, v37, v73);
    sub_1E4773850(v46 + *(EventContentViewModel + 28), v84, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E48547B8(v46, type metadata accessor for CircularNextEventContentViewModel);
    v44 = v46;
    v41 = v45;
  }

  v47 = v40;
  v48 = sub_1E4854770(&qword_1EE2B2138, type metadata accessor for CircularNextEventContentView.BodyContentContainer);
  v49 = v71;
  v50 = v84;
  v51 = EventContent;
  sub_1E48784BC();
  sub_1E47738B8(v50, &unk_1ECF7B688, &qword_1E487C160);
  sub_1E48547B8(v21, type metadata accessor for CircularNextEventContentView.BodyContentContainer);
  v52 = v77;
  sub_1E487809C();
  v87 = v51;
  v88 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v86;
  sub_1E48785AC();
  (*(v78 + 8))(v52, v79);
  (*(v72 + 8))(v49, v54);
  if (v83)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  else
  {
    v68(v18, v41, v70);

    v58 = v81;
    sub_1E4851C7C(v81);
    sub_1E4851628(v18, v47, v58, v44);
    sub_1E4851E84();
    v59 = sub_1E4854F24();
    v61 = v60;
    sub_1E48547B8(v44, type metadata accessor for CircularNextEventContentViewModel);
    v87 = v59;
    v88 = v61;
    sub_1E477A374();
    v55 = sub_1E487848C();
    v57 = v62;
    v56 = v63;
  }

  v87 = v86;
  v88 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v76;
  v65 = v85;
  sub_1E487856C();
  sub_1E477A3C8(v55, v57, v56 & 1);

  return (*(v75 + 8))(v65, v64);
}

uint64_t sub_1E4854770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E48547B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4854818()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  sub_1E48771EC();
  v0 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E4878FFC();

  sub_1E481E4BC(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v2 = sub_1E4878B9C();

  type metadata accessor for Key(0);
  sub_1E4854770(&qword_1EE2B0D70, type metadata accessor for Key);
  v3 = sub_1E4878A7C();

  [v1 initWithString:v2 attributes:{v3, 0x80000001E48AA3E0}];

  sub_1E4878FDC();
  v4 = *(v10 + 16);
  sub_1E487900C();
  sub_1E487901C();
  sub_1E4878FEC();

  sub_1E481E4BC(v0);
  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v6 = sub_1E4878B9C();

  v7 = sub_1E4878A7C();

  [v5 initWithString:v6 attributes:v7];

  sub_1E4878FDC();
  v8 = *(v10 + 16);
  sub_1E487900C();
  sub_1E487901C();
  sub_1E4878FEC();
  swift_arrayDestroy();
  return v10;
}

id sub_1E4854B18(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_1E487757C();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = sub_1E487744C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  sub_1E48774EC();
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    sub_1E48773EC();
    if (v19(v13, 1, v14) != 1)
    {
      sub_1E47738B8(v13, &qword_1ECF7BE58, &unk_1E487DDB0);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  v20 = sub_1E485F184();
  v21 = *(v15 + 8);
  v21(v18, v14);
  if (v20)
  {
    return 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v24 = sub_1E487748C();
  [v23 setCalendar_];

  sub_1E487750C();
  v25 = sub_1E487756C();
  (*(v31 + 8))(v6, v32);
  [v23 setTimeZone_];

  sub_1E48774EC();
  if (v19(v11, 1, v14) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1E48773DC();
    v21(v11, v14);
  }

  [v23 setLocale_];

  v27 = sub_1E4878B9C();
  [v23 setLocalizedDateFormatFromTemplate_];

  v28 = sub_1E48772BC();
  v29 = [v23 stringFromDate_];

  if (!v29)
  {
    sub_1E4878BDC();
    v29 = sub_1E4878B9C();
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  return v30;
}

uint64_t sub_1E4854F24()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E487A7F0;
  v2 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:
    v7 = 0;
    v9 = 0;
LABEL_13:
    v11 = MEMORY[0x1E69E6158];
    *(v1 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1E478B950();
    *(v1 + 64) = v12;
    if (v9)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    if (v9)
    {
      v14 = v9;
    }

    *(v1 + 32) = v13;
    *(v1 + 40) = v14;
    v15 = v0[1];
    if (v15)
    {
      v16 = [v15 string];
      v17 = sub_1E4878BDC();
      v19 = v18;

      v20 = (v1 + 72);
      *(v1 + 96) = v11;
      *(v1 + 104) = v12;
      if (v19)
      {
        *v20 = v17;
LABEL_23:
        *(v1 + 80) = v19;
        v21 = sub_1E4878BAC();

        return v21;
      }
    }

    else
    {
      v20 = (v1 + 72);
      *(v1 + 96) = v11;
      *(v1 + 104) = v12;
    }

    *v20 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_23;
  }

  if (v2 < 0)
  {
    v10 = *v0;
  }

  result = sub_1E4878F0C();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6919650](0, v2);
    goto LABEL_8;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_8:
    v5 = v4;
    v6 = [v4 string];

    v7 = sub_1E4878BDC();
    v9 = v8;

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1E485519C()
{
  sub_1E485531C(319, &qword_1EE2B0DB0, sub_1E48552D0, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E485531C(319, &qword_1EE2B0D80, sub_1E48552D0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E485531C(319, &qword_1EE2B4660, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E48552D0()
{
  result = qword_1EE2B0D88;
  if (!qword_1EE2B0D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B0D88);
  }

  return result;
}

void sub_1E485531C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E48553B8()
{
  sub_1E478305C();
  if (v0 <= 0x3F)
  {
    sub_1E485531C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      sub_1E487732C();
      if (v2 <= 0x3F)
      {
        sub_1E485531C(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CircularNextEventContentViewModel(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E48554E4()
{
  result = qword_1EE2B1510;
  if (!qword_1EE2B1510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA88, qword_1E4883388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA78, &qword_1E48832C8);
    type metadata accessor for CircularNextEventContentView.BodyContentContainer(255);
    sub_1E4854770(&qword_1EE2B2138, type metadata accessor for CircularNextEventContentView.BodyContentContainer);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E4854770(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1510);
  }

  return result;
}

uint64_t sub_1E485569C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1E485573C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E48782AC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487744C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48773EC();
  if (sub_1E485F184())
  {
    (*(v8 + 8))(v11, v7);
    v21 = 0;
  }

  else
  {
    v12 = sub_1E48773DC();
    v13 = [v12 positionOfDayPeriodInFormattedTime];

    (*(v8 + 8))(v11, v7);
    v21 = v13 == 1;
  }

  sub_1E48782BC();
  v14 = *MEMORY[0x1E6980EA0];
  v15 = v3[13];
  v15(v6, v14, v2);
  v20 = sub_1E48782CC();

  v16 = v3[1];
  v16(v6, v2);
  sub_1E48781EC();
  sub_1E487825C();
  sub_1E487829C();

  v15(v6, v14, v2);
  v17 = sub_1E48782CC();

  v16(v6, v2);
  sub_1E48782BC();
  v15(v6, v14, v2);
  v18 = sub_1E48782CC();

  v16(v6, v2);
  *a1 = v21;
  *(a1 + 1) = 1;
  *(a1 + 2) = *&v22[9];
  *(a1 + 6) = v23;
  *(a1 + 8) = v20;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 25) = *v22;
  *(a1 + 28) = *&v22[3];
  *(a1 + 32) = 0;
  *(a1 + 40) = v17;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v18;
  *(a1 + 88) = 0x4010000000000000;
  return result;
}

unint64_t sub_1E4855A4C()
{
  result = qword_1EE2B1390;
  if (!qword_1EE2B1390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA90, &qword_1E4883430);
    sub_1E4855B04();
    sub_1E4773680(&unk_1EE2B10E8, &qword_1ECF7DAA8, &qword_1E4883448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1390);
  }

  return result;
}

unint64_t sub_1E4855B04()
{
  result = qword_1EE2B14D0;
  if (!qword_1EE2B14D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DAA0, &qword_1E4883440);
    sub_1E4854770(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14D0);
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

uint64_t sub_1E4855BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E4855C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E4855CB4()
{
  sub_1E485531C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CircularNextEventContentViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4855D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAD8, &qword_1E4883520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4855DFC()
{
  result = qword_1EE2B11F8;
  if (!qword_1EE2B11F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DB00, &qword_1E4883548);
    sub_1E4855E88();
    sub_1E479A3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11F8);
  }

  return result;
}

unint64_t sub_1E4855E88()
{
  result = qword_1EE2B5A70;
  if (!qword_1EE2B5A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CF38, &qword_1E487FAC8);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A70);
  }

  return result;
}

unint64_t sub_1E4855F70()
{
  result = qword_1EE2B13F0;
  if (!qword_1EE2B13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DAF0, &qword_1E4883538);
    sub_1E4855FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13F0);
  }

  return result;
}

unint64_t sub_1E4855FF4()
{
  result = qword_1EE2B5A68;
  if (!qword_1EE2B5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CF40, &qword_1E487FAD0);
    sub_1E4855E88();
    sub_1E4773680(&qword_1EE2B5A48, &qword_1ECF7B938, &qword_1E487AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A68);
  }

  return result;
}

uint64_t sub_1E48560AC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Event();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1E4858E18(a3 + v16 + v17 * v14, v13, type metadata accessor for Event);
      v18 = a1(v13);
      if (v3)
      {
        sub_1E4858E80(v13, type metadata accessor for Event);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1E485910C(v13, v25, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1E4858038(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_1E485910C(v25, v15 + v16 + v21 * v17, type metadata accessor for Event);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1E4858E80(v13, type metadata accessor for Event);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1E4856338(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4878F0C())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x1E6919650](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1E4878FDC();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_1E487900C();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_1E487901C();
        sub_1E4878FEC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t sub_1E48564E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1E4858124(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for DayEvents() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
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
      sub_1E4858124(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1E485910C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4856734(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1E4878FFC();
    v9 = *(type metadata accessor for Event() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1E4878FDC();
      v12 = *(v14 + 16);
      sub_1E487900C();
      sub_1E487901C();
      sub_1E4878FEC();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}