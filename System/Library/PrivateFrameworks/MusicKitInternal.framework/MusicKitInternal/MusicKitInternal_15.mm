uint64_t sub_1D4FA8900(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D5610088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  type metadata accessor for LooselyComparableTypedIdentifier();
  type metadata accessor for GenericMusicItem();
  sub_1D4FB8108(qword_1EDD54BB8, type metadata accessor for LooselyComparableTypedIdentifier);
  v33 = sub_1D5614BD8();
  sub_1D560FFB8();
  sub_1D4FA9070(v16, *v2, &v33, a1, a2);
  v17 = *(v6 + 8);
  v17(v16, v5);
  sub_1D560FFD8();
  sub_1D4FA9BF0(v16, v2[1], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FE88();
  sub_1D4FAA770(v16, v2[3], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FE78();
  v18 = v2[2];
  v30 = v18;
  if (v18)
  {
    v29 = a1;
    v19 = a2;
    v20 = v14;
    v21 = v18;
    v22 = sub_1D4FB5644(v18);
    sub_1D4FAB0A4(v20, v22, &v33, v29, v19);

    v23 = v20;
    a2 = v19;
    a1 = v29;
    v17(v23, v5);
    v24 = v31;
    sub_1D560FE78();
    v25 = sub_1D4FB5C60(v21);
  }

  else
  {
    sub_1D4FAB0A4(v14, 0, &v33, a1, a2);

    v17(v14, v5);
    v24 = v31;
    sub_1D560FE78();
    v25 = 0;
  }

  sub_1D4FABC24(v24, v25, &v33, a1, a2);

  v17(v24, v5);
  v26 = v32;
  sub_1D560FE78();
  if (v30)
  {
    v27 = sub_1D4FB627C(v30);
  }

  else
  {
    v27 = 0;
  }

  sub_1D4FAC7A4(v26, v27, &v33, a1, a2);

  v17(v26, v5);
  sub_1D560FFF8();
  sub_1D4FAB0A4(v16, v2[4], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FED8();
  sub_1D4FAD324(v16, v2[5], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FE28();
  sub_1D4FADC58(v16, v2[7], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FE38();
  sub_1D4FAE58C(v16, v2[8], &v33, a1, a2);
  v17(v16, v5);
  sub_1D5610038();
  sub_1D4FAF10C(v16, v2[9], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FE58();
  sub_1D4FAFC8C(v16, v2[10], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FF18();
  sub_1D4FB080C(v16, v2[11], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FFA8();
  sub_1D4FB1140(v16, v2[12], &v33, a1, a2);
  v17(v16, v5);
  sub_1D5610008();
  sub_1D4FB1CC0(v16, v2[13], &v33, a1, a2);
  v17(v16, v5);
  sub_1D5610078();
  sub_1D4FB2840(v16, v2[14], &v33, a1, a2);
  v17(v16, v5);
  sub_1D5610068();
  sub_1D4FB3174(v16, v2[15], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FFE8();
  sub_1D4FB3AA8(v16, v2[16], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FF28();
  sub_1D4FB43DC(v16, v2[17], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FF38();
  sub_1D4FB4D10(v16, v2[18], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FEA8();
  sub_1D4FA9070(v16, v2[19], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FEE8();
  sub_1D4FA9BF0(v16, v2[20], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FDF8();
  sub_1D4FAE58C(v16, v2[21], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FF58();
  sub_1D4FAF10C(v16, v2[22], &v33, a1, a2);
  v17(v16, v5);
  sub_1D560FE48();
  sub_1D4FB1140(v16, v2[23], &v33, a1, a2);
  v17(v16, v5);
  return v33;
}

uint64_t sub_1D4FA9070(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613AF8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB50, &qword_1D561F270);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7ECE68, MEMORY[0x1E6976D28]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4FA771C(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FA9BF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613EF8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB78, &qword_1D561F288);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7EB5E0, MEMORY[0x1E6976F28]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4FA6530(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAA770(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v106 = a4;
  v98 = a3;
  v97 = a1;
  v96 = sub_1D560D838();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87 - v10;
  v93 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v87 - v15;
  v110 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v110);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v87 - v19;
  v109 = sub_1D560CD48();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CreditArtist();
  v23 = *(*(v89 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v89);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  v28 = *(v116 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB960, &unk_1D5623520);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v87 - v37;
  v101 = a2;
  if (a2)
  {
    v39 = 1 << *(v101 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v101 + 64);
    v87 = (v39 + 63) >> 6;
    v99 = v28 + 16;
    v100 = v28;
    v114 = (v28 + 32);
    v104 = (v20 + 16);
    v42 = v101 + 64;
    v88 = (v6 + 8);

    v43 = 0;
    v118 = v27;
    v112 = v38;
    v113 = v35;
    v105 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v100;
      v48 = (*(v101 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v52 = v116;
      (*(v100 + 16))(v115, *(v101 + 56) + *(v100 + 72) * v46, v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
      v54 = *(v53 + 48);
      v55 = v113;
      *v113 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v118;
      v38 = v112;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v115;
      (*v114)(v115, &v38[*(v57 + 48)], v116);
      v60 = v108;
      (*v104)(v108, v106, v109);
      v61 = v111;

      sub_1D507ADFC(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      v67 = v107;
      sub_1D4FB80B0();
      v68 = v117;
      sub_1D4FA5310(v67, v117);
      if (__swift_getEnumTagSinglePayload(v68, 1, v110) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for CreditArtist);
        result = sub_1D4E50004(v117, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v69 = v90;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EC7EB600, type metadata accessor for CreditArtist);
        v70 = v94;
        sub_1D560EC98();
        v71 = sub_1D560D708();
        v102 = v72;
        v103 = v71;
        v73 = *v88;
        v74 = v70;
        v75 = v96;
        (*v88)(v74, v96);
        v76 = v95;
        sub_1D560EC98();
        v77 = v93;
        v78 = v92;
        v79 = v92 + *(v93 + 20);
        sub_1D560D828();
        v80 = v76;
        v35 = v113;
        v73(v80, v75);
        v38 = v112;
        v81 = *(v77 + 24);
        v82 = sub_1D5610088();
        (*(*(v82 - 8) + 16))(v78 + v81, v97, v82);
        __swift_storeEnumTagSinglePayload(v78 + v81, 0, 1, v82);
        v83 = v102;
        *v78 = v103;
        v78[1] = v83;
        sub_1D4FB80B0();
        v84 = v98;
        v85 = *v98;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = *v84;
        v27 = v118;
        sub_1D4F13640();
        sub_1D4E58460(v78, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v69, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for CreditArtist);
        *v84 = v119;
      }

      v42 = v105;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v87)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v86);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAB0A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D56141F8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB980, &unk_1D561F150);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7EA7D0, MEMORY[0x1E6977048]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4FA4118(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FABC24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5614B68();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE58, &qword_1D56234F8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE60, &unk_1D5623500);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE60, &unk_1D5623500);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7EA7C0, MEMORY[0x1E6977550]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4FA2EF8(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE60, &unk_1D5623500);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAC7A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613C48();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9C8, &unk_1D561F180);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4FA1C54(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAD324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v106 = a5;
  v101 = a4;
  v93 = a3;
  v92 = a1;
  v91 = sub_1D560D838();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v91);
  v90 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v82 - v10;
  v88 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v112 = &v82 - v15;
  v105 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v105 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v105);
  v86 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v82 - v19;
  v104 = sub_1D560CD48();
  v20 = *(v104 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for EditorialItem();
  v23 = *(*(v84 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v84);
  v102 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v82 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  v28 = *(v111 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A8, &qword_1D561F168);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v82 - v37;
  v96 = a2;
  if (a2)
  {
    v39 = 1 << *(v96 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v96 + 64);
    v82 = (v39 + 63) >> 6;
    v94 = v28 + 16;
    v95 = v28;
    v109 = (v28 + 32);
    v99 = (v20 + 16);
    v42 = v96 + 64;
    v83 = (v6 + 8);

    v43 = 0;
    v113 = v27;
    v107 = v38;
    v108 = v35;
    v100 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v95;
      v48 = (*(v96 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v110;
      v52 = v111;
      (*(v95 + 16))(v110, *(v96 + 56) + *(v95 + 72) * v46, v111);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
      v54 = *(v53 + 48);
      v55 = v108;
      *v108 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v113;
      v38 = v107;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v110;
      (*v109)(v110, &v38[*(v57 + 48)], v111);
      v60 = v103;
      (*v99)(v103, v101, v104);
      v61 = v106;

      (loc_1D50A02C0)(v59, v60, v61);
      v62 = v102;
      sub_1D4FB80B0();
      v63 = v112;
      sub_1D4FA0A10(v62, v112);
      if (__swift_getEnumTagSinglePayload(v63, 1, v105) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for EditorialItem);
        result = sub_1D4E50004(v112, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v64 = v85;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57650, type metadata accessor for EditorialItem);
        v65 = v89;
        sub_1D560EC98();
        v66 = sub_1D560D708();
        v97 = v67;
        v98 = v66;
        v68 = *v83;
        v69 = v65;
        v70 = v91;
        (*v83)(v69, v91);
        v71 = v90;
        sub_1D560EC98();
        v72 = v88;
        v73 = v87;
        v74 = &v87[*(v88 + 20)];
        sub_1D560D828();
        v75 = v71;
        v35 = v108;
        v68(v75, v70);
        v38 = v107;
        v76 = *(v72 + 24);
        v77 = sub_1D5610088();
        (*(*(v77 - 8) + 16))(v73 + v76, v92, v77);
        __swift_storeEnumTagSinglePayload(v73 + v76, 0, 1, v77);
        v78 = v97;
        *v73 = v98;
        v73[1] = v78;
        sub_1D4FB80B0();
        v79 = v93;
        v80 = *v93;
        swift_isUniquelyReferenced_nonNull_native();
        v114 = *v79;
        v27 = v113;
        sub_1D4F13640();
        sub_1D4E58460(v73, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v64, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for EditorialItem);
        *v79 = v114;
      }

      v42 = v100;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v82)
      {
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v81);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FADC58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v106 = a4;
  v98 = a3;
  v97 = a1;
  v96 = sub_1D560D838();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87 - v10;
  v93 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v87 - v15;
  v110 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v110);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v87 - v19;
  v109 = sub_1D560CD48();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for MusicMovie();
  v23 = *(*(v89 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v89);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v28 = *(v116 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F0, &unk_1D56234E0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v87 - v37;
  v101 = a2;
  if (a2)
  {
    v39 = 1 << *(v101 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v101 + 64);
    v87 = (v39 + 63) >> 6;
    v99 = v28 + 16;
    v100 = v28;
    v114 = (v28 + 32);
    v104 = (v20 + 16);
    v42 = v101 + 64;
    v88 = (v6 + 8);

    v43 = 0;
    v118 = v27;
    v112 = v38;
    v113 = v35;
    v105 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v100;
      v48 = (*(v101 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v52 = v116;
      (*(v100 + 16))(v115, *(v101 + 56) + *(v100 + 72) * v46, v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
      v54 = *(v53 + 48);
      v55 = v113;
      *v113 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v118;
      v38 = v112;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v115;
      (*v114)(v115, &v38[*(v57 + 48)], v116);
      v60 = v108;
      (*v104)(v108, v106, v109);
      v61 = v111;

      sub_1D5096F2C(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      v67 = v107;
      sub_1D4FB80B0();
      v68 = v117;
      sub_1D4F9F7AC(v67, v117);
      if (__swift_getEnumTagSinglePayload(v68, 1, v110) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for MusicMovie);
        result = sub_1D4E50004(v117, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v69 = v90;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD59308, type metadata accessor for MusicMovie);
        v70 = v94;
        sub_1D560EC98();
        v71 = sub_1D560D708();
        v102 = v72;
        v103 = v71;
        v73 = *v88;
        v74 = v70;
        v75 = v96;
        (*v88)(v74, v96);
        v76 = v95;
        sub_1D560EC98();
        v77 = v93;
        v78 = v92;
        v79 = v92 + *(v93 + 20);
        sub_1D560D828();
        v80 = v76;
        v35 = v113;
        v73(v80, v75);
        v38 = v112;
        v81 = *(v77 + 24);
        v82 = sub_1D5610088();
        (*(*(v82 - 8) + 16))(v78 + v81, v97, v82);
        __swift_storeEnumTagSinglePayload(v78 + v81, 0, 1, v82);
        v83 = v102;
        *v78 = v103;
        v78[1] = v83;
        sub_1D4FB80B0();
        v84 = v98;
        v85 = *v98;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = *v84;
        v27 = v118;
        sub_1D4F13640();
        sub_1D4E58460(v78, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v69, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for MusicMovie);
        *v84 = v119;
      }

      v42 = v105;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v87)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v86);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAE58C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D560EEA8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA0, &unk_1D561F2A0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7ECE50, MEMORY[0x1E69754E8]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4F9E578(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAF10C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5614898();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC8, &unk_1D56234B0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EDD52A78, MEMORY[0x1E69773E0]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4F9D35C(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAFC8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D560F8B8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA18, &unk_1D561F1B0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7ECE48, MEMORY[0x1E69758A0]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4F9C12C(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB080C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v106 = a4;
  v98 = a3;
  v97 = a1;
  v96 = sub_1D560D838();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87 - v10;
  v93 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v87 - v15;
  v110 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v110);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v87 - v19;
  v109 = sub_1D560CD48();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SocialProfile();
  v23 = *(*(v89 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v89);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v28 = *(v116 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA38, &unk_1D5623480);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v87 - v37;
  v101 = a2;
  if (a2)
  {
    v39 = 1 << *(v101 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v101 + 64);
    v87 = (v39 + 63) >> 6;
    v99 = v28 + 16;
    v100 = v28;
    v114 = (v28 + 32);
    v104 = (v20 + 16);
    v42 = v101 + 64;
    v88 = (v6 + 8);

    v43 = 0;
    v118 = v27;
    v112 = v38;
    v113 = v35;
    v105 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v100;
      v48 = (*(v101 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v52 = v116;
      (*(v100 + 16))(v115, *(v101 + 56) + *(v100 + 72) * v46, v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
      v54 = *(v53 + 48);
      v55 = v113;
      *v113 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v118;
      v38 = v112;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v115;
      (*v114)(v115, &v38[*(v57 + 48)], v116);
      v60 = v108;
      (*v104)(v108, v106, v109);
      v61 = v111;

      sub_1D50993EC(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      v67 = v107;
      sub_1D4FB80B0();
      v68 = v117;
      sub_1D4F9AF14(v67, v117);
      if (__swift_getEnumTagSinglePayload(v68, 1, v110) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for SocialProfile);
        result = sub_1D4E50004(v117, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v69 = v90;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57518, type metadata accessor for SocialProfile);
        v70 = v94;
        sub_1D560EC98();
        v71 = sub_1D560D708();
        v102 = v72;
        v103 = v71;
        v73 = *v88;
        v74 = v70;
        v75 = v96;
        (*v88)(v74, v96);
        v76 = v95;
        sub_1D560EC98();
        v77 = v93;
        v78 = v92;
        v79 = v92 + *(v93 + 20);
        sub_1D560D828();
        v80 = v76;
        v35 = v113;
        v73(v80, v75);
        v38 = v112;
        v81 = *(v77 + 24);
        v82 = sub_1D5610088();
        (*(*(v82 - 8) + 16))(v78 + v81, v97, v82);
        __swift_storeEnumTagSinglePayload(v78 + v81, 0, 1, v82);
        v83 = v102;
        *v78 = v103;
        v78[1] = v83;
        sub_1D4FB80B0();
        v84 = v98;
        v85 = *v98;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = *v84;
        v27 = v118;
        sub_1D4F13640();
        sub_1D4E58460(v78, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v69, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for SocialProfile);
        *v84 = v119;
      }

      v42 = v105;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v87)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v86);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB1140(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613838();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBE8, &unk_1D561F2D0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7ECE40, MEMORY[0x1E6976BE8]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4F99CF4(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB1CC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v118 = a3;
  v108 = a1;
  v107 = sub_1D560D838();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v100 - v12;
  v104 = type metadata accessor for LooselyComparableTypedIdentifier();
  v100 = *(v104 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v129 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v100 - v17;
  v123 = type metadata accessor for GenericMusicItem();
  v103 = *(v123 - 8);
  v18 = *(v103 + 64);
  v19 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v100 - v21;
  v122 = sub_1D560CD48();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5614408();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v32 = *(v133 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA60, &qword_1D561F1E0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v37);
  v125 = &v100 - v40;
  if (a2)
  {
    v127 = v31;
    v41 = v22;
    v42 = a2 + 64;
    v43 = 1 << *(a2 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(a2 + 64);
    v101 = (v43 + 63) >> 6;
    v109 = v32 + 16;
    v110 = v32;
    v131 = (v32 + 32);
    v116 = (v41 + 16);
    v115 = (v26 + 16);
    v102 = (v8 + 8);
    v113 = (v26 + 8);

    v47 = 0;
    v128 = v25;
    v114 = a2 + 64;
    v117 = a5;
    v126 = a4;
    v124 = a2;
    while (1)
    {
      v48 = v134;
      if (!v45)
      {
        break;
      }

      v49 = v47;
LABEL_11:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v49 << 6);
      v52 = (*(v46 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v110;
      v57 = v132;
      v56 = v133;
      (*(v110 + 16))(v132, *(v46 + 56) + *(v110 + 72) * v51, v133);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
      v59 = *(v58 + 48);
      v60 = v134;
      *v134 = v54;
      *(v60 + 1) = v53;
      v61 = v60;
      (*(v55 + 32))(&v60[v59], v57, v56);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v58);

      a4 = v126;
LABEL_12:
      v62 = v125;
      sub_1D4FB8058();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
      }

      v64 = *(v62 + 8);

      (*v131)(v132, v62 + *(v63 + 48), v133);
      (*v116)(v121, a4, v122);
      sub_1D4FB8108(&qword_1EC7ECE38, MEMORY[0x1E6977180]);

      v65 = a4;
      v66 = v127;
      v67 = v135;
      v68 = v128;
      sub_1D5612698();
      v69 = v120;
      (*v115)(v120, v66, v68);
      sub_1D4F98AD4(v69, v67);
      if (__swift_getEnumTagSinglePayload(v67, 1, v123) == 1)
      {
        (*v113)(v66, v68);
        sub_1D4E50004(v135, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v65;
        v46 = v124;
        v42 = v114;
      }

      else
      {
        sub_1D4FB81A8();
        v70 = v105;
        sub_1D560EC98();
        v112 = sub_1D560D708();
        v111 = v71;
        v72 = *v102;
        v73 = v70;
        v74 = v107;
        (*v102)(v73, v107);
        v75 = v129;
        v76 = v106;
        sub_1D560EC98();
        v77 = v104;
        v78 = v75 + *(v104 + 20);
        sub_1D560D828();
        v72(v76, v74);
        v79 = *(v77 + 24);
        v80 = sub_1D5610088();
        (*(*(v80 - 8) + 16))(v75 + v79, v108, v80);
        __swift_storeEnumTagSinglePayload(v75 + v79, 0, 1, v80);
        v81 = v111;
        *v75 = v112;
        v75[1] = v81;
        sub_1D4FB80B0();
        v82 = v118;
        v83 = *v118;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = *v82;
        v84 = v136;
        v85 = sub_1D4F0DDB4(v75);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_29;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v89 = sub_1D4F0DDB4(v129);
          v91 = v124;
          v92 = v128;
          v42 = v114;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_31;
          }

          v87 = v89;
          a4 = v126;
        }

        else
        {
          v91 = v124;
          a4 = v126;
          v92 = v128;
          v42 = v114;
        }

        v93 = v136;
        if (v88)
        {
          sub_1D4F159C4(v119, v136[7] + *(v103 + 72) * v87);
        }

        else
        {
          v136[(v87 >> 6) + 8] |= 1 << v87;
          v94 = v93[6] + *(v100 + 72) * v87;
          sub_1D4FB80B0();
          v95 = v93[7] + *(v103 + 72) * v87;
          sub_1D4FB81A8();
          v96 = v93[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_30;
          }

          v93[2] = v98;
        }

        sub_1D4E58460(v129, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v130, type metadata accessor for GenericMusicItem);
        (*v113)(v127, v92);
        *v118 = v93;
        v46 = v91;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v101)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v99);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB2840(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v106 = a5;
  v101 = a4;
  v93 = a3;
  v92 = a1;
  v91 = sub_1D560D838();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v91);
  v90 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v82 - v10;
  v88 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v112 = &v82 - v15;
  v105 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v105 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v105);
  v86 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v82 - v19;
  v104 = sub_1D560CD48();
  v20 = *(v104 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TVEpisode();
  v23 = *(*(v84 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v84);
  v102 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v82 - v26);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v28 = *(v111 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA88, &qword_1D561F1F8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v82 - v37;
  v96 = a2;
  if (a2)
  {
    v39 = 1 << *(v96 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v96 + 64);
    v82 = (v39 + 63) >> 6;
    v94 = v28 + 16;
    v95 = v28;
    v109 = (v28 + 32);
    v99 = (v20 + 16);
    v42 = v96 + 64;
    v83 = (v6 + 8);

    v43 = 0;
    v113 = v27;
    v107 = v38;
    v108 = v35;
    v100 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v95;
      v48 = (*(v96 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v110;
      v52 = v111;
      (*(v95 + 16))(v110, *(v96 + 56) + *(v95 + 72) * v46, v111);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
      v54 = *(v53 + 48);
      v55 = v108;
      *v108 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v113;
      v38 = v107;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v110;
      (*v109)(v110, &v38[*(v57 + 48)], v111);
      v60 = v103;
      (*v99)(v103, v101, v104);
      v61 = v106;

      sub_1D50821CC(v59, v60, v61, v27);
      v62 = v102;
      sub_1D4FB80B0();
      v63 = v112;
      sub_1D4F9788C(v62, v112);
      if (__swift_getEnumTagSinglePayload(v63, 1, v105) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for TVEpisode);
        result = sub_1D4E50004(v112, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v64 = v85;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD54508, type metadata accessor for TVEpisode);
        v65 = v89;
        sub_1D560EC98();
        v66 = sub_1D560D708();
        v97 = v67;
        v98 = v66;
        v68 = *v83;
        v69 = v65;
        v70 = v91;
        (*v83)(v69, v91);
        v71 = v90;
        sub_1D560EC98();
        v72 = v88;
        v73 = v87;
        v74 = &v87[*(v88 + 20)];
        sub_1D560D828();
        v75 = v71;
        v35 = v108;
        v68(v75, v70);
        v38 = v107;
        v76 = *(v72 + 24);
        v77 = sub_1D5610088();
        (*(*(v77 - 8) + 16))(v73 + v76, v92, v77);
        __swift_storeEnumTagSinglePayload(v73 + v76, 0, 1, v77);
        v78 = v97;
        *v73 = v98;
        v73[1] = v78;
        sub_1D4FB80B0();
        v79 = v93;
        v80 = *v93;
        swift_isUniquelyReferenced_nonNull_native();
        v114 = *v79;
        v27 = v113;
        sub_1D4F13640();
        sub_1D4E58460(v73, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v64, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for TVEpisode);
        *v79 = v114;
      }

      v42 = v100;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v82)
      {
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v81);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB3174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v106 = a4;
  v98 = a3;
  v97 = a1;
  v96 = sub_1D560D838();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87 - v10;
  v93 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v87 - v15;
  v110 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v110);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v87 - v19;
  v109 = sub_1D560CD48();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TVSeason();
  v23 = *(*(v89 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v89);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  v28 = *(v116 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB0, &qword_1D561F210);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v87 - v37;
  v101 = a2;
  if (a2)
  {
    v39 = 1 << *(v101 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v101 + 64);
    v87 = (v39 + 63) >> 6;
    v99 = v28 + 16;
    v100 = v28;
    v114 = (v28 + 32);
    v104 = (v20 + 16);
    v42 = v101 + 64;
    v88 = (v6 + 8);

    v43 = 0;
    v118 = v27;
    v112 = v38;
    v113 = v35;
    v105 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v100;
      v48 = (*(v101 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v52 = v116;
      (*(v100 + 16))(v115, *(v101 + 56) + *(v100 + 72) * v46, v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
      v54 = *(v53 + 48);
      v55 = v113;
      *v113 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v118;
      v38 = v112;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v115;
      (*v114)(v115, &v38[*(v57 + 48)], v116);
      v60 = v108;
      (*v104)(v108, v106, v109);
      v61 = v111;

      sub_1D507C534(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      v67 = v107;
      sub_1D4FB80B0();
      v68 = v117;
      sub_1D4F96658(v67, v117);
      if (__swift_getEnumTagSinglePayload(v68, 1, v110) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for TVSeason);
        result = sub_1D4E50004(v117, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v69 = v90;
        sub_1D4FB81A8();
        sub_1D4FB8108(&unk_1EDD546A0, type metadata accessor for TVSeason);
        v70 = v94;
        sub_1D560EC98();
        v71 = sub_1D560D708();
        v102 = v72;
        v103 = v71;
        v73 = *v88;
        v74 = v70;
        v75 = v96;
        (*v88)(v74, v96);
        v76 = v95;
        sub_1D560EC98();
        v77 = v93;
        v78 = v92;
        v79 = v92 + *(v93 + 20);
        sub_1D560D828();
        v80 = v76;
        v35 = v113;
        v73(v80, v75);
        v38 = v112;
        v81 = *(v77 + 24);
        v82 = sub_1D5610088();
        (*(*(v82 - 8) + 16))(v78 + v81, v97, v82);
        __swift_storeEnumTagSinglePayload(v78 + v81, 0, 1, v82);
        v83 = v102;
        *v78 = v103;
        v78[1] = v83;
        sub_1D4FB80B0();
        v84 = v98;
        v85 = *v98;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = *v84;
        v27 = v118;
        sub_1D4F13640();
        sub_1D4E58460(v78, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v69, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for TVSeason);
        *v84 = v119;
      }

      v42 = v105;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v87)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v86);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB3AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v106 = a4;
  v98 = a3;
  v97 = a1;
  v96 = sub_1D560D838();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87 - v10;
  v93 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v87 - v15;
  v110 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v110);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v87 - v19;
  v109 = sub_1D560CD48();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TVShow();
  v23 = *(*(v89 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v89);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  v28 = *(v116 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD8, &qword_1D561F228);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v87 - v37;
  v101 = a2;
  if (a2)
  {
    v39 = 1 << *(v101 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v101 + 64);
    v87 = (v39 + 63) >> 6;
    v99 = v28 + 16;
    v100 = v28;
    v114 = (v28 + 32);
    v104 = (v20 + 16);
    v42 = v101 + 64;
    v88 = (v6 + 8);

    v43 = 0;
    v118 = v27;
    v112 = v38;
    v113 = v35;
    v105 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v100;
      v48 = (*(v101 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v52 = v116;
      (*(v100 + 16))(v115, *(v101 + 56) + *(v100 + 72) * v46, v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
      v54 = *(v53 + 48);
      v55 = v113;
      *v113 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v118;
      v38 = v112;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v115;
      (*v114)(v115, &v38[*(v57 + 48)], v116);
      v60 = v108;
      (*v104)(v108, v106, v109);
      v61 = v111;

      sub_1D507F9A0(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      v67 = v107;
      sub_1D4FB80B0();
      v68 = v117;
      sub_1D4F95440(v67, v117);
      if (__swift_getEnumTagSinglePayload(v68, 1, v110) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for TVShow);
        result = sub_1D4E50004(v117, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v69 = v90;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EC7EA688, type metadata accessor for TVShow);
        v70 = v94;
        sub_1D560EC98();
        v71 = sub_1D560D708();
        v102 = v72;
        v103 = v71;
        v73 = *v88;
        v74 = v70;
        v75 = v96;
        (*v88)(v74, v96);
        v76 = v95;
        sub_1D560EC98();
        v77 = v93;
        v78 = v92;
        v79 = v92 + *(v93 + 20);
        sub_1D560D828();
        v80 = v76;
        v35 = v113;
        v73(v80, v75);
        v38 = v112;
        v81 = *(v77 + 24);
        v82 = sub_1D5610088();
        (*(*(v82 - 8) + 16))(v78 + v81, v97, v82);
        __swift_storeEnumTagSinglePayload(v78 + v81, 0, 1, v82);
        v83 = v102;
        *v78 = v103;
        v78[1] = v83;
        sub_1D4FB80B0();
        v84 = v98;
        v85 = *v98;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = *v84;
        v27 = v118;
        sub_1D4F13640();
        sub_1D4E58460(v78, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v69, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for TVShow);
        *v84 = v119;
      }

      v42 = v105;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v87)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v86);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB43DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v106 = a4;
  v98 = a3;
  v97 = a1;
  v96 = sub_1D560D838();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87 - v10;
  v93 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v87 - v15;
  v110 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v110);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v87 - v19;
  v109 = sub_1D560CD48();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UploadedAudio();
  v23 = *(*(v89 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v89);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  v28 = *(v116 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB00, &qword_1D561F240);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v87 - v37;
  v101 = a2;
  if (a2)
  {
    v39 = 1 << *(v101 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v101 + 64);
    v87 = (v39 + 63) >> 6;
    v99 = v28 + 16;
    v100 = v28;
    v114 = (v28 + 32);
    v104 = (v20 + 16);
    v42 = v101 + 64;
    v88 = (v6 + 8);

    v43 = 0;
    v118 = v27;
    v112 = v38;
    v113 = v35;
    v105 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v100;
      v48 = (*(v101 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v52 = v116;
      (*(v100 + 16))(v115, *(v101 + 56) + *(v100 + 72) * v46, v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
      v54 = *(v53 + 48);
      v55 = v113;
      *v113 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v118;
      v38 = v112;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v115;
      (*v114)(v115, &v38[*(v57 + 48)], v116);
      v60 = v108;
      (*v104)(v108, v106, v109);
      v61 = v111;

      sub_1D509D394(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      v67 = v107;
      sub_1D4FB80B0();
      v68 = v117;
      sub_1D4F94228(v67, v117);
      if (__swift_getEnumTagSinglePayload(v68, 1, v110) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for UploadedAudio);
        result = sub_1D4E50004(v117, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v69 = v90;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57500, type metadata accessor for UploadedAudio);
        v70 = v94;
        sub_1D560EC98();
        v71 = sub_1D560D708();
        v102 = v72;
        v103 = v71;
        v73 = *v88;
        v74 = v70;
        v75 = v96;
        (*v88)(v74, v96);
        v76 = v95;
        sub_1D560EC98();
        v77 = v93;
        v78 = v92;
        v79 = v92 + *(v93 + 20);
        sub_1D560D828();
        v80 = v76;
        v35 = v113;
        v73(v80, v75);
        v38 = v112;
        v81 = *(v77 + 24);
        v82 = sub_1D5610088();
        (*(*(v82 - 8) + 16))(v78 + v81, v97, v82);
        __swift_storeEnumTagSinglePayload(v78 + v81, 0, 1, v82);
        v83 = v102;
        *v78 = v103;
        v78[1] = v83;
        sub_1D4FB80B0();
        v84 = v98;
        v85 = *v98;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = *v84;
        v27 = v118;
        sub_1D4F13640();
        sub_1D4E58460(v78, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v69, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for UploadedAudio);
        *v84 = v119;
      }

      v42 = v105;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v87)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v86);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB4D10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v106 = a4;
  v98 = a3;
  v97 = a1;
  v96 = sub_1D560D838();
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87 - v10;
  v93 = type metadata accessor for LooselyComparableTypedIdentifier();
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v87 - v15;
  v110 = type metadata accessor for GenericMusicItem();
  v16 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v110);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v87 - v19;
  v109 = sub_1D560CD48();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UploadedVideo();
  v23 = *(*(v89 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v89);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  v28 = *(v116 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB28, &unk_1D5623440);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v33);
  v38 = &v87 - v37;
  v101 = a2;
  if (a2)
  {
    v39 = 1 << *(v101 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v101 + 64);
    v87 = (v39 + 63) >> 6;
    v99 = v28 + 16;
    v100 = v28;
    v114 = (v28 + 32);
    v104 = (v20 + 16);
    v42 = v101 + 64;
    v88 = (v6 + 8);

    v43 = 0;
    v118 = v27;
    v112 = v38;
    v113 = v35;
    v105 = v42;
    while (v41)
    {
      v44 = v43;
LABEL_11:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v100;
      v48 = (*(v101 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v115;
      v52 = v116;
      (*(v100 + 16))(v115, *(v101 + 56) + *(v100 + 72) * v46, v116);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
      v54 = *(v53 + 48);
      v55 = v113;
      *v113 = v50;
      *(v55 + 1) = v49;
      v56 = v51;
      v35 = v55;
      (*(v47 + 32))(&v55[v54], v56, v52);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);

      v27 = v118;
      v38 = v112;
LABEL_12:
      sub_1D4FB8058();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
      if (__swift_getEnumTagSinglePayload(v38, 1, v57) == 1)
      {
      }

      v58 = *(v38 + 1);

      v59 = v115;
      (*v114)(v115, &v38[*(v57 + 48)], v116);
      v60 = v108;
      (*v104)(v108, v106, v109);
      v61 = v111;

      sub_1D508E98C(v59, v60, v61, v62, v63, v64, v65, v66, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      v67 = v107;
      sub_1D4FB80B0();
      v68 = v117;
      sub_1D4F93010(v67, v117);
      if (__swift_getEnumTagSinglePayload(v68, 1, v110) == 1)
      {
        sub_1D4E58460(v27, type metadata accessor for UploadedVideo);
        result = sub_1D4E50004(v117, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v69 = v90;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57488, type metadata accessor for UploadedVideo);
        v70 = v94;
        sub_1D560EC98();
        v71 = sub_1D560D708();
        v102 = v72;
        v103 = v71;
        v73 = *v88;
        v74 = v70;
        v75 = v96;
        (*v88)(v74, v96);
        v76 = v95;
        sub_1D560EC98();
        v77 = v93;
        v78 = v92;
        v79 = v92 + *(v93 + 20);
        sub_1D560D828();
        v80 = v76;
        v35 = v113;
        v73(v80, v75);
        v38 = v112;
        v81 = *(v77 + 24);
        v82 = sub_1D5610088();
        (*(*(v82 - 8) + 16))(v78 + v81, v97, v82);
        __swift_storeEnumTagSinglePayload(v78 + v81, 0, 1, v82);
        v83 = v102;
        *v78 = v103;
        v78[1] = v83;
        sub_1D4FB80B0();
        v84 = v98;
        v85 = *v98;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = *v84;
        v27 = v118;
        sub_1D4F13640();
        sub_1D4E58460(v78, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v69, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v27, type metadata accessor for UploadedVideo);
        *v84 = v119;
      }

      v42 = v105;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v87)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v86);
        v41 = 0;
        goto LABEL_12;
      }

      v41 = *(v42 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB5644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE20, &qword_1D5623368);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v63 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v79);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v63 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
  v11 = *(*(v78 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v78);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v63 - v16;
  v18 = a1 + 64;
  v17 = *(a1 + 64);
  v72 = MEMORY[0x1E69E7CC8];
  v82 = MEMORY[0x1E69E7CC8];
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v67 = v6;
  v69 = (v6 + 32);
  v80 = a1;

  v24 = 0;
  v73 = v22;
  v74 = a1 + 64;
  v77 = v5;
  while (1)
  {
    v25 = v24;
    if (!v21)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v24 = v25;
LABEL_10:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v24 << 6);
      v28 = *(v80 + 56);
      v29 = (*(v80 + 48) + 16 * v27);
      v30 = *v29;
      v81 = v29[1];
      v31 = v81;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
      v33 = *(v32 - 8);
      v34 = v28 + *(v33 + 72) * v27;
      v35 = v78;
      v36 = v75;
      (*(v33 + 16))(&v75[*(v78 + 48)], v34, v32);
      *v36 = v30;
      v36[1] = v31;
      v37 = v76;
      sub_1D4FB8058();
      v38 = *(v35 + 48);
      swift_getKeyPath();

      v39 = v77;
      swift_getAtKeyPath();

      if (__swift_getEnumTagSinglePayload(v39, 1, v79) != 1)
      {
        break;
      }

      sub_1D4E50004(v37, &qword_1EC7EB948, &qword_1D561F128);
      result = sub_1D4E50004(v39, &qword_1EC7ECE20, &qword_1D5623368);
      v25 = v24;
      v22 = v73;
      v18 = v74;
      if (!v21)
      {
LABEL_7:
        while (1)
        {
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v24 >= v22)
          {

            return v72;
          }

          v21 = *(v18 + 8 * v24);
          ++v25;
          if (v21)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v81 = v33;
    v66 = v32;
    v40 = *v69;
    v41 = v68;
    v42 = v79;
    (*v69)(v68, v39, v79);
    sub_1D4FB8058();
    v65 = v40;
    v40(v70, v41, v42);
    v43 = v72;
    if (v72[3] <= v72[2])
    {
      sub_1D52C6E44();
      v43 = v82;
    }

    v45 = *v71;
    v44 = *(v71 + 1);
    v46 = v43[5];
    v47 = v43;
    sub_1D56162D8();
    v64 = v44;
    sub_1D5614E28();
    result = sub_1D5616328();
    v48 = v47 + 8;
    v72 = v47;
    v49 = -1 << *(v47 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    v52 = v66;
    if (((-1 << v50) & ~v47[(v50 >> 6) + 8]) == 0)
    {
      break;
    }

    v53 = __clz(__rbit64((-1 << v50) & ~v47[(v50 >> 6) + 8])) | v50 & 0x7FFFFFFFFFFFFFC0;
    v54 = v81;
LABEL_24:
    v59 = *(v78 + 48);
    *(v48 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v60 = v72;
    v61 = (v72[6] + 16 * v53);
    v62 = v64;
    *v61 = v45;
    v61[1] = v62;
    v65((v60[7] + *(v67 + 72) * v53), v70, v79);
    ++v60[2];
    result = (*(v54 + 8))(&v71[v59], v52);
    v22 = v73;
    v18 = v74;
  }

  v55 = 0;
  v56 = (63 - v49) >> 6;
  v54 = v81;
  while (++v51 != v56 || (v55 & 1) == 0)
  {
    v57 = v51 == v56;
    if (v51 == v56)
    {
      v51 = 0;
    }

    v55 |= v57;
    v58 = v48[v51];
    if (v58 != -1)
    {
      v53 = __clz(__rbit64(~v58)) + (v51 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D4FB5C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE28, &qword_1D56233B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v63 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v79);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v63 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
  v11 = *(*(v78 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v78);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v63 - v16;
  v18 = a1 + 64;
  v17 = *(a1 + 64);
  v72 = MEMORY[0x1E69E7CC8];
  v82 = MEMORY[0x1E69E7CC8];
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v67 = v6;
  v69 = (v6 + 32);
  v80 = a1;

  v24 = 0;
  v73 = v22;
  v74 = a1 + 64;
  v77 = v5;
  while (1)
  {
    v25 = v24;
    if (!v21)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v24 = v25;
LABEL_10:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v24 << 6);
      v28 = *(v80 + 56);
      v29 = (*(v80 + 48) + 16 * v27);
      v30 = *v29;
      v81 = v29[1];
      v31 = v81;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
      v33 = *(v32 - 8);
      v34 = v28 + *(v33 + 72) * v27;
      v35 = v78;
      v36 = v75;
      (*(v33 + 16))(&v75[*(v78 + 48)], v34, v32);
      *v36 = v30;
      v36[1] = v31;
      v37 = v76;
      sub_1D4FB8058();
      v38 = *(v35 + 48);
      swift_getKeyPath();

      v39 = v77;
      swift_getAtKeyPath();

      if (__swift_getEnumTagSinglePayload(v39, 1, v79) != 1)
      {
        break;
      }

      sub_1D4E50004(v37, &qword_1EC7EB948, &qword_1D561F128);
      result = sub_1D4E50004(v39, &qword_1EC7ECE28, &qword_1D56233B8);
      v25 = v24;
      v22 = v73;
      v18 = v74;
      if (!v21)
      {
LABEL_7:
        while (1)
        {
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v24 >= v22)
          {

            return v72;
          }

          v21 = *(v18 + 8 * v24);
          ++v25;
          if (v21)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v81 = v33;
    v66 = v32;
    v40 = *v69;
    v41 = v68;
    v42 = v79;
    (*v69)(v68, v39, v79);
    sub_1D4FB8058();
    v65 = v40;
    v40(v70, v41, v42);
    v43 = v72;
    if (v72[3] <= v72[2])
    {
      sub_1D52C6E20();
      v43 = v82;
    }

    v45 = *v71;
    v44 = *(v71 + 1);
    v46 = v43[5];
    v47 = v43;
    sub_1D56162D8();
    v64 = v44;
    sub_1D5614E28();
    result = sub_1D5616328();
    v48 = v47 + 8;
    v72 = v47;
    v49 = -1 << *(v47 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    v52 = v66;
    if (((-1 << v50) & ~v47[(v50 >> 6) + 8]) == 0)
    {
      break;
    }

    v53 = __clz(__rbit64((-1 << v50) & ~v47[(v50 >> 6) + 8])) | v50 & 0x7FFFFFFFFFFFFFC0;
    v54 = v81;
LABEL_24:
    v59 = *(v78 + 48);
    *(v48 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v60 = v72;
    v61 = (v72[6] + 16 * v53);
    v62 = v64;
    *v61 = v45;
    v61[1] = v62;
    v65((v60[7] + *(v67 + 72) * v53), v70, v79);
    ++v60[2];
    result = (*(v54 + 8))(&v71[v59], v52);
    v22 = v73;
    v18 = v74;
  }

  v55 = 0;
  v56 = (63 - v49) >> 6;
  v54 = v81;
  while (++v51 != v56 || (v55 & 1) == 0)
  {
    v57 = v51 == v56;
    if (v51 == v56)
    {
      v51 = 0;
    }

    v55 |= v57;
    v58 = v48[v51];
    if (v58 != -1)
    {
      v53 = __clz(__rbit64(~v58)) + (v51 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D4FB627C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE30, &qword_1D56233F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v63 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v79);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v63 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
  v11 = *(*(v78 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v78);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v63 - v16;
  v18 = a1 + 64;
  v17 = *(a1 + 64);
  v72 = MEMORY[0x1E69E7CC8];
  v82 = MEMORY[0x1E69E7CC8];
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v67 = v6;
  v69 = (v6 + 32);
  v80 = a1;

  v24 = 0;
  v73 = v22;
  v74 = a1 + 64;
  v77 = v5;
  while (1)
  {
    v25 = v24;
    if (!v21)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v24 = v25;
LABEL_10:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v24 << 6);
      v28 = *(v80 + 56);
      v29 = (*(v80 + 48) + 16 * v27);
      v30 = *v29;
      v81 = v29[1];
      v31 = v81;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
      v33 = *(v32 - 8);
      v34 = v28 + *(v33 + 72) * v27;
      v35 = v78;
      v36 = v75;
      (*(v33 + 16))(&v75[*(v78 + 48)], v34, v32);
      *v36 = v30;
      v36[1] = v31;
      v37 = v76;
      sub_1D4FB8058();
      v38 = *(v35 + 48);
      swift_getKeyPath();

      v39 = v77;
      swift_getAtKeyPath();

      if (__swift_getEnumTagSinglePayload(v39, 1, v79) != 1)
      {
        break;
      }

      sub_1D4E50004(v37, &qword_1EC7EB948, &qword_1D561F128);
      result = sub_1D4E50004(v39, &qword_1EC7ECE30, &qword_1D56233F8);
      v25 = v24;
      v22 = v73;
      v18 = v74;
      if (!v21)
      {
LABEL_7:
        while (1)
        {
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v24 >= v22)
          {

            return v72;
          }

          v21 = *(v18 + 8 * v24);
          ++v25;
          if (v21)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v81 = v33;
    v66 = v32;
    v40 = *v69;
    v41 = v68;
    v42 = v79;
    (*v69)(v68, v39, v79);
    sub_1D4FB8058();
    v65 = v40;
    v40(v70, v41, v42);
    v43 = v72;
    if (v72[3] <= v72[2])
    {
      sub_1D52C6DFC();
      v43 = v82;
    }

    v45 = *v71;
    v44 = *(v71 + 1);
    v46 = v43[5];
    v47 = v43;
    sub_1D56162D8();
    v64 = v44;
    sub_1D5614E28();
    result = sub_1D5616328();
    v48 = v47 + 8;
    v72 = v47;
    v49 = -1 << *(v47 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    v52 = v66;
    if (((-1 << v50) & ~v47[(v50 >> 6) + 8]) == 0)
    {
      break;
    }

    v53 = __clz(__rbit64((-1 << v50) & ~v47[(v50 >> 6) + 8])) | v50 & 0x7FFFFFFFFFFFFFC0;
    v54 = v81;
LABEL_24:
    v59 = *(v78 + 48);
    *(v48 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v60 = v72;
    v61 = (v72[6] + 16 * v53);
    v62 = v64;
    *v61 = v45;
    v61[1] = v62;
    v65((v60[7] + *(v67 + 72) * v53), v70, v79);
    ++v60[2];
    result = (*(v54 + 8))(&v71[v59], v52);
    v22 = v73;
    v18 = v74;
  }

  v55 = 0;
  v56 = (63 - v49) >> 6;
  v54 = v81;
  while (++v51 != v56 || (v55 & 1) == 0)
  {
    v57 = v51 == v56;
    if (v51 == v56)
    {
      v51 = 0;
    }

    v55 |= v57;
    v58 = v48[v51];
    if (v58 != -1)
    {
      v53 = __clz(__rbit64(~v58)) + (v51 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D4FB6898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1D4FB6938@<X0>(uint64_t a1@<X8>)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60) + 48);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70) + 48);

  return sub_1D4FB68D4();
}

uint64_t sub_1D4FB69B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_1D4FB6AF4(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

unint64_t sub_1D4FB6A28()
{
  result = qword_1EDD54F28;
  if (!qword_1EDD54F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F28);
  }

  return result;
}

uint64_t sub_1D4FB6A7C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4FB6AF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for GenericMusicItem();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  v52 = type metadata accessor for LooselyComparableTypedIdentifier();
  v56 = *(v52 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE70, &unk_1D563ADF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v51 - v22;
  sub_1D4FB6898(a1, a2, a3, v61);
  v57 = v61[0];
  v58 = v61[1];
  v59 = v61[2];
  v60 = v62;
  v54 = a1;

  v53 = a3;

  while (1)
  {
    sub_1D4EFE934();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
    {
      sub_1D4E6456C();
    }

    v25 = *(v24 + 48);
    sub_1D4FB81A8();
    sub_1D4FB81A8();
    v26 = *a5;
    v34 = sub_1D4F0DDB4(v19);
    v35 = v26[2];
    v36 = (v27 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v27;
    if (v26[3] >= v37)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        sub_1D5615D88();
      }
    }

    else
    {
      sub_1D52C7190(v37, a4 & 1, v28, v29, v30, v31, v32, v33, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1));
      v39 = *a5;
      v40 = sub_1D4F0DDB4(v19);
      if ((v38 & 1) != (v41 & 1))
      {
        goto LABEL_16;
      }

      v34 = v40;
    }

    v42 = *a5;
    if (v38)
    {
      sub_1D4FB80B0();
      sub_1D4E58460(v16, type metadata accessor for GenericMusicItem);
      sub_1D4E58460(v19, type metadata accessor for LooselyComparableTypedIdentifier);
      sub_1D4F159C4(v14, v42[7] + *(v63 + 72) * v34);
      a4 = 1;
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = v42[6];
      v44 = *(v56 + 72);
      sub_1D4FB81A8();
      v45 = v42[7];
      v46 = *(v63 + 72);
      sub_1D4FB81A8();
      v47 = v42[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_15;
      }

      v42[2] = v49;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D4FB6F44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_53_7(a1, a2, a3, a4, a5, a6, a7, a8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  sub_1D5616328();
  v9 = *(v8 + 56);
  v10 = *(v8 + 32);
  OUTLINED_FUNCTION_15_0();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;

  v17 = 0;
  v18 = 0;
  if (v13)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_55_9();
      v22 = (*(v8 + 48) + ((v20 << 10) | (16 * v21)));
      v23 = *v22;
      v24 = v22[1];
      sub_1D56162D8();

      sub_1D5614E28();

      v17 ^= sub_1D5616328();
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x1DA6EC0D0](0);
    }

    ++v18;
    if (*(v8 + 56 + 8 * v19))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4FB7060()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v57 = _s13PersistedDateVMa();
  v4 = OUTLINED_FUNCTION_14(v57);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v56 = v50 - v12;
  v55 = _s10DescriptorVMa();
  v13 = OUTLINED_FUNCTION_4(v55);
  v54 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v53 = v50 - v21;
  v50[1] = v3;
  memcpy(v60, v3, sizeof(v60));
  v52 = sub_1D5616328();
  v23 = v1 + 56;
  v22 = *(v1 + 56);
  v24 = *(v1 + 32);
  OUTLINED_FUNCTION_15_0();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;
  v58 = v1;

  v30 = 0;
  v31 = 0;
  if (!v27)
  {
    goto LABEL_3;
  }

  do
  {
    v59 = v30;
LABEL_7:
    v33 = *(v58 + 48);
    v34 = *(v54 + 72);
    OUTLINED_FUNCTION_8_29();
    sub_1D4FB80B0();
    OUTLINED_FUNCTION_31_15();
    OUTLINED_FUNCTION_159();
    sub_1D4FB81A8();
    sub_1D56162D8();
    v35 = *v19;
    v36 = v19[1];
    sub_1D5614E28();
    v37 = v55;
    v38 = v55[5];
    sub_1D560C328();
    OUTLINED_FUNCTION_30_10();
    sub_1D4FB8108(&qword_1EDD5CF60, v39);
    sub_1D5614CB8();
    v40 = *(v19 + v37[6]);
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](*(v19 + v37[7]));
    MEMORY[0x1DA6EC0D0](*(v19 + v37[8]));
    v41 = v19 + v37[9];
    sub_1D5614CB8();
    v42 = v19 + v37[10];
    v43 = v56;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v43, 1, v57);
    if (v44)
    {
      sub_1D56162F8();
    }

    else
    {
      OUTLINED_FUNCTION_14_18();
      v45 = v51;
      sub_1D4FB81A8();
      sub_1D56162F8();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_4_22();
      sub_1D4E58460(v45, v46);
    }

    v47 = v59;
    v27 &= v27 - 1;
    v48 = sub_1D5616328();
    OUTLINED_FUNCTION_10_26();
    sub_1D4E58460(v19, v49);
    v30 = v48 ^ v47;
  }

  while (v27);
LABEL_3:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      MEMORY[0x1DA6EC0D0](v30);
      OUTLINED_FUNCTION_46();
      return;
    }

    v27 = *(v23 + 8 * v32);
    ++v31;
    if (v27)
    {
      v59 = v30;
      v31 = v32;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1D4FB742C(const void *a1, uint64_t a2)
{
  v4 = sub_1D5610088();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v40 - v10;
  v46 = type metadata accessor for MusicItemTypedIdentifier();
  v45 = *(v46 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v14 = (v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v44 = sub_1D5616328();
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v42 = (v5 + 32);
  v41 = (v5 + 8);
  v48 = a2;

  v21 = 0;
  v22 = 0;
  for (i = v4; v18; v21 = v39 ^ v38)
  {
    v49 = v21;
LABEL_9:
    v24 = v11;
    v25 = *(v48 + 48) + *(v45 + 72) * (__clz(__rbit64(v18)) | (v22 << 6));
    sub_1D4FB80B0();
    sub_1D56162D8();
    v26 = *v14;
    v27 = v14[1];
    sub_1D5614E28();
    v28 = v14[2];
    MEMORY[0x1DA6EC0D0](*(v28 + 16));
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (v28 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;

        sub_1D5614E28();

        v30 += 2;
        --v29;
      }

      while (v29);
    }

    v33 = v46;
    v34 = *(v46 + 24);
    sub_1D560D9A8();
    sub_1D4FB8108(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
    sub_1D5614CB8();
    v35 = *(v33 + 28);
    v11 = v24;
    sub_1D4FB8150();
    v36 = i;
    if (__swift_getEnumTagSinglePayload(v24, 1, i) == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      v37 = v43;
      (*v42)(v43, v24, v36);
      sub_1D56162F8();
      sub_1D4FB8108(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
      sub_1D5614CB8();
      (*v41)(v37, v36);
    }

    v38 = v49;
    v18 &= v18 - 1;
    v39 = sub_1D5616328();
    result = sub_1D4E58460(v14, type metadata accessor for MusicItemTypedIdentifier);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return MEMORY[0x1DA6EC0D0](v21);
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      v49 = v21;
      v22 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4FB78D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_53_7(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  sub_1D5616328();
  v9 = 0;
  v10 = 0;
  v11 = *(v8 + 56);
  v12 = *(v8 + 32);
  OUTLINED_FUNCTION_15_0();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  if ((v14 & v13) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      MEMORY[0x1DA6EC0D0](v9);
      return;
    }

    v15 = *(v8 + 56 + 8 * v18);
    ++v10;
    if (v15)
    {
      v10 = v18;
      do
      {
LABEL_7:
        OUTLINED_FUNCTION_42_13();
        v21 = *(v20 + v19);
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](v21);
        v9 ^= sub_1D5616328();
      }

      while (v15);
      continue;
    }
  }

  __break(1u);
}

void sub_1D4FB79BC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MusicSuggestedSongsEntry();
  v5 = OUTLINED_FUNCTION_4(v4);
  v31 = v6;
  v32 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  memcpy(v33, v3, sizeof(v33));
  sub_1D5616328();
  v13 = *(v1 + 56);
  v14 = *(v1 + 32);
  OUTLINED_FUNCTION_15_0();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;

  v20 = 0;
  v21 = 0;
  if (v17)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      MEMORY[0x1DA6EC0D0](v20);
      OUTLINED_FUNCTION_46();
      return;
    }

    v17 = *(v1 + 56 + 8 * v22);
    ++v21;
    if (v17)
    {
      v21 = v22;
      do
      {
LABEL_7:
        v17 &= v17 - 1;
        v23 = *(v1 + 48);
        v24 = *(v31 + 72);
        OUTLINED_FUNCTION_13_26();
        sub_1D4FB80B0();
        OUTLINED_FUNCTION_27_12();
        sub_1D4FB81A8();
        sub_1D56162D8();
        sub_1D5613838();
        OUTLINED_FUNCTION_26_15();
        sub_1D4FB8108(&qword_1EC7EB458, v25);
        sub_1D5614CB8();
        v26 = (v11 + *(v32 + 20));
        v27 = *v26;
        v28 = v26[1];
        sub_1D5614E28();
        v29 = sub_1D5616328();
        OUTLINED_FUNCTION_11_26();
        sub_1D4E58460(v11, v30);
        v20 ^= v29;
      }

      while (v17);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1D4FB7BDC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D5616328();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_15_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_42_13();
      v16 = *(v15 + v14);
      sub_1D56162D8();
      sub_1D5614E28();

      v11 ^= sub_1D5616328();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1DA6EC0D0](0);
    }

    ++v12;
    if (*(a2 + 56 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4FB7D90()
{
  sub_1D4FB7E44();
  if (v0 <= 0x3F)
  {
    sub_1D4FB7EA8();
    if (v1 <= 0x3F)
    {
      sub_1D4FB7F54();
      if (v2 <= 0x3F)
      {
        sub_1D560CD48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D4FB7E44()
{
  if (!qword_1EDD52898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECDF8, ":/\b");
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52898);
    }
  }
}

void sub_1D4FB7EA8()
{
  if (!qword_1EDD529D0)
  {
    type metadata accessor for LooselyComparableTypedIdentifier();
    type metadata accessor for GenericMusicItem();
    sub_1D4FB8108(qword_1EDD54BB8, type metadata accessor for LooselyComparableTypedIdentifier);
    v0 = sub_1D5614C78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD529D0);
    }
  }
}

void sub_1D4FB7F54()
{
  if (!qword_1EDD52720)
  {
    type metadata accessor for MusicItemTypedIdentifier();
    sub_1D4FB8108(qword_1EDD5B9F8, type metadata accessor for MusicItemTypedIdentifier);
    v0 = sub_1D56155D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52720);
    }
  }
}

uint64_t sub_1D4FB7FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FB8058()
{
  OUTLINED_FUNCTION_69_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D4FB80B0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D4FB8108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4FB8150()
{
  OUTLINED_FUNCTION_69_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D4FB81A8()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_25()
{
  v2 = v1[105];
  v3 = v1[104];
  v4 = v1[103];
  v5 = v1[100] + 8;
  return v0;
}

void OUTLINED_FUNCTION_37_13()
{
  *(v4 - 320) = v0;
  *(v4 - 312) = v1;
  *(v4 - 280) = v3;
  *(v4 - 256) = v2;
}

uint64_t OUTLINED_FUNCTION_62_11()
{
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
}

void *OUTLINED_FUNCTION_65_10(void *a1)
{

  return memcpy(a1, (v1 + 208), 0xC0uLL);
}

uint64_t sub_1D4FB8344()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB83E4()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB848C()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB8568()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB85D8()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8678()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB86E0()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB87D0()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8854()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8908()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8A50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      OUTLINED_FUNCTION_8_30();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB8B68()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB8C38(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_8_30();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB8D68()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8DE8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_2_21();
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB8E88()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB8F60()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8FE0()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9064()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB90D0()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB91B8()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9210()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9298()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9320(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_8_30();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB9408()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB94CC()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB95B4()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9640()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB96D0()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB974C()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB97E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_4_23();
}

uint64_t sub_1D4FB9850(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_4_23();
}

uint64_t sub_1D4FB9894()
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9918(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_2_21();
      break;
    case 6:
      OUTLINED_FUNCTION_9_27();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB9AB8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_2_21();
      break;
    case 3:
      OUTLINED_FUNCTION_9_27();
      break;
    default:
      OUTLINED_FUNCTION_8_30();
      break;
  }

  sub_1D5614E28();
}

uint64_t static MusicSiriRepresentation.ParsedIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v26 = *a1;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v21 = *a2;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  sub_1D4EF2170(v26, v4, v5, v6, v7);
  sub_1D4EF2170(v21, v8, v9, v10, v11);
  v12 = static MusicSiriRepresentation.ParsedIdentifier.== infix(_:_:)(&v26, &v21);
  sub_1D4EF21B4(v21, v22, v23, v24, v25);
  sub_1D4EF21B4(v26, v27, v28, v29, v30);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers();
  v14 = *(v13 + 20);
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v13 + 24);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if (v16 == *v18 && v17 == v18[1])
  {
    return 1;
  }

  return sub_1D5616168();
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.init(mainID:musicIdentifierSet:originalID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 32) = v9;
  v11 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers();
  v12 = *(v11 + 20);
  v13 = sub_1D560D838();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  v15 = (a5 + *(v11 + 24));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.mainID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1D4EF2170(v2, v3, v4, v5, v6);
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.musicIdentifierSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers() + 20);
  v4 = sub_1D560D838();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.originalID.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers()
{
  result = qword_1EDD5BB20;
  if (!qword_1EDD5BB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.hash(into:)()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  if (v0[4])
  {
    MEMORY[0x1DA6EC0D0](1);
    MEMORY[0x1DA6EC100](v3);
    sub_1D5614E28();
    MusicSiriRepresentation.Kind.rawValue.getter();
    OUTLINED_FUNCTION_4_23();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614E28();
    sub_1D5614E28();
  }

  v6 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers();
  v7 = *(v6 + 20);
  sub_1D560D838();
  OUTLINED_FUNCTION_1_37();
  sub_1D4FBA86C(v8, v9);
  sub_1D5614CB8();
  v10 = (v1 + *(v6 + 24));
  v11 = *v10;
  v12 = v10[1];

  return sub_1D5614E28();
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.hashValue.getter()
{
  v1 = v0;
  sub_1D56162D8();
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  if (v0[4])
  {
    MEMORY[0x1DA6EC0D0](1);
    MEMORY[0x1DA6EC100](v3);
    sub_1D5614E28();
    MusicSiriRepresentation.Kind.rawValue.getter();
    sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614E28();
    sub_1D5614E28();
  }

  v6 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers();
  v7 = *(v6 + 20);
  sub_1D560D838();
  OUTLINED_FUNCTION_1_37();
  sub_1D4FBA86C(v8, v9);
  sub_1D5614CB8();
  v10 = (v1 + *(v6 + 24));
  v11 = *v10;
  v12 = v10[1];
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D4FBA128()
{
  sub_1D56162D8();
  MusicSiriRepresentation.ParsedIdentifiers.hash(into:)();
  return sub_1D5616328();
}

unint64_t MusicSiriRepresentation.ParsedIdentifiers.description.getter()
{
  MEMORY[0x1DA6EAC70](0x203A44496E69616DLL, 0xE800000000000000);
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000002ALL;
}

uint64_t static MusicSiriRepresentation.parse(_:includeExtendedIdentifierSet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v56) = a3;
  v54 = a4;
  v6 = sub_1D560C448();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5();
  v57 = v9 - v8;
  v10 = sub_1D560C468();
  v11 = OUTLINED_FUNCTION_4(v10);
  v58 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = sub_1D560D838();
  v19 = OUTLINED_FUNCTION_4(v18);
  v52 = v20;
  v53 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v55 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v52 - v27;
  v29 = sub_1D560BC78();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  sub_1D560BC48();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1D4FBA684(v28);
    sub_1D560C438();
    sub_1D4FBA6EC(MEMORY[0x1E69E7CC0]);
    sub_1D4FBA86C(&qword_1EC7ECE80, MEMORY[0x1E6969C20]);
    sub_1D560BE88();
    sub_1D560C458();
    (*(v58 + 8))(v17, v10);
    return swift_willThrow();
  }

  else
  {
    (*(v32 + 32))(v37, v28, v29);
    if ((v56 & 0x100000000) != 0)
    {
      v44 = v64;
      sub_1D55C4D4C(a1, a2, v37, v39, v40, v41, v42, v43, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
      if (v44)
      {
        return (*(v32 + 8))(v37, v29);
      }

      else
      {
        v46 = v59;
        v45 = v60;
        v57 = v61;
        v58 = v62;
        LODWORD(v64) = v63;
        v47 = v55;
        sub_1D55C5FA8(v37);
        (*(v32 + 8))(v37, v29);
        v48 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers();
        v49 = v54;
        (*(v52 + 32))(v54 + *(v48 + 20), v47, v53);
        *v49 = v46;
        *(v49 + 8) = v45;
        v50 = v58;
        *(v49 + 16) = v57;
        *(v49 + 24) = v50;
        *(v49 + 32) = v64;
        v51 = (v49 + *(v48 + 24));
        *v51 = a1;
        v51[1] = a2;
      }
    }

    else
    {
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D4FBA684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4FBA6EC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE90, "6-\b");
  v2 = sub_1D5615E88();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1D4FBA9D8(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1D4FBA960(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1D4E519A8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D4FBA86C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4FBA8DC()
{
  result = sub_1D560D838();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D4FBA960(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D56162D8();
  sub_1D5614E28();
  v6 = sub_1D5616328();

  return sub_1D4E4F548(a1, a2, v6);
}

uint64_t sub_1D4FBA9D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE98, ":-\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest()
{
  result = qword_1EDD59500;
  if (!qword_1EDD59500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4FBAACC()
{
  sub_1D5614898();
  if (v0 <= 0x3F)
  {
    sub_1D4FBAB50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4FBAB50()
{
  if (!qword_1EDD527E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7ED3F0, "r,\b");
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD527E8);
    }
  }
}

uint64_t sub_1D4FBABB4()
{
  v1[62] = v0;
  v2 = sub_1D560E728();
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  v1[63] = OUTLINED_FUNCTION_127();
  v5 = sub_1D560D9A8();
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  v1[64] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560F148();
  v1[65] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[66] = v9;
  v11 = *(v10 + 64) + 15;
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v12 = type metadata accessor for MusicCatalogTracklistIdentifiersRequest();
  v1[69] = v12;
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  v1[70] = OUTLINED_FUNCTION_127();
  v15 = sub_1D5613D28();
  v1[71] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[72] = v16;
  v18 = *(v17 + 64);
  v1[73] = OUTLINED_FUNCTION_127();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v1[74] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[75] = v20;
  v22 = *(v21 + 64);
  v1[76] = OUTLINED_FUNCTION_127();
  v23 = type metadata accessor for Playlist.Entry.InternalItem();
  v1[77] = v23;
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  v1[78] = OUTLINED_FUNCTION_127();
  v26 = sub_1D560D838();
  v1[79] = v26;
  OUTLINED_FUNCTION_69(v26);
  v1[80] = v27;
  v29 = *(v28 + 64) + 15;
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v30 = sub_1D5614828();
  v1[86] = v30;
  OUTLINED_FUNCTION_69(v30);
  v1[87] = v31;
  v33 = *(v32 + 64);
  v1[88] = OUTLINED_FUNCTION_127();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v1[89] = v34;
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  v1[90] = OUTLINED_FUNCTION_127();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  v1[91] = OUTLINED_FUNCTION_127();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[92] = v40;
  OUTLINED_FUNCTION_69(v40);
  v1[93] = v41;
  v43 = *(v42 + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v44 = sub_1D560DE08();
  v1[96] = v44;
  OUTLINED_FUNCTION_69(v44);
  v1[97] = v45;
  v47 = *(v46 + 64);
  v1[98] = OUTLINED_FUNCTION_127();
  v48 = sub_1D5614898();
  v1[99] = v48;
  OUTLINED_FUNCTION_69(v48);
  v1[100] = v49;
  v51 = *(v50 + 64);
  v1[101] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v52, v53, v54);
}

uint64_t sub_1D4FBAFD0()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v4 = swift_allocObject();
  v0[102] = v4;
  *(v4 + 16) = xmmword_1D561EAC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  *(v4 + 32) = sub_1D560D208();
  (*(v2 + 104))(v1, *MEMORY[0x1E69750B0], v3);
  v5 = *(MEMORY[0x1E6975428] + 4);
  v6 = swift_task_alloc();
  v0[103] = v6;
  v7 = sub_1D4FBC9E0(qword_1EDD52A80, MEMORY[0x1E69773E0]);
  *v6 = v0;
  v6[1] = sub_1D4FBB154;
  v8 = v0[101];
  v9 = v0[99];
  v10 = v0[98];
  v11 = v0[62];
  v12 = MEMORY[0x1E69773A0];
  v13 = MEMORY[0x1E6977378];

  return MEMORY[0x1EEDCF240](v8, v4, v10, v9, v12, v13, v7);
}

uint64_t sub_1D4FBB154()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = v5[103];
  v7 = v5[102];
  v8 = v5[98];
  v9 = v5[97];
  v10 = v5[96];
  v11 = *v1;
  OUTLINED_FUNCTION_8();
  *v12 = v11;
  *(v13 + 832) = v0;

  (*(v9 + 8))(v8, v10);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D4FBB2DC()
{
  v110 = (v0 + 52);
  v1 = v0[101];
  v2 = v0[92];
  v3 = v0[91];
  sub_1D5614858();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v0[92];
    v5 = v0[91];
    v6 = v0[86];
    v7 = v0[95];
    sub_1D560D9F8();
    if (__swift_getEnumTagSinglePayload(v5, 1, v4) != 1)
    {
      sub_1D4E765C8(v0[91], &qword_1EC7EC450, &unk_1D5621060);
    }
  }

  else
  {
    (*(v0[93] + 32))(v0[95], v0[91], v0[92]);
  }

  v107 = (v0 + 47);
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[87];
  v11 = v0[80];
  (*(v0[93] + 16))(v0[94], v0[95], v0[92]);
  v113 = v0;
  sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
  sub_1D5614F98();
  v12 = *(v9 + 36);
  v108 = (v10 + 8);
  v109 = (v10 + 16);
  v111 = v11 + 32;
  v112 = v11;
  OUTLINED_FUNCTION_14_1();
  v13 = v8;
  v14 = v113;
  sub_1D4E62A60(v15, &unk_1EC7F6A30, &qword_1D561C4C0);
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v14[92];
    v18 = v14[90];
    sub_1D5615648();
    if (*(v13 + v12) == v14[60])
    {
      break;
    }

    v19 = v14[92];
    v20 = v14[90];
    v21 = v14[88];
    v22 = v14[86];
    v115 = v14[85];
    v116 = v16;
    v23 = v14[78];
    v114 = v14[77];
    v24 = sub_1D5615688();
    (*v109)(v21);
    v24(v110, 0);
    sub_1D5615658();
    Playlist.Entry.internalItem.getter();
    sub_1D4FBC9E0(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem);
    sub_1D560EC98();
    v25 = v23;
    v16 = v116;
    sub_1D4FBCEB4(v25, type metadata accessor for Playlist.Entry.InternalItem);
    (*v108)(v21, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = *(v116 + 16);
      sub_1D4F00554();
      v16 = isUniquelyReferenced_nonNull_native;
    }

    v32 = *(v16 + 16);
    v14 = v113;
    if (v32 >= *(v16 + 24) >> 1)
    {
      sub_1D4F00554();
      v16 = isUniquelyReferenced_nonNull_native;
    }

    v33 = v113[85];
    v34 = v113[79];
    *(v16 + 16) = v32 + 1;
    OUTLINED_FUNCTION_6_29(isUniquelyReferenced_nonNull_native, v33, v34, v27, v28, v29, v30, v31, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
    (*(v37 + 32))(v35 + v36 * v32);
  }

  v39 = v14[62];
  sub_1D4E765C8(v14[90], &qword_1EC7ECEA0, &qword_1D5666390);
  sub_1D52B5A20();
  v41 = v40;
  v14[105] = v40;
  v42 = *(v39 + *(type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest() + 20));
  sub_1D4ECCD9C(v42);
  if (!v14[10])
  {
    v55 = &unk_1EC7ECEB0;
    v56 = &unk_1D56236F0;
    v57 = (v14 + 7);
    goto LABEL_20;
  }

  sub_1D4E48324((v14 + 7), (v14 + 2));
  sub_1D4E628D4((v14 + 2), (v14 + 42));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEB8, &qword_1D56236F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v14 + 2);
    *(v107 + 32) = 0;
    *v107 = 0u;
    *(v107 + 16) = 0u;
    v55 = &unk_1EC7ECEC0;
    v56 = &unk_1D5623700;
    v57 = v107;
LABEL_20:
    sub_1D4E765C8(v57, v55, v56);
    v58 = *(v42 + 16);
    v59 = MEMORY[0x1E69E7CC0];
    if (v58)
    {
      v118 = v41;
      v119 = MEMORY[0x1E69E7CC0];
      sub_1D4F03EEC();
      v59 = v119;
      v60 = v42 + 32;
      do
      {
        sub_1D4E628D4(v60, (v14 + 12));
        sub_1D4E628D4((v14 + 12), (v14 + 22));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
        v61 = swift_dynamicCast();
        v62 = v14[81];
        if (v61)
        {
          sub_1D4E48324((v14 + 27), (v14 + 17));
          v63 = v14[20];
          v64 = v113[21];
          __swift_project_boxed_opaque_existential_1(v113 + 17, v63);
          OUTLINED_FUNCTION_201();
          v14 = v113;
          sub_1D560D078();
          v65 = v113[36];
          __swift_project_boxed_opaque_existential_1(v14 + 32, v14[35]);
          sub_1D560EC98();
          __swift_destroy_boxed_opaque_existential_1(v113 + 32);
          __swift_destroy_boxed_opaque_existential_1(v113 + 17);
        }

        else
        {
          v14[31] = 0;
          *(v14 + 29) = 0u;
          *(v14 + 27) = 0u;
          sub_1D4E765C8((v14 + 27), &qword_1EC7EC520, &unk_1D5621050);
          v66 = v14[16];
          __swift_project_boxed_opaque_existential_1(v14 + 12, v14[15]);
          OUTLINED_FUNCTION_14_19();
        }

        v67 = __swift_destroy_boxed_opaque_existential_1(v14 + 12);
        v73 = *(v119 + 16);
        if (v73 >= *(v119 + 24) >> 1)
        {
          sub_1D4F03EEC();
        }

        v74 = v14[81];
        v75 = v14[79];
        *(v119 + 16) = v73 + 1;
        OUTLINED_FUNCTION_6_29(v67, v74, v75, v68, v69, v70, v71, v72, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
        (*(v78 + 32))(v76 + v77 * v73);
        v60 += 40;
        --v58;
      }

      while (v58);
      v41 = v118;
    }

    v79 = v14[101];
    v80 = v14[100];
    v81 = v14;
    v82 = v14[99];
    v83 = v81[95];
    v84 = v81[93];
    v85 = v81[92];
    v86 = v81[62];
    sub_1D4FBCA64(v59, v41);

    (*(v84 + 8))(v83, v85);
    v87 = *(v80 + 8);
    v88 = OUTLINED_FUNCTION_201();
    v89(v88);
    v90 = v81[101];
    v91 = v81[98];
    v92 = v81[95];
    v93 = v81[94];
    OUTLINED_FUNCTION_1_38();
    OUTLINED_FUNCTION_10_28();

    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_97();

    __asm { BRAA            X4, X16 }
  }

  v43 = v14[84];
  v44 = v14[80];
  v45 = v14[79];
  sub_1D4E48324(v107, (v14 + 37));
  v46 = v14[41];
  __swift_project_boxed_opaque_existential_1(v14 + 37, v14[40]);
  OUTLINED_FUNCTION_14_19();
  v47 = sub_1D560D668();
  (*(v44 + 8))(v43, v45);
  if (v47)
  {
    v48 = v14[41];
    __swift_project_boxed_opaque_existential_1(v14 + 37, v14[40]);
    v49 = *(v48 + 16);
    v117 = v49 + *v49;
    v50 = v49[1];
    v51 = swift_task_alloc();
    v14[106] = v51;
    *v51 = v14;
    v51[1] = sub_1D4FBBC6C;
    v52 = v14[76];
    OUTLINED_FUNCTION_97();

    __asm { BRAA            X3, X16 }
  }

  v96 = v14[70];
  v97 = v14[69];
  sub_1D4E628D4((v14 + 37), v96);
  v98 = v96 + *(v97 + 24);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(v96 + 40) = 1;
  v99 = swift_task_alloc();
  v14[108] = v99;
  *v99 = v14;
  v99[1] = sub_1D4FBC110;
  v100 = v14[70];
  OUTLINED_FUNCTION_97();

  return sub_1D545FBE0();
}

uint64_t sub_1D4FBBC6C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v2 + 856) = v0;

  if (v0)
  {
    v8 = *(v2 + 840);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4FBBD7C()
{
  v1 = v0[76];
  v2 = v0[74];
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_1();
  v6 = sub_1D4E62A60(v3, v4, v5);
  v7 = sub_1D5615618();
  if (!v7)
  {

    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v8 = v7;
  v9 = v0[76];
  v10 = v0[74];
  v51 = MEMORY[0x1E69E7CC0];
  sub_1D4F03EEC();
  v11 = v51;
  result = sub_1D5615608();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v13 = v0[72];
    v50 = (v13 + 16);
    v14 = (v13 + 8);
    do
    {
      v15 = v0[83];
      v16 = v0[76];
      v17 = v0[74];
      v18 = v6;
      v19 = v0[73];
      v20 = v0[71];
      v21 = sub_1D5615688();
      (*v50)(v19);
      v21(v0 + 56, 0);
      swift_getAtKeyPath();
      (*v14)(v19, v20);
      v22 = *(v51 + 16);
      if (v22 >= *(v51 + 24) >> 1)
      {
        sub_1D4F03EEC();
      }

      v23 = v0[83];
      v24 = v0[80];
      v25 = v0[79];
      v26 = v0[76];
      v27 = v0[74];
      *(v51 + 16) = v22 + 1;
      OUTLINED_FUNCTION_17_20(v24);
      v30(v51 + v28 + *(v29 + 40) * v22);
      sub_1D5615658();
      --v8;
      v6 = v18;
    }

    while (v8);

LABEL_9:
    v31 = v0[76];
    v32 = v0[75];
    v33 = v0[74];
    v34 = v0[62];
    sub_1D4FBCA64(v11, v0[105]);

    (*(v32 + 8))(v31, v33);
    v35 = v0[101];
    v36 = v0[100];
    v37 = v0[99];
    v38 = v0[95];
    v39 = v0[93];
    v40 = v0[92];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v41 = *(v39 + 8);
    v42 = OUTLINED_FUNCTION_201();
    v43(v42);
    (*(v36 + 8))(v35, v37);
    __swift_destroy_boxed_opaque_existential_1(v0 + 37);
    v44 = v0[101];
    v45 = v0[98];
    v46 = v0[95];
    v47 = v0[94];
    OUTLINED_FUNCTION_1_38();
    OUTLINED_FUNCTION_10_28();

    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_97();

    __asm { BRAA            X4, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4FBC110()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 864);
  *v3 = *v1;
  v2[109] = v6;
  v2[110] = v0;

  if (v0)
  {
    v7 = v2[105];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D4FBC228()
{
  v1 = v0[109];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[66];
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D4F03EEC();
    v4 = v62;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v50 = *(v3 + 56);
    v52 = v5;
    v49 = *MEMORY[0x1E6975060];
    v48 = (v3 - 8);
    do
    {
      v58 = v4;
      v60 = v2;
      v7 = v0[68];
      v8 = v0[67];
      v56 = v0[82];
      v9 = v0[65];
      v10 = v0[63];
      v11 = v0[64];
      v52(v7, v6, v9);
      v52(v8, v7, v9);
      sub_1D560D928();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v12 = sub_1D560DB08();
      v13 = *(v12 - 8);
      v14 = *(v13 + 72);
      v15 = v0;
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D561C050;
      (*(v13 + 104))(v17 + v16, v49, v12);
      sub_1D560E718();
      v4 = v58;
      sub_1D560D798();
      (*v48)(v7, v9);
      v18 = *(v58 + 16);
      if (v18 >= *(v58 + 24) >> 1)
      {
        sub_1D4F03EEC();
        v4 = v58;
      }

      v19 = v15[82];
      v20 = v15[80];
      v21 = v15[79];
      *(v4 + 16) = v18 + 1;
      OUTLINED_FUNCTION_17_20(v20);
      v24(v4 + v22 + *(v23 + 40) * v18);
      v6 += v50;
      v2 = v60 - 1;
      v0 = v15;
    }

    while (v60 != 1);
    v25 = v15[109];
  }

  else
  {
    v26 = v0[109];

    v4 = MEMORY[0x1E69E7CC0];
  }

  v27 = v0[70];
  v28 = v0[62];
  v29 = sub_1D4FBCA64(v4, v0[105]);
  v59 = v30;
  v61 = v29;
  v57 = v31;

  OUTLINED_FUNCTION_4_24();
  sub_1D4FBCEB4(v27, v32);
  v33 = v0[101];
  v34 = v0[100];
  v35 = v0[99];
  v36 = v0[95];
  v37 = v0[93];
  v38 = v0[92];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v39 = *(v37 + 8);
  v40 = OUTLINED_FUNCTION_201();
  v41(v40);
  (*(v34 + 8))(v33, v35);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  v42 = v0[101];
  v43 = v0[98];
  v44 = v0[95];
  v45 = v0[94];
  OUTLINED_FUNCTION_1_38();
  v51 = v0[68];
  v53 = v0[67];
  v54 = v0[64];
  v55 = v0[63];

  v46 = v0[1];

  return v46(v61, v59, v57);
}

uint64_t sub_1D4FBC658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_18();
  v23 = *(v22 + 832);
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_20_7();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4FBC754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_7_28();
  __swift_destroy_boxed_opaque_existential_1(v25 + 2);
  (*(v28 + 8))(v24, v26);
  (*(v27 + 8))(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(v25 + 37);
  v29 = v25[107];
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_20_7();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4FBC894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_7_28();
  v29 = v25[70];
  OUTLINED_FUNCTION_4_24();
  sub_1D4FBCEB4(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v25 + 2);
  (*(v28 + 8))(v24, v26);
  (*(v27 + 8))(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(v25 + 37);
  v32 = v25[110];
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_20_7();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4FBC9E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4FBCA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560D838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v44 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v50 = *(a1 + 16);
  v44 = a1;
  if (v50)
  {
    v15 = 0;
    v16 = a2 + 56;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v59 = v18;
    v48 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v49 = a1 + v48;
    v19 = *(v17 + 56);
    v55 = (v17 - 8);
    v47 = (v17 + 16);
    v46 = MEMORY[0x1E69E7CC0];
    v53 = MEMORY[0x1E69E7CC0];
    v57 = v4;
    v58 = v17;
    v56 = v19;
    do
    {
      v52 = v15 + 1;
      v59(v14, v49 + v19 * v15, v4);
      v20 = 1 << *(a2 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(a2 + 56);
      v23 = (v20 + 63) >> 6;
      v24 = a2;

      v26 = 0;
      while (v22)
      {
        v27 = v26;
LABEL_13:
        v28 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v29 = v57;
        v30 = v54;
        v59(v54, *(v24 + 48) + (v28 | (v27 << 6)) * v56, v57);
        v31 = sub_1D560D528();
        v32 = *v55;
        result = (*v55)(v30, v29);
        if (v31)
        {
          a2 = v24;

          v4 = v57;
          v59(v45, v14, v57);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = *(v46 + 16);
            sub_1D4F00554();
            v46 = v42;
          }

          v33 = *(v46 + 16);
          v34 = v33 + 1;
          if (v33 >= *(v46 + 24) >> 1)
          {
            sub_1D4F00554();
            v46 = v43;
          }

          v32(v14, v4);
          v35 = v45;
          v36 = v46;
          goto LABEL_24;
        }
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          return result;
        }

        if (v27 >= v23)
        {
          break;
        }

        v22 = *(v16 + 8 * v27);
        ++v26;
        if (v22)
        {
          v26 = v27;
          goto LABEL_13;
        }
      }

      a2 = v24;

      v4 = v57;
      v59(v51, v14, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v53 + 16);
        sub_1D4F00554();
        v53 = v39;
      }

      v33 = *(v53 + 16);
      v34 = v33 + 1;
      if (v33 >= *(v53 + 24) >> 1)
      {
        sub_1D4F00554();
        v53 = v40;
      }

      (*v55)(v14, v4);
      v36 = v53;
      v35 = v51;
LABEL_24:
      *(v36 + 16) = v34;
      v37 = v36 + v48 + v33 * v56;
      v19 = v56;
      (*v47)(v37, v35, v4);
      v15 = v52;
    }

    while (v52 != v50);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
    v53 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D4FBCEB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t MusicSummary.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v10 = sub_1D560D708();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *a2 = v10;
  a2[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = a2 + *(type metadata accessor for MusicSummary() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MusicSummary()
{
  result = qword_1EC7ECF10;
  if (!qword_1EC7ECF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSummary.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicSummary.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicSummary() + 20);
  v4 = sub_1D5611AB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MusicSummary.year.getter()
{
  if (qword_1EC7E8A60 != -1)
  {
    OUTLINED_FUNCTION_9_29();
  }

  OUTLINED_FUNCTION_4_25();
  sub_1D4FBE4DC(v1, v0);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v2, v0);
  sub_1D560EC28();
  return v4;
}

uint64_t MusicSummary.playlistID.getter()
{
  if (qword_1EC7E8A68 != -1)
  {
    OUTLINED_FUNCTION_8_31();
  }

  OUTLINED_FUNCTION_4_25();
  sub_1D4FBE4DC(v1, v0);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v2, v0);
  sub_1D560EC28();
  return v4;
}

uint64_t static MusicSummary.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MusicSummary() + 20);

  return sub_1D5611A78();
}

uint64_t MusicSummary.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicSummary() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_39();
  sub_1D4FBE4DC(v4, v5);
  return sub_1D5614CB8();
}

uint64_t MusicSummary.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicSummary() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_39();
  sub_1D4FBE4DC(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FBD458(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D4FBE4DC(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FBD4FC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSummary.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicSummary.subscript.getter(void *a1)
{
  return sub_1D4FBD564(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D4FBD564(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_3_26();
  sub_1D4FBE4DC(v5, v1);
  OUTLINED_FUNCTION_6_30(&qword_1EC7EC000);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D4FBD564(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_3_26();
  sub_1D4FBE4DC(v5, v2);
  OUTLINED_FUNCTION_6_30(&qword_1EC7EC000);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D4FBD754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary);
  v12 = sub_1D4FBE4DC(&qword_1EC7ECF20, type metadata accessor for MusicSummary);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D4FBD888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary);
  v14 = sub_1D4FBE4DC(&qword_1EC7ECF20, type metadata accessor for MusicSummary);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D4FBD9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary);
  v14 = sub_1D4FBE4DC(&qword_1EC7ECF20, type metadata accessor for MusicSummary);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D4FBDB10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF28, &qword_1D56371F0);
  swift_getKeyPath();
  v0 = sub_1D560D188();

  qword_1EC87BE88 = v0;
  return result;
}

uint64_t sub_1D4FBDB84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF28, &qword_1D56371F0);
  swift_getKeyPath();
  sub_1D4F89C9C();
  v0 = sub_1D560D188();

  qword_1EC87BE90 = v0;
  return result;
}

uint64_t MusicSummary.init(from:)(uint64_t *a1)
{
  type metadata accessor for MusicSummary();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_5_23();
  sub_1D4FBE4DC(v3, v4);
  OUTLINED_FUNCTION_2_22();
  sub_1D4FBE4DC(v5, v1);
  OUTLINED_FUNCTION_7_29(&qword_1EC7EC040);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicSummary.encode(to:)()
{
  type metadata accessor for MusicSummary();
  OUTLINED_FUNCTION_5_23();
  sub_1D4FBE4DC(v1, v2);
  OUTLINED_FUNCTION_2_22();
  sub_1D4FBE4DC(v3, v0);
  OUTLINED_FUNCTION_7_29(&qword_1EC7EC040);
  return sub_1D5612688();
}

unint64_t MusicSummary.description.getter()
{
  sub_1D5615B68();

  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t MusicSummary.debugDescription.getter()
{
  strcpy(v10, "MusicSummary(");
  HIWORD(v10[1]) = -4864;
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  if (qword_1EC7E8A60 != -1)
  {
    OUTLINED_FUNCTION_9_29();
  }

  sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v4, type metadata accessor for MusicSummary);
  sub_1D560EC28();
  v5 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](0x7261657920200A2CLL, 0xEA0000000000203ALL);

  if (qword_1EC7E8A68 != -1)
  {
    OUTLINED_FUNCTION_8_31();
  }

  sub_1D560EC28();
  sub_1D5615B68();

  v6 = sub_1D560EEC8();
  v8 = v7;

  MEMORY[0x1DA6EAC70](v6, v8);

  MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5680950);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v10[0];
}

uint64_t sub_1D4FBE12C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7ECEC8 = v4;
  return result;
}

uint64_t static MusicSummary.preferredIdentifierKinds.getter()
{
  if (qword_1EC7E8A70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FBE278()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ECED0);
  __swift_project_value_buffer(v0, qword_1EC7ECED0);
  type metadata accessor for MusicSummary();
  sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary);
  return sub_1D560D988();
}

uint64_t sub_1D4FBE338()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ECEE8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7ECEE8);
  if (qword_1EC7E8A78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7ECED0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4FBE4DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4FBE524(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1D4F15A70(), (v3 & 1) != 0))
  {
    sub_1D4E5194C(*(a1 + 56) + 32 * v2, v7);

    if (swift_dynamicCast())
    {
      v4 = [objc_opt_self() typeForRawValue_];
      if ((v4 - 1) <= 0x13)
      {
        return byte_1D5623A3C[(v4 - 1)];
      }
    }
  }

  else
  {
  }

  return 15;
}

uint64_t sub_1D4FBE5E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D4FBE678;

  return MusicLibraryPlaylistDuplicateChecking.duplicateCount(for:)(v4, a2);
}

uint64_t sub_1D4FBE678(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t MusicLibraryPlaylistDuplicateChecking.duplicateCount(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D4FBE798, 0, 0);
}

uint64_t sub_1D4FBE798()
{
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  v1 = *(v3 + 8);
  sub_1D5615B68();
  sub_1D5616138();
  MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D56809B0);
  return sub_1D5615E08();
}

uint64_t dispatch thunk of MusicLibraryPlaylistDuplicateChecking.duplicateCount(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D4FBE984;

  return v11(a1, a2, a3);
}

uint64_t sub_1D4FBE984(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static Playlist.extendedStorage<A, B>(cloudMusicItem:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v251 = a6;
  v252 = a3;
  v253 = a5;
  v250 = a2;
  v255 = a1;
  v257 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v248 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v254 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v244 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v249 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v242 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v259 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13();
  v240 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v237 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  v239 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  v258 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  v245 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  v62 = OUTLINED_FUNCTION_22(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13();
  v243 = v65;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_135();
  v241 = v67;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v237 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF50, &qword_1D5623AE8);
  OUTLINED_FUNCTION_22(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v237 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_29_15(v81);
  v247 = _s15InternalStorageVMa_0();
  v82 = OUTLINED_FUNCTION_14(v247);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_16(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF60, &qword_1D5623AF8);
  OUTLINED_FUNCTION_22(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_11();
  v90 = MEMORY[0x1EEE9AC00](v89);
  v92 = &v237 - v91;
  v93 = *(a4 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5();
  v97 = v96 - v95;
  v98 = sub_1D5610588();
  v99 = OUTLINED_FUNCTION_4(v98);
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_5();
  v106 = v105 - v104;
  (*(v93 + 16))(v97, v255, a4);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v98);
    v107 = *(v101 + 32);
    v238 = v98;
    v107(v106, v92, v98);
    sub_1D5610468();
    v108 = sub_1D5610458();
    OUTLINED_FUNCTION_1(v70);
    v237 = v101;
    v255 = v106;
    if (v118)
    {
      sub_1D4E50004(v70, &qword_1EC7ECF48, &qword_1D5623AE0);
      v109 = v249;
      v110 = v242;
    }

    else
    {
      sub_1D56103D8();
      OUTLINED_FUNCTION_15_1();
      (*(v114 + 8))(v70, v108);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
      v116 = OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_57(v116, v117, v115);
      v110 = v242;
      if (v118)
      {
        sub_1D4E50004(v76, &qword_1EC7ECF50, &qword_1D5623AE8);
      }

      else
      {
        sub_1D560CD98();
        v119 = v245;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
        type metadata accessor for Playlist.Collaboration();
        sub_1D4FC1644(&qword_1EC7ECF78, type metadata accessor for Playlist.Collaboration);
        OUTLINED_FUNCTION_18_24();
        sub_1D4FC1644(v124, type metadata accessor for Playlist.Collaboration);
        OUTLINED_FUNCTION_20_26();
        OUTLINED_FUNCTION_14_20();
        sub_1D5612368();
        sub_1D4E50004(v119, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_24_0(v115);
        (*(v125 + 8))(v76, v115);
      }

      v109 = v249;
    }

    v126 = v239;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
    sub_1D5610518();
    v131 = sub_1D5610138();
    OUTLINED_FUNCTION_57(v45, 1, v131);
    if (v118)
    {
      v132 = &qword_1EC7ECF40;
      v133 = &unk_1D5623AC0;
      v134 = v45;
    }

    else
    {
      sub_1D5610108();
      OUTLINED_FUNCTION_24_0(v131);
      (*(v135 + 8))(v45, v131);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
      OUTLINED_FUNCTION_57(v126, 1, v136);
      if (!v137)
      {
        sub_1D560CD98();
        v138 = v126;
        v139 = v245;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
        type metadata accessor for Playlist.Collaborator();
        sub_1D4FC1644(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator);
        OUTLINED_FUNCTION_19_19();
        sub_1D4FC1644(v144, type metadata accessor for Playlist.Collaborator);
        OUTLINED_FUNCTION_20_26();
        OUTLINED_FUNCTION_14_20();
        sub_1D5612368();
        sub_1D4E50004(v139, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_24_0(v136);
        (*(v145 + 8))(v138, v136);
        goto LABEL_17;
      }

      v132 = &qword_1EC7EC8C8;
      v133 = &qword_1D5621E70;
      v134 = v126;
    }

    sub_1D4E50004(v134, v132, v133);
LABEL_17:
    v146 = v240;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
    sub_1D5610518();
    OUTLINED_FUNCTION_57(v146, 1, v131);
    if (v118)
    {
      v151 = &qword_1EC7ECF40;
      v152 = &unk_1D5623AC0;
      v153 = v146;
    }

    else
    {
      sub_1D56100E8();
      OUTLINED_FUNCTION_24_0(v131);
      (*(v154 + 8))(v146, v131);
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
      OUTLINED_FUNCTION_57(v110, 1, v155);
      if (!v156)
      {
        sub_1D560CD98();
        v157 = v245;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
        type metadata accessor for SocialProfile();
        sub_1D4FC1644(&qword_1EDD57510, type metadata accessor for SocialProfile);
        OUTLINED_FUNCTION_10_1();
        sub_1D4FC1644(v162, type metadata accessor for SocialProfile);
        OUTLINED_FUNCTION_20_26();
        OUTLINED_FUNCTION_14_20();
        sub_1D5612368();
        sub_1D4E50004(v157, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_24_0(v155);
        (*(v163 + 8))(v110, v155);
        goto LABEL_24;
      }

      v151 = &qword_1EC7EA7E0;
      v152 = &unk_1D5623AB0;
      v153 = v110;
    }

    sub_1D4E50004(v153, v151, v152);
LABEL_24:
    v164 = v248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
    v169 = v241;
    sub_1D5610468();
    OUTLINED_FUNCTION_1(v169);
    v170 = v244;
    if (v118)
    {
      v171 = &qword_1EC7ECF48;
      v172 = &qword_1D5623AE0;
      v173 = v169;
    }

    else
    {
      sub_1D5610428();
      OUTLINED_FUNCTION_15_1();
      (*(v174 + 8))(v169, v108);
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
      v176 = OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_57(v176, v177, v175);
      if (!v178)
      {
        sub_1D4ED3850(v250, v252, v253, v251, v179, v180, v181, v182, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
        OUTLINED_FUNCTION_24_0(v175);
        (*(v183 + 8))(v170, v175);
        goto LABEL_31;
      }

      v171 = &qword_1EC7EA798;
      v172 = &unk_1D5622EF0;
      v173 = v170;
    }

    sub_1D4E50004(v173, v171, v172);
LABEL_31:
    v184 = type metadata accessor for CuratorRelationshipProvider();
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v184);
    v188 = v243;
    sub_1D5610468();
    OUTLINED_FUNCTION_1(v188);
    if (v118)
    {
      v189 = v109;
      v190 = &qword_1EC7ECF48;
      v191 = &qword_1D5623AE0;
      v192 = v188;
    }

    else
    {
      sub_1D56103E8();
      OUTLINED_FUNCTION_15_1();
      (*(v193 + 8))(v188, v108);
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v164, 1, v194);
      v189 = v109;
      if (EnumTagSinglePayload != 1)
      {
        sub_1D560CD98();
        v197 = v245;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v198, v199, v200, v201);
        type metadata accessor for Playlist.Folder();
        sub_1D4FC1644(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder);
        OUTLINED_FUNCTION_17_21();
        sub_1D4FC1644(v202, type metadata accessor for Playlist.Folder);
        OUTLINED_FUNCTION_20_26();
        sub_1D5612368();
        sub_1D4E50004(v197, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_15_1();
        (*(v203 + 8))(v164, v194);
        v196 = 0;
        goto LABEL_38;
      }

      v190 = &qword_1EC7ECF30;
      v191 = &unk_1D5623AA0;
      v192 = v164;
    }

    sub_1D4E50004(v192, v190, v191);
    v196 = 1;
LABEL_38:
    v204 = OUTLINED_FUNCTION_71();
    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(v204, v205);
    v207 = v254;
    __swift_storeEnumTagSinglePayload(v254, v196, 1, v206);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    v208 = v246;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v212);
    v213 = v247;
    v214 = v247[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v215, v216, v217, v218);
    v219 = v213[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v220, v221, v222, v223);
    v224 = v213[7];
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v225, v226, v227, v184);
    v228 = v213[8];
    v229 = OUTLINED_FUNCTION_71();
    __swift_instantiateConcreteTypeFromMangledNameV2(v229, v230);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v231, v232, v233, v234);
    sub_1D4E68940(v256, v208, &qword_1EC7ECF58, &qword_1D5623AF0);
    sub_1D4E68940(v258, v208 + v214, &qword_1EC7EC8D0, &unk_1D5623AD0);
    sub_1D4E68940(v259, v208 + v219, &qword_1EC7EA778, &qword_1D5622E60);
    sub_1D4E68940(v189, v208 + v224, &qword_1EC7ECC80, &unk_1D5622EA0);
    sub_1D4E68940(v207, v208 + v228, &qword_1EC7ECF38, &qword_1D562E650);
    sub_1D4FC1644(&qword_1EDD5F208, _s15InternalStorageVMa_0);
    sub_1D56130F8();
    (*(v237 + 8))(v255, v238);
    sub_1D4FBFABC(v208);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v98);
  sub_1D4E50004(v92, &qword_1EC7ECF60, &qword_1D5623AF8);
LABEL_39:
  v235 = sub_1D56131D8();
  return OUTLINED_FUNCTION_23_21(v235);
}

uint64_t sub_1D4FBFABC(uint64_t a1)
{
  v2 = _s15InternalStorageVMa_0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Playlist.extendedRelationships<A, B>(_:configuration:cloudType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v228 = a4;
  v226 = a2;
  v210 = a1;
  v217 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF80, &qword_1D5623B28);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v209 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v22);
  v227 = a3;
  v207 = *(a3 - 8);
  v23 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v26 - v25);
  v27 = sub_1D5610458();
  v28 = OUTLINED_FUNCTION_4(v27);
  v218 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_16(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  v44 = OUTLINED_FUNCTION_22(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  v221 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v219 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v204 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v205 = *(v56 - 8);
  v57 = *(v205 + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v60 = &v204 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_135();
  v224 = v61;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  v225 = v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_29_15(v65);
  v66 = sub_1D5613578();
  v67 = OUTLINED_FUNCTION_4(v66);
  v222 = v68;
  v223 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  v73 = v72 - v71;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v204 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF50, &qword_1D5623AE8);
  v81 = OUTLINED_FUNCTION_22(v80);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13();
  v220 = v84;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_2();
  v230 = v86;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v88);
  v90 = v89;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v204 - v94;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  v96 = OUTLINED_FUNCTION_14(v214);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13();
  v213 = v99;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_135();
  v206 = v101;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v204 - v103;
  (*(v90 + 16))(v95, v210, v88);
  OUTLINED_FUNCTION_57(v95, 1, AssociatedTypeWitness);
  v215 = AssociatedTypeWitness;
  if (v105)
  {
    (*(v90 + 8))(v95, v88);
    v106 = 1;
  }

  else
  {
    v106 = swift_dynamicCast() ^ 1;
  }

  __swift_storeEnumTagSinglePayload(v104, v106, 1, v27);
  sub_1D505BC94();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_57(v79, 1, v107);
  v216 = v60;
  if (v105)
  {
    sub_1D4E50004(v79, &qword_1EC7ECF58, &qword_1D5623AF0);
  }

  else
  {
    type metadata accessor for Playlist.Collaboration();
    sub_1D4FC1644(&qword_1EC7ECF78, type metadata accessor for Playlist.Collaboration);
    OUTLINED_FUNCTION_18_24();
    sub_1D4FC1644(v108, type metadata accessor for Playlist.Collaboration);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v109);
    sub_1D560DA98();
    v110 = OUTLINED_FUNCTION_27_13();
    v111(v110);
    OUTLINED_FUNCTION_24_0(v107);
    (*(v112 + 8))(v79, v107);
  }

  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
  OUTLINED_FUNCTION_23_21(v113);
  sub_1D505BDF0();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_1(v55);
  v115 = v229;
  if (v105)
  {
    sub_1D4E50004(v55, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    sub_1D5613C48();
    sub_1D4FC1644(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8]);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v116);
    OUTLINED_FUNCTION_28_19();
    sub_1D560DA88();
    v117 = OUTLINED_FUNCTION_27_13();
    v118(v117);
    OUTLINED_FUNCTION_15_1();
    (*(v119 + 8))(v55, v114);
  }

  v120 = v211;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_23_21(v121);
  sub_1D505BF4C();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_1(v120);
  v123 = v219;
  v204 = v27;
  if (v105)
  {
    sub_1D4E50004(v120, &qword_1EC7ECF38, &qword_1D562E650);
    v129 = 1;
  }

  else
  {
    type metadata accessor for Playlist.Folder();
    sub_1D4FC1644(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder);
    OUTLINED_FUNCTION_17_21();
    sub_1D4FC1644(v124, type metadata accessor for Playlist.Folder);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v125);
    OUTLINED_FUNCTION_28_19();
    sub_1D560DA98();
    v126 = OUTLINED_FUNCTION_27_13();
    v127(v126);
    OUTLINED_FUNCTION_15_1();
    (*(v128 + 8))(v120, v122);
    v129 = 0;
  }

  v130 = v225;
  v131 = v123;
  v132 = v212;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
  __swift_storeEnumTagSinglePayload(v131, v129, 1, v133);
  sub_1D505C0A8();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_1(v132);
  if (v105)
  {
    sub_1D4E50004(v132, &qword_1EC7EA778, &qword_1D5622E60);
    v138 = 1;
  }

  else
  {
    type metadata accessor for SocialProfile();
    sub_1D4FC1644(&qword_1EDD57510, type metadata accessor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4FC1644(v135, type metadata accessor for SocialProfile);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v136);
    OUTLINED_FUNCTION_28_19();
    v115 = v229;
    sub_1D560DA88();
    (*(v222 + 8))(v73, v223);
    OUTLINED_FUNCTION_15_1();
    (*(v137 + 8))(v132, v134);
    v138 = 0;
  }

  v139 = v218;
  v140 = v216;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v130, v138, 1, v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
  OUTLINED_FUNCTION_57(v230, 1, v142);
  v143 = v131;
  if (v105 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110), OUTLINED_FUNCTION_1(v115), v105) && (v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10), OUTLINED_FUNCTION_57(v131, 1, v144), v105) && (OUTLINED_FUNCTION_1(v130), v105))
  {
    sub_1D4E50004(v230, &qword_1EC7ECF50, &qword_1D5623AE8);
    v145 = v215;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A8, &unk_1D5623B40);
    v146 = *(v205 + 72);
    v147 = (*(v205 + 80) + 32) & ~*(v205 + 80);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_1D5620080;
    v149 = v148 + v147;
    v150 = OUTLINED_FUNCTION_95_0();
    v151 = v204;
    if (__swift_getEnumTagSinglePayload(v150, v152, v204))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
    }

    else
    {
      v157 = OUTLINED_FUNCTION_1_40();
      v158(v157);
      sub_1D5610428();
      v159 = OUTLINED_FUNCTION_10_29();
      v160(v159);
    }

    sub_1D4F39AB0(v229, v149 + v146, &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D4F39AB0(v225, v149 + 2 * v146, &qword_1EC7EA798, &unk_1D5622EF0);
    v231 = v148;
    (*(v207 + 16))(v208, v226, v227);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7B0, &qword_1D5623B50);
    sub_1D4ED37A4();
    sub_1D5612408();
    v162 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v162, v163, v151))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
    }

    else
    {
      v168 = OUTLINED_FUNCTION_1_40();
      v169(v168);
      sub_1D5610418();
      v170 = OUTLINED_FUNCTION_10_29();
      v171(v170);
    }

    sub_1D4F39AB0(v230, v220, &qword_1EC7ECF50, &qword_1D5623AE8);
    sub_1D4F39AB0(v224, v140, &qword_1EC7EA798, &unk_1D5622EF0);
    v172 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v172, v173, v151))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
    }

    else
    {
      v178 = OUTLINED_FUNCTION_1_40();
      v179(v178);
      sub_1D5610438();
      v180 = OUTLINED_FUNCTION_10_29();
      v181(v180);
    }

    v182 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v182, v183, v151))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
    }

    else
    {
      v188 = OUTLINED_FUNCTION_1_40();
      v189(v188);
      sub_1D5610448();
      v190 = OUTLINED_FUNCTION_10_29();
      v191(v190);
    }

    sub_1D4F39AB0(v143, v221, &qword_1EC7ECF30, &unk_1D5623AA0);
    v192 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v192, v193, v151))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF88, &qword_1D5623B58);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
    }

    else
    {
      v198 = OUTLINED_FUNCTION_1_40();
      v199(v198);
      sub_1D56103F8();
      (*(v139 + 8))(v161, v151);
    }

    v145 = v215;
    v200 = v206;
    sub_1D5610408();
    sub_1D4E50004(v224, &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D4E50004(v230, &qword_1EC7ECF50, &qword_1D5623AE8);
    __swift_storeEnumTagSinglePayload(v200, 0, 1, v151);
    sub_1D4E68940(v200, v104, &qword_1EC7ECF48, &qword_1D5623AE0);
    v130 = v225;
  }

  sub_1D4F39AB0(v104, v213, &qword_1EC7ECF48, &qword_1D5623AE0);
  v201 = v217;
  v202 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v201, v202 ^ 1u, 1, v145);
  sub_1D4E50004(v130, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4E50004(v143, &qword_1EC7ECF30, &unk_1D5623AA0);
  sub_1D4E50004(v229, &qword_1EC7EA798, &unk_1D5622EF0);
  return sub_1D4E50004(v104, &qword_1EC7ECF48, &qword_1D5623AE0);
}

uint64_t Playlist.extendedAssociations<A, B>(_:configuration:cloudType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v121 = a3;
  v122 = a4;
  v120 = a2;
  v126 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v113 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v112 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v118 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v111 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_29_15(v27);
  v28 = sub_1D5613578();
  v29 = OUTLINED_FUNCTION_4(v28);
  v115 = v30;
  v116 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_16(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v108 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v110 = v44;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  v119 = v46;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v48);
  v50 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v108 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v108 - v60;
  v62 = sub_1D5610138();
  v63 = OUTLINED_FUNCTION_4(v62);
  v124 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13();
  v117 = v67;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_135();
  v109 = v69;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_2();
  v125 = v71;
  v72 = *(v50 + 16);
  v72(v55, a1, v48);
  OUTLINED_FUNCTION_57(v55, 1, AssociatedTypeWitness);
  if (v77)
  {
    (*(v50 + 8))(v55, v48);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v62);
LABEL_6:
    sub_1D4E50004(v61, &qword_1EC7ECF40, &unk_1D5623AC0);
    return (v72)(v126, a1, v48);
  }

  v76 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v61, v76 ^ 1u, 1, v62);
  OUTLINED_FUNCTION_1(v61);
  if (v77)
  {
    goto LABEL_6;
  }

  v108[0] = *(v124 + 32);
  v108[1] = v124 + 32;
  (v108[0])(v125, v61, v62);
  Playlist.collaborators.getter();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  v80 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v80, v81, v79);
  if (v82)
  {
    sub_1D4E50004(v39, &qword_1EC7EC8D0, &unk_1D5623AD0);
    v87 = v123;
    v85 = v119;
  }

  else
  {
    type metadata accessor for Playlist.Collaborator();
    sub_1D4FC1644(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator);
    OUTLINED_FUNCTION_19_19();
    sub_1D4FC1644(v83, type metadata accessor for Playlist.Collaborator);
    v84 = v114;
    sub_1D4F1ABE8(v114);
    v85 = v119;
    sub_1D560DA98();
    (*(v115 + 8))(v84, v116);
    OUTLINED_FUNCTION_24_0(v79);
    (*(v86 + 8))(v39, v79);
    v87 = v123;
  }

  v88 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
  OUTLINED_FUNCTION_25_26();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  sub_1D505C360();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_57(v88, 1, v93);
  if (v77)
  {
    sub_1D4E50004(v88, &qword_1EC7EA778, &qword_1D5622E60);
  }

  else
  {
    type metadata accessor for SocialProfile();
    sub_1D4FC1644(&qword_1EDD57510, type metadata accessor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4FC1644(v94, type metadata accessor for SocialProfile);
    v95 = v114;
    sub_1D4F1ABE8(v114);
    sub_1D560DA98();
    (*(v115 + 8))(v95, v116);
    OUTLINED_FUNCTION_24_0(v93);
    (*(v96 + 8))(v88, v93);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_25_26();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
  OUTLINED_FUNCTION_57(v85, 1, v101);
  if (v77 && (v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0), OUTLINED_FUNCTION_57(v87, 1, v102), v77))
  {
    sub_1D4E50004(v85, &qword_1EC7EC8C8, &qword_1D5621E70);
    (v108[0])(v117, v125, v62);
  }

  else
  {
    sub_1D4F39AB0(v85, v110, &qword_1EC7EC8C8, &qword_1D5621E70);
    sub_1D4F39AB0(v87, v111, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v103 = v125;
    sub_1D5610128();
    sub_1D5610118();
    v104 = v109;
    sub_1D56100F8();
    (*(v124 + 8))(v103, v62);
    sub_1D4E50004(v85, &qword_1EC7EC8C8, &qword_1D5621E70);
    v105 = v108[0];
    (v108[0])(v103, v104, v62);
    v105(v117, v103, v62);
  }

  v106 = v126;
  v107 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v106, v107 ^ 1u, 1, AssociatedTypeWitness);
  return sub_1D4E50004(v87, &qword_1EC7EA7E0, &unk_1D5623AB0);
}

uint64_t sub_1D4FC1644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_23_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t Station._AirTime.convertToStationAirTime()@<X0>(uint64_t a1@<X8>)
{
  sub_1D56143D8();
  v2 = a1 + *(type metadata accessor for Station.AirTime() + 20);
  return sub_1D56143C8();
}

uint64_t sub_1D4FC1770(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4FC17C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D4FC1834(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = *(a2 + 24);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = a1[2] == *(a2 + 16) && v8 == v9;
  if (!v10 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (*(a1 + 32) == 2)
  {
    if (*(a2 + 32) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v12 ^ v13) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 33) == 2)
  {
    if (*(a2 + 33) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v14 ^ v15) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 34) == 2)
  {
    if (*(a2 + 34) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v16 ^ v17) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 35) == 2)
  {
    if (*(a2 + 35) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v18 ^ v19) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 36) == 2)
  {
    if (*(a2 + 36) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v20 ^ v21) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 37) == 2)
  {
    if (*(a2 + 37) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v22 ^ v23) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 38) == 2)
  {
    if (*(a2 + 38) != 2)
    {
      return 0;
    }

LABEL_54:
    v26 = *(a1 + 39);
    v27 = *(a2 + 39);
    if (v26 == 2)
    {
      if (v27 != 2)
      {
        return 0;
      }
    }

    else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = OUTLINED_FUNCTION_39();
  if (!v7 && ((v24 ^ v25) & 1) == 0)
  {
    goto LABEL_54;
  }

  return result;
}

uint64_t sub_1D4FC1A34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6775156 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001D567EFA0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001D567EFC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79626C6F44736168 && a2 == 0xE800000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79626C6F44736168 && a2 == 0xED0000736F6D7441;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79626C6F44736168 && a2 == 0xEA00000000003137;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x484453736168 && a2 == 0xE600000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6572657453736168 && a2 == 0xE90000000000006FLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6974627553736168 && a2 == 0xEC00000073656C74)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1D5616168();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D4FC1D58(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 5:
    case 6:
      result = 0x79626C6F44736168;
      break;
    case 7:
      result = 0x484453736168;
      break;
    case 8:
      result = 0x6572657453736168;
      break;
    case 9:
      result = 0x6974627553736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FC1E54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF98, &unk_1D5623CC8);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v27[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FC2754();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  v27[15] = 0;
  sub_1D5616028();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v27[14] = 1;
    sub_1D5616028();
    v18 = *(v3 + 32);
    v27[13] = 2;
    OUTLINED_FUNCTION_2_23();
    v19 = *(v3 + 33);
    v27[12] = 3;
    OUTLINED_FUNCTION_2_23();
    v20 = *(v3 + 34);
    v27[11] = 4;
    OUTLINED_FUNCTION_2_23();
    v21 = *(v3 + 35);
    v27[10] = 5;
    OUTLINED_FUNCTION_2_23();
    v22 = *(v3 + 36);
    v27[9] = 6;
    OUTLINED_FUNCTION_2_23();
    v23 = *(v3 + 37);
    v27[8] = 7;
    OUTLINED_FUNCTION_2_23();
    v24 = *(v3 + 38);
    v27[7] = 8;
    OUTLINED_FUNCTION_2_23();
    v25 = *(v3 + 39);
    v27[6] = 9;
    OUTLINED_FUNCTION_2_23();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1D4FC208C()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[3])
  {
    v2 = v0[2];
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v0 + 32) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 33) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 34) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 35) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 36) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 37) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 38) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 39) != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t sub_1D4FC2238()
{
  sub_1D56162D8();
  sub_1D4FC208C();
  return sub_1D5616328();
}

uint64_t sub_1D4FC2278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF90, &qword_1D5623CC0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FC2754();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30[0]) = 0;
  v10 = sub_1D5615F38();
  v12 = v11;
  OUTLINED_FUNCTION_0_38(1);
  *&v26 = sub_1D5615F38();
  *(&v26 + 1) = v13;
  OUTLINED_FUNCTION_0_38(2);
  v40 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(3);
  v25 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(4);
  v24 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(5);
  v23 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(6);
  v22 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(7);
  v21 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(8);
  v20 = sub_1D5615F48();
  v41 = 9;
  v14 = sub_1D5615F48();
  v15 = OUTLINED_FUNCTION_1_6();
  v16(v15);
  *&v27 = v10;
  *(&v27 + 1) = v12;
  v28 = v26;
  v17 = v40;
  LOBYTE(v29) = v40;
  BYTE1(v29) = v25;
  BYTE2(v29) = v24;
  BYTE3(v29) = v23;
  BYTE4(v29) = v22;
  BYTE5(v29) = v21;
  BYTE6(v29) = v20;
  HIBYTE(v29) = v14;
  sub_1D4FC27A8(&v27, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v10;
  v30[1] = v12;
  v31 = v26;
  v32 = v17;
  v33 = v25;
  v34 = v24;
  v35 = v23;
  v36 = v22;
  v37 = v21;
  v38 = v20;
  v39 = v14;
  result = sub_1D4FC27E0(v30);
  v19 = v28;
  *a2 = v27;
  *(a2 + 16) = v19;
  *(a2 + 32) = v29;
  return result;
}

uint64_t sub_1D4FC25E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FC1A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FC260C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4FC1D50();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FC2634(uint64_t a1)
{
  v2 = sub_1D4FC2754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC2670(uint64_t a1)
{
  v2 = sub_1D4FC2754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D4FC26AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D4FC2278(a1, v6);
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

uint64_t sub_1D4FC2718()
{
  sub_1D56162D8();
  sub_1D4FC208C();
  return sub_1D5616328();
}