uint64_t sub_1E592163C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v82 - v7;
  v9 = type metadata accessor for WorkoutPlanScheduledItem();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v82 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v82 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v91 = (&v82 - v20);
  v21 = v1[5];
  v109 = v1[4];
  v110 = v21;
  v22 = v1[7];
  v111 = v1[6];
  v112 = v22;
  v23 = v1[1];
  v105 = *v1;
  v106 = v23;
  v24 = v1[3];
  v107 = v1[2];
  v108 = v24;
  result = type metadata accessor for EditItem();
  v26 = (a1 + *(result + 36));
  v27 = v26[1];
  if (!v27)
  {
    return result;
  }

  v28 = result;
  v29 = a1 + *(result + 28);
  if (*(v29 + 8))
  {
    return result;
  }

  v89 = (a1 + *(result + 28));
  v90 = v26;
  v30 = *v29;
  v87 = *v26;
  v88 = v30;
  sub_1E58BABA0(a1, v8, &qword_1ECFFB790, &qword_1E5A2D620);
  if ((*(v93 + 48))(v8, 1, v94) != 1)
  {
    v31 = v8;
    v32 = v91;
    sub_1E59326EC(v31, v91, type metadata accessor for WorkoutPlanScheduledItem);
    v33 = a1 + v28[5];
    if (*(v33 + 8) == 1 || *(a1 + v28[6]) == 7)
    {
      sub_1E5932F40(v32, type metadata accessor for WorkoutPlanScheduledItem);
      goto LABEL_8;
    }

    v85 = *(a1 + v28[6]);
    v83 = *v33;
    v52 = *(type metadata accessor for WorkoutPlanCreationLocalState() + 112);
    v86 = v52;
    v53 = *(a1 + v52);
    if (!v53)
    {
      sub_1E5932F40(v32, type metadata accessor for WorkoutPlanScheduledItem);
      goto LABEL_9;
    }

    *&v97 = *(a1 + v52);
    v54 = *(a1 + v28[10]);
    v55 = v28[8];
    if (*(a1 + v55))
    {
      v84 = *(a1 + v55);
    }

    else
    {
      v84 = v91[1];
      v82 = v54;

      v54 = v82;
    }

    if (v54 == 7 || v54 == v85)
    {
      v56 = v86;
      if (!*(v53 + 16) || (v57 = sub_1E58EF458(v85, 0, 0, 0), v56 = v86, (v58 & 1) == 0))
      {

        sub_1E5932F40(v91, type metadata accessor for WorkoutPlanScheduledItem);
        goto LABEL_43;
      }

      v59 = *(*(v53 + 56) + 8 * v57);
      v60 = v94;
      v82 = *(v94 + 24);

      sub_1E5A29E64();
      v61 = (v19 + *(v60 + 28));
      *v61 = v87;
      v61[1] = v27;
      v62 = v84;
      *v19 = v88;
      v19[1] = v62;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1E59302D4(v59);
      }

      v13 = v91;
      if ((v83 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v83 < v59[2])
      {
        sub_1E5932154(v19, v59 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v83);
        v63 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = v63;
        sub_1E592C8B4(v59, v85, 0, 0, 0, isUniquelyReferenced_nonNull_native);
        v53 = v96;
        sub_1E5932F40(v13, type metadata accessor for WorkoutPlanScheduledItem);
        v56 = v86;
LABEL_43:
        v81 = *(a1 + v56);

        *(a1 + v56) = v53;
        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      if (!*(v53 + 16) || (v82 = v54, v65 = sub_1E58EF458(v85, 0, 0, 0), (v66 & 1) == 0))
      {

        v70 = v53;

LABEL_42:
        v56 = v86;
        sub_1E5932F40(v91, type metadata accessor for WorkoutPlanScheduledItem);
        v53 = v70;
        goto LABEL_43;
      }

      v96 = *(*(v53 + 56) + 8 * v65);

      sub_1E5925ED0(v83, v16);
      sub_1E5932F40(v16, type metadata accessor for WorkoutPlanScheduledItem);
      v67 = v96;
      if (*(v96 + 16))
      {
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v95 = v53;
        sub_1E592C8B4(v67, v85, 0, 0, 0, v68);
        v69 = v95;
        *&v97 = v95;
      }

      else
      {

        sub_1E592C62C(v85, 0, 0, 0);

        v69 = v97;
      }

      if (*(v69 + 16) && (v71 = sub_1E58EF458(v82, 0, 0, 0), (v72 & 1) != 0))
      {
        v59 = *(*(v69 + 56) + 8 * v71);
      }

      else
      {
        v59 = MEMORY[0x1E69E7CC0];
      }

      v73 = v94;
      v74 = v13 + *(v94 + 24);
      sub_1E5A29E64();
      v75 = (v13 + *(v73 + 28));
      *v75 = v87;
      v75[1] = v27;
      v76 = v84;
      *v13 = v88;
      v13[1] = v76;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_39:
        v78 = v59[2];
        v77 = v59[3];
        if (v78 >= v77 >> 1)
        {
          v59 = sub_1E58E7050(v77 > 1, v78 + 1, 1, v59);
        }

        v59[2] = v78 + 1;
        sub_1E59326EC(v13, v59 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v78, type metadata accessor for WorkoutPlanScheduledItem);
        v79 = v97;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v95 = v79;
        sub_1E592C8B4(v59, v82, 0, 0, 0, v80);
        v70 = v95;
        goto LABEL_42;
      }
    }

    v59 = sub_1E58E7050(0, v59[2] + 1, 1, v59);
    goto LABEL_39;
  }

  sub_1E58C3420(v8);
LABEL_8:
  v34 = v1[5];
  v101 = v1[4];
  v102 = v34;
  v35 = v1[7];
  v103 = v1[6];
  v104 = v35;
  v36 = v1[1];
  v97 = *v1;
  v98 = v36;
  v37 = v1[3];
  v99 = v1[2];
  v100 = v37;
  sub_1E5925BC0(a1, v87, v27, v88);
LABEL_9:
  v38 = v92;
  v39 = *(v93 + 56);
  v40 = v94;
  v39(v92, 1, 1, v94);
  sub_1E5932F40(a1, type metadata accessor for EditItem);
  v39(a1, 1, 1, v40);
  v41 = v28[6];
  v42 = a1 + v28[5];
  v43 = v28[8];
  v44 = v28[10];
  sub_1E59320E4(v38, a1);
  *v42 = 0;
  *(v42 + 8) = 1;
  *(a1 + v41) = 7;
  v46 = v89;
  v45 = v90;
  *v89 = 0;
  *(v46 + 8) = 1;
  *(a1 + v43) = 0;
  *v45 = 0;
  v45[1] = 0;
  *(a1 + v44) = 7;
  v47 = type metadata accessor for WorkoutPlanCreationLocalState();
  if (*(a1 + *(v47 + 112)))
  {
    v48 = v47;
    *&v97 = *(a1 + *(v47 + 112));
    v49 = WorkoutPlanSchedule.modalityIdentifiers()();
    v50 = *(v48 + 60);
    v51 = sub_1E5930FA4(*(a1 + v50), v49);

    *(a1 + v50) = v51;
  }

  v101 = v109;
  v102 = v110;
  v103 = v111;
  v104 = v112;
  v97 = v105;
  v98 = v106;
  v99 = v107;
  v100 = v108;
  return sub_1E592512C(a1);
}

uint64_t sub_1E5921ED8(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutPlanScheduledItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = v1[5];
  v61 = v1[4];
  v62 = v14;
  v15 = v1[7];
  v63 = v1[6];
  v64 = v15;
  v16 = v1[1];
  v57 = *v1;
  v58 = v16;
  v17 = v1[3];
  v59 = v1[2];
  v60 = v17;
  sub_1E58BABA0(a1, &v40 - v12, &qword_1ECFFB790, &qword_1E5A2D620);
  v18 = v4;
  v19 = (*(v4 + 48))(v13, 1, v3);
  result = sub_1E58C3420(v13);
  if (v19 != 1)
  {
    result = type metadata accessor for EditItem();
    v21 = a1 + *(result + 20);
    if ((*(v21 + 8) & 1) == 0)
    {
      v22 = *(result + 24);
      v23 = *(a1 + v22);
      if (v23 != 7)
      {
        v44 = *v21;
        v45 = result;
        result = type metadata accessor for WorkoutPlanCreationLocalState();
        v24 = *(a1 + *(result + 112));
        if (v24)
        {
          v42 = *(result + 112);
          v43 = v22;
          v41 = result;
          v56 = v24;
          if (*(v24 + 16))
          {
            result = sub_1E58EF458(v23, 0, 0, 0);
            if (v25)
            {
              v55 = *(*(v24 + 56) + 8 * result);

              sub_1E5925ED0(v44, v7);
              sub_1E5932F40(v7, type metadata accessor for WorkoutPlanScheduledItem);
              v26 = v55;
              if (*(v55 + 16))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v47 = v24;
                sub_1E592C8B4(v26, v23, 0, 0, 0, isUniquelyReferenced_nonNull_native);
                v28 = v47;
                v56 = v47;
              }

              else
              {

                sub_1E592C62C(v23, 0, 0, 0);

                v28 = v56;
              }

              v29 = v42;
              v30 = *(a1 + v42);

              v44 = v28;
              *(a1 + v29) = v28;
              v31 = *(v18 + 56);
              v32 = v46;
              v31(v46, 1, 1, v3);
              sub_1E5932F40(a1, type metadata accessor for EditItem);
              v31(a1, 1, 1, v3);
              v33 = v45[8];
              v34 = a1 + v45[7];
              v35 = v45[10];
              v36 = (a1 + v45[9]);
              sub_1E59320E4(v32, a1);
              *v21 = 0;
              *(v21 + 8) = 1;
              *(a1 + v43) = 7;
              *v34 = 0;
              *(v34 + 8) = 1;
              *(a1 + v33) = 0;
              *v36 = 0;
              v36[1] = 0;
              *(a1 + v35) = 7;
              if (*(a1 + v29))
              {
                *&v47 = *(a1 + v29);
                v37 = WorkoutPlanSchedule.modalityIdentifiers()();
                v38 = *(v41 + 60);
                v39 = sub_1E5930FA4(*(a1 + v38), v37);

                *(a1 + v38) = v39;
              }

              v51 = v61;
              v52 = v62;
              v53 = v63;
              v54 = v64;
              v47 = v57;
              v48 = v58;
              v49 = v59;
              v50 = v60;
              sub_1E592512C(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E59222F4(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v87) = a5;
  v82 = a4;
  LODWORD(v88) = a3;
  v86 = a2;
  v7 = type metadata accessor for WorkoutPlanScheduledItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v81 = (v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v74 - v15;
  v17 = v5[5];
  v101 = v5[4];
  v102 = v17;
  v18 = v5[7];
  v103 = v5[6];
  v104 = v18;
  v19 = v5[1];
  v97 = *v5;
  v98 = v19;
  v20 = v5[3];
  v99 = v5[2];
  v100 = v20;
  v85 = v8;
  v21 = *(v8 + 56);
  v21(v74 - v15, 1, 1, v7);
  sub_1E5932F40(a1, type metadata accessor for EditItem);
  v83 = v7;
  v78 = v21;
  v74[1] = v8 + 56;
  v21(a1, 1, 1, v7);
  v22 = type metadata accessor for EditItem();
  v23 = v22[6];
  v24 = a1 + v22[5];
  v25 = v22[8];
  v26 = a1 + v22[7];
  v27 = v22[10];
  sub_1E59320E4(v16, a1);
  *v24 = 0;
  v79 = v24;
  v80 = v23;
  *(v24 + 8) = 1;
  *(a1 + v23) = 7;
  *v26 = 0;
  v76 = v26;
  v77 = v25;
  *(v26 + 8) = 1;
  *(a1 + v25) = 0;
  v75 = v27;
  *(a1 + v27) = 7;
  v28 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState() + 72));
  *&v89 = v28;

  sub_1E592B124(&v89);
  v29 = v22[9];
  v30 = sub_1E591E968(v89, a1);

  if (v30[2])
  {
    v32 = v30[4];
    v31 = v30[5];
    v33 = v30[6];
    v34 = v30[8];
    v35 = v30[11];

    v36 = v31;

    v37 = v83;
  }

  else
  {

    *&v89 = v28;

    sub_1E592B124(&v89);
    v37 = v83;
    if (*(v89 + 16))
    {
      v38 = *(v89 + 32);
      v39 = *(v89 + 40);
      v33 = *(v89 + 48);
      v40 = *(v89 + 64);
      v41 = *(v89 + 88);

      v36 = v39;
    }

    else
    {

      v36 = 0;
      v33 = 0;
    }
  }

  v42 = (a1 + v29);
  *v42 = v36;
  v42[1] = v33;
  v43 = v88;
  if (v88 == 7)
  {
    v93 = v101;
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v89 = v97;
    v90 = v98;
    v91 = v99;
    v92 = v100;
    v44 = sub_1E5925500(a1);
    if (*(v44 + 2))
    {
      v45 = v44[32];
    }

    else
    {
      v45 = 7;
    }

    *(a1 + v75) = v45;
  }

  v46 = v84;
  sub_1E58BABA0(v86, v84, &qword_1ECFFB790, &qword_1E5A2D620);
  if ((*(v85 + 48))(v46, 1, v37) != 1)
  {
    v47 = v81;
    sub_1E59326EC(v46, v81, type metadata accessor for WorkoutPlanScheduledItem);
    sub_1E58C3420(a1);
    sub_1E5932C30(v47, a1, type metadata accessor for WorkoutPlanScheduledItem);
    v78(a1, 0, 1, v37);
    v48 = v76;
    *v76 = *v47;
    *(v48 + 8) = 0;
    v49 = (v47 + *(v37 + 28));
    v36 = *v49;
    v50 = v49[1];

    *v42 = v36;
    v42[1] = v50;
    v51 = v47[1];

    sub_1E5932F40(v47, type metadata accessor for WorkoutPlanScheduledItem);
    *(a1 + v77) = v51;
    v33 = v50;
    if (v87)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1E58C3420(v46);
  if ((v87 & 1) == 0)
  {
LABEL_15:
    v52 = v79;
    *v79 = v82;
    *(v52 + 8) = 0;
  }

LABEL_16:
  if (v43 != 7)
  {
    *(a1 + v80) = v43;
  }

  v93 = v101;
  v94 = v102;
  v95 = v103;
  v96 = v104;
  v89 = v97;
  v90 = v98;
  v91 = v99;
  v92 = v100;
  v88 = sub_1E5925744(a1);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC378, &qword_1E5A36450);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
    v53 = *(v87 - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1E5A2C920;
    v57 = v56 + v55;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v59 = v58[12];
    v60 = v58[16];
    v61 = v58[20];
    v86 = (v57 + v58[24]);
    *&v89 = v36;
    *(&v89 + 1) = v33;
    sub_1E59306E4();
    swift_bridgeObjectRetain_n();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v62 = *MEMORY[0x1E6999B60];
    v63 = sub_1E5A2B924();
    (*(*(v63 - 8) + 104))(v57 + v60, v62, v63);
    v64 = *MEMORY[0x1E6999B40];
    v65 = sub_1E5A2B914();
    (*(*(v65 - 8) + 104))(v57 + v61, v64, v65);
    v66 = swift_allocObject();
    v67 = v102;
    *(v66 + 104) = v101;
    *(v66 + 120) = v67;
    v68 = v104;
    *(v66 + 136) = v103;
    *(v66 + 152) = v68;
    v69 = v98;
    *(v66 + 40) = v97;
    *(v66 + 56) = v69;
    v70 = v100;
    *(v66 + 72) = v99;
    v71 = v87;
    *(v66 + 16) = v88;
    *(v66 + 24) = v36;
    *(v66 + 32) = v33;
    *(v66 + 88) = v70;
    v72 = v86;
    *v86 = &unk_1E5A36460;
    v72[1] = v66;
    (*(v53 + 104))(v57, *MEMORY[0x1E6999AD8], v71);
    sub_1E59307FC(&v97, &v89);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v56;
}

uint64_t sub_1E5922AB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1E58E7254(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E5922BE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v106 = a3;
  v102 = a2;
  v113 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v103 = *(v6 - 8);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v111 = &v90 - v7;
  v110 = sub_1E5A29E74();
  v105 = *(v110 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v101 = v9;
  v109 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1E5A29EB4();
  v107 = *(v112 - 8);
  v10 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v100 = v11;
  v108 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29E34();
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2A004();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v90 - v19;
  v21 = sub_1E5A29EC4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E5A29FE4();
  v95 = *(v26 - 8);
  v96 = v26;
  v27 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v4[5];
  v120 = v4[4];
  v121 = v30;
  v31 = v4[7];
  v122 = v4[6];
  v123 = v31;
  v32 = v4[1];
  v116 = *v4;
  v117 = v32;
  v33 = v4[3];
  v118 = v4[2];
  v119 = v33;
  v34 = type metadata accessor for WorkoutPlanCreationLocalState();
  v35 = *(v113 + *(v34 + 112));
  if (v35)
  {
    v36 = v34;
    v37 = (v113 + *(v34 + 116));
    if (*(v37 + 24) != 1)
    {
      v42 = v37[2];
      v98 = v37[1];
      v99 = v42;
      v97 = *v37;

      v96 = v35;
      goto LABEL_6;
    }

    (*(v22 + 104))(v25, *MEMORY[0x1E6969868], v21);

    sub_1E5A29ED4();
    (*(v22 + 8))(v25, v21);
    v38 = v35;
    sub_1E5A29F04();
    sub_1E5A29E94();
    (*(v107 + 56))(v20, 0, 1, v112);
    sub_1E5A29FA4();
    sub_1E5A29FF4();
    sub_1E5A29FB4();
    v114 = v35;

    v39 = v97;
    sub_1E5A29E14();
    v40 = Calendar.availableDays(for:schedule:)(v39, &v114);
    (*(v98 + 1))(v39, v99);

    (*(v95 + 8))(v29, v96);
    if (v40[2])
    {
      v41 = v40[5];
      v97 = v40[4];
      v98 = v41;
      v99 = v40[6];

      v96 = v38;
LABEL_6:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v44 = v43[12];
      v45 = v43[16];
      v46 = v43[20];
      v95 = a4 + v43[24];
      sub_1E59306E4();
      v114 = 0;
      v115 = 0;
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v47 = *MEMORY[0x1E6999B50];
      v48 = sub_1E5A2B924();
      v49 = *(*(v48 - 8) + 104);
      v94 = a4;
      v49(a4 + v45, v47, v48);
      v50 = *MEMORY[0x1E6999B40];
      v51 = sub_1E5A2B914();
      (*(*(v51 - 8) + 104))(a4 + v46, v50, v51);
      v52 = v36[7];
      v53 = *(type metadata accessor for WorkoutPlanCreationState() + 24);
      v54 = v113;
      v55 = *(v113 + v36[15]);

      v91 = sub_1E591C4AC(v56);
      v93 = *(v54 + v36[22]);
      v92 = *(v54 + v36[31]);
      v57 = v36[16];
      v58 = v107;
      (*(v107 + 16))(v108, v102 + v53, v112);
      v59 = v105;
      (*(v105 + 16))(v109, v54 + v52, v110);
      sub_1E58BABA0(v54 + v57, v111, &qword_1ECFFD900, &qword_1E5A39BB0);
      v60 = (*(v58 + 80) + 144) & ~*(v58 + 80);
      v61 = (v100 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = (*(v59 + 80) + v61 + 8) & ~*(v59 + 80);
      v63 = (v101 + *(v103 + 80) + v62) & ~*(v103 + 80);
      v64 = (v104 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v113 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      v66 = v121;
      *(v65 + 5) = v120;
      *(v65 + 6) = v66;
      v67 = v123;
      *(v65 + 7) = v122;
      *(v65 + 8) = v67;
      v68 = v117;
      *(v65 + 1) = v116;
      *(v65 + 2) = v68;
      v69 = v119;
      *(v65 + 3) = v118;
      *(v65 + 4) = v69;
      (*(v58 + 32))(&v65[v60], v108, v112);
      *&v65[v61] = v91;
      (*(v59 + 32))(&v65[v62], v109, v110);
      sub_1E58F0054(v111, &v65[v63], &qword_1ECFFD900, &qword_1E5A39BB0);
      v70 = v97;
      *&v65[v64] = v96;
      v71 = &v65[v113];
      v73 = v98;
      v72 = v99;
      *v71 = v70;
      *(v71 + 1) = v73;
      *(v71 + 2) = v72;
      v71[24] = v92;
      v74 = &v65[(v64 + 47) & 0xFFFFFFFFFFFFFFF8];
      *v74 = v93;
      v74[8] = v106 & 1;
      v75 = v95;
      *v95 = &unk_1E5A364A0;
      *(v75 + 8) = v65;
      v76 = *MEMORY[0x1E6999AD8];
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
      (*(*(v77 - 8) + 104))(v94, v76, v77);
      return sub_1E5932690(&v116, &v114);
    }
  }

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v80 = v79[12];
  v81 = v79[16];
  v82 = v79[20];
  v83 = (a4 + v79[24]);
  sub_1E59306E4();
  v114 = 0;
  v115 = 0;
  sub_1E5A2BE14();
  v84 = *MEMORY[0x1E6999B50];
  v85 = sub_1E5A2B924();
  (*(*(v85 - 8) + 104))(a4 + v81, v84, v85);
  v86 = *MEMORY[0x1E6999B40];
  v87 = sub_1E5A2B914();
  (*(*(v87 - 8) + 104))(a4 + v82, v86, v87);
  *v83 = &unk_1E5A36490;
  v83[1] = 0;
  sub_1E5A2BC94();
  v88 = *MEMORY[0x1E6999AD8];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  return (*(*(v89 - 8) + 104))(a4, v88, v89);
}

uint64_t sub_1E59235E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v6 = (v5 - 8);
  v49 = *(v5 - 8);
  v48 = *(v49 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v45 - v9);
  v11 = v2[5];
  v55 = v2[4];
  v56 = v11;
  v12 = v2[7];
  v57 = v2[6];
  v58 = v12;
  v13 = v2[1];
  v51 = *v2;
  v52 = v13;
  v14 = v2[3];
  v53 = v2[2];
  v54 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v16 = v15[12];
  v17 = v15[16];
  v18 = v15[20];
  v47 = (a2 + v15[24]);
  v50[8] = xmmword_1E5A36210;
  sub_1E5932690(&v51, v50);
  sub_1E59306E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v19 = *MEMORY[0x1E6999B60];
  v20 = sub_1E5A2B924();
  v21 = *(*(v20 - 8) + 104);
  v45 = a2;
  v21(a2 + v17, v19, v20);
  v22 = *MEMORY[0x1E6999B40];
  v23 = sub_1E5A2B914();
  (*(*(v23 - 8) + 104))(a2 + v18, v22, v23);
  v24 = type metadata accessor for WorkoutPlanCreationLocalState();
  v25 = *(a1 + v24[19]);
  v26 = v24[7];
  v27 = v6[7];
  v28 = sub_1E5A29E74();
  (*(*(v28 - 8) + 16))(v10 + v27, a1 + v26, v28);
  sub_1E58BABA0(a1 + v24[16], v10 + v6[8], &qword_1ECFFD900, &qword_1E5A39BB0);
  v29 = *(a1 + v24[21]);
  LOBYTE(v27) = *(a1 + v24[31]);
  v30 = *(a1 + v24[22]);
  v31 = *(a1 + v24[23]);

  v32 = sub_1E59520D8(v25);
  v33 = sub_1E591CA10(v32);

  *v10 = v33;
  *(v10 + v6[9]) = v29;
  *(v10 + v6[10]) = v27;
  *(v10 + v6[11]) = v30;
  *(v10 + v6[12]) = v31;
  v34 = v46;
  sub_1E59326EC(v10, v46, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  v35 = (*(v49 + 80) + 144) & ~*(v49 + 80);
  v36 = swift_allocObject();
  v37 = v56;
  v36[5] = v55;
  v36[6] = v37;
  v38 = v58;
  v36[7] = v57;
  v36[8] = v38;
  v39 = v52;
  v36[1] = v51;
  v36[2] = v39;
  v40 = v54;
  v36[3] = v53;
  v36[4] = v40;
  sub_1E59326EC(v34, v36 + v35, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  v41 = v47;
  *v47 = &unk_1E5A364B8;
  v41[1] = v36;
  v42 = *MEMORY[0x1E6999AD8];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  return (*(*(v43 - 8) + 104))(v45, v42, v43);
}

uint64_t sub_1E59239C8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = type metadata accessor for WorkoutPlanCreationLocalState();
  v7 = v6[28];
  v8 = *(a1 + v7);

  *(a1 + v7) = v5;
  if ((*(a1 + v6[25]) & 1) == 0)
  {
    v9 = sub_1E590E3DC(MEMORY[0x1E69E7CC0]);
    v10 = v6[15];
    v11 = *(a1 + v10);

    *(a1 + v10) = v9;
    v12 = a1 + v6[29];
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    *(a1 + v6[20]) = 0;
  }

  *&v24[0] = v5;
  v13 = WorkoutPlanSchedule.modalityIdentifiers()();
  v14 = v13;
  v15 = *(v13 + 2);
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_1E5A206D0(*(v13 + 2), 0);
  v17 = sub_1E5A22B04(v24, v16 + 4, v15, v14);
  sub_1E58D26C0();
  if (v17 != v15)
  {
    __break(1u);
LABEL_6:

    v16 = MEMORY[0x1E69E7CC0];
  }

  v18 = v3[5];
  v24[4] = v3[4];
  v24[5] = v18;
  v19 = v3[7];
  v24[6] = v3[6];
  v24[7] = v19;
  v20 = v3[1];
  v24[0] = *v3;
  v24[1] = v20;
  v21 = v3[3];
  v24[2] = v3[2];
  v24[3] = v21;
  v22 = sub_1E5927B00(v16, 1);

  return sub_1E5922AB0(v22);
}

uint64_t sub_1E5923B3C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for WorkoutPlanCreationLocalState();
  if (sub_1E59E8F3C(a2, a3, *(a1 + *(v13 + 76))))
  {
    sub_1E59302E8(a2, a3);
  }

  else
  {

    sub_1E592CD80(&v27, a2, a3);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v15 = v14[12];
  v16 = v14[16];
  v17 = v14[20];
  v18 = &v12[v14[24]];
  v27 = xmmword_1E5A36200;
  sub_1E59306E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v19 = *MEMORY[0x1E6999B60];
  v20 = sub_1E5A2B924();
  (*(*(v20 - 8) + 104))(&v12[v16], v19, v20);
  v21 = *MEMORY[0x1E6999B40];
  v22 = sub_1E5A2B914();
  (*(*(v22 - 8) + 104))(&v12[v17], v21, v22);
  *v18 = &unk_1E5A36288;
  *(v18 + 1) = 0;
  (*(v9 + 104))(v12, *MEMORY[0x1E6999AD8], v8);
  v23 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1E58E7254(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1E58E7254(v24 > 1, v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  result = (*(v9 + 32))(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v12, v8);
  *a4 = v23;
  return result;
}

uint64_t sub_1E5923E20(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState() + 92));
  if ((sub_1E59FA5FC(a2, v11) & 1) != 0 && *(v11 + 16) >= 2uLL)
  {
    sub_1E5930424(a2);
  }

  else
  {
    sub_1E592D5A8(&v25, a2);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  v16 = &v10[v12[24]];
  v25 = xmmword_1E5A36200;
  sub_1E59306E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v17 = *MEMORY[0x1E6999B60];
  v18 = sub_1E5A2B924();
  (*(*(v18 - 8) + 104))(&v10[v14], v17, v18);
  v19 = *MEMORY[0x1E6999B40];
  v20 = sub_1E5A2B914();
  (*(*(v20 - 8) + 104))(&v10[v15], v19, v20);
  *v16 = &unk_1E5A36288;
  *(v16 + 1) = 0;
  (*(v7 + 104))(v10, *MEMORY[0x1E6999AD8], v6);
  v21 = *a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1E58E7254(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1E58E7254(v22 > 1, v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  result = (*(v7 + 32))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v10, v6);
  *a3 = v21;
  return result;
}

uint64_t sub_1E59240F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  v8 = *(type metadata accessor for WorkoutPlanCreationLocalState() + 60);
  v9 = *(a1 + v8);
  v10 = *(v9 + 16);

  if (v10 && (v11 = sub_1E58EF508(v7, v6), (v12 & 1) != 0))
  {
    v13 = (*(v9 + 56) + 32 * v11);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];

    swift_bridgeObjectRelease_n();

    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
    v15 = v7;
    v14 = v6;
    v16 = MEMORY[0x1E69E7CD0];
  }

  v27 = v15;
  v28 = v14;
  v29 = v18;
  v30 = v16;
  if (sub_1E59E8F3C(v4, v5, v18))
  {
    sub_1E59302E8(v4, v5);
  }

  else
  {

    sub_1E592CD80(&v26, v4, v5);
  }

  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;

  v23 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + v8);
  sub_1E592CA44(v19, v20, v21, v22, v7, v6, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v26;
  return result;
}

uint64_t sub_1E5924278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  v8 = *(type metadata accessor for WorkoutPlanCreationLocalState() + 60);
  v9 = *(a1 + v8);
  v10 = *(v9 + 16);

  if (v10 && (v11 = sub_1E58EF508(v7, v6), (v12 & 1) != 0))
  {
    v13 = (*(v9 + 56) + 32 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = v13[3];

    swift_bridgeObjectRelease_n();

    v18 = v17;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
    v15 = v7;
    v14 = v6;
    v18 = MEMORY[0x1E69E7CD0];
  }

  v27 = v15;
  v28 = v14;
  v29 = v16;
  v30 = v18;
  if (sub_1E59E8F3C(v4, v5, v18))
  {
    sub_1E59302E8(v4, v5);
  }

  else
  {

    sub_1E592CD80(&v26, v4, v5);
  }

  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;

  v23 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + v8);
  sub_1E592CA44(v19, v20, v21, v22, v7, v6, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v26;
  return result;
}

uint64_t sub_1E5924400(uint64_t a1, char **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v76 - v14;
  v16 = v2[5];
  v101 = v2[4];
  v102 = v16;
  v17 = v2[7];
  v103 = v2[6];
  v104 = v17;
  v18 = v2[1];
  v97 = *v2;
  v98 = v18;
  v19 = v2[3];
  v99 = v2[2];
  v100 = v19;
  result = type metadata accessor for WorkoutPlanCreationLocalState();
  v21 = *(result + 52);
  if (*(a1 + v21) == 1)
  {
    v77 = v10;
    *(a1 + v21) = 2;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v95 = v5;
    v23 = v22[12];
    v24 = v22[16];
    v25 = v22[20];
    v26 = &v15[v22[24]];
    v96[0] = xmmword_1E5A36220;
    v93 = sub_1E59306E4();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v27 = *MEMORY[0x1E6999B60];
    v28 = sub_1E5A2B924();
    v29 = *(v28 - 8);
    v30 = *(v29 + 104);
    v31 = &v15[v24];
    v32 = v6;
    v78 = v27;
    v91 = v30;
    v92 = v28;
    v90 = v29 + 104;
    (v30)(v31, v27);
    v33 = *MEMORY[0x1E6999B40];
    v34 = sub_1E5A2B914();
    v35 = *(v34 - 8);
    v36 = *(v35 + 104);
    v89 = v33;
    v87 = v36;
    v88 = v34;
    v86 = v35 + 104;
    (v36)(&v15[v25], v33);
    v37 = swift_allocObject();
    v38 = v102;
    v37[5] = v101;
    v37[6] = v38;
    v39 = v104;
    v37[7] = v103;
    v37[8] = v39;
    v40 = v98;
    v37[1] = v97;
    v37[2] = v40;
    v41 = v100;
    v37[3] = v99;
    v37[4] = v41;
    *v26 = &unk_1E5A364F0;
    *(v26 + 1) = v37;
    v42 = *(v6 + 104);
    v84 = *MEMORY[0x1E6999AD8];
    v85 = v6 + 104;
    v83 = v42;
    v42(v15);
    v43 = *a2;
    sub_1E5932690(&v97, v96);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1E58E7254(0, *(v43 + 2) + 1, 1, v43);
    }

    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    v46 = v77;
    v79 = a2;
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1E58E7254(v44 > 1, v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v48 = *(v32 + 32);
    v47 = v32 + 32;
    v81 = (*(v47 + 48) + 32) & ~*(v47 + 48);
    v82 = v48;
    v80 = *(v47 + 40);
    v49 = v47;
    v50 = v95;
    v94 = v49;
    v48(&v43[v81 + v80 * v45], v15, v95);
    v51 = v22[12];
    v52 = v22[16];
    v53 = v22[20];
    v54 = &v13[v22[24]];
    v96[0] = xmmword_1E5A36230;
    sub_1E5A2BE14();
    v91(&v13[v52], *MEMORY[0x1E6999B50], v92);
    v87(&v13[v53], v89, v88);
    v55 = swift_allocObject();
    v56 = v102;
    v55[5] = v101;
    v55[6] = v56;
    v57 = v104;
    v55[7] = v103;
    v55[8] = v57;
    v58 = v98;
    v55[1] = v97;
    v55[2] = v58;
    v59 = v100;
    v55[3] = v99;
    v55[4] = v59;
    *v54 = &unk_1E5A36500;
    *(v54 + 1) = v55;
    sub_1E5932690(&v97, v96);
    sub_1E5A2BC94();
    v83(v13, v84, v50);
    v61 = *(v43 + 2);
    v60 = *(v43 + 3);
    if (v61 >= v60 >> 1)
    {
      v43 = sub_1E58E7254(v60 > 1, v61 + 1, 1, v43);
    }

    v63 = v79;
    v62 = v80;
    *(v43 + 2) = v61 + 1;
    v64 = v95;
    v82(&v43[v81 + v61 * v62], v13, v95);
    v65 = v22[12];
    v66 = v22[16];
    v67 = v22[20];
    v68 = &v46[v22[24]];
    v96[0] = xmmword_1E5A36240;
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v91(&v46[v66], v78, v92);
    v87(&v46[v67], v89, v88);
    v69 = swift_allocObject();
    v70 = v102;
    v69[5] = v101;
    v69[6] = v70;
    v71 = v104;
    v69[7] = v103;
    v69[8] = v71;
    v72 = v98;
    v69[1] = v97;
    v69[2] = v72;
    v73 = v100;
    v69[3] = v99;
    v69[4] = v73;
    *v68 = &unk_1E5A36510;
    *(v68 + 1) = v69;
    v83(v46, v84, v64);
    sub_1E5932690(&v97, v96);
    v75 = *(v43 + 2);
    v74 = *(v43 + 3);
    if (v75 >= v74 >> 1)
    {
      v43 = sub_1E58E7254(v74 > 1, v75 + 1, 1, v43);
    }

    *(v43 + 2) = v75 + 1;
    result = (v82)(&v43[v81 + v75 * v80], v46, v95);
    *v63 = v43;
  }

  return result;
}

uint64_t sub_1E5924A3C(uint64_t a1, void **a2)
{
  v75 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v74);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - v9;
  v11 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v71 = *(v11 - 1);
  v12 = *(v71 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v73 = (&v68 - v14);
  v15 = v2[5];
  v81 = v2[4];
  v82 = v15;
  v16 = v2[7];
  v83 = v2[6];
  v84 = v16;
  v17 = v2[1];
  v77 = *v2;
  v78 = v17;
  v18 = v2[3];
  v79 = v2[2];
  v80 = v18;
  v19 = type metadata accessor for WorkoutPlanCreationLocalState();
  v20 = *(a1 + v19[19]);
  if (*(v20 + 16) && (v21 = v19, v22 = *(a1 + v19[23]), *(v22 + 16)) && (v23 = *(a1 + v19[21]), v23 >= 1) && (v24 = *(a1 + v19[22]), v24 >= 1))
  {
    v68 = v19[7];
    v69 = v23;
    v25 = v11[5];
    v70 = v24;
    v26 = sub_1E5A29E74();
    v27 = v73 + v25;
    v28 = v73;
    (*(*(v26 - 8) + 16))(v27, a1 + v68, v26);
    sub_1E58BABA0(a1 + v21[16], v28 + v11[6], &qword_1ECFFD900, &qword_1E5A39BB0);
    v29 = *(a1 + v21[31]);

    v30 = sub_1E59520D8(v20);
    v31 = sub_1E591CA10(v30);

    v32 = v73;
    *v73 = v31;
    v33 = v70;
    *(v32 + v11[7]) = v69;
    *(v32 + v11[8]) = v29;
    *(v32 + v11[9]) = v33;
    *(v32 + v11[10]) = v22;
    v34 = v32;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v36 = v35[12];
    v37 = v35[16];
    v38 = v35[20];
    v39 = &v10[v35[24]];
    v76[0] = xmmword_1E5A36250;
    sub_1E59306E4();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v40 = *MEMORY[0x1E6999B60];
    v41 = sub_1E5A2B924();
    (*(*(v41 - 8) + 104))(&v10[v37], v40, v41);
    v42 = *MEMORY[0x1E6999B40];
    v43 = sub_1E5A2B914();
    (*(*(v43 - 8) + 104))(&v10[v38], v42, v43);
    v44 = v72;
    sub_1E5932C30(v34, v72, type metadata accessor for WorkoutPlanCreationScheduleRequest);
    v45 = (*(v71 + 80) + 144) & ~*(v71 + 80);
    v46 = swift_allocObject();
    v47 = v82;
    v46[5] = v81;
    v46[6] = v47;
    v48 = v84;
    v46[7] = v83;
    v46[8] = v48;
    v49 = v78;
    v46[1] = v77;
    v46[2] = v49;
    v50 = v80;
    v46[3] = v79;
    v46[4] = v50;
    sub_1E59326EC(v44, v46 + v45, type metadata accessor for WorkoutPlanCreationScheduleRequest);
    *v39 = &unk_1E5A36528;
    *(v39 + 1) = v46;
    v51 = v74;
    (*(v4 + 104))(v10, *MEMORY[0x1E6999AD8], v74);
    v52 = v75;
    v53 = *v75;
    sub_1E5932690(&v77, v76);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1E58E7254(0, v53[2] + 1, 1, v53);
    }

    v55 = v53[2];
    v54 = v53[3];
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1E58E7254(v54 > 1, v55 + 1, 1, v53);
    }

    sub_1E5932F40(v73, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  }

  else
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v58 = v57[12];
    v59 = v57[16];
    v60 = v57[20];
    v61 = &v8[v57[24]];
    v76[0] = xmmword_1E5A36250;
    sub_1E59306E4();
    sub_1E5A2BE14();
    v62 = *MEMORY[0x1E6999B60];
    v63 = sub_1E5A2B924();
    (*(*(v63 - 8) + 104))(&v8[v59], v62, v63);
    v64 = *MEMORY[0x1E6999B40];
    v65 = sub_1E5A2B914();
    (*(*(v65 - 8) + 104))(&v8[v60], v64, v65);
    *v61 = &unk_1E5A36518;
    *(v61 + 1) = 0;
    sub_1E5A2BC94();
    v51 = v74;
    (*(v4 + 104))(v8, *MEMORY[0x1E6999AD8], v74);
    v52 = v75;
    v53 = *v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1E58E7254(0, v53[2] + 1, 1, v53);
    }

    v55 = v53[2];
    v66 = v53[3];
    v56 = v55 + 1;
    if (v55 >= v66 >> 1)
    {
      v53 = sub_1E58E7254(v66 > 1, v55 + 1, 1, v53);
    }

    v10 = v8;
  }

  v53[2] = v56;
  result = (*(v4 + 32))(v53 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v55, v10, v51);
  *v52 = v53;
  return result;
}

uint64_t sub_1E592512C(uint64_t a1)
{
  v35 = a1;
  v36 = sub_1E5A29E34();
  v1 = *(v36 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A2A004();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_1E5A29EC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A29FE4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E6969868], v11);
  sub_1E5A29ED4();
  (*(v12 + 8))(v15, v11);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v21 = sub_1E5A29EB4();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v22 = type metadata accessor for WorkoutPlanCreationLocalState();
  v23 = v35;
  v37 = *(v35 + *(v22 + 112));

  sub_1E5A29E14();
  v24 = Calendar.availableDays(for:schedule:)(v4, &v37);
  (*(v1 + 8))(v4, v36);

  (*(v17 + 8))(v20, v16);
  v25 = v23 + *(v22 + 116);
  if (*(v25 + 24) == 1)
  {
  }

  v26 = (v24 + 48);
  v27 = *(v24 + 16) + 1;
  while (--v27)
  {
    v29 = *(v26 - 1);
    v28 = *v26;
    v30 = *(v26 - 2);
    v26 += 3;
    if (v30 == *v25 && v29 == *(v25 + 8) && v28 == *(v25 + 16))
    {
    }
  }

  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 1;
  return result;
}

char *sub_1E5925500(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState() + 112));
  if (v2)
  {
    v3 = sub_1E591B840(v2);
    if (*(v3 + 16))
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
      v5 = sub_1E5A2BF14();
      v3 = v4;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC8];
    }

    v23 = v5;
    sub_1E591C604(v3, 1, &v23);
    v6 = v23;
  }

  else
  {
    v6 = sub_1E590E078(MEMORY[0x1E69E7CC0]);
  }

  v7 = *(a1 + *(type metadata accessor for EditItem() + 24));
  v23 = &unk_1F5F5B748;
  sub_1E58D1E60(&v23);
  v8 = *(v23 + 2);
  if (v8)
  {
    v9 = v23 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = *v9++;
      v12 = v13;
      if (v7 != 7 && v12 == v7)
      {
        break;
      }

      if (*(v6 + 2) && (v17 = sub_1E58EF8CC(v12), (v18 & 1) != 0))
      {
        v19 = *(*(v6 + 7) + 8 * v17);
      }

      else
      {
        v20 = v10;
      }

      v21 = *(v20 + 16);

      if (v7 == 7)
      {
        if (!v21)
        {
          break;
        }
      }

      else if (v21 <= 9)
      {
        break;
      }

LABEL_10:
      if (!--v8)
      {
        goto LABEL_26;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E590DEC8(0, *(v11 + 2) + 1, 1);
      v11 = v23;
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v16 >= v15 >> 1)
    {
      sub_1E590DEC8((v15 > 1), v16 + 1, 1);
      v11 = v23;
    }

    *(v11 + 2) = v16 + 1;
    v11[v16 + 32] = v12;
    goto LABEL_10;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_26:

  return v11;
}

uint64_t sub_1E5925744(uint64_t a1)
{
  v2 = type metadata accessor for EditItem();
  v3 = *(a1 + *(v2 + 32));
  v4 = MEMORY[0x1E69E7CD0];
  if (v3)
  {
    v41 = MEMORY[0x1E69E7CD0];
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    while (v7)
    {
      v12 = v10;
LABEL_12:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = *(v3 + 48) + 24 * (v13 | (v12 << 6));
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v46[0] = v16;
          v46[1] = v15;
          memset(&v46[2], 0, 24);
          v47 = 5;

          v11 = v46;
        }

        else
        {
          v48[0] = v16;
          v48[1] = v15;
          memset(&v48[2], 0, 24);
          v49 = 6;

          v11 = v48;
        }
      }

      else if (v17)
      {
        v44[0] = v16;
        v44[1] = v15;
        memset(&v44[2], 0, 24);
        v45 = 2;

        v11 = v44;
      }

      else
      {
        v42[0] = v16;
        v42[1] = v15;
        memset(&v42[2], 0, 24);
        v43 = 0;

        v11 = v42;
      }

      sub_1E592CED0(v39, v11);
      result = sub_1E58BACAC(v39[0], v39[1], v39[2], v39[3], v39[4], v40);
      v10 = v12;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        v4 = v41;
        goto LABEL_19;
      }

      v7 = *(v3 + 56 + 8 * v12);
      ++v10;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_19:
  v18 = (a1 + *(v2 + 28));
  if (v18[1])
  {
LABEL_35:
    v38 = MEMORY[0x1E69E7CD0];
    return sub_1E5925AA4(v4, v38);
  }

  v19 = *v18;
  v20 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState() + 24) + 8);
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 56);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_27:
      v27 = *(v20 + 48) + 40 * (__clz(__rbit64(v23)) | (v26 << 6));
      v28 = *v27;
      v30 = *(v27 + 8);
      v29 = *(v27 + 16);
      v31 = *(v27 + 24);
      v32 = *(v27 + 32);

      sub_1E5A2BD04();
      if (v28 - v31 <= v33 && v33 <= v28 + v32)
      {
        break;
      }

      v23 &= v23 - 1;

      v25 = v26;
      if (!v23)
      {
        goto LABEL_24;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A2C920;
    *(inited + 32) = v28;
    v36 = inited + 32;
    *(inited + 40) = v30;
    *(inited + 48) = v29;
    *(inited + 56) = v31;
    *(inited + 64) = v32;
    *(inited + 72) = 1;
    v37 = sub_1E59E24B4(inited);
    swift_setDeallocating();
    sub_1E5932300(v36);
    v38 = v37;
    return sub_1E5925AA4(v4, v38);
  }

LABEL_24:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      goto LABEL_35;
    }

    v23 = *(v20 + 56 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1E5925AA4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 48 * (v11 | (v10 << 6)));
      v13 = *(v12 + 25);
      v14 = v12[1];
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 9) = v13;
      sub_1E59323E4(&v18, v15);
      sub_1E592CED0(v15, &v18);
      result = sub_1E58BACAC(v15[0], v15[1], v15[2], v15[3], v15[4], v16);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

int *sub_1E5925BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v38 = a2;
  v5 = sub_1E5A29E74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlanScheduledItem();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for EditItem();
  v16 = result;
  v17 = *(a1 + result[10]);
  if (v17 != 7 || (v17 = *(a1 + result[6]), v17 != 7))
  {
    result = type metadata accessor for WorkoutPlanCreationLocalState();
    v18 = *(a1 + result[28]);
    if (v18)
    {
      v36 = result[28];
      v37 = v11;
      v19 = *(v18 + 16);
      v35 = v17;
      if (v19 && (v20 = sub_1E58EF458(v17, 0, 0, 0), (v21 & 1) != 0))
      {
        v22 = *(*(v18 + 56) + 8 * v20);
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      sub_1E5A29E64();
      v23 = *(a1 + v16[8]);
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = MEMORY[0x1E69E7CD0];
      }

      (*(v6 + 32))(&v14[*(v10 + 24)], v9, v5);
      v25 = &v14[*(v10 + 28)];
      v26 = v40;
      *v25 = v38;
      *(v25 + 1) = v26;
      *v14 = v39;
      *(v14 + 1) = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1E58E7050(0, v22[2] + 1, 1, v22);
      }

      v27 = v37;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        v22 = sub_1E58E7050(v28 > 1, v29 + 1, 1, v22);
      }

      v22[2] = v29 + 1;
      sub_1E59326EC(v14, v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, type metadata accessor for WorkoutPlanScheduledItem);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v18;
      sub_1E592C8B4(v22, v35, 0, 0, 0, isUniquelyReferenced_nonNull_native);
      v31 = v41;
      v32 = v36;
      v33 = *(a1 + v36);

      *(a1 + v32) = v31;
    }
  }

  return result;
}

size_t sub_1E5925ED0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E59302D4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for WorkoutPlanScheduledItem() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1E59326EC(v11, a2, type metadata accessor for WorkoutPlanScheduledItem);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E5926004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  v6 = type metadata accessor for WorkoutPlanCreationAction();
  v5[35] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E59260A0, 0, 0);
}

uint64_t sub_1E59260A0()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = sub_1E59E24B4(&unk_1F5F5B7F0);
  v0[37] = v5;
  sub_1E5932300(&unk_1F5F5B810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v7 = sub_1E5932354(inited, v3);
  v0[38] = v7;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v0[28] = v5;
  v0[29] = v7;
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_1E5926258;

  return (v13)(v0 + 12, v0 + 28);
}

uint64_t sub_1E5926258()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1E59265A0;
  }

  else
  {
    v5 = *(v2 + 296);
    v6 = *(v2 + 304);

    v4 = sub_1E592637C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E592637C()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v5;
  v6 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v6;
  *v1 = v3;
  *(v1 + 8) = v4;
  v7 = *(v0 + 160);
  v8 = *(v0 + 176);
  v9 = *(v0 + 208);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 64) = v9;
  *(v1 + 16) = v7;
  *(v1 + 32) = v8;
  swift_storeEnumTagMultiPayload();
  v10 = *(MEMORY[0x1E6999AF0] + 4);

  v11 = swift_task_alloc();
  *(v0 + 328) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v11 = v0;
  v11[1] = sub_1E5926470;
  v13 = *(v0 + 288);
  v14 = *(v0 + 240);

  return MEMORY[0x1EEE01A40](v13, v12);
}

uint64_t sub_1E5926470()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 288);
  v5 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E59265A0()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];

  v4 = v0[1];
  v5 = v0[40];

  return v4();
}

uint64_t sub_1E5926630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 265) = v29;
  *(v8 + 136) = v28;
  *(v8 + 264) = v27;
  *(v8 + 120) = v26;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v10 = type metadata accessor for WorkoutPlanCreationAction();
  *(v8 + 144) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v12 = type metadata accessor for WorkoutPlanCreationRequest();
  *(v8 + 160) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v14 = *(*(sub_1E5A2BAF4() - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v15 = sub_1E5A29EB4();
  *(v8 + 184) = v15;
  v16 = *(v15 - 8);
  *(v8 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v18 = *(*(sub_1E5A2BB14() - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v24 = (v19 + *v19);
  v21 = v19[1];
  v22 = swift_task_alloc();
  *(v8 + 216) = v22;
  *v22 = v8;
  v22[1] = sub_1E5926864;

  return v24();
}

uint64_t sub_1E5926864(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 216);
  v8 = *v3;

  if (v2)
  {
    MEMORY[0x1E69331F0](v2);
    v9 = sub_1E592699C;
  }

  else
  {
    *(v6 + 224) = a2;
    *(v6 + 232) = a1;
    v9 = sub_1E5926C28;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E592699C()
{
  v1 = *(v0 + 208);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 208);
  v3 = qword_1EE2D33E0;
  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 72), *(v0 + 184));
  v4 = v3;
  v5 = sub_1E5A2BB64();
  v7 = v6;
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v27 = *(v0 + 264);
  v28 = *(v0 + 136);
  v25 = *(v0 + 128);
  v26 = v5;
  v24 = *(v0 + 112);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = v9[6];
  v16 = sub_1E5A29E74();
  (*(*(v16 - 8) + 16))(&v8[v15], v12, v16);
  sub_1E58BABA0(v11, &v8[v9[7]], &qword_1ECFFD900, &qword_1E5A39BB0);
  *v8 = v13;
  *(v8 + 1) = v26;
  *(v8 + 2) = v7;
  *&v8[v9[8]] = v10;
  v17 = &v8[v9[9]];
  *v17 = v24;
  *(v17 + 2) = v25;
  v8[v9[10]] = v27;
  *&v8[v9[11]] = v28;
  v18 = *v14;
  v19 = v14[1];

  v29 = (v18 + *v18);
  v20 = v18[1];
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_1E5926EF8;
  v22 = *(v0 + 168);

  return v29(v22);
}

uint64_t sub_1E5926C28()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  sub_1E5A2BAC4();

  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 208);
  v6 = qword_1EE2D33E0;
  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 72), *(v0 + 184));
  v7 = v6;
  v8 = sub_1E5A2BB64();
  v10 = v9;
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v30 = *(v0 + 264);
  v31 = *(v0 + 136);
  v28 = *(v0 + 128);
  v29 = v8;
  v27 = *(v0 + 112);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = v12[6];
  v19 = sub_1E5A29E74();
  (*(*(v19 - 8) + 16))(&v11[v18], v15, v19);
  sub_1E58BABA0(v14, &v11[v12[7]], &qword_1ECFFD900, &qword_1E5A39BB0);
  *v11 = v16;
  *(v11 + 1) = v29;
  *(v11 + 2) = v10;
  *&v11[v12[8]] = v13;
  v20 = &v11[v12[9]];
  *v20 = v27;
  *(v20 + 2) = v28;
  v11[v12[10]] = v30;
  *&v11[v12[11]] = v31;
  v21 = *v17;
  v22 = v17[1];

  v32 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  *(v0 + 240) = v24;
  *v24 = v0;
  v24[1] = sub_1E5926EF8;
  v25 = *(v0 + 168);

  return v32(v25);
}

uint64_t sub_1E5926EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *v4;
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = v3;
  v8 = v6[30];
  v9 = *v4;

  if (v3)
  {
    MEMORY[0x1E69331F0](v3);
    v10 = sub_1E5927304;
  }

  else
  {
    v7[31] = a2;
    v10 = sub_1E5927030;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1E5927030()
{
  v2 = *(v0 + 248);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 265);
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 16) = v4;
  *(v5 + 24) = v7;
  swift_storeEnumTagMultiPayload();
  v8 = *(MEMORY[0x1E6999AF0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v9 = v0;
  v9[1] = sub_1E592711C;
  v11 = *(v0 + 152);
  v12 = *(v0 + 56);

  return MEMORY[0x1EEE01A40](v11, v10);
}

uint64_t sub_1E592711C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 152);
  v4 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E5927248, 0, 0);
}

uint64_t sub_1E5927248()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[19];
  sub_1E5932F40(v0[21], type metadata accessor for WorkoutPlanCreationRequest);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5927304()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 265);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  swift_storeEnumTagMultiPayload();
  v4 = *(MEMORY[0x1E6999AF0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v5 = v0;
  v5[1] = sub_1E592711C;
  v7 = *(v0 + 152);
  v8 = *(v0 + 56);

  return MEMORY[0x1EEE01A40](v7, v6);
}

uint64_t sub_1E59273D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v6 = type metadata accessor for WorkoutPlanCreationAction();
  v3[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v8 = *(a2 + 88);
  v12 = (*(a2 + 80) + **(a2 + 80));
  v9 = *(*(a2 + 80) + 4);
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1E592750C;

  return v12(v3 + 2, a3);
}

uint64_t sub_1E592750C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1E5927818;
  }

  else
  {
    v3 = sub_1E5927620;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5927620()
{
  v1 = *(v0 + 32);
  **(v0 + 40) = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v3 = v0;
  v3[1] = sub_1E59276E8;
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E59276E8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v5 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E5927818()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1E592787C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5927910, 0, 0);
}

uint64_t sub_1E5927910()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x1E6999AF0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v4 = v0;
  v4[1] = sub_1E59279D0;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E59279D0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E5927B00(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - v8;
  v10 = v2[5];
  v53 = v2[4];
  v54 = v10;
  v11 = v2[7];
  v55 = v2[6];
  v56 = v11;
  v12 = v2[1];
  v49 = *v2;
  v50 = v12;
  v13 = v2[3];
  v51 = v2[2];
  v52 = v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1E590DF08(0, v14, 0);
    v15 = v48;
    v43 = *MEMORY[0x1E6999B60];
    v16 = *MEMORY[0x1E6999B40];
    v41 = a2 & 1;
    v42 = v16;
    v40 = *MEMORY[0x1E6999AD8];
    v38[2] = v6 + 32;
    v39 = (v6 + 104);
    v38[1] = sub_1E59306E4();
    v17 = (a1 + 40);
    v44 = v6;
    do
    {
      v45 = v15;
      v46 = v14;
      v19 = *(v17 - 1);
      v18 = *v17;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v21 = v5;
      v22 = v20[12];
      v23 = v20[16];
      v24 = v20[20];
      v25 = &v9[v20[24]];
      v47[0] = v19;
      v47[1] = v18;
      swift_bridgeObjectRetain_n();
      sub_1E5A2BE14();
      v5 = v21;
      sub_1E5A2BC94();
      v26 = sub_1E5A2B924();
      (*(*(v26 - 8) + 104))(&v9[v23], v43, v26);
      v27 = sub_1E5A2B914();
      v28 = &v9[v24];
      v15 = v45;
      (*(*(v27 - 8) + 104))(v28, v42, v27);
      v29 = swift_allocObject();
      *(v29 + 16) = v19;
      *(v29 + 24) = v18;
      v30 = v54;
      *(v29 + 96) = v53;
      *(v29 + 112) = v30;
      v31 = v56;
      *(v29 + 128) = v55;
      *(v29 + 144) = v31;
      v32 = v50;
      *(v29 + 32) = v49;
      *(v29 + 48) = v32;
      v33 = v52;
      *(v29 + 64) = v51;
      *(v29 + 80) = v33;
      v34 = v40;
      *(v29 + 160) = v41;
      *v25 = &unk_1E5A364C8;
      *(v25 + 1) = v29;
      (*v39)(v9, v34, v21);
      sub_1E5932690(&v49, v47);
      v48 = v15;
      v36 = *(v15 + 16);
      v35 = *(v15 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1E590DF08(v35 > 1, v36 + 1, 1);
        v15 = v48;
      }

      *(v15 + 16) = v36 + 1;
      (*(v44 + 32))(v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, v9, v21);
      v17 += 2;
      v14 = v46 - 1;
    }

    while (v46 != 1);
  }

  return v15;
}

uint64_t sub_1E5927E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 528) = a5;
  *(v5 + 448) = a3;
  *(v5 + 456) = a4;
  *(v5 + 432) = a1;
  *(v5 + 440) = a2;
  v6 = type metadata accessor for WorkoutPlanCreationAction();
  *(v5 + 464) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 472) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5927EF8, 0, 0);
}

uint64_t sub_1E5927EF8()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[55];
  v4 = sub_1E59E24B4(&unk_1F5F5B840);
  v0[60] = v4;
  sub_1E5932300(&unk_1F5F5B860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v6 = sub_1E59E24B4(inited);
  v0[61] = v6;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v0[52] = v4;
  v0[53] = v6;
  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  v0[62] = v10;
  *v10 = v0;
  v10[1] = sub_1E5928098;

  return (v12)(v0 + 12, v0 + 52);
}

uint64_t sub_1E5928098()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v8 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_1E59286C4;
  }

  else
  {
    v5 = *(v2 + 480);
    v6 = *(v2 + 488);

    v4 = sub_1E59281BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E59281BC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v2;
  v3 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v3;
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  if (v1 == 1)
  {
    v6 = *(v0 + 440);
    v7 = *(v0 + 448);
    v8 = *(v0 + 112);
    *(v0 + 288) = *(v0 + 96);
    *(v0 + 304) = v8;
    v9 = *(v0 + 144);
    *(v0 + 320) = *(v0 + 128);
    *(v0 + 336) = v9;
    *v4 = v6;
    *(v4 + 8) = v7;
    v10 = *(v0 + 288);
    v11 = *(v0 + 304);
    v12 = *(v0 + 336);
    *(v4 + 48) = *(v0 + 320);
    *(v4 + 64) = v12;
    *(v4 + 16) = v10;
    *(v4 + 32) = v11;
    swift_storeEnumTagMultiPayload();

    sub_1E58BD154(v0 + 160, v0 + 352);
    v13 = *(MEMORY[0x1E6999AF0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 512) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v14 = v0;
    v16 = sub_1E5928374;
  }

  else
  {
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v19 = *(v0 + 112);
    *(v0 + 224) = *(v0 + 96);
    *(v0 + 240) = v19;
    v20 = *(v0 + 144);
    *(v0 + 256) = *(v0 + 128);
    *(v0 + 272) = v20;
    *v4 = v17;
    *(v4 + 8) = v18;
    v21 = *(v0 + 224);
    v22 = *(v0 + 240);
    v23 = *(v0 + 272);
    *(v4 + 48) = *(v0 + 256);
    *(v4 + 64) = v23;
    *(v4 + 16) = v21;
    *(v4 + 32) = v22;
    swift_storeEnumTagMultiPayload();
    v24 = *(MEMORY[0x1E6999AF0] + 4);

    v14 = swift_task_alloc();
    *(v0 + 520) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v14 = v0;
    v16 = sub_1E5928594;
  }

  v14[1] = v16;
  v25 = *(v0 + 472);
  v26 = *(v0 + 432);

  return MEMORY[0x1EEE01A40](v25, v15);
}

uint64_t sub_1E5928374()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 472);
  v4 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E59284A0, 0, 0);
}

uint64_t sub_1E59284A0()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 176);
  *(v0 + 224) = *(v0 + 160);
  *(v0 + 240) = v5;
  v6 = *(v0 + 208);
  *(v0 + 256) = *(v0 + 192);
  *(v0 + 272) = v6;
  *v1 = v3;
  *(v1 + 8) = v4;
  v7 = *(v0 + 224);
  v8 = *(v0 + 240);
  v9 = *(v0 + 272);
  *(v1 + 48) = *(v0 + 256);
  *(v1 + 64) = v9;
  *(v1 + 16) = v7;
  *(v1 + 32) = v8;
  swift_storeEnumTagMultiPayload();
  v10 = *(MEMORY[0x1E6999AF0] + 4);

  v11 = swift_task_alloc();
  *(v0 + 520) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v11 = v0;
  v11[1] = sub_1E5928594;
  v13 = *(v0 + 472);
  v14 = *(v0 + 432);

  return MEMORY[0x1EEE01A40](v13, v12);
}

uint64_t sub_1E5928594()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 472);
  v5 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E59286C4()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];

  v4 = v0[1];
  v5 = v0[63];

  return v4();
}

uint64_t sub_1E592873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a3;
  v4[33] = a4;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for WorkoutPlanCreationAction();
  v4[34] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E59287D4, 0, 0);
}

uint64_t sub_1E59287D4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = sub_1E59E24B4(&unk_1F5F5B890);
  v0[36] = v4;
  sub_1E5932300(&unk_1F5F5B8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v6 = sub_1E59E24B4(inited);
  v0[37] = v6;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v0[28] = v4;
  v0[29] = v6;
  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_1E592897C;

  return (v12)(v0 + 12, v0 + 28);
}

uint64_t sub_1E592897C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_1E5928CC4;
  }

  else
  {
    v5 = *(v2 + 288);
    v6 = *(v2 + 296);

    v4 = sub_1E5928AA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5928AA0()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v5;
  v6 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v6;
  *v1 = v3;
  *(v1 + 8) = v4;
  v7 = *(v0 + 160);
  v8 = *(v0 + 176);
  v9 = *(v0 + 208);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 64) = v9;
  *(v1 + 16) = v7;
  *(v1 + 32) = v8;
  swift_storeEnumTagMultiPayload();
  v10 = *(MEMORY[0x1E6999AF0] + 4);

  v11 = swift_task_alloc();
  *(v0 + 320) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v11 = v0;
  v11[1] = sub_1E5928B94;
  v13 = *(v0 + 280);
  v14 = *(v0 + 240);

  return MEMORY[0x1EEE01A40](v13, v12);
}

uint64_t sub_1E5928B94()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 280);
  v5 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E5928CC4()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];

  v4 = v0[1];
  v5 = v0[39];

  return v4();
}

uint64_t sub_1E5928D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  result = type metadata accessor for EditItem();
  v5 = (a1 + *(result + 28));
  if ((v5[1] & 1) == 0)
  {
    v23 = v3;
    v6 = *v5;
    v7 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState() + 24) + 8);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 56);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v13 = v12;
LABEL_10:
        v14 = *(v7 + 48) + 40 * (__clz(__rbit64(v10)) | (v13 << 6));
        v15 = *v14;
        v17 = *(v14 + 8);
        v16 = *(v14 + 16);
        v18 = *(v14 + 24);
        v19 = *(v14 + 32);

        sub_1E5A2BD04();
        if (v15 - v18 <= v20 && v20 <= v15 + v19)
        {
          break;
        }

        v10 &= v10 - 1;

        v12 = v13;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v22 = sub_1E59E8F3C(v17, v16, v23);

      if ((v22 & 1) == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 1;
      }
    }

    else
    {
      while (1)
      {
LABEL_7:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v13 >= v11)
        {
          break;
        }

        v10 = *(v7 + 56 + 8 * v13);
        ++v12;
        if (v10)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5928F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 536) = a6;
  *(v6 + 456) = a4;
  *(v6 + 464) = a5;
  *(v6 + 440) = a2;
  *(v6 + 448) = a3;
  *(v6 + 432) = a1;
  v7 = type metadata accessor for WorkoutPlanCreationAction();
  *(v6 + 472) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 480) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5928FAC, 0, 0);
}

uint64_t sub_1E5928FAC()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[56];
  v5 = sub_1E59E24B4(&unk_1F5F5B8E0);
  v0[61] = v5;
  sub_1E5932300(&unk_1F5F5B900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v7 = sub_1E5932354(inited, v3);
  v0[62] = v7;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v0[52] = v5;
  v0[53] = v7;
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[63] = v11;
  *v11 = v0;
  v11[1] = sub_1E592915C;

  return (v13)(v0 + 12, v0 + 52);
}

uint64_t sub_1E592915C()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v8 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_1E5929438;
  }

  else
  {
    v5 = *(v2 + 488);
    v6 = *(v2 + 496);

    v4 = sub_1E5929280;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5929280()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v2;
  v3 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v3;
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  if (v1 == 1)
  {
    v6 = *(v0 + 448);
    v7 = *(v0 + 456);
    v8 = *(v0 + 112);
    *(v0 + 288) = *(v0 + 96);
    *(v0 + 304) = v8;
    v9 = *(v0 + 144);
    *(v0 + 320) = *(v0 + 128);
    *(v0 + 336) = v9;
    *v4 = v6;
    *(v4 + 8) = v7;
    v10 = *(v0 + 288);
    v11 = *(v0 + 304);
    v12 = *(v0 + 336);
    *(v4 + 48) = *(v0 + 320);
    *(v4 + 64) = v12;
    *(v4 + 16) = v10;
    *(v4 + 32) = v11;
    swift_storeEnumTagMultiPayload();

    sub_1E58BD154(v0 + 160, v0 + 352);
    v13 = *(MEMORY[0x1E6999AF0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 520) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v14 = v0;
    v16 = sub_1E59294B0;
  }

  else
  {
    v17 = *(v0 + 448);
    v18 = *(v0 + 456);
    v19 = *(v0 + 112);
    *(v0 + 224) = *(v0 + 96);
    *(v0 + 240) = v19;
    v20 = *(v0 + 144);
    *(v0 + 256) = *(v0 + 128);
    *(v0 + 272) = v20;
    *v4 = v17;
    *(v4 + 8) = v18;
    v21 = *(v0 + 224);
    v22 = *(v0 + 240);
    v23 = *(v0 + 272);
    *(v4 + 48) = *(v0 + 256);
    *(v4 + 64) = v23;
    *(v4 + 16) = v21;
    *(v4 + 32) = v22;
    swift_storeEnumTagMultiPayload();
    v24 = *(MEMORY[0x1E6999AF0] + 4);

    v14 = swift_task_alloc();
    *(v0 + 528) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v14 = v0;
    v16 = sub_1E59296D0;
  }

  v14[1] = v16;
  v25 = *(v0 + 480);
  v26 = *(v0 + 432);

  return MEMORY[0x1EEE01A40](v25, v15);
}

uint64_t sub_1E5929438()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];

  v4 = v0[1];
  v5 = v0[64];

  return v4();
}

uint64_t sub_1E59294B0()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 480);
  v4 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E59295DC, 0, 0);
}

uint64_t sub_1E59295DC()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v5 = *(v0 + 176);
  *(v0 + 224) = *(v0 + 160);
  *(v0 + 240) = v5;
  v6 = *(v0 + 208);
  *(v0 + 256) = *(v0 + 192);
  *(v0 + 272) = v6;
  *v1 = v3;
  *(v1 + 8) = v4;
  v7 = *(v0 + 224);
  v8 = *(v0 + 240);
  v9 = *(v0 + 272);
  *(v1 + 48) = *(v0 + 256);
  *(v1 + 64) = v9;
  *(v1 + 16) = v7;
  *(v1 + 32) = v8;
  swift_storeEnumTagMultiPayload();
  v10 = *(MEMORY[0x1E6999AF0] + 4);

  v11 = swift_task_alloc();
  *(v0 + 528) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v11 = v0;
  v11[1] = sub_1E59296D0;
  v13 = *(v0 + 480);
  v14 = *(v0 + 432);

  return MEMORY[0x1EEE01A40](v13, v12);
}

uint64_t sub_1E59296D0()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 480);
  v5 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E5929800(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for WorkoutPlanCreationAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v2[15] = v9;
  *v9 = v2;
  v9[1] = sub_1E5929928;

  return v11(v2 + 2);
}

uint64_t sub_1E5929928()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1E5929C44;
  }

  else
  {
    v3 = sub_1E5929A3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5929A3C()
{
  v1 = *(v0 + 104);
  memmove(*(v0 + 112), (v0 + 16), 0x50uLL);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v3 = v0;
  v3[1] = sub_1E5929B14;
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5929B14()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 112);
  v5 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E5929C44()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1E5929CA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  v7 = (*(a2 + 96) + **(a2 + 96));
  v4 = *(*(a2 + 96) + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E58CD5C8;

  return v7();
}

uint64_t sub_1E5929D90(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v4 = type metadata accessor for WorkoutPlanCreationAction();
  v2[24] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v2[26] = v9;
  *v9 = v2;
  v9[1] = sub_1E5929EB8;

  return v11(v2 + 17);
}

uint64_t sub_1E5929EB8()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1E592A7C0;
  }

  else
  {
    v3 = sub_1E5929FCC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5929FCC()
{
  v1 = v0[20];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 17, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[15] = swift_getAssociatedTypeWitness();
  v0[16] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v6 = v0[16];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v7 = *(MEMORY[0x1E69E85B0] + 4);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1E592A18C;

  return MEMORY[0x1EEE6D8D0](v0 + 32, 0, 0);
}

uint64_t sub_1E592A18C()
{
  v2 = *(*v1 + 224);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E592A29C, 0, 0);
  }

  return result;
}

uint64_t sub_1E592A29C()
{
  if (*(v0 + 256) == 1)
  {
    v1 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 184);
    v5 = *(v4 + 24);
    v8 = (*(v4 + 16) + **(v4 + 16));
    v6 = *(*(v4 + 16) + 4);
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    *v7 = v0;
    v7[1] = sub_1E592A3E4;

    return v8(v0 + 16);
  }
}

uint64_t sub_1E592A3E4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1E592A824;
  }

  else
  {
    v3 = sub_1E592A4F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E592A4F8()
{
  v1 = *(v0 + 192);
  memmove(*(v0 + 200), (v0 + 16), 0x50uLL);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v3 = v0;
  v3[1] = sub_1E592A5D0;
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E592A5D0()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 200);
  v4 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E592A6FC, 0, 0);
}

uint64_t sub_1E592A6FC()
{
  v1 = v0[16];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1E592A18C;

  return MEMORY[0x1EEE6D8D0](v0 + 32, 0, 0);
}

uint64_t sub_1E592A7C0()
{
  v1 = v0[27];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E592A824()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[30];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E592A890(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E592A924, 0, 0);
}

uint64_t sub_1E592A924()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = 768;
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v3 = v0;
  v3[1] = sub_1E59279D0;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E592A9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v6 = type metadata accessor for WorkoutPlanCreationAction();
  v3[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v8 = *(a2 + 120);
  v12 = (*(a2 + 112) + **(a2 + 112));
  v9 = *(*(a2 + 112) + 4);
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_1E592AB28;

  return v12(a3);
}

uint64_t sub_1E592AB28()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E592AE5C;
  }

  else
  {
    v3 = sub_1E592AC3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E592AC3C()
{
  v1 = *(v0 + 32);
  **(v0 + 48) = 769;
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v3 = v0;
  v3[1] = sub_1E592AD08;
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E592AD08()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 48);
  v4 = *v0;

  sub_1E5932F40(v3, type metadata accessor for WorkoutPlanCreationAction);
  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_1E592AE5C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 16) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F0, &unk_1E5A36530);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 88);
  if (!v5)
  {
    v6 = 3;
  }

  *v3 = 0;
  v3[1] = v6;
  swift_storeEnumTagMultiPayload();
  v7 = *(MEMORY[0x1E6999AF0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v8 = v0;
  v8[1] = sub_1E592AF84;
  v10 = *(v0 + 40);
  v11 = *(v0 + 24);

  return MEMORY[0x1EEE01A40](v10, v9);
}

uint64_t sub_1E592AF84()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_1E5932F40(v2, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E592B0B0, 0, 0);
}

uint64_t sub_1E592B0B0()
{
  MEMORY[0x1E69331F0](v0[8]);
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E592B124(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A226D0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E592B190(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E592B190(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E5919D7C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1E5919B74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E592B288(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD910, &qword_1E5A364D0);
  result = sub_1E5A2BE34();
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
      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
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

uint64_t sub_1E592B4E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
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
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_59;
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

        v35 = 1 << *(v3 + 32);
        if (v35 >= 64)
        {
          bzero(v8, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v35;
        }

        v2 = v36;
        *(v3 + 16) = 0;
        goto LABEL_57;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v40 = *(v19 + 24);
      v38 = *(v19 + 16);
      v39 = *(v19 + 32);
      v22 = *(v19 + 40);
      v23 = *(v6 + 40);
      sub_1E5A2C1B4();
      if (v22 > 3)
      {
        if (v22 <= 5)
        {
          if (v22 == 4)
          {
            v24 = 4;
          }

          else
          {
            v24 = 5;
          }
        }

        else if (v22 == 6)
        {
          v24 = 6;
        }

        else
        {
          if (v22 != 7)
          {
            MEMORY[0x1E6932DE0](8);
            sub_1E5A2BB74();

            goto LABEL_44;
          }

          v24 = 7;
        }

        goto LABEL_43;
      }

      if (v22 > 1)
      {
        break;
      }

      if (!v22)
      {
        v24 = 0;
LABEL_43:
        MEMORY[0x1E6932DE0](v24);
        sub_1E5A2BB74();
        goto LABEL_44;
      }

      MEMORY[0x1E6932DE0](1);
      if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = v20;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x1E6932E10](v25);
      sub_1E5A2BB74();
      if ((v40 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = v40;
      }

      else
      {
        v26 = 0;
      }

      MEMORY[0x1E6932E10](v26);
      if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v27 = v39;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x1E6932E10](v27);
LABEL_44:
      result = sub_1E5A2C204();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_59:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 48 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v38;
      *(v15 + 24) = v40;
      *(v15 + 32) = v39;
      *(v15 + 40) = v22;
      ++*(v6 + 16);
      v3 = v37;
    }

    if (v22 == 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = 3;
    }

    goto LABEL_43;
  }

LABEL_57:

  *v2 = v6;
  return result;
}

unint64_t sub_1E592B984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD908, &qword_1E5A364A8);
  result = sub_1E5A2BE34();
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
      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      sub_1E58B93C8(v28, v19);
      sub_1E58B93C8(v28, v20);
      sub_1E5A2C204();
      v22 = -1 << *(v6 + 32);
      result = sub_1E5A2BE04();
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

unint64_t sub_1E592BBA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E0, &unk_1E5A36440);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1E592C45C(*v16, v16[1], v16[2], v16[3], v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = (*(v3 + 48) + 32 * (v13 | (v7 << 6)));
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

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E592BD0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
  result = sub_1E5A2BE34();
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
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v18);
      result = sub_1E5A2C204();
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

uint64_t sub_1E592BF5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v22);
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E592C1DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8D8, &qword_1E5A36438);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v22);
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1E592C45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(a3 + 16));
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = (a3 + 32);
    do
    {
      v13 = *v12++;
      MEMORY[0x1E6932DE0](v13);
      --v11;
    }

    while (v11);
  }

  MEMORY[0x1E6932DE0](*(a4 + 16));
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      MEMORY[0x1E6932DE0](v16);
      --v14;
    }

    while (v14);
  }

  sub_1E5A2C204();
  v17 = -1 << *(a5 + 32);
  result = sub_1E5A2BE04();
  *(a5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v19 = (*(a5 + 48) + 32 * result);
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  ++*(a5 + 16);
  return result;
}

void *sub_1E592C580(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1E58BD154(a4, &v9);
    v8 = sub_1E5931328(v7, a2, a3, a4);

    sub_1E58BD18C(a4);
    sub_1E58BD18C(a4);
    return v8;
  }

  return result;
}

uint64_t sub_1E592C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_1E58EF458(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v16 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E5900A8C();
    v12 = v16;
  }

  v13 = v9;
  v14 = *(*(v12 + 56) + 8 * v9);
  sub_1E592C6B4(v13, v12);
  *v5 = v12;
  return v14;
}

uint64_t sub_1E592C6B4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E5A2BDF4() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = *(v2 + 40);
      v10 = v2;
      v11 = (*(v2 + 48) + 32 * v6);
      v12 = v7;
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[3];
      v17 = v8;
      sub_1E5A2C1B4();
      v18 = v13;
      v7 = v12;
      MEMORY[0x1E6932DE0](v18);
      MEMORY[0x1E6932DE0](v14);
      MEMORY[0x1E6932DE0](v15);
      MEMORY[0x1E6932DE0](v16);
      result = sub_1E5A2C204();
      v8 = v17;
      v19 = result & v12;
      if (v3 >= v17)
      {
        if (v19 < v17)
        {
          v4 = v30;
          v2 = v10;
        }

        else
        {
          v4 = v30;
          v2 = v10;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v10;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v23 = v22[1];
            *v21 = *v22;
            v21[1] = v23;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 8 * v3);
          v26 = (v24 + 8 * v6);
          if (v3 != v6 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v12;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_1E592C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1E58EF458(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1E5901460(v20, a6 & 1);
      v24 = *v7;
      result = sub_1E58EF458(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1E5A2C134();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1E5900A8C();
      result = v23;
    }
  }

  v26 = *v7;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    v29 = (v26[6] + 32 * result);
    *v29 = a2;
    v29[1] = a3;
    v29[2] = a4;
    v29[3] = a5;
    *(v26[7] + 8 * result) = a1;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

uint64_t sub_1E592CA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1E58EF508(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1E5901728(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_1E58EF508(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1E5A2C134();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1E5900BF4();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v34 = (v28[6] + 16 * v17);
  *v34 = a5;
  v34[1] = a6;
  v35 = (v28[7] + 32 * v17);
  *v35 = a1;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = a4;
  v36 = v28[2];
  v21 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v37;
}

uint64_t sub_1E592CBF8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E58EF508(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E5901A08(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1E58EF508(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1E5A2C134();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1E5900D90();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 6);

    return sub_1E593299C(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + (v11 << 6));
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v26[2] = a1[2];
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t sub_1E592CD80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v9 = sub_1E5A2C204();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1E592DB58(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E592CED0(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v35 = *a2;
  *v36 = v5;
  *&v36[9] = *(a2 + 25);
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)();
  v8 = sub_1E5A2C204();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48) + 48 * v10;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v16 = *(v12 + 32);
      *&v33 = *v12;
      *(&v33 + 1) = v13;
      *v34 = v14;
      *&v34[8] = v15;
      *&v34[16] = v16;
      v34[24] = *(v12 + 40);
      sub_1E58BACE0(v33, v13, v14, v15, v16, v34[24]);
      v17 = _s18FitnessWorkoutPlan0bC18CreationFilterItemO2eeoiySbAC_ACtFZ_0(&v33, &v35);
      sub_1E58BACAC(v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], v34[24]);
      if (v17)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1E58BACAC(v35, *(&v35 + 1), *v36, *&v36[8], *&v36[16], v36[24]);
    v24 = *(v6 + 48) + 48 * v10;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    *a1 = *v24;
    *(a1 + 8) = v26;
    *(a1 + 16) = v27;
    *(a1 + 24) = v28;
    *(a1 + 32) = v29;
    v30 = *(v24 + 40);
    *(a1 + 40) = v30;
    sub_1E58BACE0(v25, v26, v27, v28, v29, v30);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v35;
    *v34 = *v36;
    *&v34[9] = *&v36[9];
    v32 = *v3;
    sub_1E59323E4(&v33, v31);
    sub_1E592DCD8(&v33, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    v20 = *&v36[16];
    v21 = v36[24];
    v22 = *v36;
    *a1 = v35;
    *(a1 + 16) = v22;
    *(a1 + 32) = v20;
    *(a1 + 40) = v21;
    return 1;
  }
}

uint64_t sub_1E592D0A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v32, a4);
  v31 = a5;
  sub_1E58B93C8(v32, a5);
  v12 = sub_1E5A2C204();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    do
    {
      v16 = (*(v10 + 48) + 32 * v14);
      v17 = v16[2];
      v18 = v16[3];
      v19 = *v16 == a2 && v16[1] == a3;
      if (v19 || (v20 = v16[1], (sub_1E5A2C114() & 1) != 0))
      {

        if (sub_1E58B61B8(v17, a4))
        {
          v21 = sub_1E58B61B8(v18, v31);

          if (v21)
          {

            v22 = (*(v10 + 48) + 32 * v14);
            v23 = v22[1];
            v24 = v22[2];
            v25 = v22[3];
            *a1 = *v22;
            a1[1] = v23;
            a1[2] = v24;
            a1[3] = v25;

            return 0;
          }
        }

        else
        {
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v27 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[0] = *v29;

  sub_1E592DEA0(a2, a3, a4, v31, v14, isUniquelyReferenced_nonNull_native);
  *v29 = *&v32[0];
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = v31;
  return 1;
}

uint64_t sub_1E592D2F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(a4 + 16));
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = (a4 + 32);
    do
    {
      v14 = *v13++;
      MEMORY[0x1E6932DE0](v14);
      --v12;
    }

    while (v12);
  }

  MEMORY[0x1E6932DE0](*(a5 + 16));
  v15 = *(a5 + 16);
  if (v15)
  {
    v16 = (a5 + 32);
    do
    {
      v17 = *v16++;
      MEMORY[0x1E6932DE0](v17);
      --v15;
    }

    while (v15);
  }

  v18 = sub_1E5A2C204();
  v19 = v10 + 56;
  v20 = -1 << *(v10 + 32);
  v21 = v18 & ~v20;
  if (((*(v10 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
LABEL_31:
    v40 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v43;

    sub_1E592E0CC(a2, a3, a4, a5, v21, isUniquelyReferenced_nonNull_native);
    *v43 = v45;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v22 = ~v20;
  v23 = *(v10 + 48);
  v42 = v10;
  while (1)
  {
    v24 = (v23 + 32 * v21);
    result = *v24;
    v27 = v24[2];
    v26 = v24[3];
    if (*v24 != a2 || v24[1] != a3)
    {
      result = sub_1E5A2C114();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v29 = *(v27 + 16);
    if (v29 != *(a4 + 16))
    {
      goto LABEL_9;
    }

    if (v29 && v27 != a4)
    {
      break;
    }

LABEL_24:
    v33 = *(v26 + 16);
    if (v33 == *(a5 + 16))
    {
      if (!v33 || v26 == a5)
      {
LABEL_30:

        v36 = (*(v42 + 48) + 32 * v21);
        v37 = v36[1];
        v38 = v36[2];
        v39 = v36[3];
        *a1 = *v36;
        a1[1] = v37;
        a1[2] = v38;
        a1[3] = v39;

        return 0;
      }

      v34 = (v26 + 32);
      v35 = (a5 + 32);
      while (*v34 == *v35)
      {
        ++v34;
        ++v35;
        if (!--v33)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_9:
    v21 = (v21 + 1) & v22;
    if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v31 = (v27 + 32);
  v32 = (a4 + 32);
  while (v29)
  {
    if (*v31 != *v32)
    {
      goto LABEL_9;
    }

    ++v31;
    ++v32;
    if (!--v29)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1E592D5A8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a2);
  v7 = sub_1E5A2C204();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1E592E36C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E592D6A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a4);
  sub_1E5A2BB74();
  v10 = sub_1E5A2C204();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    do
    {
      v15 = v14 + 24 * v12;
      v16 = *(v15 + 16);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (a4 != 2)
          {
            goto LABEL_4;
          }
        }

        else if (a4 != 3)
        {
          goto LABEL_4;
        }
      }

      else if (*(v15 + 16))
      {
        if (a4 != 1)
        {
          goto LABEL_4;
        }
      }

      else if (a4)
      {
        goto LABEL_4;
      }

      v17 = *v15 == a2 && *(v15 + 8) == a3;
      if (v17 || (sub_1E5A2C114() & 1) != 0)
      {
        sub_1E58BAAC0(a2, a3, v16);
        v18 = *(v8 + 48) + 24 * v12;
        v19 = *v18;
        v20 = *(v18 + 8);
        *a1 = *v18;
        *(a1 + 8) = v20;
        v21 = *(v18 + 16);
        *(a1 + 16) = v21;
        sub_1E5932970(v19, v20, v21);
        return 0;
      }

LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v23 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v25;
  sub_1E5932970(a2, a3, a4);
  sub_1E592E4B8(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
  *v25 = v27;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return 1;
}

uint64_t sub_1E592D880(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a4 & 1);
  sub_1E5A2BB74();
  v10 = sub_1E5A2C204();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_19:
    v19 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    sub_1E58B413C();
    sub_1E592E6AC(a2, a3, a4 & 1, v12, isUniquelyReferenced_nonNull_native);
    *v25 = v28;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4 & 1;
    return 1;
  }

  v27 = ~v11;
  while (1)
  {
    v13 = *(v8 + 48) + 24 * v12;
    v15 = *v13;
    v14 = *(v13 + 8);
    if (*(v13 + 16))
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_3;
      }

      if (v15 == a2 && v14 == a3)
      {
        break;
      }

      goto LABEL_17;
    }

    if (a4)
    {
LABEL_3:
      sub_1E58B413C();
      sub_1E58B413C();
      sub_1E591CB8C();
      sub_1E591CB8C();
      goto LABEL_4;
    }

    if (v15 == a2 && v14 == a3)
    {
      break;
    }

LABEL_17:
    v18 = sub_1E5A2C114();
    sub_1E58B413C();
    sub_1E58B413C();
    sub_1E591CB8C();
    sub_1E591CB8C();
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_4:
    v12 = (v12 + 1) & v27;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_1E591CB8C();
LABEL_21:
  sub_1E591CB8C();
  v22 = *(v8 + 48) + 24 * v12;
  v23 = *(v22 + 8);
  v24 = *(v22 + 16);
  *a1 = *v22;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  sub_1E58B413C();
  return 0;
}

uint64_t sub_1E592DB58(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E592B288(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E592E998();
      goto LABEL_16;
    }

    sub_1E592F1E8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  result = sub_1E5A2C204();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E5A2C114();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E5A2C124();
  __break(1u);
  return result;
}

uint64_t sub_1E592DCD8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(result + 16);
  v33 = *result;
  *v34 = v6;
  *&v34[9] = *(result + 25);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E592B4E8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1E592EAF4();
      goto LABEL_12;
    }

    sub_1E592F420(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)();
  result = sub_1E5A2C204();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 48 * a2;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      v17 = *(v13 + 32);
      v27 = *v13;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v32 = *(v13 + 40);
      sub_1E58BACE0(v27, v14, v15, v16, v17, v32);
      v18 = _s18FitnessWorkoutPlan0bC18CreationFilterItemO2eeoiySbAC_ACtFZ_0(&v27, &v33);
      result = sub_1E58BACAC(v27, v28, v29, v30, v31, v32);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v20 = *(v19 + 48) + 48 * a2;
  v21 = *&v34[16];
  v22 = v34[24];
  v23 = *v34;
  *v20 = v33;
  *(v20 + 16) = v23;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v24 = *(v19 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v19 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E5A2C124();
  __break(1u);
  return result;
}

uint64_t sub_1E592DEA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a6 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a6)
  {
    sub_1E592B984(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1E592EC6C(&qword_1ECFFD908, &qword_1E5A364A8);
      goto LABEL_20;
    }

    sub_1E592F8A0(v10 + 1);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v30, a3);
  sub_1E58B93C8(v30, a4);
  result = sub_1E5A2C204();
  v14 = -1 << *(v12 + 32);
  a5 = result & ~v14;
  if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 32 * a5);
      v17 = v16[2];
      v18 = v16[3];
      v19 = *v16 == v9 && v16[1] == a2;
      if (v19 || (v20 = v16[1], result = sub_1E5A2C114(), (result & 1) != 0))
      {

        if (sub_1E58B61B8(v17, a3))
        {
          v21 = sub_1E58B61B8(v18, a4);

          if (v21)
          {
            result = sub_1E5A2C124();
            __break(1u);
            break;
          }
        }

        else
        {
        }
      }

      a5 = (a5 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_20:
  v22 = *v27;
  *(*v27 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v23 = (*(v22 + 48) + 32 * a5);
  *v23 = v9;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_1E592E0CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_38;
  }

  if (a6)
  {
    sub_1E592BBA0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1E592EC6C(&qword_1ECFFD8E0, &unk_1E5A36440);
      goto LABEL_38;
    }

    sub_1E592FA98(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(a3 + 16));
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = (a3 + 32);
    do
    {
      v18 = *v17++;
      MEMORY[0x1E6932DE0](v18);
      --v16;
    }

    while (v16);
  }

  MEMORY[0x1E6932DE0](*(a4 + 16));
  v19 = *(a4 + 16);
  if (v19)
  {
    v20 = (a4 + 32);
    do
    {
      v21 = *v20++;
      MEMORY[0x1E6932DE0](v21);
      --v19;
    }

    while (v19);
  }

  result = sub_1E5A2C204();
  v22 = v14 + 56;
  v23 = -1 << *(v14 + 32);
  a5 = result & ~v23;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v24 = ~v23;
    v25 = *(v14 + 48);
    do
    {
      v26 = (v25 + 32 * a5);
      result = *v26;
      v27 = v26[2];
      v28 = v26[3];
      v29 = *v26 == v11 && v26[1] == a2;
      if (v29 || (result = sub_1E5A2C114(), (result & 1) != 0))
      {
        v30 = *(v27 + 16);
        if (v30 == *(a3 + 16))
        {
          if (v30)
          {
            v31 = v27 == a3;
          }

          else
          {
            v31 = 1;
          }

          if (!v31)
          {
            v32 = (v27 + 32);
            v33 = (a3 + 32);
            while (v30)
            {
              if (*v32 != *v33)
              {
                goto LABEL_16;
              }

              ++v32;
              ++v33;
              if (!--v30)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_41:
            __break(1u);
            return result;
          }

LABEL_31:
          v34 = *(v28 + 16);
          if (v34 == *(a4 + 16))
          {
            if (!v34 || v28 == a4)
            {
LABEL_37:
              result = sub_1E5A2C124();
              __break(1u);
              break;
            }

            v35 = (v28 + 32);
            v36 = (a4 + 32);
            while (*v35 == *v36)
            {
              ++v35;
              ++v36;
              if (!--v34)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_16:
      a5 = (a5 + 1) & v24;
    }

    while (((*(v22 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_38:
  v37 = *v42;
  *(*v42 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v38 = (*(v37 + 48) + 32 * a5);
  *v38 = v11;
  v38[1] = a2;
  v38[2] = a3;
  v38[3] = a4;
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    goto LABEL_41;
  }

  *(v37 + 16) = v41;
  return result;
}

uint64_t sub_1E592E36C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E592BD0C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1E592EDD8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1E592FC04(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v4);
  result = sub_1E5A2C204();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E5A2C124();
  __break(1u);
  return result;
}

uint64_t sub_1E592E4B8(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a5)
  {
    sub_1E592BF5C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1E592EF18();
      goto LABEL_26;
    }

    sub_1E592FE24(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a3);
  sub_1E5A2BB74();
  result = sub_1E5A2C204();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      result = *v19;
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          if (a3 != 2)
          {
            goto LABEL_11;
          }
        }

        else if (a3 != 3)
        {
          goto LABEL_11;
        }
      }

      else if (v21)
      {
        if (a3 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v22 = result == v10 && v20 == a2;
      if (v22 || (result = sub_1E5A2C114(), (result & 1) != 0))
      {
        result = sub_1E5A2C124();
        __break(1u);
        break;
      }

LABEL_11:
      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_26:
  v23 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = *(v23 + 48) + 24 * a4;
  *v24 = v10;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

uint64_t sub_1E592E6AC(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1E592C1DC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_1E592F080();
        goto LABEL_26;
      }

      sub_1E593007C(v10 + 1);
    }

    v12 = *v5;
    v13 = *(*v5 + 40);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](a3 & 1);
    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v14 = -1 << *(v12 + 32);
    a4 = result & ~v14;
    if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v15 = ~v14;
      do
      {
        v16 = *(v12 + 48) + 24 * a4;
        v18 = *v16;
        v17 = *(v16 + 8);
        if (*(v16 + 16))
        {
          if ((a3 & 1) == 0)
          {
            goto LABEL_10;
          }

          if (v18 == v9 && v17 == a2)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (a3)
          {
LABEL_10:
            sub_1E58B413C();
            sub_1E58B413C();
            sub_1E591CB8C();
            result = sub_1E591CB8C();
            goto LABEL_11;
          }

          if (v18 == v9 && v17 == a2)
          {
            goto LABEL_29;
          }
        }

        v21 = *v16;
        v22 = *(v16 + 8);
        v23 = sub_1E5A2C114();
        sub_1E58B413C();
        sub_1E58B413C();
        sub_1E591CB8C();
        result = sub_1E591CB8C();
        if (v23)
        {
          goto LABEL_30;
        }

LABEL_11:
        a4 = (a4 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_26:
  v24 = *v29;
  *(*v29 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = v9;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3 & 1;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_29:
    sub_1E58B413C();
    sub_1E58B413C();
    sub_1E591CB8C();
    sub_1E591CB8C();
LABEL_30:
    result = sub_1E5A2C124();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_1E592E998()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD910, &qword_1E5A364D0);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E592EAF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        result = sub_1E58BACE0(v19, v20, v21, v22, v23, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E592EC6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E5A2BE24();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 32 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = (*(v6 + 48) + v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v22;
        v24[3] = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1E592EDD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E592EF18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_1E5932970(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E592F080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8D8, &qword_1E5A36438);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v20;
        result = sub_1E58B413C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E592F1E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD910, &qword_1E5A364D0);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E592F420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
  result = sub_1E5A2BE34();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_55:
    *v2 = v6;
    return result;
  }

  v35 = v2;
  v36 = v3;
  v7 = 0;
  v8 = v3 + 56;
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
    v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
    v20 = *v19;
    v21 = *(v19 + 8);
    v39 = *(v19 + 24);
    v37 = *(v19 + 16);
    v38 = *(v19 + 32);
    v22 = *(v19 + 40);
    v23 = *(v6 + 40);
    sub_1E5A2C1B4();
    if (v22 > 3)
    {
      if (v22 <= 5)
      {
        if (v22 == 4)
        {
          v24 = 4;
        }

        else
        {
          v24 = 5;
        }
      }

      else if (v22 == 6)
      {
        v24 = 6;
      }

      else
      {
        if (v22 != 7)
        {
          MEMORY[0x1E6932DE0](8);
          sub_1E5A2BB74();

          goto LABEL_44;
        }

        v24 = 7;
      }

      goto LABEL_43;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = 3;
      }

      goto LABEL_43;
    }

    if (!v22)
    {
      v24 = 0;
LABEL_43:
      MEMORY[0x1E6932DE0](v24);

      sub_1E5A2BB74();
      goto LABEL_44;
    }

    MEMORY[0x1E6932DE0](1);
    if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x1E6932E10](v25);

    sub_1E5A2BB74();
    if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v39;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x1E6932E10](v26);
    if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v38;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1E6932E10](v27);
LABEL_44:
    result = sub_1E5A2C204();
    v28 = -1 << *(v6 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v28) >> 6;
      while (++v30 != v32 || (v31 & 1) == 0)
      {
        v33 = v30 == v32;
        if (v30 == v32)
        {
          v30 = 0;
        }

        v31 |= v33;
        v34 = *(v13 + 8 * v30);
        if (v34 != -1)
        {
          v14 = __clz(__rbit64(~v34)) + (v30 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_57;
    }

    v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 48 * v14;
    *v15 = v20;
    *(v15 + 8) = v21;
    *(v15 + 16) = v37;
    *(v15 + 24) = v39;
    *(v15 + 32) = v38;
    *(v15 + 40) = v22;
    ++*(v6 + 16);
    v3 = v36;
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v35;
      goto LABEL_55;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v11 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1E592F8A0(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD908, &qword_1E5A364A8);
  result = sub_1E5A2BE34();
  v5 = result;
  v24 = v2;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v24 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v24 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v5 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = (*(v24 + 48) + 32 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = *(v5 + 40);
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      sub_1E58B93C8(v25, v17);
      sub_1E58B93C8(v25, v18);
      sub_1E5A2C204();
      v20 = -1 << *(v5 + 32);
      result = sub_1E5A2BE04();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v21 = (*(v5 + 48) + 32 * result);
      *v21 = v15;
      v21[1] = v16;
      v21[2] = v17;
      v21[3] = v18;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_16;
      }

      v13 = *(v24 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v22 = v5;
  }

  return result;
}

unint64_t sub_1E592FA98(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E0, &unk_1E5A36440);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1E592C45C(v15, v16, v17, v18, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = (*(v2 + 48) + 32 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_15;
      }

      v13 = *(v2 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v19 = v5;
  }

  return result;
}

uint64_t sub_1E592FC04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v17);
      result = sub_1E5A2C204();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E592FE24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v22);

      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E593007C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8D8, &qword_1E5A36438);
  result = sub_1E5A2BE34();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v22);

      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E59302E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v7 = sub_1E5A2C204();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E5A2C114() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E592E998();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1E5930834(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1E5930424(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  v5 = sub_1E5A2C204();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 7;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 7;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E592EDD8();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v7);
  sub_1E59309F8(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_1E593052C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a3);
  sub_1E5A2BB74();
  v9 = sub_1E5A2C204();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 24 * v11);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v14 + 16);
    if (v17 <= 1)
    {
      if (v17)
      {
        if (a3 == 1)
        {
          goto LABEL_13;
        }
      }

      else if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }

    if (v17 != 2)
    {
      break;
    }

    if (a3 == 2)
    {
      goto LABEL_13;
    }

LABEL_4:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (a3 != 3)
  {
    goto LABEL_4;
  }

LABEL_13:
  v18 = v15 == a1 && v16 == a2;
  if (!v18 && (sub_1E5A2C114() & 1) == 0)
  {
    goto LABEL_4;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;
  v27 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E592EF18();
    v21 = v27;
  }

  v22 = *(v21 + 48) + 24 * v11;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  sub_1E5930BA0(v11);
  result = v23;
  *v3 = v27;
  return result;
}

unint64_t sub_1E59306E4()
{
  result = qword_1ECFFD8A8;
  if (!qword_1ECFFD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD8A8);
  }

  return result;
}

uint64_t sub_1E5930738(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 168);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E58CECB4;

  return sub_1E5928F0C(a1, v4, v5, v6, v1 + 40, v7);
}

unint64_t sub_1E5930834(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1E5A2BDF4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v15 = sub_1E5A2C204();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E59309F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1E5A2BDF4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_1E5A2C1B4();
        MEMORY[0x1E6932DE0](v12);
        v13 = sub_1E5A2C204() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E5930BA0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1E5A2BDF4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v30 = v4;
      do
      {
        v11 = 24 * v6;
        v12 = *(v3 + 40);
        v13 = v3;
        v14 = *(v3 + 48) + 24 * v6;
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = v2;
        v18 = *(v14 + 16);
        v19 = v10;
        sub_1E5A2C1B4();
        MEMORY[0x1E6932DE0](v18);

        sub_1E5A2BB74();
        v20 = sub_1E5A2C204();
        v21 = v18;
        v2 = v17;
        sub_1E58BAAC0(v15, v16, v21);
        v10 = v19;
        v22 = v20 & v7;
        if (v17 >= v19)
        {
          if (v22 < v19)
          {
            v4 = v30;
            v3 = v13;
          }

          else
          {
            v4 = v30;
            v3 = v13;
            if (v2 >= v22)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v30;
          v3 = v13;
          if (v22 >= v10 || v2 >= v22)
          {
LABEL_12:
            v23 = *(v3 + 48);
            v24 = v23 + 24 * v2;
            v25 = (v23 + v11);
            if (24 * v2 < v11 || v24 >= v25 + 24 || v2 != v6)
            {
              v26 = *v25;
              *(v24 + 16) = *(v25 + 2);
              *v24 = v26;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E5930DDC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = *v3;
  if (!v8)
  {
LABEL_10:
    v15 = isUniquelyReferenced_nonNull_native;
    sub_1E592EF18();
    isUniquelyReferenced_nonNull_native = v15;
    v9 = v16;
  }

  v10 = *(v9 + 48) + 24 * isUniquelyReferenced_nonNull_native;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  sub_1E5930BA0(isUniquelyReferenced_nonNull_native);
  *v3 = v16;
  return v11;
}

uint64_t sub_1E5930EC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 5)
    {
      return a4 == 5;
    }

    if (a2 == 6)
    {
      return a4 == 6;
    }
  }

  if (a4 < 7)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E5930FA4(uint64_t a1, uint64_t a2)
{
  v41 = a1 + 64;
  v44 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = a2 + 56;

  v9 = 0;
  while (v5)
  {
    v10 = v5;
LABEL_13:
    v5 = (v10 - 1) & v10;
    if (*(a2 + 16))
    {
      v45 = (v10 - 1) & v10;
      v12 = __clz(__rbit64(v10)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = v13[1];
      v43 = *v13;
      v15 = (*(a1 + 56) + 32 * v12);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      v20 = *(a2 + 40);
      sub_1E5A2C1B4();
      v46 = v14;

      v47 = v18;

      sub_1E5A2BB74();
      v21 = sub_1E5A2C204();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if ((*(v7 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = (*(a2 + 48) + 16 * v23);
          v26 = *v25 == v16 && v25[1] == v17;
          if (v26 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v7 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v27 = v44;
        v28 = *(v44 + 16);
        if (*(v44 + 24) <= v28)
        {

          sub_1E5901728(v28 + 1, 1);
          v27 = v48;
        }

        else
        {
        }

        v29 = *(v27 + 40);
        sub_1E5A2C1B4();
        sub_1E5A2BB74();
        result = sub_1E5A2C204();
        v30 = v27 + 64;
        v31 = -1 << *(v27 + 32);
        v32 = result & ~v31;
        v33 = v32 >> 6;
        if (((-1 << v32) & ~*(v27 + 64 + 8 * (v32 >> 6))) == 0)
        {
          v35 = 0;
          v36 = (63 - v31) >> 6;
          while (++v33 != v36 || (v35 & 1) == 0)
          {
            v37 = v33 == v36;
            if (v33 == v36)
            {
              v33 = 0;
            }

            v35 |= v37;
            v38 = *(v30 + 8 * v33);
            if (v38 != -1)
            {
              v34 = __clz(__rbit64(~v38)) + (v33 << 6);
              goto LABEL_36;
            }
          }

          goto LABEL_39;
        }

        v34 = __clz(__rbit64((-1 << v32) & ~*(v27 + 64 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
        *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v39 = (*(v27 + 48) + 16 * v34);
        *v39 = v43;
        v39[1] = v46;
        v40 = (*(v27 + 56) + 32 * v34);
        *v40 = v16;
        v40[1] = v17;
        v40[2] = v47;
        v40[3] = v19;
        v44 = v27;
        ++*(v27 + 16);
      }

      else
      {
LABEL_5:
      }

      v5 = v45;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v44;
    }

    v10 = *(v41 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E5931328(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = 0;
  v51 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 24 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v57 = v8;
    v54 = v13;
    v56 = *(v14 + 16);
    if (v56 > 1u)
    {
      if (*(v14 + 16) == 2)
      {
        v25 = a4[5];
        if (!*(v25 + 16))
        {
          goto LABEL_56;
        }

        v26 = *(v25 + 40);
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v27 = sub_1E5A2C204();
        v28 = -1 << *(v25 + 32);
        v29 = v27 & ~v28;
        if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_55;
        }

        v30 = ~v28;
        while (1)
        {
          v31 = (*(v25 + 48) + 16 * v29);
          v32 = *v31 == v15 && v16 == v31[1];
          if (v32 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        v41 = a4[6];
        if (!*(v41 + 16))
        {
          goto LABEL_56;
        }

        v42 = *(v41 + 40);
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v43 = sub_1E5A2C204();
        v44 = -1 << *(v41 + 32);
        v45 = v43 & ~v44;
        if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_55;
        }

        v46 = ~v44;
        while (1)
        {
          v47 = (*(v41 + 48) + 16 * v45);
          v48 = *v47 == v15 && v16 == v47[1];
          if (v48 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

LABEL_5:
      result = sub_1E58BAAC0(v15, v16, v56);
      v8 = v57;
    }

    else
    {
      if (*(v14 + 16))
      {
        v33 = a4[2];
        if (!*(v33 + 16))
        {
          goto LABEL_56;
        }

        v34 = *(v33 + 40);
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v35 = sub_1E5A2C204();
        v36 = -1 << *(v33 + 32);
        v37 = v35 & ~v36;
        if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_55;
        }

        v38 = ~v36;
        while (1)
        {
          v39 = (*(v33 + 48) + 16 * v37);
          v40 = *v39 == v15 && v16 == v39[1];
          if (v40 || (sub_1E5A2C114() & 1) != 0)
          {
            goto LABEL_5;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      v17 = *a4;
      if (*(*a4 + 16))
      {
        v18 = *(v17 + 40);
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v19 = sub_1E5A2C204();
        v20 = -1 << *(v17 + 32);
        v21 = v19 & ~v20;
        if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          do
          {
            v23 = (*(v17 + 48) + 16 * v21);
            v24 = *v23 == v15 && v16 == v23[1];
            if (v24 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_5;
            }

            v21 = (v21 + 1) & v22;
          }

          while (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
        }

LABEL_55:
        result = sub_1E58BAAC0(v15, v16, v56);
        v8 = v57;
        v13 = v54;
      }

LABEL_56:
      *(v51 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
LABEL_59:

        return sub_1E59E07C0(v51, a2, v52, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_59;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5931788(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v64 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_64;
  }

  v7 = sub_1E58BD154(a2, v63);
  while (2)
  {
    v55[0] = v55;
    MEMORY[0x1EEE9AC00](v7);
    v56 = v55 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v56, v6);
    v57 = 0;
    v58 = v3;
    v8 = 0;
    v9 = v3 + 56;
    v10 = 1 << *(v3 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v3 + 56);
    v5 = (v10 + 63) >> 6;
    v59 = v2;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v16 = v13 | (v8 << 6);
      v17 = *(v3 + 48) + 24 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v62 = v12;
      v60 = v16;
      v61 = v20;
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v28 = v2[5];
          if (!*(v28 + 16))
          {
            goto LABEL_58;
          }

          v29 = *(v28 + 40);
          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v30 = sub_1E5A2C204();
          v31 = -1 << *(v28 + 32);
          v32 = v30 & ~v31;
          if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_57;
          }

          v6 = ~v31;
          while (1)
          {
            v33 = (*(v28 + 48) + 16 * v32);
            v34 = *v33 == v18 && v19 == v33[1];
            if (v34 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v32 = (v32 + 1) & v6;
            if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          v42 = v2[6];
          if (!*(v42 + 16))
          {
            goto LABEL_58;
          }

          v43 = *(v42 + 40);
          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v44 = sub_1E5A2C204();
          v45 = -1 << *(v42 + 32);
          v46 = v44 & ~v45;
          if (((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
            goto LABEL_57;
          }

          v6 = ~v45;
          while (1)
          {
            v47 = (*(v42 + 48) + 16 * v46);
            v48 = *v47 == v18 && v19 == v47[1];
            if (v48 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v46 = (v46 + 1) & v6;
            if (((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

LABEL_7:
        sub_1E58BAAC0(v18, v19, v61);
        v3 = v58;
        v2 = v59;
        v12 = v62;
      }

      else
      {
        if (v20)
        {
          v35 = v2[2];
          if (!*(v35 + 16))
          {
            goto LABEL_58;
          }

          v36 = *(v35 + 40);
          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v37 = sub_1E5A2C204();
          v38 = -1 << *(v35 + 32);
          v39 = v37 & ~v38;
          if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_57;
          }

          v6 = ~v38;
          while (1)
          {
            v40 = (*(v35 + 48) + 16 * v39);
            v41 = *v40 == v18 && v19 == v40[1];
            if (v41 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_7;
            }

            v39 = (v39 + 1) & v6;
            if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        v21 = *v2;
        if (*(*v2 + 16))
        {
          v22 = *(v21 + 40);
          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v23 = sub_1E5A2C204();
          v24 = -1 << *(v21 + 32);
          v25 = v23 & ~v24;
          if ((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
          {
            v6 = ~v24;
            do
            {
              v26 = (*(v21 + 48) + 16 * v25);
              v27 = *v26 == v18 && v19 == v26[1];
              if (v27 || (sub_1E5A2C114() & 1) != 0)
              {
                goto LABEL_7;
              }

              v25 = (v25 + 1) & v6;
            }

            while (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
          }

LABEL_57:
          sub_1E58BAAC0(v18, v19, v61);
          v3 = v58;
          v2 = v59;
          v12 = v62;
          v16 = v60;
        }

LABEL_58:
        *&v56[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v57++, 1))
        {
          __break(1u);
LABEL_61:
          v50 = sub_1E59E07C0(v56, v55[1], v57, v3);
          goto LABEL_62;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        goto LABEL_61;
      }

      v15 = *(v9 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_64:
    sub_1E58BD154(v2, v63);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v53 = v3;
  v54 = swift_slowAlloc();
  sub_1E58BD154(v2, v63);
  v50 = sub_1E592C580(v54, v5, v53, v2);

  MEMORY[0x1E6933430](v54, -1, -1);
LABEL_62:
  sub_1E58BD18C(v2);
  v51 = *MEMORY[0x1E69E9840];
  return v50;
}

uint64_t sub_1E5931D18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CECB4;

  return sub_1E592873C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E5931F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_18FitnessWorkoutPlan0bC15CreationFeatureV14TaskIdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5931FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E593200C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_1E593205C(void *result, int a2)
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

unint64_t sub_1E5932090()
{
  result = qword_1ECFFD8D0;
  if (!qword_1ECFFD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD8D0);
  }

  return result;
}

uint64_t sub_1E59320E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5932154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  return swift_deallocObject();
}

uint64_t sub_1E5932244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CECB4;

  return sub_1E5926004(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1E5932354(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = v3[1];
      v9 = *v3;
      v10[0] = v4;
      *(v10 + 9) = *(v3 + 25);
      sub_1E59323E4(&v9, v6);
      sub_1E592CED0(v6, &v9);
      sub_1E58BACAC(v6[0], v6[1], v6[2], v6[3], v6[4], v7);
      v3 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1E5932440(uint64_t a1)
{
  v2 = *(sub_1E5A29EB4() - 8);
  v22 = (*(v2 + 80) + 144) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1E5A29E74() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v1 + v3);
  v12 = *(v1 + v9);
  v13 = *(v1 + v10);
  v14 = *(v1 + v10 + 8);
  v15 = *(v1 + v10 + 16);
  v16 = *(v1 + v10 + 24);
  v17 = *(v1 + v11);
  LOBYTE(v3) = *(v1 + v11 + 8);
  v18 = swift_task_alloc();
  *(v21 + 16) = v18;
  *v18 = v21;
  v18[1] = sub_1E58CECB4;

  return sub_1E5926630(a1, v1 + 16, v1 + v22, v20, v1 + v5, v1 + v8, v12, v13);
}

uint64_t sub_1E59326EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5932754(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPlanCreationScheduleRequest() - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CD5C8;

  return sub_1E59273D4(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  return swift_deallocObject();
}

uint64_t sub_1E59328B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 160);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CECB4;

  return sub_1E5927E5C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_1E5932970(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1E5932988(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E58BAAC0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E59329F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5929800(a1, v1 + 16);
}

uint64_t sub_1E5932A90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5929CA8(a1, v1 + 16);
}

uint64_t objectdestroy_54Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_1E5932B98(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5929D90(a1, v1 + 16);
}

uint64_t sub_1E5932C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for WorkoutPlanCreationScheduleRequest();
  v2 = (*(*(v1 - 1) + 80) + 144) & ~*(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 3);

  v4 = *(v0 + 5);

  v5 = *(v0 + 7);

  v6 = *(v0 + 9);

  v7 = *(v0 + 11);

  v8 = *(v0 + 13);

  v9 = *(v0 + 15);

  v10 = *(v0 + 17);

  v11 = *&v0[v2];

  v12 = v1[5];
  v13 = sub_1E5A29E74();
  v14 = *(*(v13 - 8) + 8);
  v14(&v0[v2 + v12], v13);
  v15 = &v0[v2 + v1[6]];
  v16 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v14(&v15[*(v16 + 20)], v13);
    v17 = *&v15[*(v16 + 24)];
  }

  v18 = *&v0[v2 + v1[10]];

  return swift_deallocObject();
}

uint64_t sub_1E5932E64(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPlanCreationScheduleRequest() - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CECB4;

  return sub_1E592A9EC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E5932F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActiveWorkoutPlanArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E58F0054(a1, a3, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  active = type metadata accessor for ActiveWorkoutPlanArtwork();
  return sub_1E58F0054(a2, a3 + *(active + 20), &qword_1ECFFB5E0, &qword_1E5A3AC70);
}

uint64_t type metadata accessor for ActiveWorkoutPlanArtwork()
{
  result = qword_1ECFFD968;
  if (!qword_1ECFFD968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E59330C8()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_1E5933118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E5933200(uint64_t a1)
{
  v2 = sub_1E5933478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593323C(uint64_t a1)
{
  v2 = sub_1E5933478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD928, &qword_1E5A36540);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5933478();
  sub_1E5A2C224();
  v11[15] = 0;
  sub_1E5A2A064();
  sub_1E59346A4(&qword_1ECFFD938, MEMORY[0x1E699DB98]);
  sub_1E5A2C054();
  if (!v1)
  {
    v9 = *(type metadata accessor for ActiveWorkoutPlanArtwork() + 20);
    v11[14] = 1;
    sub_1E5A29D44();
    sub_1E59346A4(&qword_1ECFFD940, MEMORY[0x1E6968FB0]);
    sub_1E5A2C054();
  }

  return (*(v4 + 8))(v7, v3);
}