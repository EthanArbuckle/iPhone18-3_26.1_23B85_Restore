uint64_t sub_1D7023490()
{
  v1 = (v0 + *(type metadata accessor for FeedClusteringOptions(0) + 72));
  sub_1D67113E8(*v1, v1[1], v1[2], v1[3], v1[4]);

  return sub_1D72593EC();
}

uint64_t sub_1D7023524(uint64_t a1)
{
  sub_1D7031448();
  v36 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedClusteringOptions(0);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v39 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031C8C();
  v10 = sub_1D72640FC();
  v11 = 0;
  v37 = a1;
  v38 = v10;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = v3;
  v32[1] = v3 + 32;
  v33 = v10 + 64;
  v19 = v39;
  if ((v16 & v12) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v23 = v20 | (v11 << 6);
      v24 = (*(v37 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      sub_1D702DE88(*(v37 + 56) + *(v34 + 72) * v23, v19, type metadata accessor for FeedClusteringOptions);

      sub_1D7023828(v19, v6);
      sub_1D7031C2C(v19, type metadata accessor for FeedClusteringOptions);
      *(v33 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v19 = v38;
      v27 = (*(v38 + 48) + 16 * v23);
      *v27 = v25;
      v27[1] = v26;
      (*(v35 + 32))(*(v19 + 56) + *(v35 + 72) * v23, v6, v36);
      v28 = *(v19 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v19 + 16) = v30;
      v19 = v39;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v38;
      }

      v22 = *(v13 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  result = sub_1D7031C2C(v19, type metadata accessor for FeedClusteringOptions);
  __break(1u);
  return result;
}

uint64_t sub_1D7023828@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  sub_1D5E3B6C0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72593FC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v103 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B330(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031B94(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v101 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725943C();
  v99 = *(v15 - 8);
  v100 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6E0(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v96 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v92 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v95 = &v92 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v92 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v92 - v39;
  v41 = sub_1D72593CC();
  v106 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v92 = &v92 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v112 = &v92 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v111 = &v92 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v110 = &v92 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v109 = &v92 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v108 = &v92 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v107 = &v92 - v61;
  v62 = type metadata accessor for FeedClusteringOptions(0);
  v63 = a1 + v62[11];
  v64 = *(v63 + 8);
  v113 = v18;
  v94 = v29;
  if (v64 == 1)
  {
    v102 = sub_1D725912C();
  }

  else
  {
    v102 = *v63;
  }

  sub_1D702DE88(a1 + v62[12], v40, sub_1D5E3B6E0);
  v65 = v106;
  v66 = *(v106 + 48);
  if (v66(v40, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v40, 1, v41) != 1)
    {
      sub_1D7031C2C(v40, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v65 + 32))(v107, v40, v41);
  }

  v67 = a1 + v62[9];
  if (*(v67 + 8))
  {
    v97 = sub_1D725914C();
  }

  else
  {
    v97 = *v67;
  }

  v68 = v106;
  sub_1D702DE88(a1 + v62[10], v36, sub_1D5E3B6E0);
  if (v66(v36, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v36, 1, v41) != 1)
    {
      sub_1D7031C2C(v36, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v68 + 32))(v108, v36, v41);
  }

  v69 = a1 + v62[13];
  if (*(v69 + 8))
  {
    v106 = sub_1D725916C();
  }

  else
  {
    v106 = *v69;
  }

  v70 = v95;
  sub_1D702DE88(a1 + v62[14], v95, sub_1D5E3B6E0);
  if (v66(v70, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v70, 1, v41) != 1)
    {
      sub_1D7031C2C(v70, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v68 + 32))(v109, v70, v41);
  }

  if (*(a1 + v62[15]))
  {
    v95 = *(a1 + v62[15]);
  }

  else
  {
    v95 = sub_1D5C44DF4(MEMORY[0x1E69E7CC0]);
  }

  v71 = v98;
  v93 = v25;
  v72 = (a1 + v62[16]);
  v73 = v68;
  if (v72[1])
  {

    v98 = sub_1D725910C();
  }

  else
  {
    v98 = *v72;
  }

  v74 = v94;
  sub_1D702DE88(a1 + v62[17], v94, sub_1D5E3B6E0);
  v75 = v66(v74, 1, v41);
  v76 = v96;
  if (v75 == 1)
  {
    sub_1D72593BC();
    if (v66(v74, 1, v41) != 1)
    {
      sub_1D7031C2C(v74, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v73 + 32))(v110, v74, v41);
  }

  v77 = (a1 + v62[6]);
  if (v77[1])
  {
    v94 = sub_1D72590BC();
  }

  else
  {
    v94 = *v77;
  }

  v78 = v73;
  v79 = v93;
  sub_1D702DE88(a1 + v62[7], v93, sub_1D5E3B6E0);
  if (v66(v79, 1, v41) == 1)
  {
    sub_1D72593BC();
    if (v66(v79, 1, v41) != 1)
    {
      sub_1D7031C2C(v79, sub_1D5E3B6E0);
    }

    if (a1[1])
    {
      goto LABEL_39;
    }
  }

  else
  {
    (*(v78 + 32))(v111, v79, v41);
    if (a1[1])
    {
LABEL_39:
      v93 = sub_1D72590DC();
      goto LABEL_42;
    }
  }

  v93 = *a1;
LABEL_42:
  sub_1D702DE88(a1 + v62[5], v76, sub_1D5E3B6E0);
  if (v66(v76, 1, v41) == 1)
  {
    sub_1D72593BC();
    v80 = v66(v76, 1, v41);
    v81 = v113;
    if (v80 != 1)
    {
      sub_1D7031C2C(v76, sub_1D5E3B6E0);
    }
  }

  else
  {
    (*(v78 + 32))(v112, v76, v41);
    v81 = v113;
  }

  sub_1D702DE88(a1 + v62[8], v71, sub_1D5E3B330);
  v82 = type metadata accessor for FeedGroupBundleArticleQuotas();
  if ((*(*(v82 - 8) + 48))(v71, 1, v82) == 1)
  {
    sub_1D7031C2C(v71, sub_1D5E3B330);
    v84 = v99;
    v83 = v100;
    v85 = v101;
    v86 = (*(v99 + 56))(v101, 1, 1, v100);
    MEMORY[0x1DA6F0820](v86);
    if ((*(v84 + 48))(v85, 1, v83) != 1)
    {
      sub_1D7031C2C(v85, sub_1D7031B94);
    }
  }

  else
  {
    (*(v78 + 16))(v92, v71 + *(v82 + 24), v41);

    v87 = v101;
    sub_1D725941C();
    sub_1D7031C2C(v71, type metadata accessor for FeedGroupBundleArticleQuotas);
    v89 = v99;
    v88 = v100;
    (*(v99 + 56))(v87, 0, 1, v100);
    (*(v89 + 32))(v81, v87, v88);
  }

  v90 = (a1 + v62[18]);
  sub_1D67113E8(*v90, v90[1], v90[2], v90[3], v90[4]);
  sub_1D72593EC();
  sub_1D702DE88(a1 + v62[20], v104, sub_1D5E3B6C0);
  v101 = sub_1D725913C();
  v100 = sub_1D725915C();
  sub_1D725917C();
  sub_1D725911C();
  sub_1D72590CC();
  sub_1D72590EC();
  sub_1D725919C();
  sub_1D72590FC();
  sub_1D7031B18(&qword_1EDF18970, 255, MEMORY[0x1E69E3388]);
  sub_1D7031B18(&qword_1EDF18978, 255, MEMORY[0x1E69E3358]);
  return sub_1D725937C();
}

uint64_t sub_1D70245A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v5 = v4;
  v98 = v5;
  v95 = *v5;
  v10 = sub_1D725944C();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v85 - v18;
  v20 = a2[1];
  v96 = *a2;
  v21 = *(v11 + 16);
  v21(&v85 - v18, a1, v10, v17);
  v92 = v14;
  (v21)(v14, a1, v10);
  v97 = a3;

  if (sub_1D7025508())
  {
    if (qword_1EDF12600 == -1)
    {
LABEL_3:
      v95 = v19;
      v87 = v20;
      v88 = v11;
      v89 = v10;
      v90 = a4;
      v22 = qword_1EDFFC618;
      sub_1D7262EDC();
      v10 = MEMORY[0x1E69E7CC0];
      v86 = v22;
      sub_1D725C30C();
      v23 = *(v96 + 16);

      if (v23)
      {
        v11 = 0;
        v25 = v24 + 48;
        v91 = v10;
        v85 = v24 + 48;
        do
        {
          v19 = (v25 + 24 * v11++);
          while (1)
          {
            if (v11 - 1 >= v23)
            {
              __break(1u);
              goto LABEL_48;
            }

            v26 = *(v19 - 1);
            v27 = *v19;
            v100 = *(v19 - 2);
            a4 = v100;
            v101 = v26;
            v102 = v27;
            swift_unknownObjectRetain();

            v28 = sub_1D7025098(a4, v97, v11 - 1);
            sub_1D7025A24(&v106, &v103, &v100, v28);
            v29 = v106;
            v30 = v107;
            v31 = v108;
            v20 = v103;
            v32 = v104;
            v93 = v105;
            swift_unknownObjectRetain();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v94 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v10 = sub_1D6996914(0, *(v10 + 2) + 1, 1, v10);
            }

            v35 = *(v10 + 2);
            v34 = *(v10 + 3);
            v99 = v10;
            if (v35 >= v34 >> 1)
            {
              v99 = sub_1D6996914((v34 > 1), v35 + 1, 1, v99);
            }

            v36 = v99;
            *(v99 + 2) = v35 + 1;
            v10 = v36;
            v37 = &v36[24 * v35];
            *(v37 + 4) = v29;
            *(v37 + 5) = v30;
            *(v37 + 6) = v31;
            if (v20)
            {
              break;
            }

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            v23 = *(v96 + 16);
            v19 += 24;
            if (v11++ == v23)
            {
              goto LABEL_43;
            }
          }

          v39 = v91;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1D6996914(0, *(v39 + 2) + 1, 1, v39);
          }

          v40 = v93;
          v42 = *(v39 + 2);
          v41 = *(v39 + 3);
          if (v42 >= v41 >> 1)
          {
            v39 = sub_1D6996914((v41 > 1), v42 + 1, 1, v39);
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          *(v39 + 2) = v42 + 1;
          v91 = v39;
          v43 = &v39[24 * v42];
          v44 = v94;
          *(v43 + 4) = v20;
          *(v43 + 5) = v44;
          *(v43 + 6) = v40;
          v23 = *(v96 + 16);
          v25 = v85;
          v10 = v99;
        }

        while (v23 != v11);
      }

      else
      {
        v91 = v10;
      }

LABEL_43:

      v67 = *(v88 + 8);
      v68 = v89;
      v67(v95, v89);
      sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1D7270C10;
      v70 = *(v10 + 2);
      v71 = MEMORY[0x1E69E6530];
      v72 = MEMORY[0x1E69E65A8];
      *(v69 + 56) = MEMORY[0x1E69E6530];
      *(v69 + 64) = v72;
      *(v69 + 32) = v70;
      v73 = v91;
      v74 = *(v91 + 2);
      *(v69 + 96) = v71;
      *(v69 + 104) = v72;
      *(v69 + 72) = v74;
      sub_1D7262EDC();
      sub_1D725C30C();

      v106 = v10;
      sub_1D6988DD4(v73);
      v50 = v106;
      v20 = v87;

      v67(v92, v68);
      goto LABEL_45;
    }

LABEL_49:
    swift_once();
    goto LABEL_3;
  }

  v47 = *(v11 + 8);
  v46 = v11 + 8;
  v45 = v47;
  v47(v19, v10);
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDFFC618;
  sub_1D7262EDC();
  v99 = MEMORY[0x1E69E7CC0];
  sub_1D725C30C();
  v49 = [objc_msgSend(v98[2] appConfigurationManager)];
  swift_unknownObjectRelease();
  v50 = v96;
  if (qword_1EDF18840 != -1)
  {
    swift_once();
  }

  v51 = [v49 respondsToSelector_];
  v93 = v49;
  if (v51)
  {
    [v49 splitTopicGroups];
  }

  sub_1D7031B18(qword_1EDF14318, v52, type metadata accessor for FeedClusteringService);
  if (sub_1D725966C())
  {
    v85 = v48;
    v87 = v20;
    v88 = v46;
    v89 = v10;
    v90 = a4;
    v109 = MEMORY[0x1E69E7CC0];
    v91 = *(v50 + 2);
    v86 = v45;
    if (!v91)
    {
LABEL_44:
      sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1D7270C10;
      v106 = *(v96 + 16);
      v76 = sub_1D72644BC();
      v78 = v77;
      v79 = MEMORY[0x1E69E6158];
      *(v75 + 56) = MEMORY[0x1E69E6158];
      v80 = sub_1D5B7E2C0();
      *(v75 + 64) = v80;
      *(v75 + 32) = v76;
      *(v75 + 40) = v78;
      v81 = v99;
      v106 = *(v99 + 2);
      v82 = sub_1D72644BC();
      *(v75 + 96) = v79;
      *(v75 + 104) = v80;
      *(v75 + 72) = v82;
      *(v75 + 80) = v83;
      sub_1D7262EDC();
      sub_1D725C30C();

      swift_unknownObjectRelease();
      v20 = v87;

      v86(v92, v89);
      v50 = v81;
LABEL_45:
      a4 = v90;
      goto LABEL_46;
    }

    v19 = 0;
    v53 = (v50 + 48);
    v99 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = *(v53 - 2);
      v54 = *(v53 - 1);
      v55 = *v53;
      swift_unknownObjectRetain();

      v56 = sub_1D7025098(v20, v97, v19);
      v100 = v20;
      v101 = v54;
      v95 = v54;
      v102 = v55;
      sub_1D7025A24(&v106, &v103, &v100, v56);
      v10 = v106;
      v11 = v107;
      v57 = v108;
      v58 = v103;
      v59 = v104;
      a4 = v105;
      swift_unknownObjectRetain();

      sub_1D7031028(v58);
      sub_1D7031068(v58);
      v60 = *(v99 + 2);
      if (v60 < v19)
      {
        break;
      }

      v94 = v20;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v99;
      if (v61 && v60 < *(v99 + 3) >> 1)
      {
        v62 = v99;
      }

      else
      {
        v62 = sub_1D6996914(v61, v60 + 1, 1, v99);
        v109 = v62;
      }

      sub_1D5EC4410(v19, v19, 1, v10, v11, v57);

      swift_unknownObjectRelease();
      v109 = v62;
      swift_unknownObjectRetain();

      sub_1D7031028(v58);

      swift_unknownObjectRelease();
      v99 = v62;
      if (v58)
      {
        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        if (v64 >= v63 >> 1)
        {
          v99 = sub_1D6996914((v63 > 1), v64 + 1, 1, v62);
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_1D7031068(v58);
        v65 = v99;
        *(v99 + 2) = v64 + 1;
        v66 = &v65[24 * v64];
        *(v66 + 4) = v58;
        *(v66 + 5) = v59;
        *(v66 + 6) = a4;
        v109 = v65;
      }

      else
      {

        swift_unknownObjectRelease();
        sub_1D7031068(0);

        swift_unknownObjectRelease();
      }

      ++v19;
      v53 += 3;
      if (v91 == v19)
      {
        goto LABEL_44;
      }
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_1D7262EDC();
  sub_1D725C30C();
  swift_unknownObjectRelease();

  v45(v92, v10);
LABEL_46:

  *a4 = v50;
  a4[1] = v20;
  return result;
}

uint64_t sub_1D7025098(void *a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v51 = a2;
  sub_1D7031244();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70310A8();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70315E4();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031448();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v44 - v23;
  v54 = v3;
  v25 = sub_1D725933C();
  v26 = a1;
  v27 = [a1 identifier];
  v28 = sub_1D726207C();
  v30 = v29;

  if (*(v25 + 16))
  {
    v31 = sub_1D5B69D90(v28, v30);
    v33 = v32;

    if (v33)
    {
      (*(v17 + 16))(v20, *(v25 + 56) + *(v17 + 72) * v31, v16);

      (*(v17 + 32))(v24, v20, v16);
      v34 = sub_1D725938C();
      (*(v17 + 8))(v24, v16);
      return v34;
    }
  }

  else
  {
  }

  if ([v26 asChannel])
  {
    swift_unknownObjectRelease();
    sub_1D725934C();
    v35 = v53;
    v34 = sub_1D725938C();
    (*(v52 + 8))(v14, v35);
  }

  else
  {
    v36 = [v26 identifier];
    v37 = sub_1D726207C();
    v39 = v38;

    LOBYTE(v36) = sub_1D5BE240C(v37, v39, v51);

    if (v36)
    {
      v40 = v45;
      sub_1D725932C();
      v41 = v47;
      v34 = sub_1D725938C();
      v42 = v46;
    }

    else
    {
      v40 = v48;
      sub_1D72590AC();
      v41 = v50;
      v34 = sub_1D725938C();
      v42 = v49;
    }

    (*(v42 + 8))(v40, v41);
  }

  return v34;
}

BOOL sub_1D7025508()
{
  v0 = sub_1D725935C();
  v49 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6C0(0);
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  sub_1D70310A8();
  v14 = *(v13 - 1);
  v47 = v13;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031244();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7031BC8(0, &qword_1EDF02450, sub_1D5E3B6C0, MEMORY[0x1E69E6F90]);
  v23 = *(v4 + 72);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v44 = v24;
  v45 = v25;
  *(v25 + 16) = xmmword_1D7270C10;
  sub_1D72590AC();
  sub_1D725936C();
  (*(v19 + 8))(v22, v18);
  v26 = v46;
  sub_1D725932C();
  v27 = v47;
  sub_1D725936C();
  (*(v48 + 8))(v26, v27);
  v28 = sub_1D725933C();
  v29 = sub_1D701BEC4(v28);

  v51 = v45;
  sub_1D6988D8C(v29);
  v46 = v51;
  v30 = *(v51 + 2);
  if (v30)
  {
    v31 = &v46[v44];
    v32 = (v49 + 48);
    v33 = (v49 + 32);
    v34 = MEMORY[0x1E69E7CC0];
    v47 = (v49 + 32);
    v48 = v0;
    do
    {
      sub_1D702DE88(v31, v12, sub_1D5E3B6C0);
      sub_1D70313E0(v12, v8, sub_1D5E3B6C0);
      if ((*v32)(v8, 1, v0) == 1)
      {
        sub_1D7031C2C(v8, sub_1D5E3B6C0);
      }

      else
      {
        v35 = v12;
        v36 = v23;
        v37 = *v33;
        (*v33)(v50, v8, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1D69968E0(0, v34[2] + 1, 1, v34);
        }

        v39 = v34[2];
        v38 = v34[3];
        if (v39 >= v38 >> 1)
        {
          v34 = sub_1D69968E0(v38 > 1, v39 + 1, 1, v34);
        }

        v34[2] = v39 + 1;
        v40 = v34 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39;
        v33 = v47;
        v0 = v48;
        v37(v40, v50, v48);
        v23 = v36;
        v12 = v35;
      }

      v31 += v23;
      --v30;
    }

    while (v30);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v41 = v34[2];

  return v41 != 0;
}

void sub_1D7025A24(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = *a3;
  v7 = *(a3 + 8);
  v28 = *(a3 + 16);
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDFFC618;
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7279970;
  v11 = [v8 name];
  v12 = sub_1D726207C();
  v14 = v13;

  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D5B7E2C0();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = *(v7 + 16);
  v16 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E65A8];
  *(v10 + 96) = MEMORY[0x1E69E6530];
  *(v10 + 104) = v17;
  *(v10 + 72) = v15;
  *(v10 + 136) = v16;
  *(v10 + 144) = v17;
  *(v10 + 112) = a4;
  sub_1D7262EDC();
  sub_1D725C30C();

  if ((a4 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = 2 * a4;
  if (v15 >= (2 * a4))
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v18 = *(v7 + 16);
      if (v18 >= a4)
      {

        if (v18 == a4)
        {
          *a1 = v8;
          a1[1] = v7;
          v19 = v28;
          a1[2] = v28;

          v20 = a4;
          goto LABEL_12;
        }

LABEL_17:
        sub_1D5EC3470(v7, v7 + 32, 0, v9 | 1);
        v20 = *(v7 + 16);
        *a1 = v8;
        a1[1] = v25;
        v19 = v28;
        a1[2] = v28;
        if (v20 < a4)
        {
          __break(1u);
          goto LABEL_19;
        }

LABEL_12:
        swift_unknownObjectRetain();
        if (!a4)
        {
LABEL_13:
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v22 = [objc_opt_self() bundleForClass_];
          sub_1D725811C();

          v23 = sub_1D726203C();
          v24 = [v8 setTitleDisplayPrefixOverride_];

          *a2 = v24;
          a2[1] = v7;
          a2[2] = v19;
          return;
        }

LABEL_19:
        sub_1D5EC3470(v7, v7 + 32, a4, (2 * v20) | 1);
        v27 = v26;

        v7 = v27;
        goto LABEL_13;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a1 = v8;
  a1[1] = v7;
  a1[2] = v28;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  swift_unknownObjectRetain();
}

uint64_t sub_1D7025D88(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    if (qword_1EDF12600 == -1)
    {
LABEL_3:
      sub_1D7262EDC();
      sub_1D725C30C();
      sub_1D7031BC8(0, &qword_1EDF3B940, sub_1D5C44E18, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      return sub_1D725BB1C();
    }

LABEL_45:
    swift_once();
    goto LABEL_3;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v6 = 0;
  v7 = a2 + 48;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = a2 + 48;
  do
  {
    v8 = (v7 + 24 * v6);
    v9 = v6;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_43;
      }

      v50 = v9 + 1;
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      swift_unknownObjectRetain();
      v13 = v11;
      v14 = v12;
      swift_unknownObjectRetain();
      v15 = v13;
      v16 = [v10 publisherID];
      if (v16)
      {
        break;
      }

      swift_unknownObjectRelease_n();
      ++v9;
      v8 += 3;
      if (v50 == v5)
      {
        goto LABEL_19;
      }
    }

    v17 = v16;
    v18 = sub_1D726207C();
    v47 = v19;

    swift_unknownObjectRelease_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1D5B858EC(0, *(v48 + 2) + 1, 1, v48);
    }

    v7 = v49;
    v6 = v9 + 1;
    v21 = *(v48 + 2);
    v20 = *(v48 + 3);
    if (v21 >= v20 >> 1)
    {
      v48 = sub_1D5B858EC((v20 > 1), v21 + 1, 1, v48);
    }

    *(v48 + 2) = v21 + 1;
    v22 = &v48[16 * v21];
    *(v22 + 4) = v18;
    *(v22 + 5) = v47;
  }

  while (v50 != v5);
LABEL_19:
  v23 = v48;
  v51 = *(v48 + 2);
  if (v51)
  {
    v24 = 0;
    v25 = a3 + 56;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v24 >= *(v23 + 2))
      {
        goto LABEL_44;
      }

      v27 = &v48[16 * v24 + 32];
      v29 = *v27;
      v28 = *(v27 + 1);
      ++v24;
      if (!*(a3 + 16))
      {
        break;
      }

      sub_1D7264A0C();

      sub_1D72621EC();
      v30 = sub_1D7264A5C();
      v31 = -1 << *(a3 + 32);
      v32 = v30 & ~v31;
      if ((*(v25 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v34 = (*(a3 + 48) + 16 * v32);
          v35 = *v34 == v29 && v34[1] == v28;
          if (v35 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v25 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        if (v24 == v51)
        {
          goto LABEL_39;
        }
      }

      else
      {
LABEL_32:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D5BFC364(0, *(v26 + 16) + 1, 1);
        }

        v37 = *(v26 + 16);
        v36 = *(v26 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D5BFC364((v36 > 1), v37 + 1, 1);
        }

        *(v26 + 16) = v37 + 1;
        v38 = v26 + 16 * v37;
        *(v38 + 32) = v29;
        *(v38 + 40) = v28;
        v23 = v48;
        if (v24 == v51)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_39:

  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D7273AE0;
  v40 = sub_1D72644BC();
  v42 = v41;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1D5B7E2C0();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  sub_1D7262EDC();
  sub_1D725C30C();

  MEMORY[0x1EEE9AC00](v43, v44);
  sub_1D703179C(0, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();

  v45 = sub_1D725B92C();
  sub_1D5C44E18();
  sub_1D6C7626C();
  v46 = sub_1D725BBEC();

  return v46;
}

uint64_t sub_1D70263D8(char **a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char *a8, double a9, uint64_t a10, __int16 a11, unsigned __int8 a12)
{
  v306 = a8;
  v330 = a7;
  v312 = a5;
  v316 = a4;
  v353 = a3;
  v318 = sub_1D7258F4C();
  v302 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318, v16);
  v310 = &v300 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v315 = &v300 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v300 - v23;
  sub_1D7031804(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v313 = &v300 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_1D7258F5C();
  v308 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314, v28);
  v300 = &v300 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D605FEA0();
  v345 = v30;
  v334 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v338 = (&v300 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v34);
  v328 = &v300 - v35;
  sub_1D7031838(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  isUniquelyReferenced_nonNull_native = &v300 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v327 = &v300 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v341 = &v300 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v340 = &v300 - v48;
  v344 = sub_1D725891C();
  v49 = *(v344 - 1);
  MEMORY[0x1EEE9AC00](v344, v50);
  v52 = &v300 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v331 = &v300 - v55;
  *&v58 = MEMORY[0x1EEE9AC00](v56, v57).n128_u64[0];
  v351 = &v300 - v59;
  v305 = *a1;
  v60 = [a2 subscribedTags];
  sub_1D5B5534C(0, &qword_1EDF3C770);
  v61 = sub_1D726267C();

  v62 = v61;
  v368 = MEMORY[0x1E69E7CD0];
  if (v61 >> 62)
  {
    goto LABEL_258;
  }

  v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v317 = v24;
  v329 = isUniquelyReferenced_nonNull_native;
  v339 = v52;
  if (!v63)
  {
    v309 = MEMORY[0x1E69E7CD0];
    goto LABEL_17;
  }

  v350 = v49;
  v352 = a6;
  v49 = 0;
  v24 = v62 & 0xC000000000000001;
  a6 = v62 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = &selRef_setHyphenationFactor_;
  v354 = v62;
  v355 = v63;
  while (v24)
  {
    v64 = MEMORY[0x1DA6FB460](v49, v62);
    v65 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if ([v64 *(isUniquelyReferenced_nonNull_native + 2544)] == 2)
    {
      v66 = [v64 identifier];
      v67 = isUniquelyReferenced_nonNull_native;
      v68 = v24;
      v69 = sub_1D726207C();
      v52 = v70;

      v71 = v69;
      v24 = v68;
      isUniquelyReferenced_nonNull_native = v67;
      sub_1D5B860D0(&v356, v71, v52);
      v62 = v354;
      v63 = v355;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v49;
    if (v65 == v63)
    {
      goto LABEL_15;
    }
  }

  if (v49 >= *(a6 + 16))
  {
    goto LABEL_254;
  }

  v64 = *(v62 + 8 * v49 + 32);
  swift_unknownObjectRetain();
  v65 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v309 = v368;
  isUniquelyReferenced_nonNull_native = v329;
  a6 = v352;
  v49 = v350;
LABEL_17:

  v72 = [objc_opt_self() sharedAccount];
  v73 = [v72 primaryLanguageCode];

  v74 = sub_1D726207C();
  v311 = v75;

  v76 = v353;
  v77 = [v353 subscribedTagIDs];
  if (v77)
  {
    v78 = v77;
    v79 = sub_1D7262B0C();
  }

  else
  {
    v79 = MEMORY[0x1E69E7CD0];
  }

  v80 = [v76 groupableTagIDs];
  if (v80)
  {
    v81 = v80;
    v322 = sub_1D7262B0C();
  }

  else
  {
    v322 = MEMORY[0x1E69E7CD0];
  }

  v301 = *(v316 + 16);
  v82 = [objc_msgSend(v301 appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v82 respondsToSelector_])
  {
    v304 = [v82 isImprovedManagedTopicGroupingEnabled];
  }

  else
  {
    v304 = 0;
  }

  v323 = v79;
  swift_unknownObjectRelease();
  if (qword_1EDF18858 != -1)
  {
    swift_once();
  }

  type metadata accessor for FeedClusteringService();
  sub_1D7031B18(qword_1EDF14318, v83, type metadata accessor for FeedClusteringService);
  sub_1D725964C();
  v303 = v356;
  v84 = v312;
  v85 = sub_1D7030334(v312, a6, v74, v311);
  v86 = sub_1D605EB80(MEMORY[0x1E69E7CC0]);
  v368 = v86;
  v88 = *(v84 + 16);
  *&v321 = v85;
  v320 = v88;
  if (v88)
  {
    v89 = v86;
    v52 = isUniquelyReferenced_nonNull_native;
    v90 = 0;
    v319 = (v312 + 32);
    v333 = v49 + 32;
    v353 = (v49 + 56);
    *&v346 = v49 + 48;
    v337 = (v334 + 56);
    v336 = (v334 + 48);
    v335 = (v49 + 8);
    while (1)
    {
      v91 = &v319[3 * v90];
      v93 = *v91;
      v92 = v91[1];
      v325 = v91[2];
      swift_unknownObjectRetain();
      v324 = v92;
      v348 = v93;
      v94 = [v93 itemID];
      a6 = sub_1D726207C();
      v96 = v95;

      if (*(v85 + 16))
      {
        a6 = sub_1D5B69D90(a6, v96);
        v98 = v97;

        v24 = MEMORY[0x1E69E7CC0];
        if (v98)
        {
          v24 = *(*(v85 + 56) + 8 * a6);
        }
      }

      else
      {

        v24 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = v24 >> 62 ? sub_1D7263BFC() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v62 = v89;
      v326 = v90;
      if (isUniquelyReferenced_nonNull_native)
      {
        break;
      }

LABEL_30:
      v89 = v62;
      v90 = v326 + 1;

      swift_unknownObjectRelease();

      v85 = v321;
      if (v90 == v320)
      {
        goto LABEL_79;
      }
    }

    v99 = 0;
    v347 = (v24 & 0xC000000000000001);
    v332 = v24 & 0xFFFFFFFFFFFFFF8;
    v342 = v24;
    v343 = isUniquelyReferenced_nonNull_native;
    while (2)
    {
      if (v347)
      {
        v100 = MEMORY[0x1DA6FB460](v99, v24);
      }

      else
      {
        if (v99 >= *(v332 + 16))
        {
          goto LABEL_249;
        }

        v100 = *(v24 + 8 * v99 + 32);
      }

      v101 = v100;
      a6 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      v102 = [v100 tagID];
      if (v102)
      {
        v349 = v99 + 1;
        v103 = v102;
        v354 = sub_1D726207C();
        v105 = v104;

        v106 = [v348 lastModifiedDate];
        v355 = v105;
        v350 = v101;
        if (v106)
        {
          v107 = v331;
          v108 = v106;
          sub_1D72588BC();

          v109 = *v333;
          v110 = v340;
          v49 = v344;
          (*v333)(v340, v107, v344);
          v352 = *v353;
          (v352)(v110, 0, 1, v49);
          v105 = v355;
          v109(v351, v110, v49);
        }

        else
        {
          v111 = v340;
          v49 = v344;
          v352 = *v353;
          (v352)(v340, 1, 1, v344);
          sub_1D72587BC();
          if ((*v346)(v111, 1, v49) != 1)
          {
            sub_1D7031C2C(v111, sub_1D5B5B2A0);
          }
        }

        if (*(v62 + 16) && (v112 = sub_1D5B69D90(v354, v105), (v113 & 1) != 0))
        {
          sub_1D702DE88(*(v62 + 56) + *(v334 + 72) * v112, v52, sub_1D605FEA0);
          v114 = 0;
        }

        else
        {
          v114 = 1;
        }

        v115 = v345;
        (*v337)(v52, v114, 1, v345);
        if ((*v336)(v52, 1, v115))
        {
          sub_1D7031C2C(v52, sub_1D7031838);
          v116 = v341;
          (v352)(v341, 1, 1, v49);
LABEL_58:
          v117 = v62;
          v118 = v52;
          v24 = v339;
          sub_1D72587BC();
          if ((*v346)(v116, 1, v49) != 1)
          {
            sub_1D7031C2C(v116, sub_1D5B5B2A0);
          }
        }

        else
        {
          v116 = v341;
          sub_1D702DE88(v52, v341, sub_1D5B5B2A0);
          sub_1D7031C2C(v52, sub_1D7031838);
          if ((*v346)(v116, 1, v49) == 1)
          {
            goto LABEL_58;
          }

          v117 = v62;
          v118 = v52;
          v24 = v339;
          (*v333)(v339, v116, v49);
        }

        v119 = v351;
        v120 = sub_1D725882C();
        v121 = *v335;
        (*v335)(v24, v49);
        v121(v119, v49);
        if (v120)
        {
          v122 = [v348 lastModifiedDate];
          if (v122)
          {
            v123 = v327;
            v124 = v122;
            sub_1D72588BC();

            v125 = 0;
          }

          else
          {
            v125 = 1;
            v123 = v327;
          }

          a6 = v350;
          (v352)(v123, v125, 1, v344);
          v126 = v328;
          sub_1D70313E0(v123, v328, sub_1D5B5B2A0);
          v52 = *(v330 + 3);
          v127 = *(v330 + 4);
          __swift_project_boxed_opaque_existential_1(v330, v52);
          (*(v127 + 16))(a6, v52, v127);
          sub_1D70313E0(v126, v338, sub_1D605FEA0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = v368;
          v356 = v368;
          v49 = v355;
          v129 = sub_1D5B69D90(v354, v355);
          v130 = *(v62 + 16);
          v131 = (v128 & 1) == 0;
          v132 = v130 + v131;
          if (__OFADD__(v130, v131))
          {
            goto LABEL_250;
          }

          v52 = v128;
          if (*(v62 + 24) >= v132)
          {
            v24 = v329;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D6D870A0();
            }
          }

          else
          {
            sub_1D6D75FB4(v132, isUniquelyReferenced_nonNull_native);
            v133 = sub_1D5B69D90(v354, v49);
            v24 = v329;
            if ((v52 & 1) != (v134 & 1))
            {
              goto LABEL_260;
            }

            v129 = v133;
          }

          isUniquelyReferenced_nonNull_native = v343;
          if (v52)
          {

            v62 = v356;
            sub_1D70318C8(v338, *(v356 + 56) + *(v334 + 72) * v129);
          }

          else
          {
            v62 = v356;
            *(v356 + 8 * (v129 >> 6) + 64) |= 1 << v129;
            v135 = (*(v62 + 48) + 16 * v129);
            *v135 = v354;
            v135[1] = v49;
            sub_1D70313E0(v338, *(v62 + 56) + *(v334 + 72) * v129, sub_1D605FEA0);

            v136 = *(v62 + 16);
            v137 = __OFADD__(v136, 1);
            v138 = v136 + 1;
            if (v137)
            {
              goto LABEL_251;
            }

            *(v62 + 16) = v138;
          }

          v368 = v62;
          v52 = v24;
          v24 = v342;
        }

        else
        {

          v52 = v118;
          v24 = v342;
          v62 = v117;
          isUniquelyReferenced_nonNull_native = v343;
        }

        a6 = v349;
      }

      else
      {
      }

      ++v99;
      if (a6 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      continue;
    }
  }

LABEL_79:
  v139 = MEMORY[0x1E69E6158];
  MEMORY[0x1EEE9AC00](v86, v87);
  *(&v300 - 12) = v309;
  *(&v300 - 11) = v85;
  *(&v300 - 10) = v306;
  *(&v300 - 9) = &v368;
  *(&v300 - 8) = v323;
  *(&v300 - 7) = v140;
  v355 = v140;
  *(&v300 - 6) = v322;
  *(&v300 - 20) = v141;
  v142 = v330;
  *(&v300 - 4) = v305;
  *(&v300 - 3) = v142;
  *(&v300 - 16) = v304;
  *(&v300 - 15) = v303;
  *(&v300 - 1) = v316;
  *&v362 = MEMORY[0x1E69E7CC0];
  *(&v362 + 1) = MEMORY[0x1E69E7CD0];
  v363 = MEMORY[0x1E69E7CD0];
  v364 = MEMORY[0x1E69E7CC8];
  v365 = MEMORY[0x1E69E7CC8];
  v143 = v307;
  sub_1D632A424(&v362, sub_1D703186C, v312, &v356);
  v326 = v143;
  v144 = v356;
  v145 = v357;
  v352 = v358;
  v333 = v359;
  v327 = v360;
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  LODWORD(v342) = a12;
  v146 = qword_1EDFFC618;
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v324 = v147;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7279970;
  v312 = v144;
  v356 = *(v144 + 16);
  v52 = MEMORY[0x1E69E6530];
  v148 = sub_1D72644BC();
  a6 = v149;
  *(v24 + 56) = v139;
  v150 = sub_1D5B7E2C0();
  *(v24 + 64) = v150;
  *(v24 + 32) = v148;
  *(v24 + 40) = a6;
  v356 = *(v145 + 16);
  v62 = &v356;
  v151 = sub_1D72644BC();
  *(v24 + 96) = v139;
  *(v24 + 104) = v150;
  *(v24 + 72) = v151;
  *(v24 + 80) = v152;
  v356 = *(v352 + 16);
  v153 = sub_1D72644BC();
  *(v24 + 136) = v139;
  *(v24 + 144) = v150;
  v320 = v150;
  *(v24 + 112) = v153;
  *(v24 + 120) = v154;
  sub_1D7262EDC();
  v325 = v146;
  sub_1D725C30C();

  v361 = MEMORY[0x1E69E7CD0];
  isUniquelyReferenced_nonNull_native = v145 + 56;
  v155 = 1 << *(v145 + 32);
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  else
  {
    v156 = -1;
  }

  v157 = v156 & *(v145 + 56);
  v158 = (v155 + 63) >> 6;
  v354 = v323 + 56;
  v353 = (v355 + 56);
  v351 = (v322 + 56);

  v49 = 0;
  while (2)
  {
    if (v157)
    {
LABEL_92:
      v160 = __clz(__rbit64(v157));
      v157 &= v157 - 1;
      a6 = v145;
      v161 = (*(v145 + 48) + ((v49 << 10) | (16 * v160)));
      v52 = *v161;
      v24 = v161[1];
      v162 = v323;
      if (*(v323 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v163 = sub_1D7264A5C();
        v164 = -1 << *(v162 + 32);
        v165 = v163 & ~v164;
        if ((*(v354 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165))
        {
          v166 = ~v164;
          do
          {
            v167 = (*(v323 + 48) + 16 * v165);
            v168 = *v167 == v52 && v167[1] == v24;
            if (v168 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_85;
            }

            v165 = (v165 + 1) & v166;
          }

          while (((*(v354 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165) & 1) != 0);
        }
      }

      else
      {
      }

      if (*(v355 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v169 = sub_1D7264A5C(), v170 = v355, v171 = -1 << *(v355 + 32), v172 = v169 & ~v171, ((*&v353[(v172 >> 3) & 0xFFFFFFFFFFFFFF8] >> v172) & 1) != 0))
      {
        v173 = ~v171;
        while (1)
        {
          v174 = (*(v170 + 48) + 16 * v172);
          v175 = *v174 == v52 && v174[1] == v24;
          if (v175 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v172 = (v172 + 1) & v173;
          v170 = v355;
          if (((*&v353[(v172 >> 3) & 0xFFFFFFFFFFFFFF8] >> v172) & 1) == 0)
          {
            goto LABEL_112;
          }
        }
      }

      else
      {
LABEL_112:
        if (*(v322 + 16) && (v176 = v322, sub_1D7264A0C(), sub_1D72621EC(), v177 = sub_1D7264A5C(), v178 = -1 << *(v176 + 32), v179 = v177 & ~v178, ((*&v351[(v179 >> 3) & 0xFFFFFFFFFFFFFF8] >> v179) & 1) != 0))
        {
          v180 = ~v178;
          while (1)
          {
            v181 = (*(v322 + 48) + 16 * v179);
            v182 = *v181 == v52 && v181[1] == v24;
            if (v182 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v179 = (v179 + 1) & v180;
            if (((*&v351[(v179 >> 3) & 0xFFFFFFFFFFFFFF8] >> v179) & 1) == 0)
            {
              goto LABEL_121;
            }
          }
        }

        else
        {
LABEL_121:
          v183 = 0.0;
          if (*(v333 + 16))
          {
            v184 = sub_1D5B69D90(v52, v24);
            if (v185)
            {
              v183 = *(*(v333 + 56) + 8 * v184);
            }
          }

          v62 = v327;
          if (!*(v327 + 2))
          {
            goto LABEL_86;
          }

          v186 = sub_1D5B69D90(v52, v24);
          if ((v187 & 1) == 0)
          {
            goto LABEL_86;
          }

          v188 = *(*(v62 + 56) + 8 * v186);
          if (v188 <= 0 || v183 / v188 <= a9)
          {
            goto LABEL_86;
          }
        }
      }

LABEL_85:
      v62 = &v361;
      sub_1D5B860D0(&v356, v52, v24);
LABEL_86:

      v145 = a6;
      continue;
    }

    break;
  }

  while (1)
  {
    v159 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_252;
    }

    if (v159 >= v158)
    {
      break;
    }

    v157 = *(isUniquelyReferenced_nonNull_native + 8 * v159);
    ++v49;
    if (v157)
    {
      v49 = v159;
      goto LABEL_92;
    }
  }

  v189 = v361;

  v348 = sub_1D5D6021C(v190, v189);
  v191 = [*(v316 + 24) allowlist];
  if (!v191)
  {

    v196 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v311 = v145;

    v334 = sub_1D5B86020(v196);

    v197 = *(v316 + 56);
    v198 = *(v316 + 64);
    v62 = __swift_project_boxed_opaque_existential_1((v316 + 32), v197);

    a6 = sub_1D5E1E408(v199);
    v24 = (*(v198 + 40))(a6, v197, v198);

    v350 = *(v24 + 16);
    if (v350)
    {
      v200 = 0;
      v52 = v24 + 48;
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v200 >= *(v24 + 16))
        {
          goto LABEL_255;
        }

        v201 = *(v52 - 16);
        a6 = *(v52 - 8);
        a9 = *v52;
        swift_bridgeObjectRetain_n();
        v202 = swift_isUniquelyReferenced_nonNull_native();
        v356 = isUniquelyReferenced_nonNull_native;
        v62 = isUniquelyReferenced_nonNull_native;
        v203 = sub_1D5B69D90(v201, a6);
        v205 = *(isUniquelyReferenced_nonNull_native + 16);
        v206 = (v204 & 1) == 0;
        v137 = __OFADD__(v205, v206);
        v207 = v205 + v206;
        if (v137)
        {
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          v63 = sub_1D7263BFC();
          goto LABEL_3;
        }

        v49 = v204;
        if (*(isUniquelyReferenced_nonNull_native + 24) < v207)
        {
          break;
        }

        if (v202)
        {
          goto LABEL_143;
        }

        v62 = &v356;
        v212 = v203;
        sub_1D6D801A8();
        v203 = v212;
        if (v49)
        {
LABEL_135:
          v62 = v203;

          isUniquelyReferenced_nonNull_native = v356;
          *(*(v356 + 56) + 8 * v62) = a9;

          goto LABEL_136;
        }

LABEL_144:
        isUniquelyReferenced_nonNull_native = v356;
        *(v356 + 8 * (v203 >> 6) + 64) |= 1 << v203;
        v209 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v203);
        *v209 = v201;
        v209[1] = a6;
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v203) = a9;

        v210 = *(isUniquelyReferenced_nonNull_native + 16);
        v137 = __OFADD__(v210, 1);
        v211 = v210 + 1;
        if (v137)
        {
          goto LABEL_257;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v211;
LABEL_136:
        ++v200;
        v52 += 24;
        a6 = v352;
        if (v350 == v200)
        {
          goto LABEL_149;
        }
      }

      sub_1D6D69858(v207, v202);
      v62 = v356;
      v203 = sub_1D5B69D90(v201, a6);
      if ((v49 & 1) != (v208 & 1))
      {
        goto LABEL_260;
      }

LABEL_143:
      if (v49)
      {
        goto LABEL_135;
      }

      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    a6 = v352;
LABEL_149:

    sub_1D702ACA0(v316);
    v214 = v213;
    v215 = [objc_msgSend(v301 appConfigurationManager)];
    swift_unknownObjectRelease();
    v62 = &selRef_superfeedConfigResourceID;
    if ([v215 respondsToSelector_])
    {
      v62 = [v215 channelGroupBaselineMultipliers];
      swift_unknownObjectRelease();
      if (v62)
      {
        sub_1D5B5A498(0, &qword_1EDF1A660);
        v52 = sub_1D7261D3C();

        goto LABEL_154;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v52 = sub_1D605EDA8(MEMORY[0x1E69E7CC0]);
LABEL_154:
    v49 = v318;
    v216 = v348 + 56;
    v217 = 1 << v348[32];
    if (v217 < 64)
    {
      v218 = ~(-1 << v217);
    }

    else
    {
      v218 = -1;
    }

    v219 = v218 & *(v348 + 7);
    v24 = (v217 + 63) >> 6;
    v350 = (a6 + 56);
    LODWORD(v345) = *MEMORY[0x1E69E3178];
    v338 = (v302 + 104);
    LODWORD(v343) = *MEMORY[0x1E69E3170];
    v347 = (v302 + 16);
    v337 = (v302 + 88);
    v344 = (v302 + 8);
    v336 = (v308 + 56);
    v349 = v334 + 56;
    v335 = (v308 + 48);
    v316 = v308 + 32;

    v220 = 0;
    v319 = MEMORY[0x1E69E7CC0];
    v321 = xmmword_1D7274590;
    v346 = xmmword_1D7273AE0;
    v339 = v52;
    v341 = v216;
    v340 = v24;
LABEL_158:
    v221 = v220;
    if (!v219)
    {
      goto LABEL_160;
    }

    while (1)
    {
      v222 = v49;
      v220 = v221;
LABEL_164:
      v223 = (*(v348 + 6) + ((v220 << 10) | (16 * __clz(__rbit64(v219)))));
      v224 = *v223;
      v225 = v223[1];
      if (*(a6 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v226 = sub_1D7264A5C();
        v227 = -1 << *(a6 + 32);
        v228 = v226 & ~v227;
        if ((*&v350[(v228 >> 3) & 0xFFFFFFFFFFFFFF8] >> v228))
        {
          v229 = ~v227;
          while (1)
          {
            v230 = (*(a6 + 48) + 16 * v228);
            v231 = *v230 == v224 && v230[1] == v225;
            if (v231 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v228 = (v228 + 1) & v229;
            if (((*&v350[(v228 >> 3) & 0xFFFFFFFFFFFFFF8] >> v228) & 1) == 0)
            {
              goto LABEL_173;
            }
          }

          v232 = &v367;
        }

        else
        {
LABEL_173:
          v232 = &v366;
        }

        v233 = *(v232 - 64);
        v234 = v318;
      }

      else
      {

        v233 = v343;
        v234 = v222;
      }

      (*v338)(v317, v233, v234);
      a9 = 0.0;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v235 = sub_1D5B69D90(v224, v225);
        if (v236)
        {
          a9 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v235);
        }
      }

      if (*(v52 + 16) && (v237 = sub_1D5B69D90(v224, v225), (v238 & 1) != 0))
      {
        v239 = *(*(v52 + 56) + 8 * v237);
      }

      else
      {
        sub_1D5B5A498(0, &qword_1EDF1A660);
        v239 = sub_1D72636CC();
      }

      v240 = v239;
      sub_1D7262A7C();
      v242 = v241;

      v243 = *v347;
      v244 = v315;
      v245 = v318;
      (*v347)(v315, v317, v318);
      v246 = (*v337)(v244, v245);
      if (v246 == v345)
      {
        v247 = v214 * v242;
      }

      else
      {
        v247 = 0.0;
        if (v246 != v343)
        {
          (*v344)(v315, v318);
        }
      }

      if ((v342 & 1) != 0 || v247 <= a9)
      {
        break;
      }

      v248 = swift_allocObject();
      *(v248 + 16) = v321;
      v249 = v320;
      *(v248 + 56) = MEMORY[0x1E69E6158];
      *(v248 + 64) = v249;
      *(v248 + 32) = v224;
      *(v248 + 40) = v225;
      v250 = swift_allocObject();
      *(v250 + 16) = v346;
      *(v250 + 56) = MEMORY[0x1E69E63B0];
      *(v250 + 64) = MEMORY[0x1E69E6438];
      *(v250 + 32) = a9;

      v251 = sub_1D72620BC();
      v252 = MEMORY[0x1E69E6158];
      *(v248 + 96) = MEMORY[0x1E69E6158];
      *(v248 + 104) = v249;
      *(v248 + 72) = v251;
      *(v248 + 80) = v253;
      v254 = swift_allocObject();
      *(v254 + 16) = v346;
      *(v254 + 56) = MEMORY[0x1E69E63B0];
      *(v254 + 64) = MEMORY[0x1E69E6438];
      *(v254 + 32) = v247;
      v255 = sub_1D72620BC();
      *(v248 + 136) = v252;
      *(v248 + 144) = v249;
      *(v248 + 112) = v255;
      *(v248 + 120) = v256;
      v257 = v317;
      v258 = swift_allocObject();
      *(v258 + 16) = v346;
      *(v258 + 56) = MEMORY[0x1E69E63B0];
      *(v258 + 64) = MEMORY[0x1E69E6438];
      *(v258 + 32) = v242;
      v259 = sub_1D72620BC();
      *(v248 + 176) = v252;
      *(v248 + 184) = v249;
      *(v248 + 152) = v259;
      *(v248 + 160) = v260;
      sub_1D7262EDC();
      sub_1D725C30C();

      v261 = 1;
      v62 = v313;
      v49 = v318;
LABEL_238:
      v219 &= v219 - 1;
      (*v344)(v257, v49);
      v291 = v261;
      v292 = v314;
      (*v336)(v62, v291, 1, v314);
      v168 = (*v335)(v62, 1, v292) == 1;
      v293 = v62;
      v52 = v339;
      if (!v168)
      {
        v62 = *v316;
        (*v316)(v300, v293, v314);
        v294 = swift_isUniquelyReferenced_nonNull_native();
        if ((v294 & 1) == 0)
        {
          v319 = sub_1D6996928(0, v319[2] + 1, 1, v319);
        }

        v296 = v319[2];
        v295 = v319[3];
        if (v296 >= v295 >> 1)
        {
          v319 = sub_1D6996928(v295 > 1, v296 + 1, 1, v319);
        }

        v297 = v319;
        v319[2] = v296 + 1;
        (v62)(v297 + ((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v296, v300, v314);
        v49 = v318;
        v216 = v341;
        v24 = v340;
        goto LABEL_158;
      }

      sub_1D7031C2C(v62, sub_1D7031804);
      v221 = v220;
      v216 = v341;
      v24 = v340;
      if (!v219)
      {
LABEL_160:
        while (1)
        {
          v220 = v221 + 1;
          if (__OFADD__(v221, 1))
          {
            break;
          }

          if (v220 >= v24)
          {

            v356 = v312;
            v357 = v319;
            sub_1D7031BC8(0, &qword_1EDF17988, sub_1D702DF60, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v298 = sub_1D725BB1C();

            return v298;
          }

          v219 = *&v216[8 * v220];
          ++v221;
          if (v219)
          {
            v222 = v49;
            goto LABEL_164;
          }
        }

LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }
    }

    v331 = v243;
    v262 = v334;
    if (*(v334 + 16))
    {
      sub_1D7264A0C();
      sub_1D72621EC();
      v263 = sub_1D7264A5C();
      v264 = -1 << *(v262 + 32);
      v265 = v263 & ~v264;
      v266 = v323;
      if ((*(v349 + ((v265 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v265))
      {
        v267 = ~v264;
        while (1)
        {
          v268 = (*(v262 + 48) + 16 * v265);
          v269 = *v268 == v224 && v268[1] == v225;
          if (v269 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v265 = (v265 + 1) & v267;
          if (((*(v349 + ((v265 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v265) & 1) == 0)
          {
            goto LABEL_200;
          }
        }

        LODWORD(v330) = 1;
        if (!*(v266 + 16))
        {
          goto LABEL_213;
        }
      }

      else
      {
LABEL_200:
        LODWORD(v330) = 0;
        if (!*(v266 + 16))
        {
          goto LABEL_213;
        }
      }
    }

    else
    {
      LODWORD(v330) = 0;
      v266 = v323;
      if (!*(v323 + 16))
      {
        goto LABEL_213;
      }
    }

    sub_1D7264A0C();
    sub_1D72621EC();
    v270 = sub_1D7264A5C();
    v271 = -1 << *(v266 + 32);
    v272 = v270 & ~v271;
    if ((*(v354 + ((v272 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v272))
    {
      v273 = ~v271;
      while (1)
      {
        v274 = (*(v266 + 48) + 16 * v272);
        v275 = *v274 == v224 && v274[1] == v225;
        if (v275 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v272 = (v272 + 1) & v273;
        if (((*(v354 + ((v272 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v272) & 1) == 0)
        {
          goto LABEL_213;
        }
      }

      LODWORD(v329) = 1;
LABEL_215:
      v276 = v322;
      if (*(v355 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v277 = sub_1D7264A5C(), v278 = v355, v279 = -1 << *(v355 + 32), v280 = v277 & ~v279, ((*&v353[(v280 >> 3) & 0xFFFFFFFFFFFFFF8] >> v280) & 1) != 0))
      {
        v281 = ~v279;
        while (1)
        {
          v282 = (*(v278 + 48) + 16 * v280);
          v283 = *v282 == v224 && v282[1] == v225;
          if (v283 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v280 = (v280 + 1) & v281;
          v278 = v355;
          if (((*&v353[(v280 >> 3) & 0xFFFFFFFFFFFFFF8] >> v280) & 1) == 0)
          {
            goto LABEL_224;
          }
        }

        LODWORD(v328) = 1;
        if (!*(v276 + 16))
        {
          goto LABEL_235;
        }
      }

      else
      {
LABEL_224:
        LODWORD(v328) = 0;
        if (!*(v276 + 16))
        {
          goto LABEL_235;
        }
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v284 = sub_1D7264A5C();
      v285 = -1 << *(v276 + 32);
      v286 = v284 & ~v285;
      if ((*&v351[(v286 >> 3) & 0xFFFFFFFFFFFFFF8] >> v286))
      {
        v287 = ~v285;
        while (1)
        {
          v288 = (*(v276 + 48) + 16 * v286);
          v289 = *v288 == v224 && v288[1] == v225;
          if (v289 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v286 = (v286 + 1) & v287;
          if (((*&v351[(v286 >> 3) & 0xFFFFFFFFFFFFFF8] >> v286) & 1) == 0)
          {
            goto LABEL_235;
          }
        }

        LODWORD(v332) = 1;
        goto LABEL_237;
      }

LABEL_235:
      LODWORD(v332) = 0;
LABEL_237:
      v257 = v317;
      v290 = v318;
      (v331)(v310, v317, v318);
      v62 = v313;
      v49 = v290;
      sub_1D7258F3C();
      v261 = 0;
      a6 = v352;
      goto LABEL_238;
    }

LABEL_213:
    LODWORD(v329) = 0;
    goto LABEL_215;
  }

  v192 = v191;
  v193 = [v191 optionalTags];

  if (v193)
  {

    sub_1D5B5A498(0, &qword_1EDF1A660);
    v194 = sub_1D7261D3C();

    v195 = v326;
    v196 = sub_1D701C278(v194);
    v326 = v195;
    goto LABEL_133;
  }

  __break(1u);
LABEL_260:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D7028CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, void *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15)
{
  v255 = a8;
  v261 = a6;
  v254 = a5;
  v256 = a1;
  v244 = sub_1D725900C();
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244, v19);
  v242 = &v240[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v247 = sub_1D7258FFC();
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247, v21);
  v245 = &v240[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7031838(0);
  *&v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24).n128_u64[0];
  v27 = &v240[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *a2;
  v248 = *(a2 + 8);
  v260 = v28;
  v29 = [v28 publisherID];
  if (v29 && (v30 = v29, v31 = sub_1D726207C(), v33 = v32, v30, LOBYTE(v30) = sub_1D5BE240C(v31, v33, a3), , (v30 & 1) != 0))
  {
    v241 = 1;
    v34 = v260;
  }

  else
  {
    v34 = v260;
    v35 = [v260 sourceFeedID];
    v241 = v35 && (v36 = v35, v37 = sub_1D726207C(), v39 = v38, v36, v34 = v260, v40 = sub_1D5BE240C(v37, v39, a3), , (v40 & 1) != 0);
  }

  v41 = [v34 itemID];
  v42 = sub_1D726207C();
  v44 = v43;

  v45 = *(a4 + 16);
  v265 = a7;
  v262 = v27;
  if (v45)
  {
    v46 = sub_1D5B69D90(v42, v44);
    v48 = v47;

    v51 = v254;
    if (v48)
    {
      isUniquelyReferenced_nonNull_native = *(*(a4 + 56) + 8 * v46);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    v51 = v254;
  }

  v253 = a9;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_244:
    v49 = sub_1D7263BFC();
    v53 = v49;
  }

  else
  {
    v53 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = &selRef_setFillMode_;
  v264 = isUniquelyReferenced_nonNull_native;
  v266 = v53;
  if (v53)
  {
    v250 = 0;
    v252 = 0;
    v55 = 0;
    v56 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v258 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    *&v257 = isUniquelyReferenced_nonNull_native + 32;
    v268 = v51 + 56;
    *&v259 = v265 + 56;
    v251 = v255 + 56;
    v249 = v253 + 56;
    v263 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    while (1)
    {
      if (v56)
      {
        v49 = MEMORY[0x1DA6FB460](v55, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v55 >= *(v258 + 16))
        {
          __break(1u);
          goto LABEL_244;
        }

        v49 = *(v257 + 8 * v55);
      }

      v57 = v49;
      v58 = __OFADD__(v55++, 1);
      if (v58)
      {
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        v54 = 0x1E84D6000;
        if (sub_1D5BE240C(v49, v50, v265) & 1) != 0 || (sub_1D5BE240C(v53, v57, v255) & 1) != 0 || (sub_1D5BE240C(v53, v57, v253))
        {
          goto LABEL_242;
        }

LABEL_235:

        v49 = swift_unknownObjectRelease();
        goto LABEL_119;
      }

      v59 = [v49 *(v54 + 928)];
      if (v59)
      {
        v267 = v57;
        v60 = v59;
        v57 = sub_1D726207C();
        v62 = v61;

        if (*(v51 + 16))
        {
          sub_1D7264A0C();
          sub_1D72621EC();
          v63 = sub_1D7264A5C();
          v64 = -1 << *(v51 + 32);
          v65 = v63 & ~v64;
          if ((*(v268 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
          {
            v66 = ~v64;
            while (1)
            {
              v67 = (*(v51 + 48) + 16 * v65);
              v68 = *v67 == v57 && v67[1] == v62;
              if (v68 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v65 = (v65 + 1) & v66;
              if (((*(v268 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

LABEL_88:

            v54 = 0x1E84D6000;
            goto LABEL_18;
          }
        }

LABEL_34:
        v69 = *v261;
        if (*(*v261 + 16) && (v70 = sub_1D5B69D90(v57, v62), (v71 & 1) != 0))
        {
          v72 = v70;
          v73 = *(v69 + 56);
          sub_1D605FEA0();
          v75 = v74;
          v76 = *(v74 - 8);
          v77 = v73 + *(v76 + 72) * v72;
          v78 = v266;
          v79 = v262;
          sub_1D702DE88(v77, v262, sub_1D605FEA0);
          (*(v76 + 56))(v79, 0, 1, v75);
          v51 = v254;
        }

        else
        {
          v78 = v53;
          sub_1D605FEA0();
          v75 = v80;
          v79 = v262;
          (*(*(v80 - 8) + 56))(v262, 1, 1, v80);
        }

        sub_1D605FEA0();
        v54 = 0x1E84D6000;
        if ((*(*(v75 - 8) + 48))(v79, 1, v75))
        {

          v49 = sub_1D7031C2C(v79, sub_1D7031838);
          isUniquelyReferenced_nonNull_native = v264;
          goto LABEL_40;
        }

        v81 = *(v79 + *(v75 + 48));
        sub_1D7031C2C(v79, sub_1D7031838);
        if (v81 > 1)
        {
          isUniquelyReferenced_nonNull_native = v264;
          if (v81 == 2)
          {
            v82 = v265;
            v56 = v263;
            if (!*(v265 + 16))
            {

              v53 = v266;
              goto LABEL_18;
            }

            sub_1D7264A0C();
            sub_1D72621EC();
            v83 = sub_1D7264A5C();
            v84 = -1 << *(v82 + 32);
            v85 = v83 & ~v84;
            v53 = v266;
            if ((*(v259 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85))
            {
              v86 = ~v84;
              while (1)
              {
                v87 = (*(v265 + 48) + 16 * v85);
                v88 = *v87 == v57 && v87[1] == v62;
                if (v88 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v85 = (v85 + 1) & v86;
                if (((*(v259 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
                {
                  goto LABEL_88;
                }
              }

LABEL_89:
              sub_1D5B860D0(&v271, v57, v62);

              v54 = 0x1E84D6000;
              goto LABEL_18;
            }

            goto LABEL_88;
          }

          v53 = v78;
          v56 = v263;
          if (*(v265 + 16))
          {
            v97 = v265;
            sub_1D7264A0C();
            sub_1D72621EC();
            v98 = sub_1D7264A5C();
            v99 = *(v97 + 32);
            v53 = v266;
            v100 = -1 << v99;
            v101 = v98 & ~v100;
            if ((*(v259 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
            {
              v102 = ~v100;
              do
              {
                v103 = (*(v265 + 48) + 16 * v101);
                v104 = *v103 == v57 && v103[1] == v62;
                if (v104 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_89;
                }

                v101 = (v101 + 1) & v102;
              }

              while (((*(v259 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) != 0);
            }
          }

          if (*(v255 + 16))
          {
            v105 = v255;
            sub_1D7264A0C();
            sub_1D72621EC();
            v106 = sub_1D7264A5C();
            v107 = -1 << *(v105 + 32);
            v108 = v106 & ~v107;
            if ((*(v251 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
            {
              v109 = ~v107;
              do
              {
                v110 = (*(v255 + 48) + 16 * v108);
                v111 = *v110 == v57 && v110[1] == v62;
                if (v111 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_89;
                }

                v108 = (v108 + 1) & v109;
              }

              while (((*(v251 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) != 0);
            }
          }

          v78 = v53;
          v112 = v253;
          if (*(v253 + 16))
          {
            sub_1D7264A0C();
            sub_1D72621EC();
            v113 = sub_1D7264A5C();
            v114 = -1 << *(v112 + 32);
            v115 = v113 & ~v114;
            v53 = v78;
            v56 = v263;
            if ((*(v249 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115))
            {
              v116 = ~v114;
              while (1)
              {
                v117 = (*(v253 + 48) + 16 * v115);
                v118 = *v117 == v57 && v117[1] == v62;
                if (v118 || (sub_1D72646CC() & 1) != 0)
                {
                  goto LABEL_89;
                }

                v115 = (v115 + 1) & v116;
                if (((*(v249 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                {
                  goto LABEL_88;
                }
              }
            }

            goto LABEL_88;
          }

          v54 = 0x1E84D6000;
LABEL_40:
          v53 = v78;
LABEL_41:
          v56 = v263;
          goto LABEL_18;
        }

        isUniquelyReferenced_nonNull_native = v264;
        v53 = v78;
        if (!v81)
        {

          goto LABEL_41;
        }

        v56 = v263;
        if (v241)
        {
          sub_1D5B74328(v250);
          v89 = v256;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = *(v89 + 24);
          *&v271 = v90;
          v54 = sub_1D5B69D90(v57, v62);
          v92 = *(v90 + 16);
          v93 = (v91 & 1) == 0;
          v94 = v92 + v93;
          if (__OFADD__(v92, v93))
          {
            goto LABEL_247;
          }

          if (*(v90 + 24) >= v94)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = v91;
              sub_1D6D7FBD4();
              LOBYTE(v91) = isUniquelyReferenced_nonNull_native;
            }
          }

          else
          {
            LODWORD(v250) = v91;
            sub_1D6D69220(v94, isUniquelyReferenced_nonNull_native);
            v95 = sub_1D5B69D90(v57, v62);
            v96 = v91 & 1;
            LOBYTE(v91) = v250;
            if ((v250 & 1) != v96)
            {
              goto LABEL_252;
            }

            v54 = v95;
          }

          v119 = v271;
          *(v256 + 24) = v271;
          if ((v91 & 1) == 0)
          {
            sub_1D6D7CFA0(v54, v57, v62, 0, v119);
          }

          v120 = v119[7];
          v121 = *(v120 + 8 * v54);
          v58 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v58)
          {
            goto LABEL_248;
          }

          *(v120 + 8 * v54) = v122;
          v250 = sub_1D5DF2CFC;
        }

        sub_1D5B74328(v252);
        v123 = v256;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = *(v123 + 32);
        *&v271 = v124;
        v125 = sub_1D5B69D90(v57, v62);
        v127 = *(v124 + 16);
        v128 = (v126 & 1) == 0;
        v58 = __OFADD__(v127, v128);
        v129 = v127 + v128;
        if (v58)
        {
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
          goto LABEL_249;
        }

        v54 = v126;
        if (*(v124 + 24) >= v129)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v135 = v125;
            sub_1D6D7FBD4();
            v125 = v135;
          }
        }

        else
        {
          sub_1D6D69220(v129, isUniquelyReferenced_nonNull_native);
          v125 = sub_1D5B69D90(v57, v62);
          if ((v54 & 1) != (v130 & 1))
          {
            goto LABEL_252;
          }
        }

        isUniquelyReferenced_nonNull_native = v264;
        v131 = v271;
        *(v256 + 32) = v271;
        if ((v54 & 1) == 0)
        {
          v54 = v125;
          sub_1D6D7CFA0(v125, v57, v62, 0, v131);

          v125 = v54;
        }

        v132 = v131[7];
        v133 = *(v132 + 8 * v125);
        v58 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v58)
        {
          goto LABEL_246;
        }

        *(v132 + 8 * v125) = v134;
        sub_1D5B860D0(&v271, v57, v62);

        v252 = sub_1D5DF2CFC;
        v54 = 0x1E84D6000;
      }

      else
      {
      }

LABEL_18:
      if (v55 == v53)
      {
        goto LABEL_109;
      }
    }
  }

  v250 = 0;
  v252 = 0;
LABEL_109:
  if (a10 != 2)
  {
    v49 = [v260 publisherID];
    if (v49)
    {
      v136 = v49;
      v53 = sub_1D726207C();
      v57 = v137;

      if ((sub_1D5BE240C(v53, v57, v51) & 1) == 0)
      {
        if (*(a11 + 16) && (sub_1D5B69D90(v53, v57), (v138 & 1) != 0))
        {
          if (a10)
          {
            sub_1D5B860D0(&v271, v53, v57);
          }

          else
          {
            v236 = a12[3];
            v237 = a12[4];
            __swift_project_boxed_opaque_existential_1(a12, v236);
            v238 = *(v237 + 8);
            v239 = swift_unknownObjectRetain();
            v238(&v271, v239, v236, v237);
            if (v271 <= 1u)
            {
              v54 = 0x1E84D6000;
              if (v271)
              {
                goto LABEL_242;
              }

              goto LABEL_235;
            }

            v49 = v53;
            v50 = v57;
            if (v271 != 2)
            {
              goto LABEL_239;
            }

            v54 = 0x1E84D6000;
            if ((sub_1D5BE240C(v53, v57, v265) & 1) == 0)
            {
              goto LABEL_235;
            }

LABEL_242:
            sub_1D5B860D0(&v271, v53, v57);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          if (qword_1EDF12600 != -1)
          {
LABEL_249:
            swift_once();
          }

          sub_1D7262EBC();
          sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
          v139 = swift_allocObject();
          *(v139 + 16) = xmmword_1D7273AE0;
          *(v139 + 56) = MEMORY[0x1E69E6158];
          *(v139 + 64) = sub_1D5B7E2C0();
          *(v139 + 32) = v53;
          *(v139 + 40) = v57;
          sub_1D725C30C();
        }
      }

LABEL_119:
      v53 = v266;
    }
  }

  v274 = MEMORY[0x1E69E7CD0];
  v275 = MEMORY[0x1E69E7CD0];
  v273 = MEMORY[0x1E69E7CD0];
  if (v53)
  {
    v57 = 0;
    v140 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    LODWORD(v262) = a14;
    v268 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    isUniquelyReferenced_nonNull_native += 32;
    LODWORD(v267) = a13;
    v263 = v265 + 56;
    v255 = 0x80000001D73FB400;
    v259 = xmmword_1D7270C10;
    v257 = xmmword_1D7279970;
    v141 = v260;
    v261 = v140;
    v258 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v140)
      {
        v49 = MEMORY[0x1DA6FB460](v57, v264);
      }

      else
      {
        if (v57 >= *(v268 + 16))
        {
          goto LABEL_238;
        }

        v49 = *(isUniquelyReferenced_nonNull_native + 8 * v57);
      }

      v142 = v49;
      v58 = __OFADD__(v57++, 1);
      if (v58)
      {
        goto LABEL_237;
      }

      v143 = [v49 *(v54 + 928)];
      if (v143)
      {
        v144 = v143;
        v145 = sub_1D726207C();
        v147 = v146;

        if ([v142 isManagedTopic])
        {

          sub_1D5B860D0(&v271, v145, v147);
        }

        if ([v142 isManagedTopicWinner])
        {

          sub_1D5B860D0(&v271, v145, v147);
        }

        if ((v267 & 1) == 0)
        {
          goto LABEL_164;
        }

        if ([v142 isDisallowedFromGrouping])
        {

          if (v262)
          {
            if (qword_1EDF12600 != -1)
            {
              swift_once();
            }

            sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
            v148 = swift_allocObject();
            *(v148 + 16) = v259;
            v149 = [v141 itemID];
            v150 = sub_1D726207C();
            v152 = v151;

            *(v148 + 56) = MEMORY[0x1E69E6158];
            v153 = sub_1D5B7E2C0();
            *(v148 + 64) = v153;
            *(v148 + 32) = v150;
            *(v148 + 40) = v152;
            *&v271 = 0;
            *(&v271 + 1) = 0xE000000000000000;
            v154 = [v142 tagID];
            if (v154)
            {
              v155 = v154;
              v156 = sub_1D726207C();
              v158 = v157;
            }

            else
            {
              v156 = 0;
              v158 = 0;
            }

            v140 = v261;
            *&v269 = v156;
            *(&v269 + 1) = v158;
            v171 = MEMORY[0x1E69E6158];
            sub_1D703192C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            v172 = sub_1D72620FC();
            MEMORY[0x1DA6F9910](v172);

            v173 = v271;
            *(v148 + 96) = v171;
            *(v148 + 104) = v153;
            *(v148 + 72) = v173;
            sub_1D7262EDC();
            sub_1D725C30C();

            v141 = v260;
            v53 = v266;
            v54 = 0x1E84D6000;
            isUniquelyReferenced_nonNull_native = v258;
          }

          else
          {

            v53 = v266;
          }

          goto LABEL_123;
        }

        if (([v142 hardFollowRequiredForGrouping] & 1) == 0)
        {
          goto LABEL_164;
        }

        v159 = [v141 publisherID];
        if (v159)
        {
          v160 = v159;
          v161 = sub_1D726207C();
          v163 = v162;

          v164 = v265;
          if (*(v265 + 16))
          {
            sub_1D7264A0C();

            sub_1D72621EC();
            v165 = sub_1D7264A5C();
            v166 = -1 << *(v164 + 32);
            v167 = v165 & ~v166;
            if ((*(v263 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167))
            {
              v168 = ~v166;
              while (1)
              {
                v169 = (*(v265 + 48) + 16 * v167);
                v170 = *v169 == v161 && v169[1] == v163;
                if (v170 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v167 = (v167 + 1) & v168;
                if (((*(v263 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167) & 1) == 0)
                {
                  goto LABEL_151;
                }
              }

              swift_bridgeObjectRelease_n();

              v141 = v260;
              v54 = 0x1E84D6000;
              v140 = v261;
LABEL_164:
              sub_1D5B860D0(&v271, v145, v147);

              v53 = v266;
              goto LABEL_123;
            }

LABEL_151:

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v141 = v260;
          v54 = 0x1E84D6000;
          v140 = v261;
        }

        else
        {
        }

        v53 = v266;
        if (v262)
        {
          if (qword_1EDF12600 != -1)
          {
            swift_once();
          }

          sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
          v174 = swift_allocObject();
          *(v174 + 16) = v257;
          v175 = [v141 itemID];
          v176 = sub_1D726207C();
          v178 = v177;

          *(v174 + 56) = MEMORY[0x1E69E6158];
          v179 = sub_1D5B7E2C0();
          *(v174 + 64) = v179;
          *(v174 + 32) = v176;
          *(v174 + 40) = v178;
          *&v271 = 0;
          *(&v271 + 1) = 0xE000000000000000;
          v180 = [v142 tagID];
          if (v180)
          {
            v181 = v180;
            v182 = sub_1D726207C();
            v184 = v183;
          }

          else
          {
            v182 = 0;
            v184 = 0;
          }

          *&v269 = v182;
          *(&v269 + 1) = v184;
          v185 = MEMORY[0x1E69E6158];
          sub_1D703192C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          v186 = sub_1D72620FC();
          MEMORY[0x1DA6F9910](v186);

          v187 = v271;
          *(v174 + 96) = v185;
          *(v174 + 104) = v179;
          *(v174 + 72) = v187;
          *&v271 = 0;
          *(&v271 + 1) = 0xE000000000000000;
          v188 = [v260 publisherID];
          if (v188)
          {
            v189 = v188;
            v190 = sub_1D726207C();
            v192 = v191;
          }

          else
          {
            v190 = 0xD000000000000011;
            v192 = v255;
          }

          MEMORY[0x1DA6F9910](v190, v192);

          v193 = v271;
          *(v174 + 136) = MEMORY[0x1E69E6158];
          *(v174 + 144) = v179;
          *(v174 + 112) = v193;
          sub_1D7262EDC();
          sub_1D725C30C();

          v141 = v260;
          v53 = v266;
          v54 = 0x1E84D6000;
          v140 = v261;
          goto LABEL_123;
        }
      }

LABEL_123:
      if (v57 == v53)
      {
        v194 = v274;
        goto LABEL_173;
      }
    }
  }

  v194 = MEMORY[0x1E69E7CD0];
  v141 = v260;
LABEL_173:
  v195 = [v141 itemID];
  v265 = sub_1D726207C();
  v266 = v196;

  v197 = [v141 publisherID];
  if (v197)
  {
    v198 = v197;
    v263 = sub_1D726207C();
    v262 = v199;
  }

  else
  {
    v263 = 0;
    v262 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  [v248 sortingScore];
  v267 = *(a15 + 16);
  v200 = [v267 paidAccessChecker];
  if (!v200)
  {
    __break(1u);
    goto LABEL_251;
  }

  v201 = v200;
  v268 = v194;
  v202 = v260;
  v203 = [v260 isPaid];
  if ([v202 respondsToSelector_])
  {
    v204 = [v202 isBundlePaid];
  }

  else
  {
    v204 = 0;
  }

  v205 = [v202 publisherID];
  if (v205)
  {
    v206 = v205;
    v261 = sub_1D726207C();
    v208 = v207;

    if (v203)
    {
      goto LABEL_182;
    }

LABEL_186:
    if (v204)
    {
      goto LABEL_190;
    }

LABEL_187:
    swift_unknownObjectRelease();

    goto LABEL_214;
  }

  v261 = 0;
  v208 = 0;
  if (!v203)
  {
    goto LABEL_186;
  }

LABEL_182:
  v209 = [v201 purchaseProvider];
  if (v208)
  {
    v210 = [v209 purchasedTagIDs];
    v211 = sub_1D7262B0C();

    LOBYTE(v210) = sub_1D5BE240C(v261, v208, v211);

    swift_unknownObjectRelease();
    if (v210)
    {

      swift_unknownObjectRelease();
      goto LABEL_214;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (!v204)
  {
    goto LABEL_187;
  }

LABEL_190:
  if (!v208)
  {
LABEL_211:
    swift_unknownObjectRelease();
    goto LABEL_214;
  }

  v212 = [objc_msgSend(v201 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v212, v212 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v269 = 0u;
    v270 = 0u;
  }

  v271 = v269;
  v272 = v270;
  if (!*(&v270 + 1))
  {
    sub_1D5EBD03C(&v271);
    goto LABEL_200;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_200:
    v213 = 0;
    v215 = 0;
    goto LABEL_201;
  }

  v213 = v275;
  v214 = [v275 integerValue];
  if (v214 == -1)
  {

    goto LABEL_213;
  }

  v215 = v214;
LABEL_201:
  if (objc_getAssociatedObject(v212, ~v215))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v269 = 0u;
    v270 = 0u;
  }

  v271 = v269;
  v272 = v270;
  if (*(&v270 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v216 = v275;
      v217 = [v216 integerValue];

      if ((v217 ^ v215))
      {
        goto LABEL_213;
      }

      goto LABEL_210;
    }
  }

  else
  {
    sub_1D5EBD03C(&v271);
  }

  if ((v215 & 1) == 0)
  {
LABEL_210:

    goto LABEL_211;
  }

LABEL_213:
  v218 = [objc_msgSend(v201 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v219 = [v218 bundleChannelIDs];

  v220 = sub_1D726203C();
  [v219 containsObject_];

  swift_unknownObjectRelease();
LABEL_214:
  v221 = [v267 paidAccessChecker];
  v222 = v260;
  if (v221)
  {
    v223 = v221;

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v224 = [v223 bundleSubscriptionProvider];
    swift_unknownObjectRelease();
    v225 = [v224 bundleSubscription];
    swift_unknownObjectRelease();
    [v225 containsItem_];

    if ([v222 respondsToSelector_])
    {
      [v222 isAIGenerated];
    }

    if ([v222 respondsToSelector_])
    {
      [v222 isEvergreen];
    }

    if ([v222 respondsToSelector_])
    {
      v226 = [v222 thumbnailPerceptualHash];
      if (v226)
      {
        v227 = v226;
        v228 = sub_1D725867C();
        v230 = v229;
      }

      else
      {
        v228 = 0;
        v230 = 0xF000000000000000;
      }

      *&v271 = v228;
      *(&v271 + 1) = v230;
      sub_1D703192C(0, &qword_1EDF18A90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      sub_1D726392C();
      sub_1D5B952E4(v228, v230);
    }

    (*(v243 + 104))(v242, *MEMORY[0x1E69E3278], v244);
    v231 = v245;
    sub_1D7258FCC();
    v232 = *v256;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = sub_1D699695C(0, v232[2] + 1, 1, v232);
    }

    v234 = v232[2];
    v233 = v232[3];
    if (v234 >= v233 >> 1)
    {
      v232 = sub_1D699695C(v233 > 1, v234 + 1, 1, v232);
    }

    v232[2] = v234 + 1;
    (*(v246 + 32))(v232 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v234, v231, v247);
    sub_1D5B74328(v250);
    result = sub_1D5B74328(v252);
    *v256 = v232;
    return result;
  }

LABEL_251:
  __break(1u);
LABEL_252:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D702ACA0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 16) appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v2 respondsToSelector_] & 1) != 0 && objc_msgSend(v2, sel_enableTabiTagScoring) && (objc_msgSend(v2, sel_respondsToSelector_, sel_newsTabiConfiguration) & 1) != 0 && (v3 = objc_msgSend(v2, sel_newsTabiConfiguration), v4 = objc_msgSend(v3, sel_tagScoringConfiguration), v3, v4))
  {
    [v4 minimumChannelScoreForGrouping];

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    __swift_project_boxed_opaque_existential_1((a1 + 32), v6);
    (*(v7 + 80))(v6, v7);
    return swift_unknownObjectRelease();
  }
}

double sub_1D702ADF4(void **a1)
{
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v7, v8).n128_u64[0];
  v11 = &v20 - v10;
  v12 = *a1;
  [a1[1] sortingScore];
  v14 = v13;
  if ([v12 respondsToSelector_])
  {
    if ([v12 isFeatureCandidate])
    {
      v15 = [v12 publishDate];
      if (v15)
      {
        v16 = v15;
        sub_1D72588BC();

        (*(v3 + 32))(v11, v6, v2);
        sub_1D725887C();
        v18 = v17;
        (*(v3 + 8))(v11, v2);
        if (v18 < 86400.0)
        {
          return v14 + 100.0;
        }
      }
    }
  }

  return v14;
}

id sub_1D702AF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v112 = a8;
  v113 = a7;
  v121 = a1;
  v122 = a2;
  v12 = type metadata accessor for FeedClusteringRequest(0);
  v116 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12, v13);
  v117 = v14;
  v125 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D702DE54(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D725944C();
  v129 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v19);
  v124 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v105 - v23;
  v25 = sub_1D725C34C();
  v127 = *(v25 - 8);
  v128 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v123 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v105 - v30;
  v32 = sub_1D725C37C();
  v119 = *(v32 - 8);
  v120 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDFFC618;
  sub_1D725C35C();
  v118 = v35;
  sub_1D725C36C();
  sub_1D725C32C();
  v126 = v31;
  sub_1D725C33C();
  tf_os_signpost_clustering_begin();
  v37 = [*(a5 + 16) personalizationTreatment];
  v38 = *(a5 + 40);
  v39 = *(a5 + v12[18]);
  v40 = *(a5 + v12[19]);
  v41 = *(a5 + v12[20]);
  LOBYTE(v133[0]) = *(a5 + v12[17]);
  v42 = v12[22];
  v43 = HIBYTE(*(a5 + v42)) & 1;
  if (*(a5 + v42) == 2)
  {
    LOBYTE(v43) = 0;
  }

  v44 = v12[10];
  v45 = v12[11];
  v47 = v12[13];
  v46 = v12[14];
  v48 = *(a5 + v12[21]);
  v104 = *(a5 + v12[12]);
  v130 = v37;
  v131 = v24;
  sub_1D701CBCC(v37, v38, (a5 + v44), a5 + v45, a5 + v47, (a5 + v46), v133, v39, v24, v40, v41, v43, v48, v104);
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D7273AE0;
    v50 = sub_1D702BA6C();
    v51 = a6;
    v53 = v52;
    *(v49 + 56) = MEMORY[0x1E69E6158];
    *(v49 + 64) = sub_1D5B7E2C0();
    v54 = 7104878;
    if (v53)
    {
      v54 = v50;
    }

    v55 = 0xE300000000000000;
    if (v53)
    {
      v55 = v53;
    }

    a6 = v51;
    *(v49 + 32) = v54;
    *(v49 + 40) = v55;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  v56 = *a5;
  [v130 uGroupMinimumSubscribedChannelSourceFeedArticleRatio];
  v58 = v57;
  v59 = *(a5 + v12[15]);
  v111 = *(a5 + v42);
  sub_1D702DE88(a5 + v45, v18, sub_1D702DE54);
  v60 = type metadata accessor for FeedClusteringOptions(0);
  if ((*(*(v60 - 8) + 48))(v18, 1, v60) == 1)
  {
    sub_1D7031C2C(v18, sub_1D702DE54);
    v61 = 1.0;
  }

  else
  {
    v62 = &v18[*(v60 + 76)];
    v61 = *v62;
    v63 = v62[8];
    sub_1D7031C2C(v18, type metadata accessor for FeedClusteringOptions);
    if (v63)
    {
      v61 = 1.0;
    }
  }

  v64 = v12[23];
  v110 = *(a5 + v12[24]);
  v109 = *(a5 + v12[25]);
  v65 = a6;
  v66 = [*(a6 + 16) subscriptionList];
  result = [v66 ignoredTagIDs];
  if (result)
  {
    v68 = result;
    v69 = v56;
    v70 = sub_1D7262B0C();

    v71 = sub_1D5D6021C(v70, v59);
    result = [v66 mutedTagIDs];
    if (result)
    {
      v72 = result;
      v107 = a9;
      v108 = a10;
      v73 = sub_1D7262B0C();

      v74 = sub_1D5D6021C(v73, v71);
      MEMORY[0x1EEE9AC00](v74, v75);
      v76 = v111;
      *(&v105 - 16) = v111;
      *(&v105 - 3) = v69;
      v103 = v77;
      v104 = v65;
      sub_1D5C44E18();
      sub_1D725BDCC();
      sub_1D5B68374(a5 + v64, v133);
      v78 = swift_allocObject();
      v79 = v113;
      *(v78 + 16) = v113;
      *(v78 + 24) = v66;
      *(v78 + 32) = v65;
      *(v78 + 40) = v69;
      v106 = v65;
      *(v78 + 48) = v112;
      sub_1D5B63F14(v133, v78 + 56);
      *(v78 + 96) = v74;
      *(v78 + 104) = v110;
      *(v78 + 112) = v76;
      *(v78 + 120) = v58;
      *(v78 + 128) = v61;
      *(v78 + 136) = v109;
      swift_unknownObjectRetain();

      v112 = v79;
      v80 = v66;

      v81 = sub_1D725B92C();
      sub_1D702DF60();
      v113 = sub_1D725BA7C();

      v82 = v129;
      (*(v129 + 16))(v124, v131, v132);
      sub_1D5B68374(v107, v133);
      sub_1D702DE88(a5, v125, type metadata accessor for FeedClusteringRequest);
      v83 = v127;
      (*(v127 + 16))(v123, v126, v128);
      v84 = (*(v82 + 80) + 24) & ~*(v82 + 80);
      v85 = (v115 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
      v87 = (*(v116 + 80) + v86 + 40) & ~*(v116 + 80);
      v117 = (v117 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = (*(v83 + 80) + v88 + 8) & ~*(v83 + 80);
      v90 = (v114 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      *(v91 + 16) = v106;
      (*(v82 + 32))(v91 + v84, v124, v132);
      v92 = v130;
      *(v91 + v85) = v130;
      sub_1D5B63F14(v133, v91 + v86);
      sub_1D70313E0(v125, v91 + v87, type metadata accessor for FeedClusteringRequest);
      v93 = v108;
      *(v91 + v117) = v108;
      v94 = v112;
      *(v91 + v88) = v112;
      v96 = v127;
      v95 = v128;
      (*(v127 + 32))(v91 + v89, v123, v128);
      v97 = (v91 + v90);
      v98 = v122;
      *v97 = v121;
      v97[1] = v98;
      v99 = v94;

      v100 = v92;
      v101 = v93;

      v102 = sub_1D725B92C();
      sub_1D725BA8C();

      (*(v129 + 8))(v131, v132);
      (*(v96 + 8))(v126, v95);
      return (*(v119 + 8))(v118, v120);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D702BA6C()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  sub_1D725944C();
  sub_1D7031B18(&unk_1EDF18880, 255, MEMORY[0x1E69E34E8]);
  v6 = sub_1D72578BC();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = sub_1D725865C();
  v25[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:v25];

  v12 = v25[0];
  if (v11)
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(&v26, v28);
    v13 = sub_1D72646AC();
    v25[0] = 0;
    v14 = [v9 dataWithJSONObject:v13 options:1 error:v25];
    swift_unknownObjectRelease();
    v15 = v25[0];
    if (v14)
    {
      v16 = sub_1D725867C();
      v18 = v17;

      sub_1D72620CC();
      v19 = sub_1D726209C();
      sub_1D5B952F8(v6, v8);
      sub_1D5B952F8(v16, v18);
      __swift_destroy_boxed_opaque_existential_1(&v26);
      return v19;
    }

    v23 = v15;
    v24 = sub_1D725829C();

    swift_willThrow();
    v22 = v24;
    sub_1D5B952F8(v6, v8);
    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    v20 = v12;
    v21 = sub_1D725829C();

    swift_willThrow();
    v22 = v21;
    sub_1D5B952F8(v6, v8);
  }

  if (qword_1EDF12600 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D7263F9C();
  v3 = v26;
  v4 = v27;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D725C30C();

  return 0;
}

uint64_t sub_1D702BE58(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, id *a11)
{
  v136 = a7;
  v142 = a8;
  v155 = a6;
  v150 = a3;
  v141 = sub_1D725C34C();
  v135 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v15);
  v134 = v16;
  v140 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D72594FC();
  v143 = *(v17 - 8);
  v144 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v139 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v151 = &v127 - v22;
  v148 = sub_1D725944C();
  v145 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v23);
  v132 = v24;
  v147 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D7258F6C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = *a1;
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    v154 = a4;
    if (qword_1EDF18870 != -1)
    {
      swift_once();
    }

    type metadata accessor for FeedClusteringService();
    sub_1D7031B18(qword_1EDF14318, v30, type metadata accessor for FeedClusteringService);
    sub_1D725964C();
    *v29 = v156;
    (*(v26 + 104))(v29, *MEMORY[0x1E69E3198], v25);
    a4 = v154;
  }

  else
  {
    (*(v26 + 104))(v29, *MEMORY[0x1E69E3190], v25);
  }

  v31 = *(v145 + 16);
  v131 = v145 + 16;
  v130 = v31;
  v31(v147, v150, v148);
  sub_1D7258FBC();
  swift_allocObject();

  v146 = sub_1D7258F9C();
  v32 = [a4 defaultTopicsConfig];
  if (!v32)
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v33 = v32;
  sub_1D6E1CF6C();

  v138 = a2;
  v34 = [*(a2 + 16) bundleSubscriptionManager];
  if (!v34)
  {
    goto LABEL_47;
  }

  v35 = [v34 bundleSubscription];
  swift_unknownObjectRelease();
  [v35 isSubscribed];

  sub_1D725947C();

  if (sub_1D725A9CC())
  {
    v36 = *(a5 + 3);
    v37 = *(a5 + 4);
    __swift_project_boxed_opaque_existential_1(a5, v36);
    v38 = *(v37 + 8);
    a5 = v146;

    v38(v39, v36, v37);
  }

  v40 = *v155;
  v153 = *(*v155 + 16);
  if (v153)
  {
    v41 = 0;
    v42 = v40 + 6;
    v43 = MEMORY[0x1E69E7CC8];
    v152 = v40;
    while (1)
    {
      if (v41 >= v40[2])
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v48 = v43;
      v49 = *(v42 - 2);
      v50 = *(v42 - 1);
      v155 = *v42;
      v51 = v155;
      swift_unknownObjectRetain();
      v52 = v50;
      v53 = [v49 itemID];
      v54 = sub_1D726207C();
      v25 = v55;

      swift_unknownObjectRetain();
      a5 = v52;
      v154 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156 = v48;
      v57 = sub_1D5B69D90(v54, v25);
      v59 = *(v48 + 16);
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
        goto LABEL_42;
      }

      v63 = v58;
      if (*(v48 + 24) < v62)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v69 = v57;
      sub_1D6D870F4();
      v57 = v69;
      if (v63)
      {
LABEL_12:
        v44 = v57;

        v45 = v156;
        v46 = (*(v156 + 7) + 24 * v44);
        v47 = v46[1];
        v25 = v46[2];
        *v46 = v49;
        v46[1] = a5;
        v46[2] = v155;

        swift_unknownObjectRelease();
        v43 = v45;
        swift_unknownObjectRelease();

        goto LABEL_13;
      }

LABEL_21:
      v43 = v156;
      *&v156[8 * (v57 >> 6) + 64] |= 1 << v57;
      v65 = (*(v43 + 6) + 16 * v57);
      *v65 = v54;
      v65[1] = v25;
      v66 = (*(v43 + 7) + 24 * v57);
      *v66 = v49;
      v66[1] = a5;
      v66[2] = v155;

      swift_unknownObjectRelease();
      v67 = *(v43 + 2);
      v61 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v61)
      {
        goto LABEL_44;
      }

      *(v43 + 2) = v68;
LABEL_13:
      ++v41;
      v42 += 3;
      v40 = v152;
      if (v153 == v41)
      {
        goto LABEL_26;
      }
    }

    sub_1D6D76008(v62, isUniquelyReferenced_nonNull_native);
    v57 = sub_1D5B69D90(v54, v25);
    if ((v63 & 1) != (v64 & 1))
    {
      goto LABEL_48;
    }

LABEL_20:
    if (v63)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  v43 = MEMORY[0x1E69E7CC8];
LABEL_26:
  a5 = MEMORY[0x1E69E7CC0];
  v156 = MEMORY[0x1E69E7CC0];
  v70 = sub_1D72594EC();
  v71 = v137;
  sub_1D701C4BC(v70, &v156);

  v72 = sub_1D72594DC();
  sub_1D701C4BC(v72, &v156);
  v153 = v71;

  v73 = sub_1D72594CC();
  sub_1D6985160(v73);
  v74 = v156;
  v75 = *(v156 + 2);
  v154 = v43;
  if (v75)
  {
    v76 = 0;
    v155 = v75 - 1;
LABEL_28:
    v77 = (v74 + 40 + 16 * v76);
    v78 = v76;
    while (v78 < *(v74 + 16))
    {
      if (*(v43 + 2))
      {
        v79 = *(v77 - 1);
        v25 = *v77;

        v80 = sub_1D5B69D90(v79, v25);
        if (v81)
        {
          v82 = (*(v43 + 7) + 24 * v80);
          v83 = *v82;
          v84 = v82[1];
          v85 = v82[2];
          v86 = v85;
          swift_unknownObjectRetain();
          v152 = v84;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a5 = sub_1D698BF70(0, *(a5 + 2) + 1, 1, a5);
          }

          v25 = *(a5 + 2);
          v87 = *(a5 + 3);
          if (v25 >= v87 >> 1)
          {
            a5 = sub_1D698BF70((v87 > 1), v25 + 1, 1, a5);
          }

          v76 = v78 + 1;
          *(a5 + 2) = v25 + 1;
          v88 = &a5[24 * v25];
          v89 = v152;
          *(v88 + 4) = v83;
          *(v88 + 5) = v89;
          *(v88 + 6) = v85;
          v43 = v154;
          if (v155 != v78)
          {
            goto LABEL_28;
          }

          goto LABEL_39;
        }
      }

      ++v78;
      v77 += 2;
      if (v75 == v78)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_43;
  }

LABEL_39:
  v152 = a11;
  v129 = a9;
  v137 = a10;

  v155 = sub_1D72594DC();
  v25 = sub_1D72594EC();
  if (qword_1EDF12600 != -1)
  {
LABEL_45:
    swift_once();
  }

  v127 = qword_1EDFFC618;
  sub_1D7031BC8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1D7274590;
  v156 = *(v149 + 16);
  v91 = sub_1D72644BC();
  v93 = v92;
  v94 = MEMORY[0x1E69E6158];
  *(v90 + 56) = MEMORY[0x1E69E6158];
  v95 = sub_1D5B7E2C0();
  *(v90 + 64) = v95;
  *(v90 + 32) = v91;
  *(v90 + 40) = v93;
  v128 = v25;
  v156 = *(v25 + 16);
  v96 = sub_1D72644BC();
  *(v90 + 96) = v94;
  *(v90 + 104) = v95;
  *(v90 + 72) = v96;
  *(v90 + 80) = v97;
  v156 = *(v155 + 2);
  v98 = sub_1D72644BC();
  *(v90 + 136) = v94;
  *(v90 + 144) = v95;
  *(v90 + 112) = v98;
  *(v90 + 120) = v99;
  v100 = *(a5 + 2);

  v156 = v100;
  v101 = sub_1D72644BC();
  *(v90 + 176) = v94;
  *(v90 + 184) = v95;
  *(v90 + 152) = v101;
  *(v90 + 160) = v102;
  sub_1D7262EDC();
  sub_1D725C30C();

  MEMORY[0x1EEE9AC00](v103, v104);
  v105 = v138;
  v106 = v151;
  *(&v127 - 2) = v138;
  *(&v127 - 1) = v106;
  sub_1D5C44E18();
  v149 = sub_1D725BDCC();
  v130(v147, v150, v148);
  v107 = v135;
  (*(v135 + 16))(v140, v129, v141);
  v108 = v143;
  (*(v143 + 16))(v139, v106, v144);
  v109 = v145;
  v110 = (*(v145 + 80) + 64) & ~*(v145 + 80);
  v111 = (v132 + *(v107 + 80) + v110) & ~*(v107 + 80);
  v112 = (v134 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = (*(v108 + 80) + v112 + 16) & ~*(v108 + 80);
  v114 = (v133 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  v116 = v154;
  *(v115 + 2) = v128;
  *(v115 + 3) = v116;
  *(v115 + 4) = v105;
  v117 = v136;
  v118 = v142;
  *(v115 + 5) = v136;
  *(v115 + 6) = v118;
  *(v115 + 7) = v155;
  (*(v109 + 32))(&v115[v110], v147, v148);
  (*(v107 + 32))(&v115[v111], v140, v141);
  v119 = &v115[v112];
  v120 = v152;
  *v119 = v137;
  *(v119 + 1) = v120;
  v122 = v143;
  v121 = v144;
  (*(v143 + 32))(&v115[v113], v139, v144);
  *&v115[v114] = v146;

  v123 = v117;
  v124 = v142;

  v125 = sub_1D725B92C();
  sub_1D725BA8C();

  return (*(v122 + 8))(v151, v121);
}

uint64_t sub_1D702CB90()
{
  sub_1D702CCA0();
  sub_1D703179C(0, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();

  v0 = sub_1D725B92C();
  sub_1D5C44E18();
  sub_1D6C7626C();
  v1 = sub_1D725BBEC();

  return v1;
}

uint64_t sub_1D702CCA0()
{
  v0 = sub_1D72594EC();
  v1 = sub_1D72594DC();
  sub_1D6988EDC(v1);
  v2 = *(v0 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v3 = v11;
    v4 = (v0 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1D5BFC364((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

char *sub_1D702CDAC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, uint64_t a8, uint64_t a9, void (*a10)(_BYTE *))
{
  v144 = a8;
  v146 = a7;
  *&v147 = a3;
  v139 = a4;
  v14 = sub_1D7258F8C();
  v141 = *(v14 - 8);
  v142 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v140 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a2 + 16);
  v145 = *a1;
  if (!v18)
  {
    v151 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v137 = a5;
  v19 = 0;
  v20 = a2 + 48;
  v151 = MEMORY[0x1E69E7CC0];
  v143 = a6;
  v136 = a2 + 48;
  do
  {
    v21 = (v20 + 24 * v19);
    v22 = v19;
    while (1)
    {
      if (v22 >= v18)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_46;
      }

      if (v17[2])
      {
        break;
      }

LABEL_5:
      ++v22;
      v21 += 3;
      if (v19 == v18)
      {
        a6 = v143;
        goto LABEL_34;
      }
    }

    v23 = *(v21 - 2);
    v24 = *(v21 - 1);
    v25 = *v21;
    swift_bridgeObjectRetain_n();

    v26 = sub_1D5B69D90(v23, v24);
    if ((v27 & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_5;
    }

    v28 = *(v25 + 16);
    v135 = *(v17[7] + 8 * v26);
    swift_unknownObjectRetain();
    if (!v28)
    {
      v138 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

    v29 = 0;
    v30 = v25 + 40;
    v133 = v28 - 1;
    v138 = MEMORY[0x1E69E7CC0];
    v31 = v147;
    v134 = v25 + 40;
    while (2)
    {
      v17 = (v30 + 16 * v29);
      v32 = v29;
      while (2)
      {
        if (v32 >= *(v25 + 16))
        {
          goto LABEL_47;
        }

        if (!*(v31 + 16))
        {
          goto LABEL_14;
        }

        v34 = *(v17 - 1);
        v33 = *v17;

        v35 = sub_1D5B69D90(v34, v33);
        if ((v36 & 1) == 0)
        {

          v31 = v147;
LABEL_14:
          ++v32;
          v17 += 2;
          if (v28 == v32)
          {
            v17 = v145;
            goto LABEL_26;
          }

          continue;
        }

        break;
      }

      v37 = (*(v147 + 56) + 24 * v35);
      v38 = *v37;
      v39 = v37[1];
      v132 = v37[2];
      v40 = v132;
      swift_unknownObjectRetain();
      v131 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1D698BF70(0, *(v138 + 2) + 1, 1, v138);
      }

      v42 = *(v138 + 2);
      v41 = *(v138 + 3);
      if (v42 >= v41 >> 1)
      {
        v138 = sub_1D698BF70((v41 > 1), v42 + 1, 1, v138);
      }

      v29 = v32 + 1;
      v43 = v138;
      *(v138 + 2) = v42 + 1;
      v44 = &v43[24 * v42];
      v45 = v131;
      *(v44 + 4) = v38;
      *(v44 + 5) = v45;
      *(v44 + 6) = v132;
      v31 = v147;
      v17 = v145;
      v30 = v134;
      if (v133 != v32)
      {
        continue;
      }

      break;
    }

LABEL_26:

    v46 = sub_1D7030C9C(v138);

    v47 = v137;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_1D6996AEC(0, *(v151 + 2) + 1, 1, v151);
    }

    a6 = v143;
    v48 = v135;
    v50 = *(v151 + 2);
    v49 = *(v151 + 3);
    if (v50 >= v49 >> 1)
    {
      v151 = sub_1D6996AEC((v49 > 1), v50 + 1, 1, v151);
    }

    v51 = v151;
    *(v151 + 2) = v50 + 1;
    v52 = &v51[24 * v50];
    *(v52 + 4) = v48;
    *(v52 + 5) = v46;
    *(v52 + 6) = v47;
    v20 = v136;
  }

  while (v19 != v18);
LABEL_34:
  v53 = [a6 subscribedTags];
  sub_1D5B5534C(0, &qword_1EDF3C770);
  v19 = sub_1D726267C();

  if (v19 >> 62)
  {
LABEL_48:
    v54 = sub_1D7263BFC();
    if (!v54)
    {
      goto LABEL_49;
    }

LABEL_36:
    *v148 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v54 & ~(v54 >> 63), 0);
    if ((v54 & 0x8000000000000000) == 0)
    {
      v56 = 0;
      v57 = *v148;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v56, v19);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v58 = [swift_unknownObjectRetain() identifier];
        v59 = sub_1D726207C();
        v61 = v60;
        swift_unknownObjectRelease_n();

        *v148 = v57;
        v63 = *(v57 + 16);
        v62 = *(v57 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1D5BFC364((v62 > 1), v63 + 1, 1);
          v57 = *v148;
        }

        ++v56;
        *(v57 + 16) = v63 + 1;
        v64 = v57 + 16 * v63;
        *(v64 + 32) = v59;
        *(v64 + 40) = v61;
      }

      while (v54 != v56);

      v17 = v145;
      goto LABEL_50;
    }

    __break(1u);
    return result;
  }

  v54 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
    goto LABEL_36;
  }

LABEL_49:

  v57 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v143 = sub_1D5B86020(v57);

  v65 = *(v146 + 2);
  if (v65)
  {
    v66 = 0;
    v67 = v146 + 48;
    v146 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v68 = &v67[24 * v66];
      v69 = v66;
      while (1)
      {
        if (v69 >= v65)
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v66 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_101;
        }

        if (v17[2])
        {
          break;
        }

LABEL_54:
        ++v69;
        v68 += 24;
        if (v66 == v65)
        {
          goto LABEL_83;
        }
      }

      v70 = *(v68 - 2);
      v71 = *(v68 - 1);
      v72 = *v68;

      v73 = sub_1D5B69D90(v70, v71);
      if ((v74 & 1) == 0)
      {
        break;
      }

      v136 = v65;
      v75 = *(v72 + 16);
      v137 = *(v17[7] + 8 * v73);
      swift_unknownObjectRetain();
      if (v75)
      {
        v76 = 0;
        v77 = v72 + 40;
        v133 = v75 - 1;
        v138 = MEMORY[0x1E69E7CC0];
        v78 = v147;
        v135 = v67;
        v134 = v72 + 40;
        while (1)
        {
          v79 = (v77 + 16 * v76);
          v80 = v76;
          while (1)
          {
            if (v80 >= *(v72 + 16))
            {
              goto LABEL_103;
            }

            if (!*(v78 + 16))
            {
              goto LABEL_62;
            }

            v81 = *(v79 - 1);
            v82 = *v79;

            v83 = sub_1D5B69D90(v81, v82);
            if (v84)
            {
              break;
            }

            v78 = v147;
LABEL_62:
            ++v80;
            v79 += 2;
            if (v75 == v80)
            {
              v17 = v145;
              v67 = v135;
              goto LABEL_76;
            }
          }

          v85 = (*(v147 + 56) + 24 * v83);
          v86 = *v85;
          v87 = v85[1];
          v132 = v85[2];
          v88 = v132;
          swift_unknownObjectRetain();
          v89 = v87;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131 = v89;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v138 = sub_1D698BF70(0, *(v138 + 2) + 1, 1, v138);
          }

          v92 = *(v138 + 2);
          v91 = *(v138 + 3);
          if (v92 >= v91 >> 1)
          {
            v138 = sub_1D698BF70((v91 > 1), v92 + 1, 1, v138);
          }

          v76 = v80 + 1;
          v93 = v138;
          *(v138 + 2) = v92 + 1;
          v94 = &v93[24 * v92];
          v95 = v131;
          *(v94 + 4) = v86;
          *(v94 + 5) = v95;
          *(v94 + 6) = v132;
          v96 = v133 == v80;
          v78 = v147;
          v17 = v145;
          v67 = v135;
          v77 = v134;
          if (v96)
          {
            goto LABEL_76;
          }
        }
      }

      v138 = MEMORY[0x1E69E7CC0];
LABEL_76:
      v97 = sub_1D7030C9C(v138);

      v98 = sub_1D7025098(v137, v143, v69);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_1D6996914(0, *(v146 + 2) + 1, 1, v146);
      }

      v65 = v136;
      v100 = *(v146 + 2);
      v99 = *(v146 + 3);
      if (v100 >= v99 >> 1)
      {
        v146 = sub_1D6996914((v99 > 1), v100 + 1, 1, v146);
      }

      v101 = v146;
      *(v146 + 2) = v100 + 1;
      v102 = &v101[24 * v100];
      *(v102 + 4) = v137;
      *(v102 + 5) = v97;
      *(v102 + 6) = v98;
      if (v66 == v65)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_54;
  }

  v146 = MEMORY[0x1E69E7CC0];
LABEL_83:
  if (qword_1EDF12600 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    sub_1D725C33C();
    tf_os_signpost_clustering_end();
    v103 = sub_1D72594CC();
    v104 = v103;
    v105 = *(v103 + 16);
    if (!v105)
    {
      break;
    }

    v106 = 0;
    v107 = (v103 + 40);
    v108 = (v105 - 1);
    v109 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v110 = &v107[16 * v106];
    v111 = v106;
    v112 = v147;
    while (v111 < *(v104 + 16))
    {
      if (*(v112 + 16))
      {
        v113 = *(v110 - 1);
        v114 = *v110;

        v115 = sub_1D5B69D90(v113, v114);
        if (v116)
        {
          v138 = v107;
          v145 = v108;
          v117 = (*(v147 + 56) + 24 * v115);
          v118 = *v117;
          v119 = v117[1];
          v120 = v117[2];
          v121 = v120;
          swift_unknownObjectRetain();
          v122 = v119;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1D698BF70(0, *(v109 + 2) + 1, 1, v109);
          }

          v124 = *(v109 + 2);
          v123 = *(v109 + 3);
          if (v124 >= v123 >> 1)
          {
            v109 = sub_1D698BF70((v123 > 1), v124 + 1, 1, v109);
          }

          v106 = (v111 + 1);
          *(v109 + 2) = v124 + 1;
          v125 = &v109[24 * v124];
          *(v125 + 4) = v118;
          *(v125 + 5) = v122;
          *(v125 + 6) = v120;
          v108 = v145;
          v107 = v138;
          if (v145 != v111)
          {
            goto LABEL_86;
          }

          goto LABEL_99;
        }

        v112 = v147;
      }

      v111 = (v111 + 1);
      v110 += 2;
      if (v105 == v111)
      {
        goto LABEL_99;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  v109 = MEMORY[0x1E69E7CC0];
LABEL_99:

  v150[0] = v146;
  v150[1] = v109;
  sub_1D70245A0(v144, v150, v143, v148);

  v126 = v140;
  sub_1D7258FAC();
  v127 = sub_1D7258F7C();
  v128 = *(v141 + 8);
  v147 = *v148;
  v128(v126, v142);
  v129 = sub_1D7030068(v127);

  *v148 = v151;
  *&v148[8] = v147;
  v149 = v129;
  a10(v148);
}

id sub_1D702D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);

  result = [v9 translationManager];
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D5B7E910;
    *(v12 + 24) = v8;
    v14[4] = sub_1D62E7ED0;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D5BE62C8;
    v14[3] = &block_descriptor_127;
    v13 = _Block_copy(v14);

    [v11 fetchTranslationProvider_];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D702DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);

  v12 = [v11 subscriptionController];
  if (v12)
  {
    v13 = v12;
    sub_1D725AC4C();
    v14 = sub_1D725ABFC();
    v15 = swift_allocObject();
    v15[2] = sub_1D6F05050;
    v15[3] = v10;
    v15[4] = a3;
    v15[5] = a4;
    v17[4] = sub_1D7031DF0;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1D6DC0B78;
    v17[3] = &block_descriptor_38_0;
    v16 = _Block_copy(v17);

    [v13 fetchAllTagsWithCallbackQueue:v14 maximumCachedAge:25 qualityOfService:v16 completion:86400.0];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D702DBE0(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v11 = a1;
    a3();
    v6 = v11;
  }

  else
  {
    if (a2)
    {
      v8 = a2;
      v9 = a2;
      v10 = v8;
    }

    else
    {
      sub_1D7031DFC();
      v10 = swift_allocError();
      v8 = v10;
    }

    a5(v10);
    v6 = v8;
  }
}

uint64_t sub_1D702DCB0(void *a1, uint64_t a2)
{
  v3 = a1[17];
  v4 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v3);
  v5 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
  v6 = (*(v4 + 24))(a2, v5, v3, v4);

  return v6;
}

uint64_t FeedClusteringService.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  return v0;
}

uint64_t FeedClusteringService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_1D702DE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D702DF60()
{
  if (!qword_1EDF053D0)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1D7031BC8(255, &qword_1EDF053D8, MEMORY[0x1E69E31B8], MEMORY[0x1E69E62F8]);
    sub_1D7031BC8(255, &unk_1EDF053E0, MEMORY[0x1E69E3180], v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF053D0);
    }
  }
}

uint64_t sub_1D702E02C(uint64_t *a1)
{
  v3 = *(sub_1D725944C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for FeedClusteringRequest(0) - 8);
  v8 = (v6 + *(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1D725C34C() - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D702BE58(a1, *(v1 + 16), v1 + v4, *(v1 + v5), (v1 + v6), (v1 + v8), *(v1 + v9), *(v1 + v10), v1 + v12, *v13, *(v13 + 8));
}

void sub_1D702E1EC(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1D6EC4E1C(0x20000000000001uLL);
  }
}

char *sub_1D702E274(uint64_t **a1)
{
  v3 = *(sub_1D725944C() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D725C34C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D72594FC();
  return sub_1D702CDAC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, v1 + v7, *(v1 + v8));
}

void sub_1D702E410(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D702E960(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D702E508(0, v2, 1, a1);
  }
}

void sub_1D702E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v65, v8);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v59 = &v54 - v19;
  v55 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v63 = (v18 + 8);
    v64 = (v18 + 32);
    v67 = v20;
    v21 = v20 + 24 * a3;
    v22 = a1 - a3;
LABEL_5:
    v57 = v21;
    v58 = a3;
    v23 = v67 + 24 * a3;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v56 = v22;
    while (1)
    {
      v27 = *(v21 - 24);
      v28 = *(v21 - 16);
      v68 = *(v21 - 8);
      swift_unknownObjectRetain();
      v29 = v24;
      v30 = v26;
      swift_unknownObjectRetain();
      v31 = v28;
      [v29 sortingScore];
      v33 = v32;
      if ([v25 respondsToSelector_])
      {
        if ([v25 isFeatureCandidate])
        {
          v34 = [v25 publishDate];
          if (v34)
          {
            v66 = v30;
            v35 = v60;
            v36 = v34;
            sub_1D72588BC();

            v37 = v59;
            v38 = v35;
            v39 = v65;
            (*v64)(v59, v38, v65);
            sub_1D725887C();
            v41 = v40;
            v42 = v39;
            v30 = v66;
            (*v63)(v37, v42);
            if (v41 < 86400.0)
            {
              v33 = v33 + 100.0;
            }
          }
        }
      }

      [v31 sortingScore];
      v44 = v43;
      if (([v27 respondsToSelector_] & 1) != 0 && (objc_msgSend(v27, sel_isFeatureCandidate) & 1) != 0 && (v45 = objc_msgSend(v27, sel_publishDate)) != 0)
      {
        v66 = v30;
        v46 = v62;
        v47 = v45;
        sub_1D72588BC();

        v48 = v61;
        v49 = v46;
        v50 = v65;
        (*v64)(v61, v49, v65);
        sub_1D725887C();
        v52 = v51;
        (*v63)(v48, v50);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v52 < 86400.0)
        {
          v44 = v44 + 100.0;
        }

        if (v44 >= v33)
        {
LABEL_4:
          a3 = v58 + 1;
          v21 = v57 + 24;
          v22 = v56 - 1;
          if (v58 + 1 == v55)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v44 >= v33)
        {
          goto LABEL_4;
        }
      }

      if (!v67)
      {
        break;
      }

      v25 = *v21;
      v24 = *(v21 + 8);
      v26 = *(v21 + 16);
      *v21 = *(v21 - 24);
      *(v21 + 16) = *(v21 - 8);
      *(v21 - 16) = v24;
      *(v21 - 8) = v26;
      *(v21 - 24) = v25;
      v21 -= 24;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D702E960(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v175 = a1;
  v192 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v192, v8);
  v187 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v186 = &v171 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v185 = &v171 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v184 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v179 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v178 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v177 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v176 = &v171 - v31;
  v188 = a3;
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = MEMORY[0x1E69E7CC0];
LABEL_112:
    a3 = *v175;
    if (!*v175)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_144:
      v34 = sub_1D62FF50C(v34);
    }

    v199 = v34;
    v167 = *(v34 + 2);
    if (v167 >= 2)
    {
      while (*v188)
      {
        v168 = *&v34[16 * v167];
        v169 = *&v34[16 * v167 + 24];
        sub_1D702F6E8(&(*v188)[24 * v168], &(*v188)[24 * *&v34[16 * v167 + 16]], &(*v188)[24 * v169], a3);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v169 < v168)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1D62FF50C(v34);
        }

        if (v167 - 2 >= *(v34 + 2))
        {
          goto LABEL_138;
        }

        v170 = &v34[16 * v167];
        *v170 = v168;
        *(v170 + 1) = v169;
        v199 = v34;
        sub_1D62FF480(v167 - 1);
        v34 = v199;
        v167 = *(v199 + 2);
        if (v167 <= 1)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_148;
    }

LABEL_122:

    return;
  }

  v33 = 0;
  v190 = (v30 + 8);
  v191 = (v30 + 32);
  v34 = MEMORY[0x1E69E7CC0];
  v172 = a4;
  while (1)
  {
    v35 = v33 + 1;
    v183 = v34;
    if (v33 + 1 < v32)
    {
      v174 = v5;
      v36 = *v188;
      v37 = &(*v188)[24 * v35];
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      v193 = 24 * v33;
      v41 = &v36[24 * v33];
      a3 = *v41;
      v42 = v41[1];
      v43 = v41[2];
      v196 = v38;
      v197 = v39;
      v198 = v40;
      v195 = v43;
      swift_unknownObjectRetain();
      v44 = v39;
      v189 = v32;
      v45 = v44;
      v46 = v40;
      swift_unknownObjectRetain();
      v47 = v42;
      v48 = sub_1D702ADF4(&v196);
      v196 = a3;
      v197 = v47;
      v198 = v43;
      v49 = sub_1D702ADF4(&v196);

      v35 = v189;
      swift_unknownObjectRelease();

      v34 = v183;
      swift_unknownObjectRelease();
      v173 = v33;
      v50 = v33 + 2;
      v51 = (v41 + 8);
      while (v35 != v50)
      {
        v52 = *(v51 - 1);
        v53 = *v51;
        v54 = *(v51 - 5);
        v55 = *(v51 - 4);
        v56 = *(v51 - 2);
        v195 = *(v51 - 3);
        swift_unknownObjectRetain();
        v57 = v52;
        a3 = v53;
        swift_unknownObjectRetain();
        v58 = v55;
        v59 = &selRef_superfeedConfigResourceID;
        [v57 sortingScore];
        v61 = v60;
        if (([v56 respondsToSelector_] & 1) != 0 && objc_msgSend(v56, sel_isFeatureCandidate))
        {
          v62 = [v56 publishDate];
          v34 = v183;
          if (v62)
          {
            v194 = a3;
            v63 = v177;
            v64 = v62;
            sub_1D72588BC();

            v65 = v176;
            v66 = v63;
            v67 = v192;
            (*v191)(v176, v66, v192);
            sub_1D725887C();
            v69 = v68;
            v70 = v65;
            v59 = &selRef_superfeedConfigResourceID;
            v71 = v67;
            a3 = v194;
            (*v190)(v70, v71);
            if (v69 < 86400.0)
            {
              v61 = v61 + 100.0;
            }
          }
        }

        else
        {
          v34 = v183;
        }

        [v58 sortingScore];
        v73 = v72;
        if (([v54 respondsToSelector_] & 1) != 0 && (objc_msgSend(v54, v59[339]) & 1) != 0 && (v74 = objc_msgSend(v54, sel_publishDate)) != 0)
        {
          v194 = a3;
          v75 = v179;
          v76 = v74;
          sub_1D72588BC();

          v77 = v178;
          v78 = v75;
          a3 = v192;
          (*v191)(v178, v78, v192);
          sub_1D725887C();
          v80 = v79;
          (*v190)(v77, a3);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v80 < 86400.0)
          {
            v73 = v73 + 100.0;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        ++v50;
        v51 += 3;
        v35 = v189;
        if (v49 < v48 == v73 >= v61)
        {
          v35 = v50 - 1;
          break;
        }
      }

      v5 = v174;
      a4 = v172;
      v33 = v173;
      v81 = v193;
      if (v49 < v48)
      {
        if (v35 < v173)
        {
          goto LABEL_141;
        }

        if (v173 < v35)
        {
          v82 = 0;
          v83 = 24 * v35;
          v84 = v173;
          do
          {
            if (v84 != v35 + v82 - 1)
            {
              v90 = *v188;
              if (!*v188)
              {
                goto LABEL_147;
              }

              v85 = &v90[v81];
              v86 = &v90[v83];
              v87 = *(v85 + 2);
              v88 = *v85;
              v89 = *(v86 - 1);
              *v85 = *(v86 - 24);
              *(v85 + 2) = v89;
              *(v86 - 24) = v88;
              *(v86 - 1) = v87;
            }

            ++v84;
            --v82;
            v83 -= 24;
            v81 += 24;
          }

          while (v84 < v35 + v82);
        }
      }
    }

    v91 = v188[1];
    if (v35 < v91)
    {
      if (__OFSUB__(v35, v33))
      {
        goto LABEL_140;
      }

      if (v35 - v33 < a4)
      {
        if (__OFADD__(v33, a4))
        {
          goto LABEL_142;
        }

        if (v33 + a4 < v91)
        {
          v91 = v33 + a4;
        }

        if (v91 < v33)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v180 = v91;
        if (v35 != v91)
        {
          break;
        }
      }
    }

LABEL_61:
    if (v35 < v33)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1D698BA94(0, *(v34 + 2) + 1, 1, v34);
    }

    a3 = *(v34 + 2);
    v122 = *(v34 + 3);
    v123 = a3 + 1;
    if (a3 >= v122 >> 1)
    {
      v34 = sub_1D698BA94((v122 > 1), a3 + 1, 1, v34);
    }

    *(v34 + 2) = v123;
    v124 = &v34[16 * a3];
    *(v124 + 4) = v33;
    *(v124 + 5) = v35;
    v125 = *v175;
    if (!*v175)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (1)
      {
        v126 = v123 - 1;
        if (v123 >= 4)
        {
          break;
        }

        if (v123 == 3)
        {
          v127 = *(v34 + 4);
          v128 = *(v34 + 5);
          v137 = __OFSUB__(v128, v127);
          v129 = v128 - v127;
          v130 = v137;
LABEL_81:
          if (v130)
          {
            goto LABEL_128;
          }

          v143 = &v34[16 * v123];
          v145 = *v143;
          v144 = *(v143 + 1);
          v146 = __OFSUB__(v144, v145);
          v147 = v144 - v145;
          v148 = v146;
          if (v146)
          {
            goto LABEL_131;
          }

          v149 = &v34[16 * v126 + 32];
          v151 = *v149;
          v150 = *(v149 + 1);
          v137 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v137)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v147, v152))
          {
            goto LABEL_135;
          }

          if (v147 + v152 >= v129)
          {
            if (v129 < v152)
            {
              v126 = v123 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v153 = &v34[16 * v123];
        v155 = *v153;
        v154 = *(v153 + 1);
        v137 = __OFSUB__(v154, v155);
        v147 = v154 - v155;
        v148 = v137;
LABEL_95:
        if (v148)
        {
          goto LABEL_130;
        }

        v156 = &v34[16 * v126];
        v158 = *(v156 + 4);
        v157 = *(v156 + 5);
        v137 = __OFSUB__(v157, v158);
        v159 = v157 - v158;
        if (v137)
        {
          goto LABEL_133;
        }

        if (v159 < v147)
        {
          goto LABEL_3;
        }

LABEL_102:
        a3 = v126 - 1;
        if (v126 - 1 >= v123)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v188)
        {
          goto LABEL_146;
        }

        v164 = *&v34[16 * a3 + 32];
        v165 = *&v34[16 * v126 + 40];
        sub_1D702F6E8(&(*v188)[24 * v164], &(*v188)[24 * *&v34[16 * v126 + 32]], &(*v188)[24 * v165], v125);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v165 < v164)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1D62FF50C(v34);
        }

        if (a3 >= *(v34 + 2))
        {
          goto LABEL_125;
        }

        v166 = &v34[16 * a3];
        *(v166 + 4) = v164;
        *(v166 + 5) = v165;
        v199 = v34;
        sub_1D62FF480(v126);
        v34 = v199;
        v123 = *(v199 + 2);
        if (v123 <= 1)
        {
          goto LABEL_3;
        }
      }

      v131 = &v34[16 * v123 + 32];
      v132 = *(v131 - 64);
      v133 = *(v131 - 56);
      v137 = __OFSUB__(v133, v132);
      v134 = v133 - v132;
      if (v137)
      {
        goto LABEL_126;
      }

      v136 = *(v131 - 48);
      v135 = *(v131 - 40);
      v137 = __OFSUB__(v135, v136);
      v129 = v135 - v136;
      v130 = v137;
      if (v137)
      {
        goto LABEL_127;
      }

      v138 = &v34[16 * v123];
      v140 = *v138;
      v139 = *(v138 + 1);
      v137 = __OFSUB__(v139, v140);
      v141 = v139 - v140;
      if (v137)
      {
        goto LABEL_129;
      }

      v137 = __OFADD__(v129, v141);
      v142 = v129 + v141;
      if (v137)
      {
        goto LABEL_132;
      }

      if (v142 >= v134)
      {
        v160 = &v34[16 * v126 + 32];
        v162 = *v160;
        v161 = *(v160 + 1);
        v137 = __OFSUB__(v161, v162);
        v163 = v161 - v162;
        if (v137)
        {
          goto LABEL_136;
        }

        if (v129 < v163)
        {
          v126 = v123 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v32 = v188[1];
    v33 = v35;
    if (v35 >= v32)
    {
      goto LABEL_112;
    }
  }

  v174 = v5;
  v194 = *v188;
  v92 = &v194[24 * v35];
  v173 = v33;
  v93 = v33 - v35;
LABEL_42:
  v189 = v35;
  v94 = &v194[24 * v35];
  v95 = *v94;
  v96 = *(v94 + 1);
  a3 = *(v94 + 2);
  v181 = v93;
  v182 = v92;
  while (1)
  {
    v97 = *(v92 - 3);
    v98 = *(v92 - 2);
    v195 = *(v92 - 1);
    swift_unknownObjectRetain();
    v99 = v96;
    a3 = a3;
    swift_unknownObjectRetain();
    v100 = v98;
    [v99 sortingScore];
    v102 = v101;
    if ([v95 respondsToSelector_])
    {
      if ([v95 isFeatureCandidate])
      {
        v103 = [v95 publishDate];
        if (v103)
        {
          v193 = a3;
          v104 = v185;
          v105 = v103;
          sub_1D72588BC();

          v106 = v184;
          v107 = v104;
          v108 = v192;
          (*v191)(v184, v107, v192);
          sub_1D725887C();
          v110 = v109;
          v111 = v108;
          a3 = v193;
          (*v190)(v106, v111);
          if (v110 < 86400.0)
          {
            v102 = v102 + 100.0;
          }
        }
      }
    }

    [v100 sortingScore];
    v113 = v112;
    if (([v97 respondsToSelector_] & 1) != 0 && (objc_msgSend(v97, sel_isFeatureCandidate) & 1) != 0 && (v114 = objc_msgSend(v97, sel_publishDate)) != 0)
    {
      v193 = a3;
      v115 = v187;
      v116 = v114;
      sub_1D72588BC();

      v117 = v186;
      v118 = v115;
      a3 = v192;
      (*v191)(v186, v118, v192);
      sub_1D725887C();
      v120 = v119;
      (*v190)(v117, a3);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v120 < 86400.0)
      {
        v113 = v113 + 100.0;
      }

      if (v113 >= v102)
      {
LABEL_41:
        v35 = v189 + 1;
        v92 = v182 + 24;
        v93 = v181 - 1;
        if (v189 + 1 != v180)
        {
          goto LABEL_42;
        }

        v5 = v174;
        v34 = v183;
        a4 = v172;
        v33 = v173;
        v35 = v180;
        goto LABEL_61;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v113 >= v102)
      {
        goto LABEL_41;
      }
    }

    if (!v194)
    {
      break;
    }

    v95 = *v92;
    v96 = *(v92 + 1);
    a3 = *(v92 + 2);
    *v92 = *(v92 - 24);
    *(v92 + 2) = *(v92 - 1);
    *(v92 - 2) = v96;
    *(v92 - 1) = a3;
    *(v92 - 3) = v95;
    v92 -= 24;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_1D702F6E8(_BYTE *a1, uint64_t a2, unint64_t a3, char *a4)
{
  v122 = sub_1D725891C();
  v7 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v8);
  v120 = (&v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v119 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v118 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v117 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v116 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v115 = &v112 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v114 = &v112 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v113 = &v112 - v31;
  v32 = v30 - a1;
  v33 = (v30 - a1) / 24;
  v34 = a3 - v30;
  v35 = (a3 - v30) / 24;
  if (v33 < v35)
  {
    if (a4 != a1 || &a1[24 * v33] <= a4)
    {
      v36 = v30;
      memmove(a4, a1, 24 * v33);
      v30 = v36;
    }

    v128 = &a4[24 * v33];
    if (v32 < 24)
    {
      v30 = a1;
    }

    else
    {
      v37 = a1;
      if (v30 < a3)
      {
        v120 = (v7 + 8);
        v121 = (v7 + 32);
        v38 = a4;
        while (1)
        {
          v39 = a3;
          v40 = v37;
          v42 = *v30;
          v41 = *(v30 + 1);
          v126 = v38;
          v127 = v30;
          v43 = *(v30 + 2);
          v45 = *v38;
          v44 = *(v38 + 1);
          v124 = *(v38 + 2);
          swift_unknownObjectRetain();
          v46 = v41;
          v47 = v43;
          v48 = &selRef_superfeedConfigResourceID;
          v123 = v47;
          swift_unknownObjectRetain();
          v125 = v44;
          [v46 sortingScore];
          v50 = v49;
          if (([v42 respondsToSelector_] & 1) != 0 && objc_msgSend(v42, sel_isFeatureCandidate))
          {
            v51 = [v42 publishDate];
            v52 = v40;
            v38 = v126;
            if (v51)
            {
              v53 = v114;
              v54 = v51;
              sub_1D72588BC();

              v55 = v122;
              v56 = v113;
              v57 = v53;
              v48 = &selRef_superfeedConfigResourceID;
              (*v121)(v113, v57, v122);
              sub_1D725887C();
              v38 = v126;
              v59 = v58;
              (*v120)(v56, v55);
              if (v59 < 86400.0)
              {
                v50 = v50 + 100.0;
              }
            }
          }

          else
          {
            v52 = v40;
            v38 = v126;
          }

          v60 = v125;
          [v125 sortingScore];
          v62 = v61;
          a3 = v39;
          if (([v45 respondsToSelector_] & 1) == 0)
          {
            break;
          }

          if (([v45 v48[339]] & 1) == 0 || (v63 = objc_msgSend(v45, sel_publishDate)) == 0)
          {

            swift_unknownObjectRelease();
            goto LABEL_23;
          }

          v64 = v116;
          v65 = v63;
          sub_1D72588BC();

          v66 = v115;
          v67 = v64;
          v68 = v122;
          (*v121)(v115, v67, v122);
          sub_1D725887C();
          v38 = v126;
          v70 = v69;
          (*v120)(v66, v68);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v70 < 86400.0)
          {
            v62 = v62 + 100.0;
          }

LABEL_24:
          v30 = v127;
          if (v62 >= v50)
          {
            v71 = v38;
            v72 = v52 == v38;
            v38 += 24;
            if (v72)
            {
              goto LABEL_29;
            }

LABEL_28:
            v73 = *v71;
            *(v52 + 2) = *(v71 + 2);
            *v52 = v73;
            goto LABEL_29;
          }

          v71 = v127;
          v30 = v127 + 24;
          if (v52 != v127)
          {
            goto LABEL_28;
          }

LABEL_29:
          v37 = v52 + 24;
          if (v38 >= v128 || v30 >= a3)
          {
            v30 = v37;
            goto LABEL_66;
          }
        }

        swift_unknownObjectRelease();
LABEL_23:
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      v30 = a1;
    }

    v38 = a4;
    goto LABEL_66;
  }

  v116 = a1;
  v38 = a4;
  if (a4 != v30 || &v30[24 * v35] <= a4)
  {
    v74 = a4;
    v75 = v30;
    memmove(v74, v30, 24 * v35);
    v30 = v75;
  }

  v128 = &v38[24 * v35];
  if (v34 >= 24 && v30 > v116)
  {
    v123 = (v7 + 32);
    v121 = (v7 + 8);
    v126 = v38;
    do
    {
      v115 = v30 - 24;
      v76 = a3 - 24;
      v77 = v128;
      v127 = v30;
      while (1)
      {
        v78 = v76;
        v80 = *(v77 - 24);
        v79 = *(v77 - 16);
        v77 -= 24;
        v81 = *(v77 + 16);
        v82 = *(v30 - 3);
        v83 = *(v30 - 2);
        v125 = *(v30 - 1);
        swift_unknownObjectRetain();
        v84 = v79;
        v124 = v81;
        swift_unknownObjectRetain();
        v85 = v83;
        [v84 sortingScore];
        v87 = v86;
        if (([v80 respondsToSelector_] & 1) != 0 && objc_msgSend(v80, sel_isFeatureCandidate))
        {
          v88 = [v80 publishDate];
          a3 = v78;
          if (v88)
          {
            v89 = v118;
            v90 = v88;
            sub_1D72588BC();

            v91 = v117;
            v92 = v89;
            v93 = v122;
            (*v123)(v117, v92, v122);
            sub_1D725887C();
            v38 = v126;
            v95 = v94;
            (*v121)(v91, v93);
            if (v95 < 86400.0)
            {
              v87 = v87 + 100.0;
            }
          }
        }

        else
        {
          a3 = v78;
        }

        [v85 sortingScore];
        v97 = v96;
        if (([v82 respondsToSelector_] & 1) != 0 && (objc_msgSend(v82, sel_isFeatureCandidate) & 1) != 0 && (v98 = objc_msgSend(v82, sel_publishDate)) != 0)
        {
          v99 = v120;
          v100 = v98;
          sub_1D72588BC();

          v101 = v119;
          v102 = v99;
          v103 = v122;
          (*v123)(v119, v102, v122);
          sub_1D725887C();
          v38 = v126;
          v105 = v104;
          (*v121)(v101, v103);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v105 < 86400.0)
          {
            v97 = v97 + 100.0;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v30 = v127;
        v106 = (a3 + 24);
        if (v97 < v87)
        {
          break;
        }

        if (v106 != v128)
        {
          v107 = *v77;
          *(a3 + 16) = *(v77 + 16);
          *a3 = v107;
        }

        v76 = a3 - 24;
        v128 = v77;
        if (v77 <= v38)
        {
          v128 = v77;
          goto LABEL_66;
        }
      }

      v108 = v115;
      if (v106 != v127)
      {
        v109 = *v115;
        *(a3 + 16) = *(v115 + 2);
        *a3 = v109;
      }

      if (v128 <= v38)
      {
        break;
      }

      v30 = v108;
    }

    while (v108 > v116);
    v30 = v108;
  }

LABEL_66:
  v110 = (v128 - v38) / 24;
  if (v30 != v38 || v30 >= &v38[24 * v110])
  {
    memmove(v30, v38, 24 * v110);
  }

  return 1;
}

uint64_t sub_1D7030068(uint64_t a1)
{
  sub_1D7030FC8();
  result = sub_1D72640FC();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      v16 = (v3[6] + 16 * v13);
      v17 = *(*(a1 + 56) + 16 * v13);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *v16 = v15;
      v16[1] = result;
      *(v3[7] + 16 * v13) = v17;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D70301AC(uint64_t a1, void *a2, void *a3)
{
  v21 = *(a1 + 16);
  if (v21)
  {
    v3 = 0;
    for (i = (a1 + 40); ; i += 3)
    {
      v8 = *i;
      v9 = [*(i - 1) itemID];
      v10 = sub_1D726207C();
      v12 = v11;

      v13 = [a2 itemID];
      v14 = sub_1D726207C();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {
        break;
      }

      v18 = sub_1D72646CC();

      if (v18)
      {
        goto LABEL_4;
      }

LABEL_5:
      if (v21 == ++v3)
      {
        return 0;
      }
    }

LABEL_4:
    sub_1D5B5A498(0, &qword_1EDF1A650);
    v5 = v8;
    v6 = a3;
    v7 = sub_1D726370C();

    if (v7)
    {
      return v3;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1D7030334(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D605EA68(MEMORY[0x1E69E7CC0]);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return v6;
  }

  v8 = 0;
  v80 = a1 + 32;
  v76 = *(a1 + 16);
  v77 = a2;
  while (1)
  {
    v10 = v80 + 24 * v8;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    swift_unknownObjectRetain();
    v14 = v11;
    v15 = [v12 topics];
    v82 = v14;
    if (v15)
    {
      v16 = v15;
      sub_1D5B5A498(0, &unk_1EDF04550);
      v17 = sub_1D726267C();

      if (!a2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_34;
      }
    }

    v18 = [v12 respondsToSelector_];
    swift_unknownObjectRetain();
    if (v18)
    {
      v19 = [v12 language];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D726207C();
        v23 = v22;

        if (v21 == a3 && v23 == a4)
        {
          swift_unknownObjectRelease();

LABEL_34:
          v39 = v7;
          v40 = v13;
          v41 = [v12 itemID];
          v42 = sub_1D726207C();
          v44 = v43;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = sub_1D5B69D90(v42, v44);
          v48 = v6[2];
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            goto LABEL_59;
          }

          v52 = v47;
          if (v6[3] >= v51)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_39;
            }

            v66 = v8;
            v67 = v46;
            sub_1D6D87088();
            v46 = v67;
            v8 = v66;
            if (v52)
            {
              goto LABEL_3;
            }

LABEL_40:
            v6[(v46 >> 6) + 8] |= 1 << v46;
            v54 = (v6[6] + 16 * v46);
            *v54 = v42;
            v54[1] = v44;
            *(v6[7] + 8 * v46) = v17;

            swift_unknownObjectRelease();
            v55 = v6[2];
            v50 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v50)
            {
              goto LABEL_62;
            }

            v6[2] = v56;
          }

          else
          {
            sub_1D6D75F9C(v51, isUniquelyReferenced_nonNull_native);
            v46 = sub_1D5B69D90(v42, v44);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_65;
            }

LABEL_39:
            if ((v52 & 1) == 0)
            {
              goto LABEL_40;
            }

LABEL_3:
            v9 = v46;

            *(v6[7] + 8 * v9) = v17;

            swift_unknownObjectRelease();
          }

          v7 = v39;
          a2 = v77;
          goto LABEL_5;
        }

        v25 = sub_1D72646CC();

        if (v25)
        {
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }
    }

    v79 = v13;
    v26 = [v12 itemID];
    v81 = sub_1D726207C();
    v28 = v27;

    if (v17 >> 62)
    {
      break;
    }

    v29 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_20;
    }

LABEL_43:

    v38 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = sub_1D5B69D90(v81, v28);
    v60 = v6[2];
    v61 = (v59 & 1) == 0;
    v50 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v50)
    {
      goto LABEL_60;
    }

    v63 = v59;
    if (v6[3] >= v62)
    {
      if ((v57 & 1) == 0)
      {
        v68 = v28;
        v69 = v58;
        sub_1D6D87088();
        v58 = v69;
        v28 = v68;
        if (v63)
        {
LABEL_50:
          v65 = v58;

          *(v6[7] + 8 * v65) = v38;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_5;
        }

        goto LABEL_54;
      }
    }

    else
    {
      sub_1D6D75F9C(v62, v57);
      v58 = sub_1D5B69D90(v81, v28);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_65;
      }
    }

    if (v63)
    {
      goto LABEL_50;
    }

LABEL_54:
    v6[(v58 >> 6) + 8] |= 1 << v58;
    v70 = (v6[6] + 16 * v58);
    *v70 = v81;
    v70[1] = v28;
    *(v6[7] + 8 * v58) = v38;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v71 = v6[2];
    v50 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v50)
    {
      goto LABEL_63;
    }

    v6[2] = v72;
LABEL_5:
    if (++v8 == v7)
    {
      return v6;
    }
  }

  v29 = sub_1D7263BFC();
  if (!v29)
  {
    goto LABEL_43;
  }

LABEL_20:
  v83 = MEMORY[0x1E69E7CC0];
  sub_1D7263ECC();
  if (v29 < 0)
  {
    goto LABEL_61;
  }

  v78 = v8;
  v30 = 0;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1DA6FB460](v30, v17);
    }

    else
    {
      if (v30 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v32 = *(v17 + 8 * v30 + 32);
    }

    v33 = v32;
    v34 = [v32 tagID];
    if (!v34)
    {
      goto LABEL_64;
    }

    v35 = v34;
    v36 = [a2 topicTranslationForTagID_];

    if (v36)
    {
      v37 = [v36 articleTopic];

      if (v37)
      {
      }
    }

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    ++v30;
    if (v31 == v29)
    {

      v38 = v83;
      v7 = v76;
      v8 = v78;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
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
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D7030994(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = sub_1D70301AC(*a1, a2, a3);
  v7 = v5;
  if (!v3 && (v6 & 1) == 0)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 != v9)
    {
      v11 = 24 * v5;
      do
      {
        if (v8 >= v9)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v50 = v4;
        v12 = v4 + v11;
        v47 = *(v12 + 64);
        v49 = v7;
        v13 = [*(v12 + 56) itemID];
        v14 = sub_1D726207C();
        v16 = v15;

        v17 = [a2 itemID];
        v18 = sub_1D726207C();
        v20 = v19;

        if (v14 == v18 && v16 == v20)
        {
        }

        else
        {
          v22 = sub_1D72646CC();

          if ((v22 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        sub_1D5B5A498(0, &qword_1EDF1A650);
        v23 = v47;
        v24 = a3;
        v25 = sub_1D726370C();

        if (v25)
        {
          v7 = v49;
          v4 = v50;
          goto LABEL_8;
        }

LABEL_18:
        v26 = v49;
        if (v8 == v49)
        {
          v4 = v50;
        }

        else
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          if (v49 >= *v10)
          {
            goto LABEL_31;
          }

          if (v8 >= *v10)
          {
            goto LABEL_32;
          }

          v27 = &v50[24 * v49 + 32];
          v29 = *v27;
          v28 = *(v27 + 1);
          v30 = *(v27 + 2);
          v31 = *(v12 + 56);
          v32 = *(v12 + 64);
          v48 = *&v50[v11 + 72];
          v33 = v48;
          v43 = v29;
          swift_unknownObjectRetain();
          v34 = v28;
          v35 = v30;
          swift_unknownObjectRetain();
          v36 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1D5EC3C7C(v50);
          }

          v4 = v50;
          if (v49 >= *(v50 + 2))
          {
            goto LABEL_33;
          }

          v37 = &v50[24 * v49];
          v38 = *(v37 + 5);
          v39 = *(v37 + 6);
          *(v37 + 4) = v31;
          *(v37 + 5) = v36;
          *(v37 + 6) = v48;

          swift_unknownObjectRelease();
          if (v8 >= *(v50 + 2))
          {
            goto LABEL_34;
          }

          v40 = &v50[v11];
          v41 = *&v50[v11 + 64];
          v42 = *&v50[v11 + 72];
          *(v40 + 7) = v43;
          *(v40 + 8) = v34;
          *(v40 + 9) = v30;

          swift_unknownObjectRelease();
          *a1 = v50;
          v26 = v49;
        }

        v7 = v26 + 1;
LABEL_8:
        ++v8;
        v10 = (v4 + 16);
        v9 = *(v4 + 16);
        v11 += 24;
      }

      while (v8 != v9);
    }
  }
}

char *sub_1D7030C9C(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    if ([*(a1 + 32) hasThumbnail])
    {
LABEL_30:

      return v4;
    }

    v6 = 0;
    v7 = v4 + 48;
    v8 = MEMORY[0x1E69E7CC0];
    v25 = v4 + 48;
    v26 = v4;
    do
    {
      v9 = &v7[24 * v6];
      v4 = v6;
      while (1)
      {
        if (v4 >= v5)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v2 = *v9;
        v3 = sel_hasThumbnail;
        swift_unknownObjectRetain();
        v1 = v11;
        if ([v10 hasThumbnail])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v4;
        v9 += 3;
        if (v6 == v5)
        {
          v4 = v26;
          goto LABEL_17;
        }
      }

      v27 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6997D30(0, *(v8 + 2) + 1, 1);
        v8 = v27;
      }

      v4 = v26;
      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      v2 = (v14 + 1);
      if (v14 >= v13 >> 1)
      {
        sub_1D6997D30((v13 > 1), v14 + 1, 1);
        v8 = v27;
      }

      *(v8 + 2) = v2;
      v15 = &v8[24 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v1;
      *(v15 + 6) = v12;
      v7 = v25;
    }

    while (v6 != v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  v27 = v8;

  sub_1D701C600(&v27);

  if (!*(v27 + 2))
  {

    goto LABEL_30;
  }

  v1 = *(v27 + 4);
  v16 = *(v27 + 5);
  v2 = *(v27 + 6);
  v17 = v2;
  swift_unknownObjectRetain();
  v18 = v16;

  v27 = v4;

  swift_unknownObjectRetain();
  v3 = v18;
  v5 = v17;
  sub_1D7030994(&v27, v1, v3);
  v20 = v19;

  swift_unknownObjectRelease();
  v4 = v27;
  v21 = *(v27 + 2);
  v7 = (v20 - v21);
  if (v20 > v21)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v20 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!__OFADD__(v21, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v20 > *(v4 + 3) >> 1)
    {
      if (v21 <= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      v4 = sub_1D698BF70(isUniquelyReferenced_nonNull_native, v23, 1, v4);
      v27 = v4;
    }

    sub_1D5EC4524(v20, v21, 0);
    v27 = v4;
    v7 = *(v4 + 2);
    if (v7 < *(v4 + 3) >> 1)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v4 = sub_1D698BF70(1, (v7 + 1), 1, v4);
  v27 = v4;
LABEL_28:
  sub_1D5EC45FC(0, 0, 1, v1, v3, v2);

  swift_unknownObjectRelease();
  return v4;
}

void sub_1D7030FC8()
{
  if (!qword_1EDF040D0)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF040D0);
    }
  }
}

uint64_t sub_1D7031028(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D7031068(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D70310A8()
{
  if (!qword_1EDF18900)
  {
    sub_1D725904C();
    sub_1D725905C();
    sub_1D725906C();
    sub_1D725903C();
    sub_1D725901C();
    sub_1D725902C();
    sub_1D725907C();
    sub_1D725908C();
    sub_1D7031B18(&unk_1EDF18988, 255, MEMORY[0x1E69E3328]);
    sub_1D7031B18(&qword_1EDF18980, 255, MEMORY[0x1E69E3338]);
    v0 = sub_1D725939C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF18900);
    }
  }
}

void sub_1D7031244()
{
  if (!qword_1EDF188D8)
  {
    sub_1D72592EC();
    sub_1D72592FC();
    sub_1D725930C();
    sub_1D72592DC();
    sub_1D72592AC();
    sub_1D72592BC();
    sub_1D725931C();
    sub_1D72592CC();
    sub_1D7031B18(&qword_1EDF18930, 255, MEMORY[0x1E69E3478]);
    sub_1D7031B18(&qword_1EDF18938, 255, MEMORY[0x1E69E3448]);
    v0 = sub_1D725939C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF188D8);
    }
  }
}

uint64_t sub_1D70313E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7031448()
{
  if (!qword_1EDF188F8)
  {
    sub_1D725913C();
    sub_1D725915C();
    sub_1D725917C();
    sub_1D725911C();
    sub_1D72590CC();
    sub_1D72590EC();
    sub_1D725919C();
    sub_1D72590FC();
    sub_1D7031B18(&qword_1EDF18970, 255, MEMORY[0x1E69E3388]);
    sub_1D7031B18(&qword_1EDF18978, 255, MEMORY[0x1E69E3358]);
    v0 = sub_1D725939C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF188F8);
    }
  }
}

void sub_1D70315E4()
{
  if (!qword_1EDF188F0)
  {
    sub_1D72591EC();
    sub_1D72591FC();
    sub_1D725920C();
    sub_1D72591DC();
    sub_1D72591AC();
    sub_1D72591BC();
    sub_1D725921C();
    sub_1D72591CC();
    sub_1D7031B18(&qword_1EDF18958, 255, MEMORY[0x1E69E33D8]);
    sub_1D7031B18(&unk_1EDF18960, 255, MEMORY[0x1E69E33A8]);
    v0 = sub_1D725939C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF188F0);
    }
  }
}

void sub_1D703179C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5534C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D70318C8(uint64_t a1, uint64_t a2)
{
  sub_1D605FEA0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D703192C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D703197C()
{
  if (!qword_1EDF188E8)
  {
    sub_1D725926C();
    sub_1D725927C();
    sub_1D725928C();
    sub_1D725925C();
    sub_1D725922C();
    sub_1D725923C();
    sub_1D725929C();
    sub_1D725924C();
    sub_1D7031B18(&qword_1EDF18940, 255, MEMORY[0x1E69E3428]);
    sub_1D7031B18(&unk_1EDF18948, 255, MEMORY[0x1E69E33F8]);
    v0 = sub_1D725939C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF188E8);
    }
  }
}

uint64_t sub_1D7031B18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D7031BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7031C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7031C8C()
{
  if (!qword_1EDF04110)
  {
    sub_1D7031448();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04110);
    }
  }
}

void sub_1D7031CFC()
{
  if (!qword_1EDF17920)
  {
    sub_1D5B5A498(255, &qword_1EDF04568);
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17920);
    }
  }
}

void sub_1D7031D6C()
{
  if (!qword_1EDF17900)
  {
    sub_1D703179C(255, &qword_1EDF044A0, &qword_1EDF044A8, &protocolRef_FCTranslationProvider, MEMORY[0x1E69E6720]);
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17900);
    }
  }
}

unint64_t sub_1D7031DFC()
{
  result = qword_1EC899648;
  if (!qword_1EC899648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899648);
  }

  return result;
}

unint64_t sub_1D7031E64()
{
  result = qword_1EC899650;
  if (!qword_1EC899650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899650);
  }

  return result;
}

uint64_t type metadata accessor for SportsEventStatusResponseData()
{
  result = qword_1EDF0A100;
  if (!qword_1EDF0A100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7031F5C()
{
  result = type metadata accessor for SportsEventStatusResponseEmbed();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7031FC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SportsEventStatusResponseEmbed();
  MEMORY[0x1EEE9AC00](v4, v5);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70325A8(0, &qword_1EDF03958, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SportsEventStatusResponseData();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70324EC();
  sub_1D7264B0C();
  if (!v2)
  {
    v16 = v20;
    sub_1D703260C(&qword_1EDF099E8);
    v17 = v21;
    sub_1D726431C();
    (*(v16 + 8))(v11, v8);
    sub_1D7032540(v17, v15, type metadata accessor for SportsEventStatusResponseEmbed);
    sub_1D7032540(v15, v19, type metadata accessor for SportsEventStatusResponseData);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7032264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465626D65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D70322E8(uint64_t a1)
{
  v2 = sub_1D70324EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7032324(uint64_t a1)
{
  v2 = sub_1D70324EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7032378(void *a1)
{
  sub_1D70325A8(0, &qword_1EC899660, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70324EC();
  sub_1D7264B5C();
  type metadata accessor for SportsEventStatusResponseEmbed();
  sub_1D703260C(&qword_1EC899668);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D70324EC()
{
  result = qword_1EDF0A138;
  if (!qword_1EDF0A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A138);
  }

  return result;
}

uint64_t sub_1D7032540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D70325A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70324EC();
    v7 = a3(a1, &type metadata for SportsEventStatusResponseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D703260C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsEventStatusResponseEmbed();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7032664()
{
  result = qword_1EC899670;
  if (!qword_1EC899670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899670);
  }

  return result;
}

unint64_t sub_1D70326BC()
{
  result = qword_1EDF0A128;
  if (!qword_1EDF0A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A128);
  }

  return result;
}

unint64_t sub_1D7032714()
{
  result = qword_1EDF0A130;
  if (!qword_1EDF0A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A130);
  }

  return result;
}

unint64_t FormatMicaNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatMicaNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatMicaNode.runMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 216);
  *a1 = *(v1 + 212);
  *(a1 + 4) = v4;
  return result;
}

uint64_t FormatMicaNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatMicaNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatMicaNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatMicaNode.mediaTiming.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 184);
  v12[6] = *(v1 + 168);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 193);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v12[2] = *(v1 + 104);
  v12[3] = v5;
  v12[4] = *(v1 + 136);
  v12[5] = v2;
  v12[0] = *(v1 + 72);
  v12[1] = v4;
  v6 = *(v1 + 152);
  v7 = *(v1 + 184);
  a1[6] = *(v1 + 168);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 193);
  v8 = *(v1 + 88);
  v9 = *(v1 + 120);
  a1[2] = *(v1 + 104);
  a1[3] = v9;
  a1[4] = *(v1 + 136);
  a1[5] = v6;
  *a1 = *(v1 + 72);
  a1[1] = v8;
  return sub_1D6047E28(v12, &v11);
}

uint64_t FormatMicaNode.runMode.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = swift_beginAccess();
  *(v1 + 212) = v2;
  *(v1 + 216) = v3;
  return result;
}

uint64_t FormatMicaNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 224) = a1;
  return result;
}

unint64_t sub_1D7032C60(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 232);
  sub_1D5EB1500(v2);
  *(v3 + 232) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatMicaNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatMicaNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

void FormatMicaNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *a1 = *(v1 + 248);
  *(a1 + 8) = v2;
}

uint64_t sub_1D7032DFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 264) = v2;
}

uint64_t FormatMicaNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 264) = a1;
}

uint64_t FormatMicaNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[37];
  v6 = v1[38];
  v7 = v1[39];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatMicaNode.__allocating_init(identifier:size:resize:adjustments:style:content:mediaTiming:runMode:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, __int128 *a8, int *a9, uint64_t a10, uint64_t *a11, char a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v20 = swift_allocObject();
  v21 = *a3;
  v22 = *a4;
  v23 = *a7;
  v34 = *a9;
  v24 = *(a9 + 4);
  v36 = *a11;
  v39 = *a13;
  v38 = *(a13 + 8);
  v25 = *(a15 + 32);
  v26 = *(a15 + 40);
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  swift_beginAccess();
  v27 = a8[4];
  *(v20 + 152) = a8[5];
  v28 = a8[7];
  *(v20 + 168) = a8[6];
  *(v20 + 184) = v28;
  *(v20 + 193) = *(a8 + 121);
  v29 = *a8;
  *(v20 + 88) = a8[1];
  v30 = a8[3];
  *(v20 + 104) = a8[2];
  *(v20 + 120) = v30;
  *(v20 + 136) = v27;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = v23;
  *(v20 + 72) = v29;
  swift_beginAccess();
  *(v20 + 212) = v34;
  *(v20 + 216) = v24;
  swift_beginAccess();
  *(v20 + 224) = a10;
  swift_beginAccess();
  *(v20 + 232) = v36;
  swift_beginAccess();
  *(v20 + 240) = a12;
  *(v20 + 248) = v39;
  *(v20 + 256) = v38;
  swift_beginAccess();
  *(v20 + 264) = a14;
  v31 = *(a15 + 16);
  *(v20 + 272) = *a15;
  *(v20 + 288) = v31;
  *(v20 + 304) = v25;
  *(v20 + 312) = v26;
  return v20;
}

uint64_t FormatMicaNode.init(identifier:size:resize:adjustments:style:content:mediaTiming:runMode:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, __int128 *a8, int *a9, uint64_t a10, uint64_t *a11, char a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v19 = *a3;
  v20 = *a4;
  v21 = *a7;
  v22 = *a9;
  v23 = *(a9 + 4);
  v32 = *a11;
  v33 = *(a13 + 8);
  v36 = *(a15 + 32);
  v34 = *a13;
  v35 = *(a15 + 40);
  swift_beginAccess();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v19;
  *(v15 + 40) = v20;
  swift_beginAccess();
  v24 = a8[4];
  *(v15 + 152) = a8[5];
  v25 = a8[7];
  *(v15 + 168) = a8[6];
  *(v15 + 184) = v25;
  *(v15 + 193) = *(a8 + 121);
  v26 = *a8;
  *(v15 + 88) = a8[1];
  v27 = a8[3];
  *(v15 + 104) = a8[2];
  *(v15 + 120) = v27;
  *(v15 + 136) = v24;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 64) = v21;
  *(v15 + 72) = v26;
  swift_beginAccess();
  *(v15 + 212) = v22;
  *(v15 + 216) = v23;
  swift_beginAccess();
  *(v15 + 224) = a10;
  swift_beginAccess();
  *(v15 + 232) = v32;
  swift_beginAccess();
  *(v15 + 240) = a12;
  *(v15 + 248) = v34;
  *(v15 + 256) = v33;
  swift_beginAccess();
  *(v15 + 264) = a14;
  v28 = *(a15 + 16);
  *(v15 + 272) = *a15;
  *(v15 + 288) = v28;
  *(v15 + 304) = v36;
  *(v15 + 312) = v35;
  return v15;
}

uint64_t FormatMicaNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  v1 = *(v0 + 152);
  v2 = *(v0 + 184);
  v6[6] = *(v0 + 168);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 193);
  v3 = *(v0 + 88);
  v4 = *(v0 + 120);
  v6[2] = *(v0 + 104);
  v6[3] = v4;
  v6[4] = *(v0 + 136);
  v6[5] = v1;
  v6[0] = *(v0 + 72);
  v6[1] = v3;
  sub_1D703338C(v6);
  sub_1D5EB15C4(*(v0 + 232));

  sub_1D5EB2398(*(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304));
  return v0;
}

uint64_t sub_1D703338C(uint64_t a1)
{
  sub_1D6047E8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatMicaNode.__deallocating_deinit()
{
  FormatMicaNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D703341C(uint64_t a1)
{
  result = sub_1D70335B0(&qword_1EC899678);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7033484(void *a1)
{
  a1[1] = sub_1D70335B0(&qword_1EC886FA8);
  a1[2] = sub_1D70335B0(&qword_1EC889CE0);
  result = sub_1D70335B0(&qword_1EC899680);
  a1[3] = result;
  return result;
}

uint64_t sub_1D7033510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66A26A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D703356C(uint64_t a1)
{
  result = sub_1D70335B0(&qword_1EC899688);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70335B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatMicaNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70335F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v17 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v38 = *(v17 + 32);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v18, v19);

    v32 = v20;
    v33 = v38;
    v18 = *(a4 + 16);
    v19 = *(a4 + 24);
  }

  else
  {

    v32 = v19;
    v33 = v18;
  }

  v21 = *(a4 + 40);
  v34 = v18;
  if (v21 && (v22 = *(v21 + 16), swift_beginAccess(), *(*(v22 + 16) + 16)))
  {
  }

  else
  {
    v22 = 0;
  }

  swift_beginAccess();
  v23 = *(a4 + 224);
  swift_beginAccess();
  v24 = *(a4 + 232);

  sub_1D5EB1500(v24);
  sub_1D615B4A8(a3, &v39);
  sub_1D5EB15C4(v24);
  v25 = v39;
  swift_beginAccess();
  v26 = *(a4 + 240);
  v27 = *(a4 + 248);
  v28 = *(a4 + 256);
  type metadata accessor for FormatMicaNodeLayoutAttributes();
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  *(v29 + 32) = v33;
  *(v29 + 40) = v32;
  *(v29 + 48) = v34;
  *(v29 + 56) = v19;
  *(v29 + 64) = a7;
  *(v29 + 72) = a8;
  *(v29 + 80) = a9;
  *(v29 + 88) = a10;
  *(v29 + 96) = a5;
  *(v29 + 104) = v22;
  *(v29 + 112) = v23;
  *(v29 + 120) = v25;
  *(v29 + 128) = v26;
  *(v29 + 136) = v27;
  *(v29 + 144) = v28;
  v30 = swift_allocObject();
  *(v29 + 152) = MEMORY[0x1E69E7CD0];
  *(v30 + 16) = v29;
  *a6 = v30 | 0x6000000000000000;
}

uint64_t sub_1D70338B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66ED2C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1D703391C(void *a1)
{
  a1[1] = sub_1D6658938();
  a1[2] = sub_1D6658DBC();
  result = sub_1D7033954();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7033954()
{
  result = qword_1EC899690;
  if (!qword_1EC899690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899690);
  }

  return result;
}

unint64_t sub_1D70339A8(uint64_t a1)
{
  result = sub_1D70339D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70339D0()
{
  result = qword_1EC899698;
  if (!qword_1EC899698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899698);
  }

  return result;
}

uint64_t sub_1D7033A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = sub_1D72646CC(), result = 0, (v8 & 1) != 0))
  {
    if (a3)
    {
      if (a6)
      {

        v10 = sub_1D663D3A4(a3, a6);

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

id sub_1D7033AF0(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6, void *a7, char *a8)
{
  v74 = a4;
  v72 = a2;
  v73 = a3;
  v13 = type metadata accessor for PuzzleResourceSource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v69 = v16;
  v71 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54E6C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v70 = &v66 - v19;
  sub_1D5B54E6C(0, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v66 - v22;
  v76 = type metadata accessor for PuzzleData();
  v24 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v25);
  v75 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54E6C(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v66 - v29;
  v67 = a1;
  sub_1D7034A2C(a1, &v66 - v29);
  v68 = v14;
  (*(v14 + 56))(v30, 0, 1, v13);
  v31 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
  swift_beginAccess();
  sub_1D7034A90(v30, &a8[v31]);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v33 = *&a8[v32];
  *&a8[v32] = a5;
  v34 = a5;

  result = [a8 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v36 = result;
  [result setNeedsLayout];

  *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation] = a6;
  v37 = a6;
  swift_unknownObjectRelease();
  v38 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v39 = *&a8[v38];
  *&a8[v38] = a7;
  v40 = a7;

  result = [a8 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v41 = result;
  [result setNeedsLayout];

  v42 = *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_interactionProvider];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = sub_1D6A28CBC;
  v82 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1D5B6B06C;
  v80 = &block_descriptor_128;
  v44 = _Block_copy(&aBlock);

  [v42 setInteractionBlock_];
  _Block_release(v44);
  v45 = *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_failureProvider];
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = sub_1D6A28CC4;
  v82 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1D6A20938;
  v80 = &block_descriptor_6_4;
  v47 = _Block_copy(&aBlock);

  [v45 onEvent_];
  _Block_release(v47);
  v48 = *&a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController];
  [v48 setPocketsEnabled_];
  v49 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D7034B10(&a8[v49], v23);
  v50 = v76;
  if ((*(v24 + 48))(v23, 1, v76) == 1)
  {
    result = sub_1D7034B90(v23);
    if (a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] != 1)
    {
      a8[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] = 1;
      v51 = sub_1D726294C();
      v52 = v70;
      (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
      v53 = v71;
      sub_1D7034A2C(v67, v71);
      sub_1D726290C();
      v54 = a8;
      v56 = v72;
      v55 = v73;
      v57 = v74;
      sub_1D5FE3DF8(v72, v73, v74);
      v58 = sub_1D72628FC();
      v59 = (*(v68 + 80) + 40) & ~*(v68 + 80);
      v60 = (v69 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      v62 = MEMORY[0x1E69E85E0];
      v61[2] = v58;
      v61[3] = v62;
      v61[4] = v54;
      sub_1D7034C08(v53, v61 + v59, type metadata accessor for PuzzleResourceSource);
      v63 = v61 + v60;
      *v63 = v56;
      *(v63 + 1) = v55;
      *(v63 + 4) = v57;
      sub_1D6BD1334(0, 0, v52, &unk_1D7312E10, v61);
    }
  }

  else
  {
    v64 = v75;
    sub_1D7034C08(v23, v75, type metadata accessor for PuzzleData);
    v65 = sub_1D6A22688(v64 + *(v50 + 20));
    [v48 setConfiguration_];

    return sub_1D7034C70(v64, type metadata accessor for PuzzleData);
  }

  return result;
}

id sub_1D7034244(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  sub_1D5B54E6C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v75 - v10;
  v12 = type metadata accessor for PuzzleResourceSource();
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 32))
  {
    swift_beginAccess();
    v15 = *(a2 + 80);
    v16 = *(a2 + 88);
    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    swift_beginAccess();
    CGRectGetMinX(*(a2 + 64));
    sub_1D726328C();
    CGRectGetMinY(*(a2 + 64));
    sub_1D726329C();
    v17 = v19;
    v18 = v20;
    v15 = v21;
    v16 = v22;
  }

  result = [a4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v24 = result;
  swift_beginAccess();
  sub_1D726344C();

  result = [a4 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = result;
  v26 = *(a2 + 104);
  if (v26)
  {
    LOBYTE(v26) = *(a2 + 145);
  }

  v77 = v12;
  v78 = v11;
  [result setAccessibilityIgnoresInvertColors_];

  result = [a4 view];
  if (!result)
  {
    goto LABEL_36;
  }

  v27 = result;
  v28 = *(a2 + 200);
  v29 = *(a2 + 208);
  [result setIsAccessibilityElement_];
  [v27 setAccessibilityElementsHidden_];
  if (v29 > 0xFD)
  {
    goto LABEL_15;
  }

  if ((v29 & 0x80) != 0)
  {
    if (!(v28 | v29 & 0x7F))
    {
      goto LABEL_15;
    }

    v30 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v30 = &selRef_setIsAccessibilityElement_;
  }

  [v27 *v30];
LABEL_15:

  v31 = *&a4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  result = [v31 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v32 = result;
  v33 = *(a2 + 104);
  if (v33)
  {
    LOBYTE(v33) = *(a2 + 145);
  }

  [result setAccessibilityIgnoresInvertColors_];

  result = [v31 view];
  if (!result)
  {
    goto LABEL_38;
  }

  v34 = result;
  v35 = *(a2 + 200);
  v36 = *(a2 + 208);
  [result setIsAccessibilityElement_];
  [v34 setAccessibilityElementsHidden_];
  if (v36 > 0xFD)
  {
    goto LABEL_25;
  }

  if ((v36 & 0x80) != 0)
  {
    if (!(v35 | v36 & 0x7F))
    {
      goto LABEL_25;
    }

    v37 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v37 = &selRef_setIsAccessibilityElement_;
  }

  [v34 *v37];
LABEL_25:

  result = [a4 view];
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v38 = result;
  v76 = a1;
  if (*(a2 + 104))
  {
    v39 = *(a2 + 144);
    v40 = *(a2 + 128);
    v41 = *(a2 + 136);
    sub_1D5ED34B0(v40, v41, v39);
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = -2;
  }

  v42 = [v38 layer];
  [v38 bounds];
  v80[0] = v40;
  v80[1] = v41;
  v81 = v39;
  sub_1D6E549E4(v42, v80, v43, v44, v45, v46);

  sub_1D5ED348C(v40, v41, v39);
  result = [a4 view];
  if (!result)
  {
    goto LABEL_40;
  }

  v47 = result;
  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v56 = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:v49 contentFrame:v51 contentSafeAreaFrame:v53 systemSafeAreaFrame:{v55, v17, v18, v15, v16, *&v17, *&v18, *&v15, *&v16, *&v17, *&v18, *&v15, *&v16}];
  v57 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v58 = *&a4[v57];
  *&a4[v57] = v56;
  v59 = v56;

  v60 = *(a2 + 209);
  v61 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v62 = *&v31[v61];
  *&v31[v61] = v59;
  v63 = v59;

  result = [v31 view];
  v64 = v76;
  v65 = v79;
  if (!result)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v66 = result;
  v75 = v63;
  [result setNeedsLayout];

  v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_isResizable] = v60;
  *v65 = *(v64 + 88);
  swift_storeEnumTagMultiPayload();
  v67 = sub_1D72585BC();
  v68 = *(v67 - 8);
  v69 = v78;
  (*(v68 + 56))(v78, 1, 1, v67);
  swift_unknownObjectRetain();

  v70 = sub_1D726203C();

  v71 = 0;
  if ((*(v68 + 48))(v69, 1, v67) != 1)
  {
    v71 = sub_1D725844C();
    (*(v68 + 8))(v69, v67);
  }

  v72 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v70 URL:v71];

  v73 = *(*(v64 + 240) + 16);
  v74 = v75;
  sub_1D7033AF0(v65, 0, 0, 0x2000000u, v75, v72, v73, v31);

  return sub_1D7034C70(v65, type metadata accessor for PuzzleResourceSource);
}

uint64_t dispatch thunk of FormatPuzzleEmbedNodeRendererType.render<A>(context:for:with:contentFrame:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a9 + 8);
  v10 = *(a4 + 32);
  v11 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v11;
  v14 = v10;
  return v9(a1, a2, a3, v13);
}

uint64_t sub_1D7034A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleResourceSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7034A90(uint64_t a1, uint64_t a2)
{
  sub_1D5B54E6C(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7034B10(uint64_t a1, uint64_t a2)
{
  sub_1D5B54E6C(0, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7034B90(uint64_t a1)
{
  sub_1D5B54E6C(0, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7034C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7034C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7034CE8()
{
  result = qword_1EDF20848;
  if (!qword_1EDF20848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20848);
  }

  return result;
}

uint64_t FeedPluginModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7034DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for FeedPluginModel();
  (*(*(a7 - 8) + 32))(&a9[v16[13]], a3, a7);
  result = (*(*(a8 - 8) + 32))(&a9[v16[14]], a4, a8);
  v18 = &a9[v16[15]];
  *v18 = a5;
  *(v18 + 1) = a6;
  return result;
}

uint64_t FeedPluginModel.next(revision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v25 = *(a2 + 24);
  v26 = a3;
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13, v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 52);
  v24 = *(v16 + 40);
  v28 = sub_1D725AA4C();
  v29 = v18;
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v27 = a1;
  v19 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v19);

  v20 = v28;
  v21 = v29;
  (*(v12 + 16))(v15, v4 + v17, v11);
  v22 = v25;
  (*(v7 + 16))(v9, v4 + *(a2 + 56), v25);
  sub_1D7034DDC(v20, v21, v15, v9, *(v4 + *(a2 + 60)), *(v4 + *(a2 + 60) + 8), v11, v22, v26);
}

uint64_t static FeedPluginModel.== infix(_:_:)(char *a1, char *a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 1);
  if (v4 || (sub_1D72646CC()) && (v5 = type metadata accessor for FeedPluginModel(), (sub_1D7261FBC()))
  {
    v6 = (*&a1[*(v5 + 60)])(&a1[*(v5 + 56)], &a2[*(v5 + 56)]);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t (*FeedPluginModel<>.init(group:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>))()
{
  *a8 = sub_1D725AA4C();
  a8[1] = v16;
  v17 = type metadata accessor for FeedPluginModel();
  (*(*(a3 - 8) + 32))(a8 + v17[13], a1, a3);
  (*(*(a4 - 8) + 32))(a8 + v17[14], a2, a4);
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a5;
  *(result + 5) = a6;
  *(result + 6) = a7;
  v19 = (a8 + v17[15]);
  *v19 = sub_1D5C38688;
  v19[1] = result;
  return result;
}

uint64_t FeedPluginModel<>.init(group:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1D725AA4C();
  a3[1] = v6;
  v7 = type metadata accessor for FeedPluginModel();
  result = (*(*(a2 - 8) + 32))(a3 + *(v7 + 52), a1, a2);
  v9 = (a3 + *(v7 + 60));
  *v9 = sub_1D5C00104;
  v9[1] = 0;
  return result;
}

uint64_t sub_1D70353E4(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
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

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000000) != 0)
    {
      v25 = (a1 + v9 + 16) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *(a1 + 1);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v22) + 1;
}

void *sub_1D70355CC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if ((v12 & 0x80000000) != 0)
        {
          v23 = (result + v8 + 16) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *result = a2 & 0x7FFFFFFF;
          result[1] = 0;
        }

        else
        {
          result[1] = a2 - 1;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

uint64_t FeedHeadlineClusteringService.__allocating_init(clusteringService:headlineService:feedPersonalizer:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1D5B7DDE8(a2, v6 + 24);
  *(v6 + 64) = a3;
  return v6;
}

uint64_t FeedHeadlineClusteringService.createClusters(request:)()
{
  sub_1D725BDCC();

  v0 = sub_1D725B92C();
  v1 = sub_1D725BA7C();

  return v1;
}

uint64_t sub_1D703595C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedClusteringRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = *(a1 + 16);
  v9 = sub_1D701C8D4(a2);
  sub_1D6F84BC8();
  sub_1D725BDCC();
  sub_1D6F84D04(a2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  sub_1D6F84D68(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D6F84DCC;
  *(v12 + 24) = v11;

  v13 = v9;
  v14 = sub_1D725B92C();
  v15 = sub_1D725BA7C();

  return v15;
}

uint64_t sub_1D7035B48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_1D5B9F1C4(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();
  v5 = sub_1D725B92C();
  sub_1D6D87D50();
  sub_1D6F04ED0();
  sub_1D725BBEC();

  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v3;

  v7 = sub_1D725B92C();
  v8 = sub_1D725BA8C();

  return v8;
}

uint64_t sub_1D7035D00(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  FeedChannelClusteringResult.scoredItems.getter();
  FeedTopicClusteringResult.scoredItems.getter();
  sub_1D6985340(v4);
  sub_1D6155CCC();
  sub_1D6155D1C();
  sub_1D6155D74();
  v5 = sub_1D726239C();

  v6 = HeadlineServiceType.fetchHeadlines(for:feedPersonalizer:purpose:)(v5, a1[8], *MEMORY[0x1E69B50B0], v2, v3);

  return v6;
}

uint64_t sub_1D7035E0C(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  sub_1D6D76D08(v3, v5, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v10;
  return result;
}

uint64_t sub_1D7035EBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v141 = *result;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v145 = MEMORY[0x1E69E7CC0];
    sub_1D69999D8(0, v6, 0);
    v9 = 0;
    v10 = v145;
    v122 = v6;
    v124 = a2 + 32;
    while (1)
    {
      v131 = v9;
      v11 = (v124 + 24 * v9);
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];
      v15 = *(v12 + 16);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      result = v14;
      v16 = v15;
      v17 = result;
      if (v16)
      {
        break;
      }

      v20 = v7;
LABEL_20:

      swift_unknownObjectRelease();
      result = swift_bridgeObjectRelease_n();
      v40 = *(v10 + 16);
      v39 = *(v10 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1D69999D8((v39 > 1), v40 + 1, 1);
      }

      v9 = v131 + 1;
      *(v10 + 16) = v40 + 1;
      v41 = (v10 + 24 * v40);
      v41[4] = v13;
      v41[5] = v20;
      v41[6] = v17;
      if (v131 + 1 == v6)
      {
        goto LABEL_25;
      }
    }

    v18 = 0;
    v19 = v12 + 48;
    v118 = v16 - 1;
    v20 = v7;
    v126 = v10;
    v138 = result;
    v133 = v16;
    v135 = v12;
    v120 = v12 + 48;
LABEL_5:
    v128 = v20;
    v21 = (v19 + 24 * v18);
    v22 = v18;
    while (1)
    {
      if (v22 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v23 = v13;
      v25 = *(v21 - 2);
      v24 = *(v21 - 1);
      v26 = *v21;
      swift_unknownObjectRetain();
      v142 = v24;
      v27 = [v25 itemID];
      v28 = sub_1D726207C();
      v30 = v29;

      if (*(v141 + 16))
      {
        v31 = sub_1D5B69D90(v28, v30);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(v141 + 56) + 8 * v31);
          swift_unknownObjectRetain();

          swift_unknownObjectRelease();
          v20 = v128;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D698FB64(0, *(v128 + 16) + 1, 1, v128);
            v20 = result;
          }

          v7 = MEMORY[0x1E69E7CC0];
          v13 = v23;
          v36 = *(v20 + 16);
          v35 = *(v20 + 24);
          v17 = v138;
          if (v36 >= v35 >> 1)
          {
            result = sub_1D698FB64((v35 > 1), v36 + 1, 1, v20);
            v20 = result;
          }

          v18 = v22 + 1;
          *(v20 + 16) = v36 + 1;
          v37 = v20 + 16 * v36;
          *(v37 + 32) = v34;
          *(v37 + 40) = v142;
          v19 = v120;
          v38 = v118 == v22;
          v10 = v126;
          v6 = v122;
          v12 = v135;
          if (v38)
          {
            goto LABEL_20;
          }

          goto LABEL_5;
        }
      }

      else
      {
      }

      ++v22;

      result = swift_unknownObjectRelease();
      v21 += 3;
      v12 = v135;
      v13 = v23;
      v17 = v138;
      if (v133 == v22)
      {
        v10 = v126;
        v20 = v128;
        v7 = MEMORY[0x1E69E7CC0];
        v6 = v122;
        goto LABEL_20;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v127 = v10;
  v42 = *(a3 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  if (v42)
  {
    v146 = MEMORY[0x1E69E7CC0];
    sub_1D6998B38(0, v42, 0);
    v44 = 0;
    v45 = v146;
    v121 = v42;
    v123 = a3 + 32;
    while (1)
    {
      v46 = (v123 + 24 * v44);
      v47 = *v46;
      v48 = v46[1];
      v134 = v46[2];
      v136 = v44;
      v49 = *(v48 + 16);
      swift_unknownObjectRetain_n();
      result = swift_bridgeObjectRetain_n();
      if (v49)
      {
        break;
      }

      v52 = v43;
LABEL_44:
      swift_bridgeObjectRelease_n();
      result = swift_unknownObjectRelease();
      v70 = v47;
      v72 = *(v45 + 16);
      v71 = *(v45 + 24);
      if (v72 >= v71 >> 1)
      {
        result = sub_1D6998B38((v71 > 1), v72 + 1, 1);
      }

      v44 = v136 + 1;
      *(v45 + 16) = v72 + 1;
      v73 = (v45 + 24 * v72);
      v73[4] = v70;
      v73[5] = v52;
      v73[6] = v134;
      if (v136 + 1 == v42)
      {
        goto LABEL_49;
      }
    }

    v50 = 0;
    v51 = v48 + 48;
    v117 = v49 - 1;
    v52 = v43;
    v129 = v45;
    v125 = v47;
    v143 = v48;
    v139 = v49;
    v119 = v48 + 48;
LABEL_29:
    v132 = v52;
    v53 = (v51 + 24 * v50);
    v54 = v50;
    while (v54 < *(v48 + 16))
    {
      v55 = *(v53 - 2);
      v56 = *(v53 - 1);
      v57 = *v53;
      swift_unknownObjectRetain();
      v58 = v56;
      v59 = [v55 itemID];
      v60 = sub_1D726207C();
      v62 = v61;

      if (*(v141 + 16))
      {
        v63 = sub_1D5B69D90(v60, v62);
        v65 = v64;

        if (v65)
        {
          v66 = *(*(v141 + 56) + 8 * v63);
          swift_unknownObjectRetain();

          swift_unknownObjectRelease();
          v52 = v132;
          result = swift_isUniquelyReferenced_nonNull_native();
          v48 = v143;
          v51 = v119;
          if ((result & 1) == 0)
          {
            result = sub_1D698FB64(0, *(v132 + 16) + 1, 1, v132);
            v52 = result;
          }

          v68 = *(v52 + 16);
          v67 = *(v52 + 24);
          if (v68 >= v67 >> 1)
          {
            result = sub_1D698FB64((v67 > 1), v68 + 1, 1, v52);
            v52 = result;
          }

          v50 = v54 + 1;
          *(v52 + 16) = v68 + 1;
          v69 = v52 + 16 * v68;
          *(v69 + 32) = v66;
          *(v69 + 40) = v58;
          v38 = v117 == v54;
          v45 = v129;
          v43 = MEMORY[0x1E69E7CC0];
          v42 = v121;
          v47 = v125;
          if (v38)
          {
            goto LABEL_44;
          }

          goto LABEL_29;
        }
      }

      else
      {
      }

      ++v54;

      result = swift_unknownObjectRelease();
      v53 += 3;
      v48 = v143;
      if (v139 == v54)
      {
        v45 = v129;
        v52 = v132;
        v43 = MEMORY[0x1E69E7CC0];
        v42 = v121;
        v47 = v125;
        goto LABEL_44;
      }
    }

LABEL_80:
    __break(1u);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_49:
    v130 = v45;
    v74 = *(a4 + 16);
    if (v74)
    {
      v75 = 0;
      v76 = a4 + 48;
      v77 = MEMORY[0x1E69E7CC0];
      v140 = *(a4 + 16);
LABEL_51:
      v137 = v77;
      v78 = (v76 + 24 * v75);
      v79 = v75;
      while (v79 < v74)
      {
        v75 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_83;
        }

        v81 = *(v78 - 2);
        v80 = *(v78 - 1);
        v82 = *v78;
        swift_unknownObjectRetain();
        v144 = v80;
        v83 = [v81 itemID];
        v84 = sub_1D726207C();
        v86 = v85;

        if (*(v141 + 16))
        {
          v87 = sub_1D5B69D90(v84, v86);
          v89 = v88;

          if (v89)
          {
            v90 = *(*(v141 + 56) + 8 * v87);
            swift_unknownObjectRetain();

            swift_unknownObjectRelease();
            v77 = v137;
            result = swift_isUniquelyReferenced_nonNull_native();
            v74 = v140;
            if ((result & 1) == 0)
            {
              result = sub_1D698FB64(0, *(v137 + 16) + 1, 1, v137);
              v77 = result;
            }

            v76 = a4 + 48;
            v92 = *(v77 + 16);
            v91 = *(v77 + 24);
            if (v92 >= v91 >> 1)
            {
              result = sub_1D698FB64((v91 > 1), v92 + 1, 1, v77);
              v77 = result;
            }

            *(v77 + 16) = v92 + 1;
            v93 = v77 + 16 * v92;
            *(v93 + 32) = v90;
            *(v93 + 40) = v144;
            if (v75 != v140)
            {
              goto LABEL_51;
            }

            goto LABEL_66;
          }
        }

        else
        {
        }

        result = swift_unknownObjectRelease();
        ++v79;
        v78 += 3;
        v74 = v140;
        if (v75 == v140)
        {
          v77 = v137;
          goto LABEL_66;
        }
      }

      goto LABEL_82;
    }

    v77 = MEMORY[0x1E69E7CC0];
LABEL_66:
    sub_1D7036888();
    result = sub_1D72640FC();
    v94 = result;
    v95 = 0;
    v96 = *(a5 + 64);
    v97 = 1 << *(a5 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & v96;
    v100 = (v97 + 63) >> 6;
    v101 = result + 64;
    if ((v98 & v96) != 0)
    {
      do
      {
        v102 = __clz(__rbit64(v99));
        v99 &= v99 - 1;
LABEL_75:
        v105 = v102 | (v95 << 6);
        v106 = (*(a5 + 48) + 16 * v105);
        v107 = *v106;
        result = v106[1];
        v108 = (v94[6] + 16 * v105);
        v109 = *(*(a5 + 56) + 16 * v105);
        *(v101 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
        *v108 = v107;
        v108[1] = result;
        *(v94[7] + 16 * v105) = v109;
        v110 = v94[2];
        v111 = __OFADD__(v110, 1);
        v112 = v110 + 1;
        if (v111)
        {
          goto LABEL_84;
        }

        v94[2] = v112;
      }

      while (v99);
    }

    v103 = v95;
    while (1)
    {
      v95 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v95 >= v100)
      {
        *a6 = v127;
        a6[1] = v130;
        a6[2] = v77;
        a6[3] = v94;
        return result;
      }

      v104 = *(a5 + 64 + 8 * v95);
      ++v103;
      if (v104)
      {
        v102 = __clz(__rbit64(v104));
        v99 = (v104 - 1) & v104;
        goto LABEL_75;
      }
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}