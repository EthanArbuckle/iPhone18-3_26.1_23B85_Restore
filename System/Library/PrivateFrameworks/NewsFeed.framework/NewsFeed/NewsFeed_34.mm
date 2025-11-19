uint64_t sub_1D5E50B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6997184(0, v1, 0);
  v2 = v27;
  v4 = v3 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v22 = v3 + 72;
  v23 = v1;
  v24 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 8 * v6);
    v11 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D6997184((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    *(v27 + 8 * v13 + 32) = v12 | 0xC000000000000000;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v24;
    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (v22 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1D5E50DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D69976DC(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D7263B7C();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D69976DC((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D5C25E1C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D5C25E1C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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
  return result;
}

void *sub_1D5E50FEC(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v81 - v11;
  v88 = sub_1D725BD1C();
  v13 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v14);
  v81 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v92 = &v81 - v18;
  v83 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v83, v19);
  v21 = (&v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEFE04(0, &unk_1EDF40210, sub_1D5C2AB28, v4);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v81 - v24;
  sub_1D5C2AB28(0);
  v100 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v90 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v101 = &v81 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v82 = &v81 - v35;
  v36 = *(a1 + 16);
  if (v36)
  {
    v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v85 = v8;
    v86 = v37;
    v38 = a1 + v37;
    v97 = *(v34 + 72);
    v91 = (v13 + 32);
    v93 = (v34 + 56);
    v94 = (v13 + 48);
    v89 = (v34 + 48);
    v95 = v12;
    v96 = MEMORY[0x1E69E7CC0];
    v98 = a2;
    v99 = v25;
    v39 = v81;
    while (1)
    {
      sub_1D5CEFE68(v38, v101, sub_1D5C2AB28);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v42 = v94;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
          v44 = v101;
          sub_1D5CEFF38(v101 + *(v43 + 48), v21, type metadata accessor for FormatMetadata);
          sub_1D5EA08F4(v44, type metadata accessor for FormatPackage);
        }

        else
        {
          sub_1D725BD3C();
          v48 = *v42;
          v49 = v88;
          if ((*v42)(v12, 1, v88) == 1)
          {
            sub_1D725BCDC();
            if (v48(v12, 1, v49) != 1)
            {
              sub_1D5CF274C(v12, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
            }
          }

          else
          {
            (*v91)(v92, v12, v49);
          }

          v50 = v85;
          sub_1D725BD3C();
          if (v48(v50, 1, v49) == 1)
          {
            sub_1D725BCCC();
            if (v48(v50, 1, v49) != 1)
            {
              sub_1D5CF274C(v85, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
            }
          }

          else
          {
            (*v91)(v39, v50, v49);
          }

          v51 = v83;
          sub_1D725BD3C();
          *v21 = 0;
          v21[1] = 0;
          v52 = *v91;
          (*v91)(v21 + v51[5], v92, v49);
          v52(v21 + v51[6], v39, v49);
          v53 = MEMORY[0x1E69E7CD0];
          *(v21 + v51[8]) = MEMORY[0x1E69E7CD0];
          *(v21 + v51[9]) = v53;
          *(v21 + v51[10]) = v53;
          *(v21 + v51[11]) = v53;
        }
      }

      else
      {
        sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
        v46 = v101;
        sub_1D5CEFF38(v101 + *(v45 + 48), v21, type metadata accessor for FormatMetadata);
        v47 = sub_1D72585BC();
        (*(*(v47 - 8) + 8))(v46, v47);
      }

      v55 = *v21;
      v54 = v21[1];

      sub_1D5EA08F4(v21, type metadata accessor for FormatMetadata);
      if (v54)
      {
        v56 = *a2;
        if (*(*a2 + 16) && (v57 = sub_1D5B69D90(v55, v54), (v58 & 1) != 0))
        {
          v59 = *(*(v56 + 56) + 8 * v57);
          v60 = qword_1EDF3CA50;

          if (v60 != -1)
          {
            swift_once();
          }

          v61 = __swift_project_value_buffer(v88, qword_1EDF3CA58);
          MEMORY[0x1EEE9AC00](v61, v62);
          *(&v81 - 2) = v63;

          v64 = v87;
          sub_1D62ECF64(sub_1D5EA208C, (&v81 - 4), v59);
          v87 = v64;
          sub_1D5C2AF10(&qword_1EDF43A50, 255, MEMORY[0x1E69D6B38]);
          v84 = v59;
          v65 = v100;
          v66 = sub_1D72626AC();

          v67 = *(v66 + 16);
          if (v67)
          {
            v68 = v99;
            sub_1D5CEFE68(v66 + v86 + (v67 - 1) * v97, v99, sub_1D5C2AB28);

            (*v93)(v68, 0, 1, v65);
          }

          else
          {

            (*v93)(v99, 1, 1, v65);
          }

          a2 = v98;
          v39 = v81;
        }

        else
        {
          (*v93)(v99, 1, 1, v100);
        }

        v69 = sub_1D5B69D90(v55, v54);
        if (v70)
        {
          v71 = v69;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = *a2;
          v102 = *a2;
          *a2 = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6D7D6E4();
            v73 = v102;
          }

          sub_1D6716D80(v71, v73);
          *v98 = v73;

          a2 = v98;
        }

        v40 = v99;
        v74 = (*v89)(v99, 1, v100);
        v12 = v95;
        if (v74 != 1)
        {
          v75 = v82;
          sub_1D5CEFF38(v40, v82, sub_1D5C2AB28);
          sub_1D5CEFF38(v75, v90, sub_1D5C2AB28);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_1D5D57998(0, v96[2] + 1, 1, v96);
          }

          v77 = v96[2];
          v76 = v96[3];
          if (v77 >= v76 >> 1)
          {
            v96 = sub_1D5D57998(v76 > 1, v77 + 1, 1, v96);
          }

          v79 = v96;
          v78 = v97;
          v96[2] = v77 + 1;
          sub_1D5CEFF38(v90, v79 + v86 + v77 * v78, sub_1D5C2AB28);
          a2 = v98;
          goto LABEL_5;
        }
      }

      else
      {
        v40 = v99;
        (*v93)(v99, 1, 1, v100);
        v12 = v95;
      }

      sub_1D5CF274C(v40, &unk_1EDF40210, sub_1D5C2AB28, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_5:
      v38 += v97;
      if (!--v36)
      {
        return v96;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D5E51B18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, void), uint64_t a5)
{
  v111 = a5;
  v110 = a4;
  sub_1D5C2AB28(0);
  v113 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v98 = &v88 - v14;
  sub_1D5E9B290(0);
  v109 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v106 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v105 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v94 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v93 = &v88 - v26;
  v27 = type metadata accessor for FormatContentSubgroup();
  v95 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v117 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v99 = &v88 - v32;
  sub_1D5E9D830(0, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290);
  v108 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v104 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v91 = &v88 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v92 = &v88 - v41;
  v97 = a1;
  v42 = *(a1 + 16);
  v116 = a2;
  v114 = *(a2 + 16);
  v112 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    if (i >= v114)
    {
      v44 = v114;
    }

    else
    {
      v44 = i;
    }

    if (v44 >= v42)
    {
      v45 = v42;
    }

    else
    {
      v45 = v44;
    }

    v128 = MEMORY[0x1E69E7CC0];
    sub_1D6997448(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      __break(1u);
      goto LABEL_62;
    }

    v46 = v128;
    v107 = v42;
    if (v45)
    {
      v89 = v44;
      v90 = v45;
      v47 = a3 & 0xFFFFFFFFFFFFFF8;
      v115 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 < 0)
      {
        v47 = a3;
      }

      v96 = v47;

      if (v42)
      {
        v48 = 0;
        v103 = a3 & 0xC000000000000001;
        v49 = v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v100 = *(v95 + 72);
        v101 = v90 - 1;
        v102 = a3;
        do
        {
          sub_1D5CEFE68(v49, v117, type metadata accessor for FormatContentSubgroup);
          if (v114 == v48)
          {
            goto LABEL_64;
          }

          sub_1D5CEFE68(v116 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v48, v11, sub_1D5C2AB28);
          if (v112)
          {
            v50 = sub_1D7263BFC();
          }

          else
          {
            v50 = *(v115 + 16);
          }

          if (v48 == v50)
          {
            goto LABEL_63;
          }

          if (v103)
          {
            v51 = v46;
            v52 = MEMORY[0x1DA6FB460](v48, a3);
          }

          else
          {
            if (v48 >= *(v115 + 16))
            {
              __break(1u);
              goto LABEL_58;
            }

            v51 = v46;
            v52 = *(a3 + 8 * v48 + 32);
          }

          v53 = v109;
          v54 = *(v109 + 48);
          v55 = v11;
          v56 = v11;
          v57 = v106;
          sub_1D5CEFF38(v56, v106, sub_1D5C2AB28);
          *(v57 + v54) = v52;
          v58 = v105;
          sub_1D5CEFF38(v57, v105, sub_1D5E9B290);
          v59 = v104;
          v60 = v104 + *(v108 + 48);
          sub_1D5CEFF38(v117, v104, type metadata accessor for FormatContentSubgroup);
          sub_1D5CEFF38(v58, v60, sub_1D5E9B290);
          v61 = v129;
          v110(&v123, v59, v60, *(v60 + *(v53 + 48)));
          if (v61)
          {
            v46 = v61;

            sub_1D5CF274C(v59, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
            return v46;
          }

          v129 = 0;
          sub_1D5CF274C(v59, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
          v121 = v126;
          v122 = v127;
          v119 = v124;
          v120 = v125;
          v118 = v123;
          v46 = v51;
          v128 = v51;
          v63 = *(v51 + 16);
          v62 = *(v51 + 24);
          v11 = (v63 + 1);
          if (v63 >= v62 >> 1)
          {
            sub_1D6997448((v62 > 1), v63 + 1, 1);
            v46 = v128;
          }

          *(v46 + 16) = v11;
          v64 = (v46 + 80 * v63);
          v64[2] = v118;
          v65 = v119;
          v66 = v120;
          v67 = v122;
          v64[5] = v121;
          v64[6] = v67;
          v64[3] = v65;
          v64[4] = v66;
          v42 = v107;
          if (v101 == v48)
          {
            a3 = v102;
            v45 = v90;
            if (v107 <= v89)
            {
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          ++v48;
          v49 += v100;
          a3 = v102;
          v11 = v55;
        }

        while (v107 != v48);
      }

LABEL_62:
      __break(1u);
LABEL_63:
      sub_1D5EA08F4(v11, sub_1D5C2AB28);
LABEL_64:
      result = sub_1D5EA08F4(v117, type metadata accessor for FormatContentSubgroup);
      __break(1u);
      return result;
    }

    if (v42 <= v44)
    {
      break;
    }

LABEL_34:
    v68 = a3 & 0xFFFFFFFFFFFFFF8;
    v117 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 < 0)
    {
      v68 = a3;
    }

    v106 = v68;
    v115 = a3 & 0xC000000000000001;
    v69 = v91;
    while (v45 < v42)
    {
      sub_1D5CEFE68(v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v45, v99, type metadata accessor for FormatContentSubgroup);
      if (v114 == v45)
      {
        goto LABEL_53;
      }

      sub_1D5CEFE68(v116 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v45, v98, sub_1D5C2AB28);
      if (v112)
      {
        if (v45 == sub_1D7263BFC())
        {
LABEL_52:
          sub_1D5EA08F4(v98, sub_1D5C2AB28);
LABEL_53:
          sub_1D5EA08F4(v99, type metadata accessor for FormatContentSubgroup);
          goto LABEL_54;
        }
      }

      else if (v45 == *(v117 + 16))
      {
        goto LABEL_52;
      }

      if (v115)
      {
        v70 = v46;
        v11 = v45;
        v71 = MEMORY[0x1DA6FB460](v45, a3);
      }

      else
      {
        if (v45 >= *(v117 + 16))
        {
          goto LABEL_59;
        }

        v70 = v46;
        v11 = v45;
        v71 = *(a3 + 8 * v45 + 32);
      }

      v72 = v109;
      v73 = *(v109 + 48);
      v74 = v94;
      sub_1D5CEFF38(v98, v94, sub_1D5C2AB28);
      *(v74 + v73) = v71;
      v75 = v74;
      v76 = v93;
      sub_1D5CEFF38(v75, v93, sub_1D5E9B290);
      v77 = v108;
      v78 = *(v108 + 48);
      sub_1D5CEFF38(v99, v69, type metadata accessor for FormatContentSubgroup);
      sub_1D5CEFF38(v76, v69 + v78, sub_1D5E9B290);
      v79 = v92;
      sub_1D5E9E84C(v69, v92, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
      v46 = v111;
      v80 = v129;
      v110(&v123, v79, v79 + *(v77 + 48), *(v79 + *(v77 + 48) + *(v72 + 48)));
      v129 = v80;
      if (v80)
      {
        sub_1D5CF274C(v79, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);

        return v46;
      }

      sub_1D5CF274C(v79, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
      v121 = v126;
      v122 = v127;
      v119 = v124;
      v120 = v125;
      v118 = v123;
      v46 = v70;
      v128 = v70;
      v82 = *(v70 + 16);
      v81 = *(v70 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1D6997448((v81 > 1), v82 + 1, 1);
        v46 = v128;
      }

      v45 = (v11 + 1);
      *(v46 + 16) = v82 + 1;
      v83 = (v46 + 80 * v82);
      v83[2] = v118;
      v84 = v119;
      v85 = v120;
      v86 = v122;
      v83[5] = v121;
      v83[6] = v86;
      v83[3] = v84;
      v83[4] = v85;
      v42 = v107;
      if (v107 == v11 + 1)
      {
        goto LABEL_54;
      }
    }

LABEL_58:
    __break(1u);
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_54:

  return v46;
}

uint64_t FormatServiceType.resolve(content:pool:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FormatServiceType.resolveResult(content:pool:options:)(a1, a2, a3, a4, a5);
  if (!v5)
  {
    v7 = sub_1D725B92C();
    type metadata accessor for FormatContent.Resolved();
    v8 = sub_1D725BA8C();

    return v8;
  }

  return result;
}

uint64_t FormatServiceType.resolveResult(content:pool:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a1;
  v41 = a5;
  v37 = a2;
  v38 = a3;
  v6 = type metadata accessor for FormatServiceOptions();
  v39 = *(v6 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9;
  v10 = type metadata accessor for FormatContentPool();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatContent(0);
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, &qword_1EDF3B990, type metadata accessor for FormatServiceResult, MEMORY[0x1E69D6B18]);
  v33 = v22;
  (*(v17 + 16))(v21, v35, a4);
  sub_1D5CEFE68(v36, v16, type metadata accessor for FormatContent);
  sub_1D5CEFE68(v37, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v38, v9, type metadata accessor for FormatServiceOptions);
  v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24 = (v18 + *(v32 + 80) + v23) & ~*(v32 + 80);
  v25 = (v14 + *(v34 + 80) + v24) & ~*(v34 + 80);
  v26 = (v11 + *(v39 + 80) + v25) & ~*(v39 + 80);
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = a4;
  *(v27 + 24) = v28;
  (*(v17 + 32))(v27 + v23, v21, a4);
  sub_1D5CEFF38(v16, v27 + v24, type metadata accessor for FormatContent);
  sub_1D5CEFF38(v30, v27 + v25, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v31, v27 + v26, type metadata accessor for FormatServiceOptions);
  return sub_1D725BA6C();
}

uint64_t sub_1D5E52CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v15 = (*(a7 + 16) + **(a7 + 16));
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_1D5E52E3C;

  return v15(a3, a4, a5, a6, a7);
}

uint64_t sub_1D5E52E3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5EA2234, 0, 0);
  }
}

uint64_t sub_1D5E52F88(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(type metadata accessor for FormatContent(0) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for FormatContentPool() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(type metadata accessor for FormatServiceOptions() - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1D5B64680;

  return sub_1D5E52CF0(a1, v1 + v8, v1 + v10, v1 + v13, v1 + v16, v5, v6);
}

uint64_t sub_1D5E53190(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 472);
  if (v3 == 2)
  {
    if (qword_1EDF3C340 != -1)
    {
      swift_once();
    }

    sub_1D5C2AF10(qword_1EDF33048, a2, type metadata accessor for FormatService);
    sub_1D725964C();
    LOBYTE(v3) = v5;
    *(v2 + 472) = v5;
  }

  return v3 & 1;
}

uint64_t sub_1D5E5327C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 473);
  if (v3 == 2)
  {
    if (qword_1EDF3C328 != -1)
    {
      swift_once();
    }

    sub_1D5C2AF10(qword_1EDF33048, a2, type metadata accessor for FormatService);
    sub_1D725964C();
    LOBYTE(v3) = v5;
    *(v2 + 473) = v5;
  }

  return v3 & 1;
}

uint64_t FormatService.resolveResult(content:pool:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  type metadata accessor for FormatContentPool();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for FormatServiceOptions();
  v4[22] = swift_task_alloc();
  type metadata accessor for FormatContent.Resolved();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v5 = sub_1D725891C();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for FormatContent(0);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = *(type metadata accessor for FormatContentSubgroup() - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E53604, 0, 0);
}

uint64_t sub_1D5E53604()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 120);
  v3 = [*(*(v0 + 144) + 152) appConfigurationManager];
  type metadata accessor for FeedAppConfigManager();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  type metadata accessor for FormatFeedConfigManager();
  swift_initStackObject();
  sub_1D5B7B960();
  v96 = FeedAppConfigManager.segmentSetIds.getter();
  swift_unknownObjectRelease();

  v92 = v1;
  v5 = *(v2 + *(v1 + 68));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 296);
    v9 = MEMORY[0x1E69E7CC0];
    v93 = *(v5 + 16);
    while (v7 < *(v5 + 16))
    {
      v10 = *(v0 + 312);
      v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      inited = *(v8 + 72);
      sub_1D5CEFE68(v5 + v11 + inited * v7, v10, type metadata accessor for FormatContentSubgroup);
      v12 = sub_1D5E54884(v10, v96);
      v13 = *(v0 + 312);
      if (v12)
      {
        sub_1D5CEFF38(v13, *(v0 + 304), type metadata accessor for FormatContentSubgroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D69975AC(0, *(v9 + 16) + 1, 1);
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D69975AC(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 304);
        *(v9 + 16) = v15 + 1;
        sub_1D5CEFF38(v16, v9 + v11 + v15 * inited, type metadata accessor for FormatContentSubgroup);
        v6 = v93;
      }

      else
      {
        sub_1D5EA08F4(v13, type metadata accessor for FormatContentSubgroup);
      }

      if (v6 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_21;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v17 = *(v0 + 240);
  v18 = *(v0 + 248);
  v79 = *(v0 + 224);
  v94 = *(v0 + 216);
  v19 = *(v0 + 208);
  v90 = *(v0 + 200);
  v20 = *(v0 + 120);

  *(v0 + 112) = v9;
  sub_1D5CEFE04(0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&unk_1EDF1B0C0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup);
  v87 = sub_1D72623CC();

  v21 = sub_1D72608BC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v23(v17, 1, 1, v21);
  v86 = *v20;
  v97 = *(v20 + 1);
  (*(v19 + 16))(v94, &v20[v18[5]], v90);
  v24 = v18[7];
  v25 = &v20[v18[6]];
  v84 = *v25;
  v95 = *(v25 + 1);
  v26 = *&v20[v24 + 8];
  v85 = *&v20[v24];
  v27 = &v20[v18[8]];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = &v20[v18[9]];
  v83 = *v30;
  v91 = *(v30 + 1);
  v31 = &v20[v18[10]];
  v81 = v28;
  v82 = *v31;
  v88 = v29;
  v89 = *(v31 + 1);
  sub_1D5E9E84C(v17, v79, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  v32 = *(v22 + 48);
  v76 = v26;
  if (v32(v79, 1, v21) == 1)
  {
    v33 = *(v0 + 224);
    sub_1D5CF23F8(*(v0 + 120) + *(*(v0 + 248) + 44), *(v0 + 232), &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    v34 = v32(v33, 1, v21);

    if (v34 != 1)
    {
      sub_1D5CF274C(*(v0 + 224), &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    v35 = *(v0 + 232);
    (*(v22 + 32))(v35, *(v0 + 224), v21);
    v23(v35, 0, 1, v21);
  }

  v36 = *(v0 + 280);
  v80 = *(v0 + 272);
  v37 = *(v0 + 248);
  v75 = *(v0 + 232);
  v39 = *(v0 + 208);
  v38 = *(v0 + 216);
  v40 = *(v0 + 200);
  v41 = *(v0 + 120);
  v42 = *(v41 + v37[12]);
  v43 = *(v41 + v37[13]);
  v44 = *(v41 + v37[14]);
  v78 = *(v0 + 168);
  v45 = *(v41 + v37[15]);
  v74 = *(v41 + v37[16]);
  v46 = *(v41 + v37[18]);
  v47 = *(v41 + v37[19]);
  v77 = *(v0 + 136);
  *v36 = v86;
  *(v36 + 8) = v97;
  (*(v39 + 32))(v36 + v18[5], v38, v40);
  v48 = (v36 + v18[6]);
  *v48 = v84;
  v48[1] = v95;
  v49 = (v36 + v18[7]);
  *v49 = v85;
  v49[1] = v76;
  v50 = (v36 + v18[8]);
  *v50 = v81;
  v50[1] = v88;
  v51 = (v36 + v18[9]);
  *v51 = v83;
  v51[1] = v91;
  v52 = (v36 + v18[10]);
  *v52 = v82;
  v52[1] = v89;
  sub_1D5E9E84C(v75, v36 + v37[11], &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  *(v36 + v37[12]) = v42;
  *(v36 + v37[13]) = v43;
  *(v36 + v37[14]) = v44;
  *(v36 + v37[15]) = v45;
  *(v36 + v37[16]) = v74;
  *(v36 + *(v92 + 68)) = v87;
  *(v36 + v37[18]) = v46;
  *(v36 + v37[19]) = v47;

  sub_1D67F2364(v77, v36, v80);
  if (*(v77 + *(v78 + 64)))
  {
    v53 = (v0 + 264);
    v54 = *(v0 + 272);
    sub_1D69FA534(v54, *(*(v0 + 136) + *(*(v0 + 168) + 52)), *(v0 + 264));
    sub_1D5EA08F4(v54, type metadata accessor for FormatContent);
  }

  else
  {
    v53 = (v0 + 272);
  }

  v8 = MEMORY[0x1E69E6158];
  v55 = *v53;
  v56 = *(v0 + 288);
  sub_1D5EA08F4(*(v0 + 280), type metadata accessor for FormatContent);
  sub_1D5CEFF38(v55, v56, type metadata accessor for FormatContent);
  sub_1D5C384A0();
  inited = swift_allocObject();
  *(inited + 16) = xmmword_1D7279960;
  v58 = *v56;
  v57 = v56[1];
  *(inited + 56) = v8;
  v9 = sub_1D5B7E2C0();
  *(inited + 64) = v9;
  *(inited + 32) = v58;
  *(inited + 40) = v57;
  v59 = *(*(v56 + v37[16]) + 16);
  v60 = MEMORY[0x1E69E6530];
  v61 = MEMORY[0x1E69E65A8];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 104) = v61;
  *(inited + 72) = v59;
  v62 = *(*(v56 + *(v92 + 68)) + 16);
  *(inited + 136) = v60;
  *(inited + 144) = v61;
  *(inited + 112) = v62;
  v63 = qword_1EDF3CA50;

  if (v63 != -1)
  {
    goto LABEL_27;
  }

LABEL_21:
  v64 = sub_1D725BD1C();
  __swift_project_value_buffer(v64, qword_1EDF3CA58);
  v65 = sub_1D725BC9C();
  *(inited + 176) = v8;
  *(inited + 184) = v9;
  *(inited + 152) = v65;
  *(inited + 160) = v66;
  if (qword_1EDF3CA98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v64, qword_1EDF3CAA0);
  v67 = sub_1D725BC9C();
  *(inited + 216) = v8;
  *(inited + 224) = v9;
  *(inited + 192) = v67;
  *(inited + 200) = v68;
  sub_1D7262EDC();
  sub_1D725C30C();

  v69 = swift_task_alloc();
  *(v0 + 320) = v69;
  *v69 = v0;
  v69[1] = sub_1D5E54034;
  v70 = *(v0 + 288);
  v71 = *(v0 + 136);
  v72 = *(v0 + 128);

  return sub_1D5E54E7C(v70, v72, v71);
}

uint64_t sub_1D5E54034(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E545D4, 0, 0);
  }

  else
  {
    v6 = OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent;
    v7 = swift_task_alloc();
    v4[43] = v7;
    *v7 = v5;
    v7[1] = sub_1D5E541D4;
    v8 = v4[24];
    v9 = v4[17];

    return FormatService.prefetch(content:options:)(v8, a1 + v6, v9);
  }
}

uint64_t sub_1D5E541D4()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D5E54728;
  }

  else
  {
    v2 = sub_1D5E542E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E542E8()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[32];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[16];
  sub_1D5CEFE68(v0[17], v6, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v2, v3, type metadata accessor for FormatContent);
  sub_1D5CEFE68(v9, v8, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v4, v5, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v1 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, v7, type metadata accessor for FormatContentPool);

  type metadata accessor for FormatServiceResult();
  v10 = swift_allocObject();
  sub_1D5CEFF38(v6, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v3, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, type metadata accessor for FormatContent);
  sub_1D5CEFF38(v8, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v5, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v7, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, type metadata accessor for FormatContentPool);
  sub_1D5EA08F4(v2, type metadata accessor for FormatContent);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1D5E545D4()
{
  sub_1D5EA08F4(*(v0 + 288), type metadata accessor for FormatContent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E54728()
{

  sub_1D5EA08F4(*(v0 + 288), type metadata accessor for FormatContent);

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1D5E54884(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  sub_1D5C2CA80(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - v5;
  v7 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for FormatContentSubgroup() + 40);
  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v12 = *&v10[v7[10]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  v13 = *(v12 + 16);

  if (v13)
  {
    sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
    v14 = *&v10[v7[10]];

    sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
    if (qword_1EDF34A20 != -1)
    {
      swift_once();
    }

    v15 = sub_1D6183980(qword_1EDF34A28, unk_1EDF34A30, v14);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v16 = *&v10[v7[11]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  v17 = *(v16 + 16);

  if (v17)
  {
    sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
    v18 = *&v10[v7[11]];

    sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
    if (qword_1EDF34A20 != -1)
    {
      swift_once();
    }

    v19 = sub_1D6183980(qword_1EDF34A28, unk_1EDF34A30, v18);

    if (v19)
    {
      return 0;
    }
  }

  v34 = sub_1D5B5C758;
  v33 = type metadata accessor for FormatCodingDefault;
  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v20 = *&v10[v7[8]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  v21 = v7;
  v22 = v35;
  sub_1D609D1E4(v35, v20, &v36);

  *&v32 = v37;
  *(&v32 + 1) = v36;
  v23 = v38;
  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, v34, &type metadata for FormatCodingMetadataStrategy, v33);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v24 = *&v10[v21[9]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  sub_1D609D4B4(v22, v24, &v36);

  v26 = v36;
  v25 = v37;
  v27 = v38;
  sub_1D5EA20AC();
  if (!v23)
  {
    sub_1D5DF6958(v26, v25, v27);
    v28 = *(&v32 + 1);
    v29 = v32;
LABEL_14:
    v30 = 0;
    goto LABEL_17;
  }

  if (v23 == 1)
  {
    sub_1D5DF6958(v26, v25, v27);
    v28 = *(&v32 + 1);
    v29 = v32;
LABEL_12:
    v30 = 1;
LABEL_17:
    sub_1D5DF6958(v28, v29, v30);
    return 0;
  }

  if (v32 != 0)
  {
    v28 = v26;
    v29 = v25;
    v30 = v27;
    goto LABEL_17;
  }

  if (!v27)
  {
    v28 = v26;
    v29 = v25;
    goto LABEL_14;
  }

  if (v27 == 1)
  {
    v28 = v26;
    v29 = v25;
    goto LABEL_12;
  }

  return !(v25 | v26);
}

uint64_t sub_1D5E54E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1255] = v3;
  v4[1249] = a3;
  v4[1243] = a2;
  v4[1237] = a1;
  v4[1261] = type metadata accessor for FormatContent.Resolved();
  v4[1267] = swift_task_alloc();
  v5 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  v4[1273] = swift_task_alloc();
  sub_1D5E9B2C4(0, &qword_1EDF1B720, type metadata accessor for FormatService.ThemePackage);
  v4[1279] = v6;
  v4[1285] = swift_task_alloc();
  v4[1291] = swift_task_alloc();
  v7 = type metadata accessor for FormatService.ThemePackage(0);
  v4[1297] = v7;
  v4[1303] = *(v7 - 8);
  v4[1309] = swift_task_alloc();
  v4[1315] = swift_task_alloc();
  sub_1D5E9B290(0);
  v4[1321] = v8;
  v4[1327] = swift_task_alloc();
  v4[1333] = swift_task_alloc();
  v4[1339] = swift_task_alloc();
  v4[1345] = swift_task_alloc();
  v4[1351] = swift_task_alloc();
  sub_1D5E9B2C4(0, &qword_1EDF1ACA0, sub_1D5E9B290);
  v4[1357] = v9;
  v4[1363] = swift_task_alloc();
  v4[1369] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v5);
  v4[1375] = swift_task_alloc();
  v4[1381] = swift_task_alloc();
  v10 = type metadata accessor for FormatContentSubgroup();
  v4[1387] = v10;
  v4[1393] = *(v10 - 8);
  v4[1399] = swift_task_alloc();
  sub_1D5C2AB28(0);
  v4[1405] = *(v11 - 8);
  v4[1411] = swift_task_alloc();
  v4[1417] = swift_task_alloc();
  v12 = type metadata accessor for FormatContent(0);
  v4[1423] = v12;
  v13 = *(v12 - 8);
  v4[1429] = v13;
  v4[1435] = *(v13 + 64);
  v4[1441] = swift_task_alloc();
  v4[1447] = swift_task_alloc();
  v4[1453] = swift_task_alloc();
  v4[1459] = swift_task_alloc();
  v4[1465] = swift_task_alloc();
  v4[1471] = swift_task_alloc();
  v4[1477] = swift_task_alloc();
  v4[1483] = swift_task_alloc();
  v4[1489] = swift_task_alloc();
  v4[1495] = swift_task_alloc();
  v4[1501] = swift_task_alloc();
  v4[1507] = swift_task_alloc();
  v4[1513] = swift_task_alloc();
  v14 = *(type metadata accessor for FormatContentPool() - 8);
  v4[1519] = v14;
  v4[1525] = *(v14 + 64);
  v4[1531] = swift_task_alloc();
  v4[1537] = swift_task_alloc();
  v4[1543] = swift_task_alloc();
  v4[1549] = swift_task_alloc();
  v4[1555] = swift_task_alloc();
  v4[1561] = swift_task_alloc();
  v4[1567] = swift_task_alloc();
  v4[1573] = swift_task_alloc();
  v4[1579] = swift_task_alloc();
  v4[1585] = swift_task_alloc();
  v4[1591] = swift_task_alloc();
  v4[1597] = swift_task_alloc();
  v4[1603] = swift_task_alloc();
  v4[1609] = swift_task_alloc();
  v4[1615] = swift_task_alloc();
  v15 = *(type metadata accessor for FormatServiceOptions() - 8);
  v4[1621] = v15;
  v4[1627] = *(v15 + 64);
  v4[1633] = swift_task_alloc();
  v4[1639] = swift_task_alloc();
  v4[1645] = swift_task_alloc();
  v4[1651] = swift_task_alloc();
  v4[1657] = swift_task_alloc();
  v4[1663] = swift_task_alloc();
  v4[1669] = swift_task_alloc();
  v4[1675] = swift_task_alloc();
  v4[1681] = swift_task_alloc();
  v4[1687] = swift_task_alloc();
  v4[1693] = swift_task_alloc();
  v4[1699] = swift_task_alloc();
  v4[1705] = swift_task_alloc();
  v4[1711] = swift_task_alloc();
  v4[1717] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E55530, 0, 0);
}

uint64_t sub_1D5E55530()
{
  v1 = *(v0 + 11384);
  v2 = *(v0 + 10040);
  v3 = *(v0 + 9944);
  v4 = *(v0 + 9896);
  sub_1D5B68374(v2 + 696, v0 + 9096);
  v5 = *(v2 + 488);
  sub_1D5B68374(v2 + 496, v0 + 9016);
  v6 = *v4;
  *(v0 + 13784) = *v4;
  v7 = v4[1];
  *(v0 + 13832) = v7;
  v8 = *(v4 + v1[19]);
  v9 = *(v4 + v1[18]);
  *(v0 + 13880) = v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v3;
  v11 = v5;

  v12 = sub_1D7195E7C(sub_1D5E9B334, v10, v9);

  v13 = sub_1D5BA8750(v12, v8);

  type metadata accessor for FormatServiceResolverServices();
  v14 = swift_allocObject();
  *(v0 + 13928) = v14;
  sub_1D5B63F14((v0 + 9096), (v14 + 2));
  v14[7] = v11;
  sub_1D5B63F14((v0 + 9016), (v14 + 8));
  v14[13] = v6;
  v14[14] = v7;
  v14[15] = 0;
  v14[16] = 0;
  v65 = v14;
  v14[17] = v13;
  v15 = *(v4 + v1[17]);
  *(v0 + 13976) = v15;
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = *(v0 + 11240);
    v19 = *(v0 + 11144);
    v20 = *(v0 + 11096);
    v102 = MEMORY[0x1E69E7CC0];
    sub_1D699768C(0, v16, 0);
    v17 = v102;
    v21 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v22 = *(v19 + 72);
    do
    {
      v23 = *(v0 + 11336);
      v24 = *(v0 + 11192);
      sub_1D5CEFE68(v21, v24, type metadata accessor for FormatContentSubgroup);
      sub_1D5CEFE68(v24 + *(v20 + 20), v23, sub_1D5C2AB28);
      sub_1D5EA08F4(v24, type metadata accessor for FormatContentSubgroup);
      v26 = *(v102 + 16);
      v25 = *(v102 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D699768C(v25 > 1, v26 + 1, 1);
      }

      v27 = *(v0 + 11336);
      *(v102 + 16) = v26 + 1;
      sub_1D5CEFF38(v27, v102 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v26, sub_1D5C2AB28);
      v21 += v22;
      --v16;
    }

    while (v16);
  }

  *(v0 + 14024) = v17;
  v28 = *(v0 + 13736);
  v100 = *(v0 + 13688);
  v93 = *(v0 + 13640);
  v56 = *(v0 + 13592);
  v60 = *(v0 + 13544);
  v62 = *(v0 + 13496);
  v68 = *(v0 + 13448);
  v99 = *(v0 + 9896);
  v69 = *(v0 + 13400);
  v72 = *(v0 + 13352);
  v75 = *(v0 + 13304);
  v78 = *(v0 + 13256);
  v81 = *(v0 + 13208);
  v84 = *(v0 + 13160);
  v87 = *(v0 + 13112);
  v97 = *(v0 + 13016);
  v29 = *(v0 + 12968);
  v53 = *(v0 + 12920);
  v55 = *(v0 + 12872);
  v58 = *(v0 + 12824);
  v61 = *(v0 + 12776);
  v64 = *(v0 + 12728);
  v67 = *(v0 + 12680);
  v71 = *(v0 + 12632);
  v74 = *(v0 + 12584);
  v77 = *(v0 + 12536);
  v80 = *(v0 + 12488);
  v83 = *(v0 + 12440);
  v86 = *(v0 + 12392);
  v95 = *(v0 + 12200);
  v94 = *(v0 + 12152);
  v89 = *(v0 + 12104);
  v54 = *(v0 + 12056);
  v57 = *(v0 + 12008);
  v59 = *(v0 + 11960);
  v63 = *(v0 + 11912);
  v66 = *(v0 + 11864);
  v70 = *(v0 + 11816);
  v73 = *(v0 + 11768);
  v76 = *(v0 + 11720);
  v79 = *(v0 + 11672);
  v82 = *(v0 + 11624);
  v85 = *(v0 + 11576);
  v91 = *(v0 + 11480);
  v52 = *(v0 + 11432);
  v30 = *(v0 + 10040);
  v31 = *(v0 + 9992);
  v96 = *(v0 + 9944);
  v98 = sub_1D5E998E0(*(v99 + *(*(v0 + 11384) + 64)));
  *(v0 + 14072) = v98;
  sub_1D5CEFE68(v31, v28, type metadata accessor for FormatServiceOptions);
  v32 = *(v29 + 80);
  v33 = (v32 + 32) & ~v32;
  v34 = swift_allocObject();
  *(v0 + 14120) = v34;
  *(v34 + 16) = v30;
  *(v34 + 24) = v17;
  sub_1D5CEFF38(v28, v34 + v33, type metadata accessor for FormatServiceOptions);

  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v90 = v31;
  sub_1D5CEFE68(v31, v100, type metadata accessor for FormatServiceOptions);
  v35 = swift_allocObject();
  *(v0 + 14168) = v35;
  v88 = v30;
  *(v35 + 16) = v30;
  *(v35 + 24) = v98;
  sub_1D5CEFF38(v100, v35 + v33, type metadata accessor for FormatServiceOptions);

  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v53, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v31, v93, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v89, type metadata accessor for FormatContent);
  v101 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v36 = *(v52 + 80);
  v37 = (v95 + v32 + v101) & ~v32;
  v92 = ((v97 + v36 + v37) & ~v36) + v91;
  v38 = (v97 + v36 + v37) & ~v36;
  v39 = swift_allocObject();
  *(v0 + 14216) = v39;
  *(v39 + 16) = v88;
  sub_1D5CEFF38(v53, v39 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v93, v39 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v89, v39 + v38, type metadata accessor for FormatContent);
  *(v39 + ((v92 + 7) & 0xFFFFFFFFFFFFFFF8)) = v65;

  sub_1D5B9EE48();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v55, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v56, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v54, type metadata accessor for FormatContent);
  v40 = swift_allocObject();
  *(v0 + 14264) = v40;
  *(v40 + 16) = v88;
  sub_1D5CEFF38(v55, v40 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v56, v40 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v54, v40 + v38, type metadata accessor for FormatContent);

  sub_1D5E9C7CC(0, &qword_1EDF1B840, sub_1D5B9EE48);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v58, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v60, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v57, type metadata accessor for FormatContent);
  v41 = swift_allocObject();
  *(v0 + 14312) = v41;
  *(v41 + 16) = v88;
  sub_1D5CEFF38(v58, v41 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v60, v41 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v57, v41 + v38, type metadata accessor for FormatContent);

  sub_1D5E9BE1C();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v61, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v62, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v59, type metadata accessor for FormatContent);
  v42 = swift_allocObject();
  *(v0 + 14360) = v42;
  *(v42 + 16) = v88;
  sub_1D5CEFF38(v61, v42 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v62, v42 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v59, v42 + v38, type metadata accessor for FormatContent);

  sub_1D5C44E18();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v64, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v68, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v63, type metadata accessor for FormatContent);
  v43 = swift_allocObject();
  *(v0 + 14408) = v43;
  *(v43 + 16) = v88;
  sub_1D5CEFF38(v64, v43 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v68, v43 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v63, v43 + v38, type metadata accessor for FormatContent);

  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v67, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v69, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v66, type metadata accessor for FormatContent);
  v44 = swift_allocObject();
  *(v0 + 14456) = v44;
  *(v44 + 16) = v88;
  sub_1D5CEFF38(v67, v44 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v69, v44 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v66, v44 + v38, type metadata accessor for FormatContent);

  sub_1D5E9C38C();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v71, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v72, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v70, type metadata accessor for FormatContent);
  v45 = swift_allocObject();
  *(v0 + 14504) = v45;
  *(v45 + 16) = v88;
  sub_1D5CEFF38(v71, v45 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v72, v45 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v70, v45 + v38, type metadata accessor for FormatContent);

  sub_1D5E9C5AC();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v74, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v75, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v73, type metadata accessor for FormatContent);
  v46 = swift_allocObject();
  *(v0 + 14552) = v46;
  *(v46 + 16) = v88;
  sub_1D5CEFF38(v74, v46 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v75, v46 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v73, v46 + v38, type metadata accessor for FormatContent);

  sub_1D5E9C7CC(0, &qword_1EDF1B940, type metadata accessor for PuzzleStatistic);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v77, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v78, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v76, type metadata accessor for FormatContent);
  v47 = swift_allocObject();
  *(v0 + 14600) = v47;
  *(v47 + 16) = v88;
  sub_1D5CEFF38(v77, v47 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v78, v47 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v76, v47 + v38, type metadata accessor for FormatContent);

  sub_1D5B5FBFC();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v80, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v81, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v79, type metadata accessor for FormatContent);
  v48 = swift_allocObject();
  *(v0 + 14648) = v48;
  *(v48 + 16) = v88;
  sub_1D5CEFF38(v80, v48 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v81, v48 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v79, v48 + v38, type metadata accessor for FormatContent);

  sub_1D5B5A7A0(0, &qword_1EDF1B050, &type metadata for SportsDataVisualization, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v83, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v84, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v82, type metadata accessor for FormatContent);
  v49 = swift_allocObject();
  *(v0 + 14696) = v49;
  *(v49 + 16) = v88;
  sub_1D5CEFF38(v83, v49 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v84, v49 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v82, v49 + v38, type metadata accessor for FormatContent);

  sub_1D5E9CD28();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v96, v86, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v90, v87, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v99, v85, type metadata accessor for FormatContent);
  v50 = swift_allocObject();
  *(v0 + 14744) = v50;
  *(v50 + 16) = v88;
  sub_1D5CEFF38(v86, v50 + v101, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v87, v50 + v37, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v85, v50 + v38, type metadata accessor for FormatContent);

  sub_1D5E9C7CC(0, &qword_1EDF1B830, sub_1D5E9D658);
  swift_asyncLet_begin();
  *(v0 + 14792) = sub_1D5E71F40(v90, v99);
  *(v0 + 14840) = sub_1D5E72324(v90, v99);

  return MEMORY[0x1EEE6DEC0](v0 + 1936, v0 + 9752, sub_1D5E56730, v0 + 9760);
}

uint64_t sub_1D5E56730()
{
  v1[1861] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E59AA0, v1 + 1226);
  }

  else
  {
    v1[1867] = v1[1219];

    return MEMORY[0x1EEE6DEC0](v1 + 402, v1 + 1171, sub_1D5E56838, v1 + 1310);
  }
}

uint64_t sub_1D5E56838()
{
  v1[1873] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5A2F0, v1 + 1316);
  }

  else
  {
    v1[1879] = v1[1171];

    return MEMORY[0x1EEE6DEC0](v1 + 562, v1 + 1183, sub_1D5E56950, v1 + 1400);
  }
}

uint64_t sub_1D5E56950()
{
  v1[1885] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5AB40, v1 + 1406);
  }

  else
  {
    v1[1891] = v1[1183];

    return MEMORY[0x1EEE6DEC0](v1 + 722, v1 + 1195, sub_1D5E56A80, v1 + 1490);
  }
}

uint64_t sub_1D5E56A80()
{
  v1[1897] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5B390, v1 + 1496);
  }

  else
  {
    v1[1903] = v1[1195];

    return MEMORY[0x1EEE6DEC0](v1 + 882, v1 + 1207, sub_1D5E56BBC, v1 + 1580);
  }
}

uint64_t sub_1D5E56BBC()
{
  v1[1909] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5BBE0, v1 + 1586);
  }

  else
  {
    v1[1915] = v1[1207];

    return MEMORY[0x1EEE6DEC0](v1 + 1042, v1 + 1153, sub_1D5E56D10, v1 + 1670);
  }
}

uint64_t sub_1D5E56D10()
{
  v1[1921] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5C430, v1 + 1676);
  }

  else
  {
    v1[1927] = v1[1153];

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 1231, sub_1D5E56E6C, v1 + 1760);
  }
}

uint64_t sub_1D5E56E6C()
{
  v1[1933] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5CC80, v1 + 1766);
  }

  else
  {
    v1[1939] = v1[1231];

    return MEMORY[0x1EEE6DEC0](v1 + 482, v1 + 1189, sub_1D5E56FD4, v1 + 1850);
  }
}

uint64_t sub_1D5E56FD4()
{
  v1[1945] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5D4D0, v1 + 1856);
  }

  else
  {
    v1[1951] = v1[1189];

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 1177, sub_1D5E5714C, v1 + 1148);
  }
}

uint64_t sub_1D5E5714C()
{
  v1[1957] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5DD20, v1 + 1940);
  }

  else
  {
    v1[1963] = v1[1177];

    return MEMORY[0x1EEE6DEC0](v1 + 962, v1 + 1225, sub_1D5E572D4, v1 + 2024);
  }
}

uint64_t sub_1D5E572D4()
{
  v1[1969] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5E570, v1 + 2030);
  }

  else
  {
    v1[1975] = v1[1225];

    return MEMORY[0x1EEE6DEC0](v1 + 802, v1 + 1213, sub_1D5E5746C, v1 + 2114);
  }
}

uint64_t sub_1D5E5746C()
{
  v1[1981] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5EDBC, v1 + 2120);
  }

  else
  {
    v1[1987] = v1[1213];

    return MEMORY[0x1EEE6DEC0](v1 + 642, v1 + 1201, sub_1D5E57610, v1 + 2204);
  }
}

uint64_t sub_1D5E57610()
{
  v1[1993] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5F60C, v1 + 2210);
  }

  else
  {
    v1[1999] = v1[1201];

    return MEMORY[0x1EEE6DEC0](v1 + 162, v1 + 1165, sub_1D5E577C0, v1 + 2294);
  }
}

uint64_t sub_1D5E577C0()
{
  v1[2005] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5FE5C, v1 + 2300);
  }

  else
  {
    v1[2011] = v1[1165];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 1159, sub_1D5E5797C, v1 + 2384);
  }
}

uint64_t sub_1D5E5797C()
{
  *(v1 + 16136) = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 656, v1 + 9272, sub_1D5E606AC, v1 + 19120);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E57B30, 0, 0);
  }
}

uint64_t sub_1D5E57B30()
{
  v1 = v0[1927];
  v2 = v0[1237];
  v0[2023] = v0[1159];

  v3 = sub_1D5E72628(v2, v1);
  v0[2029] = v3;
  v4 = swift_task_alloc();
  v0[2035] = v4;
  *v4 = v0;
  v4[1] = sub_1D5E57C00;
  v5 = v0[1381];
  v6 = v0[1249];
  v7 = v0[1243];
  v8 = v0[1237];

  return sub_1D5E7268C(v5, v7, v6, v8, v3);
}

uint64_t sub_1D5E57C00()
{
  *(*v1 + 16328) = v0;

  if (v0)
  {

    v2 = sub_1D5E60EFC;
  }

  else
  {
    v2 = sub_1D5E57E1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E57E1C()
{
  v210 = v0;
  v1 = v0[1891];
  v2 = v0[1423];
  v3 = v0[1237];
  v4 = sub_1D5E73BE0(v3, v0[1915]);
  v5 = sub_1D5E73C48(v3, v1);
  if (*(v3 + *(v2 + 24) + 8))
  {
    v6 = *(v0[1741] + 56);
    v7 = sub_1D726203C();
    v8 = [v6 subscriptionForTagID_];

    v9 = v0[2029];
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v9 = v0[2029];
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (([swift_unknownObjectRetain() isPurchaseSetup] & 1) != 0 || objc_msgSend(v9, sel_isAuthenticationSetup))
  {
    v10 = swift_unknownObjectRetain();
    FeedSubscriptionPaidAccess.init(paidAccessChecker:tag:)(v10, v9, v209);
    v11 = v209[0];
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_9:
  v11 = 3;
LABEL_10:
  v12 = v0[1915];
  v13 = sub_1D5E73DC8(v0[1237], v0[2011]);
  v14 = *(v12 + 16);
  v15 = v0[1915];
  if (v14)
  {
    v16 = sub_1D5C38490(v14, 0);
    v17 = sub_1D5E2A8B8(v209, v16 + 32, v14, v15);
    sub_1D5B87E38();
    if (v17 == v14)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v18 = v0[1927];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = sub_1D5C38490(*(v18 + 16), 0);
    v21 = sub_1D5C38498(v209, v20 + 32, v19, v18);
    sub_1D5B87E38();
    if (v21 == v19)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v22 = v0[1975];
  v23 = *(v22 + 16);
  if (v23)
  {
    v205 = sub_1D5C38490(*(v22 + 16), 0);
    v24 = sub_1D5C38498(v209, v205 + 32, v23, v22);
    sub_1D5B87E38();
    if (v24 == v23)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  v205 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v25 = v0[1987];
  v26 = *(v25 + 16);
  v197 = v20;
  v199 = v16;
  if (v26)
  {
    v193 = sub_1D5C38490(v26, 0);
    v27 = sub_1D5C38498(v209, v193 + 32, v26, v25);
    sub_1D5B87E38();
    if (v27 == v26)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v193 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v28 = v0[1999];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = sub_1D5E23ECC(*(v28 + 16), 0);
    v31 = *(type metadata accessor for PuzzleStatistic() - 8);
    sub_1D5E25428(v209, v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v29, v28);
    v33 = v32;
    sub_1D5B87E38();
    if (v33 == v29)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v34 = v0[2011];
  v35 = *(v34 + 16);
  v152 = v4;
  if (v35)
  {
    v36 = sub_1D5C38490(v35, 0);
    v37 = sub_1D5E2A8B8(v209, v36 + 32, v35, v34);
    sub_1D5B87E38();
    if (v37 == v35)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v184 = v36;
  v188 = v30;
  v148 = v11;
  v149 = v13;
  v150 = v8;
  v151 = v5;
  v38 = v0;
  v39 = v0[1243];
  v40 = *(v39 + 88);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = sub_1D5E23E30(*(v40 + 16), 0);
    v43 = sub_1D5E252A0(v209, v42 + 2, v41, v40);

    v44 = sub_1D5B87E38();
    if (v43 != v41)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v180 = v42;
    v48 = v38;
    v39 = v38[1243];
  }

  else
  {
    v180 = MEMORY[0x1E69E7CC0];
    v48 = v0;
  }

  v49 = *(v39 + 96);
  v50 = *(v49 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  if (v50)
  {
    v52 = sub_1D5E23D88(*(v49 + 16), 0);
    v53 = sub_1D5E25120(v209, v52 + 4, v50, v49);

    v44 = sub_1D5B87E38();
    if (v53 != v50)
    {
LABEL_96:
      __break(1u);
      return MEMORY[0x1EEE6DEB0](v44, v45, v46, v47);
    }

    v51 = MEMORY[0x1E69E7CC0];
    v172 = v52;
  }

  else
  {
    v172 = MEMORY[0x1E69E7CC0];
  }

  v163 = v48[2023];
  v54 = v48[1963];
  v55 = v48[1951];
  v176 = v48[1939];
  v167 = v48[1903];
  v56 = v48[1891];
  v57 = v48[1855];
  v58 = v48[1849];
  v59 = v48[1759];
  v60 = v48[1543];
  v61 = v48[1375];
  sub_1D5CF23F8(v48[1381], v61, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  v62 = sub_1D605A5F8(v51);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v56, v167, v199, v197, v176, v62, v205, v193, v60, v188, v184, v163, v180, v172, v58, v57, v54, v55, v61);
  v209[0] = v51;
  v44 = sub_1D699763C(0, 0, 0);
  v63 = v209[0];
  v185 = *(v59 + 16);
  v189 = v59;
  v192 = v48;
  if (v185)
  {
    v64 = 0;
    v65 = v48[1879];
    v181 = v48[1405];
    v164 = v48[1321];
    v168 = v48[1357];
    v156 = v48[1297];
    v160 = v48[1303];
    v66 = v65 & 0xFFFFFFFFFFFFFF8;
    v173 = v65 & 0xC000000000000001;
    v153 = v65 + 32;
    v177 = v65 >> 62;
    v154 = v65 & 0xFFFFFFFFFFFFFF8;
    while (v64 < *(v189 + 16))
    {
      sub_1D5CEFE68(v48[1759] + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v64, v48[1411], sub_1D5C2AB28);
      if (v177)
      {
        v44 = sub_1D7263BFC();
        if (v64 == v44)
        {
LABEL_58:
          v85 = v48[1411];

          sub_1D5EA08F4(v85, sub_1D5C2AB28);
          goto LABEL_59;
        }
      }

      else
      {
        v44 = *(v66 + 16);
        if (v64 == v44)
        {
          goto LABEL_58;
        }
      }

      v206 = v63;
      if (v173)
      {
        v67 = MEMORY[0x1DA6FB460](v64, v48[1879]);
      }

      else
      {
        if (v64 >= *(v66 + 16))
        {
          goto LABEL_94;
        }

        v67 = *(v153 + 8 * v64);
      }

      v68 = v48[1411];
      v69 = v48[1369];
      v70 = v48[1363];
      v71 = v48[1351];
      v72 = v48[1345];
      v73 = v48[1339];
      v74 = v48[1333];
      v75 = v48[1327];
      v200 = v48[1315];
      v76 = *(v164 + 48);
      v194 = v75;
      sub_1D5CEFF38(v68, v72, sub_1D5C2AB28);
      *(v72 + v76) = v67;
      sub_1D5CEFF38(v72, v71, sub_1D5E9B290);
      v77 = *(v168 + 48);
      *v70 = v64;
      sub_1D5CEFF38(v71, v70 + v77, sub_1D5E9B290);
      sub_1D5E9DAC8(v70, v69, &qword_1EDF1ACA0, sub_1D5E9B290);
      v78 = *v69;
      v79 = v69 + *(v168 + 48);
      v80 = *(v79 + *(v164 + 48));
      sub_1D5CEFE68(v79, v73, sub_1D5C2AB28);
      *(v73 + *(v164 + 48)) = v80;
      sub_1D5CEFE68(v73, v74, sub_1D5E9B290);

      sub_1D5CEFF38(v73, v194, sub_1D5E9B290);
      v81 = *(v194 + *(v164 + 48));
      *v200 = v78;
      sub_1D5CEFF38(v74, v200 + *(v156 + 20), sub_1D5C2AB28);
      *(v200 + *(v156 + 24)) = v81;
      sub_1D5EA08F4(v194, sub_1D5C2AB28);
      sub_1D5E9DB3C(v69, &qword_1EDF1ACA0, sub_1D5E9B290);
      v63 = v206;
      v209[0] = v206;
      v83 = v206[2];
      v82 = v206[3];
      if (v83 >= v82 >> 1)
      {
        sub_1D699763C(v82 > 1, v83 + 1, 1);
        v63 = v209[0];
      }

      ++v64;
      v48 = v192;
      v84 = v192[1315];
      v63[2] = v83 + 1;
      v44 = sub_1D5CEFF38(v84, v63 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v83, type metadata accessor for FormatService.ThemePackage);
      v66 = v154;
      if (v185 == v64)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_93;
  }

LABEL_57:

LABEL_59:
  v86 = v48[2041];
  v48[1147] = v63;
  sub_1D5CEFE04(0, &qword_1EDF1B320, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B318, &qword_1EDF1B320, type metadata accessor for FormatService.ThemePackage);
  v87 = sub_1D72623DC();

  v88 = sub_1D5E73E7C(v87);

  v89 = *(v88 + 16);
  if (v89)
  {
    v157 = v86;
    v90 = v48[1303];
    v186 = v48[1279];
    v190 = v48[1285];
    v209[0] = MEMORY[0x1E69E7CC0];
    sub_1D699763C(0, v89, 0);
    v91 = v209[0];
    v92 = v88 + 64;
    v44 = sub_1D7263B7C();
    v93 = v44;
    v94 = 0;
    v95 = *(v88 + 36);
    v161 = v88 + 72;
    v165 = v89;
    v182 = v88 + 64;
    v169 = v95;
    v178 = v90;
    v174 = v88;
    while ((v93 & 0x8000000000000000) == 0 && v93 < 1 << *(v88 + 32))
    {
      v97 = v93 >> 6;
      if ((*(v92 + 8 * (v93 >> 6)) & (1 << v93)) == 0)
      {
        goto LABEL_88;
      }

      if (v95 != *(v88 + 36))
      {
        goto LABEL_89;
      }

      v195 = v94;
      v98 = v91;
      v99 = v48[1291];
      v100 = *(v186 + 48);
      v101 = v48[1309];
      v102 = v48[1285];
      v103 = (*(v88 + 48) + 16 * v93);
      v104 = v90;
      v106 = *v103;
      v105 = v103[1];
      v201 = v101;
      v207 = *(v104 + 72);
      sub_1D5CEFE68(*(v88 + 56) + v207 * v93, v99 + v100, type metadata accessor for FormatService.ThemePackage);
      *v102 = v106;
      *(v190 + 8) = v105;
      v107 = *(v186 + 48);
      v108 = v99 + v100;
      v91 = v98;
      sub_1D5CEFF38(v108, v102 + v107, type metadata accessor for FormatService.ThemePackage);
      sub_1D5CEFE68(v102 + v107, v201, type metadata accessor for FormatService.ThemePackage);

      sub_1D5E9DB3C(v102, &qword_1EDF1B720, type metadata accessor for FormatService.ThemePackage);
      v209[0] = v98;
      v109 = v98[2];
      v110 = v91[3];
      if (v109 >= v110 >> 1)
      {
        sub_1D699763C(v110 > 1, v109 + 1, 1);
        v91 = v209[0];
      }

      v48 = v192;
      v111 = v192[1309];
      v91[2] = v109 + 1;
      v90 = v178;
      v44 = sub_1D5CEFF38(v111, v91 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + v109 * v207, type metadata accessor for FormatService.ThemePackage);
      v88 = v174;
      v96 = 1 << *(v174 + 32);
      v92 = v182;
      if (v93 >= v96)
      {
        goto LABEL_90;
      }

      v112 = *(v182 + 8 * v97);
      if ((v112 & (1 << v93)) == 0)
      {
        goto LABEL_91;
      }

      v95 = v169;
      if (v169 != *(v174 + 36))
      {
        goto LABEL_92;
      }

      v113 = v112 & (-2 << (v93 & 0x3F));
      if (v113)
      {
        v96 = __clz(__rbit64(v113)) | v93 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v114 = v97 << 6;
        v115 = (v161 + 8 * v97);
        v116 = v97 + 1;
        while (v116 < (v96 + 63) >> 6)
        {
          v118 = *v115++;
          v117 = v118;
          v114 += 64;
          ++v116;
          if (v118)
          {
            v44 = sub_1D5C25E1C(v93, v169, 0);
            v96 = __clz(__rbit64(v117)) + v114;
            goto LABEL_62;
          }
        }

        v44 = sub_1D5C25E1C(v93, v169, 0);
      }

LABEL_62:
      v94 = v195 + 1;
      v93 = v96;
      if (v195 + 1 == v165)
      {

        v86 = v157;
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v91 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v209[0] = v91;

  sub_1D5E97CC0(v209);
  if (!v86)
  {
    v202 = v48[1867];
    v120 = v48[1753];
    v121 = v48;
    v122 = v48[1741];
    v123 = v121[1543];
    v124 = v121[1249];
    v125 = v121[1237];

    v126 = v209[0];
    v127 = swift_task_alloc();
    *(v127 + 16) = v124;
    *(v127 + 24) = v125;
    v208 = sub_1D5EC9AA8(sub_1D5E9D6C0, v127, v126);

    v128 = swift_task_alloc();
    v128[2] = v124;
    v128[3] = v125;
    v128[4] = v123;
    v128[5] = v122;

    v130 = sub_1D5E51B18(v129, v120, v202, sub_1D5E9D6E0, v128);
    v121[2047] = 0;
    v131 = v121[2029];
    v132 = v130;
    v203 = v121[1741];
    v175 = v121[1729];
    v158 = v121[1735];
    v162 = v121[1723];
    v191 = v121[1537];
    v196 = v121[1531];
    v198 = v121[1543];
    v179 = v121[1633];
    v183 = v121[1441];
    v155 = v121[1381];
    v145 = v121[1273];
    v133 = v121[1267];
    v134 = v121[1261];
    v135 = v121[1249];
    v166 = v135;
    v170 = v121[1423];
    v187 = v121[1243];
    v144 = v121[1237];

    v136 = sub_1D5E9A1F8(v144, v135, v131, v132);

    type metadata accessor for FormatContentSubgroupNeighborsResolver();
    static FormatContentSubgroupNeighborsResolver.resolve(subgroups:)(v136, v209);
    v147 = v209[0];
    sub_1D5E766CC(v144, v136, v145);
    v137 = swift_task_alloc();
    *(v137 + 16) = v198;
    v146 = sub_1D7195F4C(sub_1D5E9D700, v137, v158);

    v204 = *(v203 + 136);
    v138 = v170[5];
    v139 = v134[5];
    v140 = sub_1D725891C();
    (*(*(v140 - 8) + 16))(&v133[v139], v144 + v138, v140);
    v141 = MEMORY[0x1E69E6720];
    sub_1D5E9E84C(v145, &v133[v134[16]], qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v142 = *(v144 + v170[13]);
    v159 = *(v144 + v170[14]);
    v171 = *(v144 + v170[15]);
    sub_1D5E9E84C(v155, &v133[v134[21]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v141, sub_1D5CEFE04);
    *v133 = v162;
    *(v133 + 1) = v175;
    *&v133[v134[6]] = v159;
    *&v133[v134[7]] = v171;
    *&v133[v134[8]] = v208;
    *&v133[v134[9]] = v136;
    *&v133[v134[11]] = v146;
    *&v133[v134[13]] = v131;
    *&v133[v134[14]] = v152;
    *&v133[v134[15]] = v151;
    *&v133[v134[17]] = v149;
    *&v133[v134[18]] = v150;
    v133[v134[19]] = v148;
    *&v133[v134[20]] = v142;
    *&v133[v134[12]] = v204;
    *&v133[v134[10]] = v147;
    sub_1D5CEFE68(v166, v179, type metadata accessor for FormatServiceOptions);
    sub_1D5CEFE68(v144, v183, type metadata accessor for FormatContent);
    sub_1D5CEFE68(v187, v191, type metadata accessor for FormatContentPool);
    sub_1D5CEFE68(v198, v196, type metadata accessor for FormatContentPool);
    type metadata accessor for FormatServiceResult();
    v143 = swift_allocObject();
    v121[2053] = v143;
    sub_1D5CEFF38(v179, v143 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, type metadata accessor for FormatServiceOptions);
    sub_1D5CEFF38(v183, v143 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, type metadata accessor for FormatContent);
    sub_1D5CEFF38(v191, v143 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, type metadata accessor for FormatContentPool);
    sub_1D5CEFF38(v133, v143 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, type metadata accessor for FormatContent.Resolved);
    sub_1D5CEFF38(v196, v143 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, type metadata accessor for FormatContentPool);

    sub_1D5EA08F4(v198, type metadata accessor for FormatContentPool);
    v46 = sub_1D5E59254;
    v44 = (v121 + 82);
    v45 = v121 + 1159;
    v47 = v121 + 1934;

    return MEMORY[0x1EEE6DEB0](v44, v45, v46, v47);
  }
}

uint64_t sub_1D5E59600()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 16424);

  return v1(v2);
}

uint64_t sub_1D5E59E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5A69C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5AEEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5B73C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5BF8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5C7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5D02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5D87C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5E0CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5E918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5F168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5F9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E60208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E60A58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E60EFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 9272, sub_1D5E60F70, v0 + 19792);
}

uint64_t sub_1D5E6131C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E61B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E620DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E621C0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1936, v1, sub_1D5E62228, v0 + 2864);
}

uint64_t sub_1D5E622F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E623D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E62448()
{

  sub_1D5D09C48(v0 + 240);
  sub_1D5D05738(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t FormatService.createArrangementResolver<A>(content:templates:options:dataSourceResolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a3;
  v8 = type metadata accessor for FormatArrangementResolverOptions();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE68(a1, v16, type metadata accessor for FormatContent);
  (*(v9 + 16))(v12, a2, v8);
  sub_1D5B68374(v18 + 496, v21);

  return sub_1D608B924(v16, v12, v21, v20, a4, v19);
}

uint64_t sub_1D5E62660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if ((~a1[2] & 0xF000000000000007) != 0)
  {
    result = MEMORY[0x1E69E7CD0];
    *a3 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    if (*(*(a2 + 88) + 16))
    {
      v3 = a3;
      sub_1D5B69D90(*a1, a1[1]);
      if (v4)
      {
      }

      else
      {
        result = MEMORY[0x1E69E7CD0];
      }

      a3 = v3;
    }

    else
    {
      result = MEMORY[0x1E69E7CD0];
    }

    *a3 = result;
  }

  return result;
}

uint64_t sub_1D5E62700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions() - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E62864, 0, 0);
}

uint64_t sub_1D5E62864()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v20 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = sub_1D72585BC();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v0[2] = v8;
  v10 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v1, v2, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = (v20 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v0[14] = v13;
  *(v13 + 16) = v7;
  sub_1D5E9E84C(v2, v13 + v11, &qword_1EDF45B40, v10, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v4, v13 + v12, type metadata accessor for FormatServiceOptions);

  v14 = swift_task_alloc();
  v0[15] = v14;
  sub_1D5CEFE04(0, &qword_1EDF1B170, sub_1D5C2AB28, MEMORY[0x1E69E62F8]);
  v16 = v15;
  v17 = type metadata accessor for FormatPackageInventory();
  v18 = sub_1D5CF35F8(&qword_1EDF1B168, &qword_1EDF1B170, sub_1D5C2AB28);
  *v14 = v0;
  v14[1] = sub_1D5E62B00;

  return MEMORY[0x1EEE45320](&unk_1D7279F80, v13, v16, v17, v18);
}

uint64_t sub_1D5E62B00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_1D5E62D04;
  }

  else
  {
    v6 = *(v4 + 104);
    *(v4 + 136) = a1;
    sub_1D5CF274C(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);

    v5 = sub_1D5E62C80;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E62C80()
{
  **(v0 + 24) = *(v0 + 136);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E62D04()
{
  sub_1D5CF274C(*(v0 + 104), &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E62DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions() - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E62F38, 0, 0);
}

uint64_t sub_1D5E62F38()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v20 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = sub_1D72585BC();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v0[2] = v8;
  v10 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v1, v2, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = (v20 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v0[14] = v13;
  *(v13 + 16) = v7;
  sub_1D5E9E84C(v2, v13 + v11, &qword_1EDF45B40, v10, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v4, v13 + v12, type metadata accessor for FormatServiceOptions);

  v14 = swift_task_alloc();
  v0[15] = v14;
  sub_1D5CEFE04(0, &qword_1EDF1B170, sub_1D5C2AB28, MEMORY[0x1E69E62F8]);
  v16 = v15;
  v17 = type metadata accessor for FormatPackageInventory();
  v18 = sub_1D5CF35F8(&qword_1EDF1B168, &qword_1EDF1B170, sub_1D5C2AB28);
  *v14 = v0;
  v14[1] = sub_1D5E631D4;

  return MEMORY[0x1EEE45320](&unk_1D7279DB0, v13, v16, v17, v18);
}

uint64_t sub_1D5E631D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_1D5EA21C4;
  }

  else
  {
    v6 = *(v4 + 104);
    *(v4 + 136) = a1;
    sub_1D5CF274C(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);

    v5 = sub_1D5EA21CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E63354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1D5E52E3C;

  return sub_1D5E6341C(a3, a4, a5, a6);
}

uint64_t sub_1D5E6341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_1D725891C();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = sub_1D72585BC();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  v5[51] = swift_task_alloc();
  v5[52] = type metadata accessor for FormatArticleOverrides();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6372C, 0, 0);
}

uint64_t sub_1D5E6372C()
{
  v1 = *(v0 + 192);
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.articles.getter(v2);

  *(v0 + 152) = v3;
  sub_1D5CEFE04(0, &qword_1EDF1B330, type metadata accessor for FormatArticle, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B328, &qword_1EDF1B330, type metadata accessor for FormatArticle);
  v4 = sub_1D72623CC();

  v5 = MEMORY[0x1E69E7CC0];
  v194 = v0;
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  *(v0 + 168) = v5;
  v197 = (v0 + 168);
  v202 = v4;
  v6 = v4 >> 62;
  v171 = (v0 + 160);
  v154 = v1;
  if (*(v1 + 48))
  {
    if (v6)
    {
      goto LABEL_74;
    }

    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = (v0 + 168);
    if (!v7)
    {
      goto LABEL_77;
    }

    goto LABEL_4;
  }

  v63 = *(v1 + 40);
  if (v6)
  {
    v64 = sub_1D7263BFC();
    if (!v64)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v64 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
      goto LABEL_77;
    }
  }

  v65 = 0;
  v66 = *(v0 + 256);
  v168 = *(v0 + 216);
  v164 = *(v0 + 208);
  v165 = *(v0 + 416);
  v67 = **(v0 + 184);
  v196 = v4 & 0xC000000000000001;
  v190 = v4 & 0xFFFFFFFFFFFFFF8;
  v158 = (v66 + 32);
  v185 = (v66 + 56);
  v156 = (v66 + 8);
  v187 = (*(v0 + 232) + 8);
  v189 = (v66 + 48);
  v173 = (v0 + 352);
  v153 = (v0 + 328);
  v191 = MEMORY[0x1E69E7CC0];
  v203 = MEMORY[0x1E69E7CC0];
  v200 = v67;
  v166 = v64;
  while (1)
  {
    if (v196)
    {
      v69 = MEMORY[0x1DA6FB460](v65, v202);
      v70 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      goto LABEL_49;
    }

    if (v65 >= *(v190 + 16))
    {
      goto LABEL_72;
    }

    v69 = *(v202 + 8 * v65 + 32);

    v70 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

LABEL_49:
    if (!*(v67 + 16))
    {
      goto LABEL_39;
    }

    v72 = *(v69 + 16);
    v71 = *(v69 + 24);

    v73 = sub_1D5B69D90(v72, v71);
    v75 = v74;
    v67 = v200;

    if ((v75 & 1) == 0)
    {
      goto LABEL_39;
    }

    v76 = *(*(v200 + 56) + 8 * v73);
    swift_getObjectType();
    v77 = [swift_unknownObjectRetain() lastFetchedDate];
    if (!v77)
    {
      goto LABEL_38;
    }

    v78 = v77;
    sub_1D72588BC();

    sub_1D725887C();
    if (v63 < -v79)
    {
      (*v187)(*(v194 + 240), *(v194 + 224));
LABEL_38:
      swift_unknownObjectRelease();
LABEL_39:

      MEMORY[0x1DA6F9CE0](v68);
      if (*((*v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
        v67 = v200;
      }

      sub_1D726278C();

      v203 = *v197;
      goto LABEL_42;
    }

    v193 = v76;
    v80 = *(v194 + 448);
    v81 = *(v194 + 408);
    v82 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
    swift_beginAccess();
    sub_1D5E9DB98(v69 + v82, v81, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v81, v80, type metadata accessor for FormatArticleOverrides);
    v83 = [objc_msgSend(*(v168 + 152) configurationManager)];
    v30 = swift_unknownObjectRelease();
    v182 = v83;
    if (!v83)
    {
      goto LABEL_114;
    }

    v84 = *(v194 + 440);
    v85 = *(v194 + 408);
    v86 = *(v194 + 344);
    v177 = *(v168 + 136);
    v179 = *(v194 + 248);
    v162 = v164[13];
    v87 = v164[16];
    v160 = v164[15];
    v88 = v164[14];
    sub_1D5E9DB98(v69 + v82, v85, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v85, v84, type metadata accessor for FormatArticleOverrides);
    sub_1D5CF23F8(v84 + *(v165 + 36), v86, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v181 = v87;

    sub_1D5EA08F4(v84, type metadata accessor for FormatArticleOverrides);
    v89 = *v189;
    if ((*v189)(v86, 1, v179) == 1)
    {
      v90 = [v193 routeURL];
      v67 = v200;
      v170 = v88;
      if (v90)
      {
        v91 = v194;
        v92 = v90;
        sub_1D72584EC();

        v93 = 0;
      }

      else
      {
        v93 = 1;
        v91 = v194;
      }

      v98 = v91[43];
      v97 = v91[44];
      v99 = v91[42];
      v100 = v91[31];
      v180 = *v185;
      (*v185)(v99, v93, 1, v100);
      sub_1D5E9E84C(v99, v97, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      if (v89(v98, 1, v100) != 1)
      {
        sub_1D5CF274C(v91[43], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      v88 = v170;
      v96 = v173;
      if (!v170)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v94 = *(v194 + 352);
      v95 = *(v194 + 248);
      (*v158)(v94, *(v194 + 344), v95);
      v180 = *v185;
      (*v185)(v94, 0, 1, v95);
      v67 = v200;
      v96 = v173;
      if (!v88)
      {
        goto LABEL_65;
      }
    }

    v101 = v194;
    v102 = *(v194 + 328);
    v103 = *(v194 + 248);
    sub_1D5CF23F8(*(v194 + 352), v102, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v89(v102, 1, v103) != 1)
    {
      v106 = *(v194 + 360);
      v151 = *(v194 + 352);
      v107 = *(v194 + 272);
      v108 = v88;
      v109 = *(v194 + 248);
      (*v158)(v107, *(v194 + 328), v109);
      sub_1D69F65B4(v107, v162, v108, v160, v181, v106);
      (*v156)(v107, v109);
      sub_1D5CF274C(v151, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v180(v106, 0, 1, v109);

      goto LABEL_67;
    }

    sub_1D5CF274C(*v173, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v96 = v153;
LABEL_65:
    v101 = v194;
    v104 = *(v194 + 360);
    v105 = *(v194 + 248);
    sub_1D5CF274C(*v96, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v180(v104, 1, 1, v105);

LABEL_67:

    v110 = v101[56];
    v111 = v101[45];
    FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(v110, v182, v177, v111);
    swift_unknownObjectRelease();
    sub_1D5CF274C(v111, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v112 = sub_1D5EA08F4(v110, type metadata accessor for FormatArticleOverrides);
    MEMORY[0x1DA6F9CE0](v112);
    if (*((v101[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v113 = v101[30];
    v114 = v101[28];
    sub_1D726278C();
    swift_unknownObjectRelease();

    (*v187)(v113, v114);
    v191 = v101[20];
    v64 = v166;
LABEL_42:
    ++v65;
    if (v70 == v64)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  v7 = sub_1D7263BFC();
  v8 = v197;
  if (v7)
  {
LABEL_4:
    v9 = 0;
    v10 = *(v194 + 256);
    v186 = *(v194 + 216);
    v159 = *(v194 + 208);
    v161 = *(v194 + 416);
    v11 = **(v194 + 184);
    v188 = (v10 + 48);
    v155 = (v10 + 32);
    v184 = (v10 + 56);
    v152 = (v10 + 8);
    v151 = v194 + 368;
    v12 = &type metadata for FormatCodingArticleOverridesStrategy;
    v191 = MEMORY[0x1E69E7CC0];
    v203 = MEMORY[0x1E69E7CC0];
    v163 = v7;
    v157 = v11;
    while (1)
    {
      if ((v202 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA6FB460](v9, v202);
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v9 >= *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_71;
        }
      }

      v199 = v9;
      v16 = v12;
      v17 = v14;
      if (!*(v11 + 16) || (v195 = v15, v18 = *(v14 + 16), v19 = *(v14 + 24), , v20 = sub_1D5B69D90(v18, v19), v22 = v21, v15 = v195, v8 = v197, , (v22 & 1) == 0))
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v8 = v197;
        }

        sub_1D726278C();

        v203 = *v8;
        v12 = v16;
        goto LABEL_8;
      }

      v23 = v194;
      v24 = *(v194 + 464);
      v25 = *(v194 + 408);
      v26 = *(*(v11 + 56) + 8 * v20);
      v27 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
      swift_beginAccess();
      v12 = v16;
      sub_1D5E9DB98(v17 + v27, v25, &qword_1EDF402C0, sub_1D5E9E7F8, v16, type metadata accessor for FormatCodingDefault);
      sub_1D5CEFF38(v25, v24, type metadata accessor for FormatArticleOverrides);
      v28 = *(v186 + 152);
      v192 = v26;
      swift_unknownObjectRetain();
      v29 = [objc_msgSend(v28 configurationManager)];
      v30 = swift_unknownObjectRelease();
      v183 = v29;
      if (!v29)
      {
        goto LABEL_113;
      }

      v31 = *(v194 + 456);
      v32 = *(v194 + 408);
      v33 = *(v194 + 384);
      v174 = *(v194 + 248);
      swift_getObjectType();
      v178 = *(v186 + 136);
      v34 = v159[14];
      v35 = v159[16];
      v167 = v159[15];
      v169 = v159[13];
      sub_1D5E9DB98(v17 + v27, v32, &qword_1EDF402C0, sub_1D5E9E7F8, v12, type metadata accessor for FormatCodingDefault);
      v36 = v32;
      v37 = v34;
      sub_1D5CEFF38(v36, v31, type metadata accessor for FormatArticleOverrides);
      sub_1D5CF23F8(v31 + *(v161 + 36), v33, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v172 = v35;

      sub_1D5EA08F4(v31, type metadata accessor for FormatArticleOverrides);
      v38 = *v188;
      if ((*v188)(v33, 1, v174) == 1)
      {
        v39 = [v192 routeURL];
        v11 = v157;
        v40 = v34;
        if (v39)
        {
          v23 = v194;
          v41 = v39;
          sub_1D72584EC();

          v42 = 0;
        }

        else
        {
          v42 = 1;
          v23 = v194;
        }

        v48 = v23[48];
        v47 = v23[49];
        v49 = v23[47];
        v50 = v23[31];
        v175 = *v184;
        (*v184)(v49, v42, 1, v50);
        sub_1D5E9E84C(v49, v47, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        if (v38(v48, 1, v50) != 1)
        {
          sub_1D5CF274C(v23[48], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        }

        v37 = v40;
        v45 = v175;
        v46 = (v194 + 392);
        if (!v40)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v43 = *(v194 + 392);
        v44 = *(v194 + 248);
        (*v155)(v43, *(v194 + 384), v44);
        v45 = *v184;
        (*v184)(v43, 0, 1, v44);
        v11 = v157;
        v46 = (v194 + 392);
        if (!v37)
        {
          goto LABEL_29;
        }
      }

      v51 = v23[46];
      v52 = v23[31];
      sub_1D5CF23F8(v23[49], v51, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      if (v38(v51, 1, v52) != 1)
      {
        v56 = v23[49];
        v55 = v23[50];
        v57 = v37;
        v58 = v23[35];
        v176 = v45;
        v59 = v23[31];
        (*v155)(v58, v23[46], v59);
        sub_1D69F65B4(v58, v169, v57, v167, v172, v55);
        (*v152)(v58, v59);
        sub_1D5CF274C(v56, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v176(v55, 0, 1, v59);

        goto LABEL_31;
      }

      sub_1D5CF274C(*(v194 + 392), &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v46 = (v194 + 368);
LABEL_29:
      v53 = v23[50];
      v54 = v23[31];
      sub_1D5CF274C(*v46, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v45(v53, 1, 1, v54);

LABEL_31:

      v60 = v23[58];
      v61 = v23[50];
      FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(v60, v183, v178, v61);
      swift_unknownObjectRelease();
      sub_1D5CF274C(v61, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v62 = sub_1D5EA08F4(v60, type metadata accessor for FormatArticleOverrides);
      MEMORY[0x1DA6F9CE0](v62);
      if (*((v23[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_unknownObjectRelease();

      v191 = *v171;
      v15 = v195;
      v8 = v197;
      v7 = v163;
LABEL_8:
      v9 = v199 + 1;
      if (v15 == v7)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_77:
  v191 = MEMORY[0x1E69E7CC0];
  v203 = MEMORY[0x1E69E7CC0];
LABEL_78:
  v115 = v203;
  *(v194 + 480) = v203;
  *(v194 + 488) = v191;
  *(v194 + 472) = v191;

  v116 = type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1D7279970;
  v118 = MEMORY[0x1E69E6158];
  if (v191 >> 62)
  {
    v119 = sub_1D7263BFC();
  }

  else
  {
    v119 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = MEMORY[0x1E69E6530];
  v121 = MEMORY[0x1E69E65A8];
  *(v117 + 56) = MEMORY[0x1E69E6530];
  *(v117 + 64) = v121;
  *(v117 + 32) = v119;
  if (v203 >> 62)
  {
    v122 = sub_1D7263BFC();
  }

  else
  {
    v122 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v123 = *(v194 + 200);
  *(v117 + 96) = v120;
  *(v117 + 104) = v121;
  *(v117 + 72) = v122;
  v125 = *v123;
  v124 = v123[1];
  *(v117 + 136) = v118;
  *(v117 + 144) = sub_1D5B7E2C0();
  *(v117 + 112) = v125;
  *(v117 + 120) = v124;

  sub_1D7262EDC();
  sub_1D725C30C();

  if (v203 >> 62)
  {
    v126 = sub_1D7263BFC();
  }

  else
  {
    v126 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v126)
  {
    v127 = v171;
    sub_1D5B68374(*(v194 + 216) + 16, (v171 - 18));
    v128 = *(v194 + 40);
    v129 = *(v194 + 48);
    __swift_project_boxed_opaque_existential_1(v171 - 18, v128);
    if (v203 >> 62)
    {
      v130 = sub_1D7263BFC();
    }

    else
    {
      v130 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v131 = MEMORY[0x1E69E7CC0];
    if (!v130)
    {
      goto LABEL_98;
    }

    v205 = MEMORY[0x1E69E7CC0];
    v30 = sub_1D5BFC364(0, v130 & ~(v130 >> 63), 0);
    if (v130 < 0)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
    }

    else
    {
      v198 = v128;
      v201 = v116;
      v132 = 0;
      v131 = v205;
      do
      {
        if ((v203 & 0xC000000000000001) != 0)
        {
          v133 = MEMORY[0x1DA6FB460](v132, v115);
        }

        else
        {
          v133 = *(v115 + 8 * v132 + 32);
        }

        swift_beginAccess();
        v135 = *(v133 + 16);
        v134 = *(v133 + 24);

        v137 = *(v205 + 16);
        v136 = *(v205 + 24);
        if (v137 >= v136 >> 1)
        {
          sub_1D5BFC364((v136 > 1), v137 + 1, 1);
        }

        ++v132;
        *(v205 + 16) = v137 + 1;
        v138 = v205 + 16 * v137;
        *(v138 + 32) = v135;
        *(v138 + 40) = v134;
        v115 = v203;
      }

      while (v130 != v132);
      v127 = v171;
      v128 = v198;
      v116 = v201;
LABEL_98:
      v139 = *(v154 + 40);
      v140 = *(v154 + 48);
      v141 = objc_opt_self();
      if (v140 == 1)
      {
        v142 = v194;
        if (v139 == 0.0)
        {
          v143 = [v141 defaultCachePolicy];
        }

        else
        {
          v143 = [v141 cachedOnlyCachePolicy];
        }
      }

      else
      {
        v143 = [v141 cachePolicyWithSoftMaxAge_];
        v142 = v194;
      }

      v148 = v142[24];
      v149 = v143;
      v142[62] = HeadlineServiceType.headlines(for:failIfAnyMissing:cachePolicy:purpose:)(v131, 1, v149, *(v148 + *(v116 + 48)), v128, v129);

      v150 = swift_task_alloc();
      v142[63] = v150;
      *v150 = v142;
      v150[1] = sub_1D5E64FC0;
      v30 = (v127 + 2);
    }

    return MEMORY[0x1EEE44EE0](v30);
  }

  else
  {
    v145 = *(v194 + 192);
    v144 = *(v194 + 200);

    v204 = sub_1D5E770A4(v191, v145, v144, MEMORY[0x1E69E7CD0]);

    v146 = *(v194 + 8);

    return v146(v204);
  }
}

uint64_t sub_1D5E64FC0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {

    v3 = sub_1D5E65D88;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_1D5E65100;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5E65100()
{
  v1 = v0[22];
  if (v1 >> 62)
  {
    goto LABEL_29;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC8];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6FB460](v3, v1);
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

LABEL_9:
      v7 = v2;
      v8 = [v6 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      swift_unknownObjectRetain();
      v12 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v4;
      v14 = sub_1D5B69D90(v9, v11);
      v16 = v4[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_27;
      }

      v20 = v15;
      if (v12[3] < v19)
      {
        sub_1D6D66678(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_1D5B69D90(v9, v11);
        if ((v20 & 1) != (v21 & 1))
        {

          return sub_1D726493C();
        }

LABEL_14:
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v25 = v14;
      sub_1D6D7DB48();
      v14 = v25;
      if (v20)
      {
LABEL_4:
        v5 = v14;

        v4 = v101;
        *(v101[7] + 8 * v5) = v6;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }

LABEL_15:
      v101[(v14 >> 6) + 8] |= 1 << v14;
      v22 = (v101[6] + 16 * v14);
      *v22 = v9;
      v22[1] = v11;
      *(v101[7] + 8 * v14) = v6;
      swift_unknownObjectRelease();
      v23 = v101[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_28;
      }

      v4 = v101;
      v101[2] = v24;
LABEL_5:
      ++v3;
      v2 = v7;
      if (v0 == v7)
      {
        goto LABEL_31;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v6 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v0 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v2 = sub_1D7263BFC();
    v95 = v0;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v27 = v95[60];

  v102 = MEMORY[0x1E69E7CC0];
  v28 = v95[60];
  v29 = v28 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
    result = sub_1D7263BFC();
    v30 = result;
    v28 = v95[60];
    v31 = v4;
    if (result)
    {
      goto LABEL_33;
    }

LABEL_64:
    v98 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = v4;
  if (!v30)
  {
    goto LABEL_64;
  }

LABEL_33:
  v32 = 0;
  v87 = v95[52];
  v33 = v95[32];
  v34 = v95[27];
  v86 = v95[26];
  v35 = v28 & 0xC000000000000001;
  v36 = v28 + 32;
  v93 = (v33 + 48);
  v85 = (v33 + 32);
  v92 = (v33 + 56);
  v75 = (v33 + 8);
  v98 = MEMORY[0x1E69E7CC0];
  do
  {
    v37 = v32;
    while (1)
    {
      if (v35)
      {
        result = MEMORY[0x1DA6FB460](v37, v95[60]);
        v38 = result;
        v32 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v37 >= *(v29 + 16))
        {
          goto LABEL_69;
        }

        v38 = *(v36 + 8 * v37);

        v32 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          return result;
        }
      }

      if (v31[2])
      {
        break;
      }

LABEL_36:
      ++v37;
      if (v32 == v30)
      {
        goto LABEL_65;
      }
    }

    v39 = sub_1D5B69D90(*(v38 + 16), *(v38 + 24));
    if ((v40 & 1) == 0)
    {

      v31 = v4;
      goto LABEL_36;
    }

    v94 = v34;
    v41 = v95[51];
    v96 = v95[54];
    v99 = *(v4[7] + 8 * v39);
    v42 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
    swift_beginAccess();
    v83 = v42;
    sub_1D5E9DB98(v38 + v42, v41, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v41, v96, type metadata accessor for FormatArticleOverrides);
    v43 = *(v94 + 152);
    swift_unknownObjectRetain_n();
    v44 = [objc_msgSend(v43 configurationManager)];
    result = swift_unknownObjectRelease();
    v82 = v44;
    if (!v44)
    {
      goto LABEL_70;
    }

    v88 = v95[53];
    v45 = v95[51];
    v76 = v95[38];
    v79 = v95[31];
    swift_getObjectType();
    v81 = *(v94 + 136);
    v74 = v86[13];
    v97 = v86[14];
    v46 = v86[16];
    v73 = v86[15];
    sub_1D5E9DB98(v38 + v83, v45, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v45, v88, type metadata accessor for FormatArticleOverrides);
    sub_1D5CF23F8(v88 + *(v87 + 36), v76, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v84 = v46;

    sub_1D5EA08F4(v88, type metadata accessor for FormatArticleOverrides);
    v89 = *v93;
    if ((*v93)(v76, 1, v79) == 1)
    {
      v47 = [v99 routeURL];
      if (v47)
      {
        v48 = v95;
        v49 = v47;
        sub_1D72584EC();

        v50 = 0;
      }

      else
      {
        v50 = 1;
        v48 = v95;
      }

      v72 = v48[39];
      v53 = v48[36];
      v54 = v48[31];
      v77 = v48[38];
      v80 = *v92;
      (*v92)(v53, v50, 1, v54);
      sub_1D5E9E84C(v53, v72, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      if (v89(v77, 1, v54) != 1)
      {
        sub_1D5CF274C(v48[38], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }
    }

    else
    {
      v51 = v95[39];
      v52 = v95[31];
      (*v85)(v51, v95[38], v52);
      v80 = *v92;
      (*v92)(v51, 0, 1, v52);
    }

    v55 = v95 + 39;
    if (v97)
    {
      v56 = v95;
      v57 = v95[37];
      v58 = v95[31];
      sub_1D5CF23F8(v95[39], v57, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      if (v89(v57, 1, v58) == 1)
      {
        sub_1D5CF274C(v95[39], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v55 = v95 + 37;
        goto LABEL_57;
      }

      v63 = v95[40];
      v90 = v95[39];
      v64 = v95[33];
      v78 = v95[31];
      (*v85)(v64, v95[37]);
      sub_1D69F65B4(v64, v74, v97, v73, v84, v63);
      v65 = v64;
      v60 = v78;
      (*v75)(v65, v78);
      sub_1D5CF274C(v90, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v61 = v63;
      v62 = 0;
    }

    else
    {
LABEL_57:
      v56 = v95;
      v59 = v95[40];
      v60 = v95[31];
      sub_1D5CF274C(*v55, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v61 = v59;
      v62 = 1;
    }

    v80(v61, v62, 1, v60);

    v91 = v56[54];
    v66 = v56[40];
    FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(v91, v82, v81, v66);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    sub_1D5CF274C(v66, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v67 = sub_1D5EA08F4(v91, type metadata accessor for FormatArticleOverrides);
    MEMORY[0x1DA6F9CE0](v67);
    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    result = sub_1D726278C();
    v98 = v102;
    v34 = v94;
    v31 = v4;
  }

  while (v32 != v30);
LABEL_65:
  v68 = v95[59];
  v70 = v95[24];
  v69 = v95[25];

  sub_1D6985684(v68);
  v100 = sub_1D5E770A4(v98, v70, v69, MEMORY[0x1E69E7CD0]);

  v71 = v95[1];

  return v71(v100);
}

uint64_t sub_1D5E65D88()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E65F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E65FF0(a3, a4, a5);
}

uint64_t sub_1D5E65FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E66014, 0, 0);
}

uint64_t sub_1D5E66014()
{
  v128 = v0;
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.articleLists.getter(v2);

  *(v0 + 56) = v3;
  sub_1D5CEFE04(0, &qword_1EDF1B2B0, type metadata accessor for FormatArticleList, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B2A8, &qword_1EDF1B2B0, type metadata accessor for FormatArticleList);
  v107 = v0 + 56;
  v121 = sub_1D72623CC();
  *(v0 + 128) = v121;

  v4 = FormatContent.requirements.getter();
  v5 = Array<A>.articles.getter(v4);

  if (v5 >> 62)
  {
LABEL_87:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v118 = v0;
  if (v6)
  {
    v127[0] = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v8 = 0;
    v9 = v127[0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);

      v127[0] = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        v9 = v127[0];
      }

      ++v8;
      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
    }

    while (v6 != v8);

    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D5B86020(v9);
  *(v0 + 136) = v16;

  v17 = sub_1D605A62C(v7);
  *(v0 + 64) = v7;
  v18 = v121;
  v19 = v107;
  if (v121 >> 62)
  {
    v102 = v17;
    v20 = sub_1D7263BFC();
    v17 = v102;
  }

  else
  {
    v20 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v117 = v16;
  v119 = v17;
  if (v20)
  {
    v21 = 0;
    v104 = *(v0 + 112);
    v105 = *(v0 + 120);
    v1 = MEMORY[0x1E69E7CC0];
    v103 = *(v0 + 104);
    v22 = *(*(v0 + 96) + 8);
    v106 = v20;
    v122 = v22;
    while (1)
    {
      if ((v121 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v21, v18);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v21 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v5 = *(v18 + 8 * v21 + 32);

        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      v126 = v24;
      if (!*(v22 + 16) || (v25 = *(v5 + 16), v0 = *(v5 + 24), , v26 = sub_1D5B69D90(v25, v0), v28 = v27, v18 = v121, , (v28 & 1) == 0))
      {

        MEMORY[0x1DA6F9CE0](v49);
        if (*((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D726272C();
          v18 = v121;
        }

        sub_1D726278C();

        v1 = *(v19 + 8);
        goto LABEL_19;
      }

      v29 = *(*(v22 + 56) + 8 * v26);
      v0 = *(v5 + 24);
      v120 = *(v5 + 16);

      v30 = sub_1D5E780A8(v117, v29);
      v124 = v30;
      if (v30 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_42:

          goto LABEL_43;
        }
      }

      else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v114 = v29;
      v115 = v0;
      v116 = v1;
      v32 = v118[13];
      v31 = v118[14];
      v33 = *(v103 + 56);
      v34 = type metadata accessor for FormatServiceOptions();
      sub_1D5C384A0();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1D7279970;
      v36 = *v31;
      v37 = *(v104 + 8);
      *(v35 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1D5B7E2C0();
      *(v35 + 64) = v38;
      v112 = v37;
      v113 = v36;
      *(v35 + 32) = v36;
      *(v35 + 40) = v37;
      swift_bridgeObjectRetain_n();
      v110 = v33;
      v39 = FCFeedFilterOptionsToNSString();
      v40 = sub_1D726207C();
      v42 = v41;

      *(v35 + 96) = MEMORY[0x1E69E6158];
      *(v35 + 104) = v38;
      v111 = v38;
      *(v35 + 72) = v40;
      *(v35 + 80) = v42;
      v43 = *(v32 + *(v34 + 44));
      v44 = *(v43 + 16);
      *(v35 + 136) = MEMORY[0x1E69E6530];
      *(v35 + 144) = MEMORY[0x1E69E65A8];
      *(v35 + 112) = v44;
      sub_1D7262EDC();
      sub_1D725C30C();

      v45 = *(v105 + 152);
      v46 = [objc_msgSend(v45 configurationManager)];
      swift_unknownObjectRelease();
      v47 = *(v43 + 16);
      if (v47)
      {
        v48 = sub_1D5B9A6D8(*(v43 + 16), 0);
        v108 = sub_1D5B9A6EC(v127, v48 + 4, v47, v43);
        v0 = v127[2];
        v1 = v127[4];

        sub_1D5B87E38();
        if (v108 != v47)
        {
          goto LABEL_86;
        }
      }

      v109 = *(v118 + 13);
      v50 = objc_opt_self();
      v51 = MEMORY[0x1E69E6158];
      v52 = sub_1D726265C();

      v53 = [v50 transformationWithFilterOptions:v110 configuration:v46 context:v45 otherArticleIDs:v52];

      swift_unknownObjectRelease();
      sub_1D5B5534C(0, &qword_1EDF3C720);
      v54 = sub_1D726265C();

      v55 = [v53 transformHeadlinesWithResult_];

      sub_1D5B5A498(0, &qword_1EDF1A758);
      v56 = sub_1D726267C();

      v57 = swift_task_alloc();
      *(v57 + 16) = v109;
      v58 = sub_1D5FBBBBC(sub_1D5EA22C4, v57, v56);

      v118[11] = v58;
      sub_1D5B9EE48();
      sub_1D5C2AF10(&qword_1EDF1AE70, 255, sub_1D5B9EE48);
      v19 = v107;
      v124 = sub_1D72623CC();

      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1D7279970;
      *(v59 + 56) = v51;
      *(v59 + 64) = v111;
      *(v59 + 32) = v113;
      *(v59 + 40) = v112;
      if (v114 >> 62)
      {
        v60 = sub_1D7263BFC();
      }

      else
      {
        v60 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v121;
      v0 = v115;
      v1 = v116;

      *(v59 + 96) = MEMORY[0x1E69E6530];
      *(v59 + 104) = MEMORY[0x1E69E65A8];
      *(v59 + 72) = v60;
      if (v124 >> 62)
      {
        v61 = sub_1D7263BFC();
      }

      else
      {
        v61 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v59 + 136) = MEMORY[0x1E69E6530];
      *(v59 + 144) = MEMORY[0x1E69E65A8];
      *(v59 + 112) = v61;
      sub_1D7262EDC();
      sub_1D725C30C();

LABEL_43:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127[0] = v119;
      v63 = sub_1D5B69D90(v120, v0);
      v65 = v119[2];
      v66 = (v64 & 1) == 0;
      v67 = __OFADD__(v65, v66);
      v68 = v65 + v66;
      if (v67)
      {
        goto LABEL_84;
      }

      v69 = v64;
      if (v119[3] < v68)
      {
        sub_1D6D666E4(v68, isUniquelyReferenced_nonNull_native);
        v63 = sub_1D5B69D90(v120, v0);
        if ((v69 & 1) != (v70 & 1))
        {

          return sub_1D726493C();
        }

LABEL_48:
        v20 = v106;
        if (v69)
        {
          goto LABEL_18;
        }

        goto LABEL_49;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_48;
      }

      v75 = v0;
      v76 = v63;
      sub_1D6D7DCE0();
      v63 = v76;
      v0 = v75;
      v18 = v121;
      v20 = v106;
      if (v69)
      {
LABEL_18:
        v23 = v63;

        v119 = v127[0];
        *(*(v127[0] + 56) + 8 * v23) = v124;

        goto LABEL_19;
      }

LABEL_49:
      v71 = v127[0];
      *(v127[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
      v72 = (v71[6] + 16 * v63);
      *v72 = v120;
      v72[1] = v0;
      *(v71[7] + 8 * v63) = v124;

      v73 = v71[2];
      v67 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v67)
      {
        goto LABEL_85;
      }

      v119 = v71;
      v71[2] = v74;
LABEL_19:
      v22 = v122;
      ++v21;
      if (v126 == v20)
      {
        goto LABEL_56;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_56:
  v118[19] = v1;
  v118[20] = v119;
  v118[18] = v119;
  v77 = v118[13];
  v78 = type metadata accessor for FormatServiceOptions();
  v118[21] = v78;
  v118[22] = *(v77 + *(v78 + 52));
  sub_1D5C384A0();
  v118[23] = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1D7279970;
  v81 = v119[2];
  *(v80 + 56) = MEMORY[0x1E69E6530];
  *(v80 + 64) = MEMORY[0x1E69E65A8];
  *(v80 + 32) = v81;
  v126 = v78;
  if (v1 >> 62)
  {
    v82 = sub_1D7263BFC();
  }

  else
  {
    v82 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v118[14];
  *(v80 + 96) = MEMORY[0x1E69E6530];
  *(v80 + 104) = MEMORY[0x1E69E65A8];
  *(v80 + 72) = v82;
  v84 = *v83;
  v118[24] = *v83;
  v85 = v83[1];
  v118[25] = v85;
  *(v80 + 136) = MEMORY[0x1E69E6158];
  v86 = sub_1D5B7E2C0();
  v118[26] = v86;
  *(v80 + 144) = v86;
  *(v80 + 112) = v84;
  *(v80 + 120) = v85;

  sub_1D7262EDC();
  sub_1D725C30C();

  if (v1 >> 62)
  {
    v5 = v107;
    if (sub_1D7263BFC())
    {
LABEL_60:
      sub_1D5B68374(v118[15] + 16, v5 - 40);
      v6 = v118[5];
      v0 = v118[6];
      __swift_project_boxed_opaque_existential_1((v5 - 40), v6);
      if (!(v1 >> 62))
      {
        v87 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_62;
      }

LABEL_91:
      v87 = sub_1D7263BFC();
LABEL_62:
      v88 = MEMORY[0x1E69E7CC0];
      if (v87)
      {
        v127[0] = MEMORY[0x1E69E7CC0];
        v89 = sub_1D5BFC364(0, v87 & ~(v87 >> 63), 0);
        if (v87 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE44EE0](v89);
        }

        v123 = v0;
        v125 = v6;
        v90 = 0;
        v88 = v127[0];
        v91 = v1 & 0xC000000000000001;
        v92 = v1;
        do
        {
          if (v91)
          {
            v93 = MEMORY[0x1DA6FB460](v90, v1);
          }

          else
          {
            v93 = *(v1 + 8 * v90 + 32);
          }

          v94 = *(v93 + 16);
          v95 = *(v93 + 24);

          v127[0] = v88;
          v97 = *(v88 + 16);
          v96 = *(v88 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_1D5BFC364((v96 > 1), v97 + 1, 1);
            v88 = v127[0];
          }

          ++v90;
          *(v88 + 16) = v97 + 1;
          v98 = v88 + 16 * v97;
          *(v98 + 32) = v94;
          *(v98 + 40) = v95;
          v1 = v92;
        }

        while (v87 != v90);
        v5 = v107;
        v0 = v123;
        v6 = v125;
      }

      v118[27] = (*(v0 + 16))(v88, *(v118[13] + *(v126 + 48)), v6, v0);

      v101 = swift_task_alloc();
      v118[28] = v101;
      *v101 = v118;
      v101[1] = sub_1D5E66E60;
      v89 = (v5 + 16);

      return MEMORY[0x1EEE44EE0](v89);
    }
  }

  else
  {
    v5 = v107;
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }
  }

  v99 = v118[1];

  return v99(v119);
}

uint64_t sub_1D5E66E60()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_1D5E677A8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_1D5E66FBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D5E66FBC()
{
  v84 = v0;
  v69 = v0[13];
  v70 = v0[15];
  v1 = v0[9];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = v0[20];
  v68 = v0[21];
  v8 = v0[18];

  v9 = 0;
  v66 = v1;
  v67 = v0;
  v64 = v6;
  v65 = v1 + 64;
  while (v5)
  {
    v11 = v9;
LABEL_11:
    v12 = (v11 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(v1 + 56) + v12);
    v14 = *(*(v1 + 48) + v12);

    v78 = v14;
    v15 = [v14 identifier];
    if (!v15)
    {
      goto LABEL_44;
    }

    v16 = v15;
    v17 = v0[17];
    v80 = sub_1D726207C();
    v81 = v18;

    v79 = v13;
    v19 = sub_1D5E780A8(v17, v13);
    v82 = v19;
    if (v19 >> 62)
    {
      if (!sub_1D7263BFC())
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v75 = v8;
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    v23 = v0[13];
    v24 = *(v69 + 56);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7279970;
    v26 = MEMORY[0x1E69E6158];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = v20;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    swift_bridgeObjectRetain_n();
    v74 = v24;
    v27 = FCFeedFilterOptionsToNSString();
    v28 = sub_1D726207C();
    v30 = v29;

    *(v25 + 96) = v26;
    *(v25 + 104) = v20;
    *(v25 + 72) = v28;
    *(v25 + 80) = v30;
    v31 = *(v23 + *(v68 + 44));
    v32 = *(v31 + 16);
    *(v25 + 136) = MEMORY[0x1E69E6530];
    *(v25 + 144) = MEMORY[0x1E69E65A8];
    *(v25 + 112) = v32;
    sub_1D7262EDC();
    sub_1D725C30C();

    v33 = *(v70 + 152);
    v34 = [objc_msgSend(v33 configurationManager)];
    swift_unknownObjectRelease();
    v35 = *(v31 + 16);
    if (v35)
    {
      v36 = sub_1D5B9A6D8(*(v31 + 16), 0);
      v76 = sub_1D5B9A6EC(&v83, v36 + 4, v35, v31);

      sub_1D5B87E38();
      if (v76 != v35)
      {
        goto LABEL_43;
      }
    }

    v0 = v67;
    v77 = v67[25];
    v72 = v67[26];
    v73 = v67[24];
    v71 = *(v67 + 13);
    v37 = objc_opt_self();
    v38 = MEMORY[0x1E69E6158];
    v39 = sub_1D726265C();

    v40 = [v37 transformationWithFilterOptions:v74 configuration:v34 context:v33 otherArticleIDs:v39];

    swift_unknownObjectRelease();
    sub_1D5B5534C(0, &qword_1EDF3C720);
    v41 = sub_1D726265C();

    v42 = [v40 transformHeadlinesWithResult_];

    sub_1D5B5A498(0, &qword_1EDF1A758);
    v43 = sub_1D726267C();

    v44 = swift_task_alloc();
    *(v44 + 16) = v71;
    v45 = sub_1D5FBBBBC(sub_1D5EA22C4, v44, v43);

    v67[10] = v45;
    sub_1D5B9EE48();
    sub_1D5C2AF10(&qword_1EDF1AE70, 255, sub_1D5B9EE48);
    v82 = sub_1D72623CC();

    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D7279970;
    *(v46 + 56) = v38;
    *(v46 + 64) = v72;
    *(v46 + 32) = v73;
    *(v46 + 40) = v77;
    if (v79 >> 62)
    {
      v47 = sub_1D7263BFC();
    }

    else
    {
      v47 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v65;
    v1 = v66;
    v6 = v64;

    *(v46 + 96) = MEMORY[0x1E69E6530];
    *(v46 + 104) = MEMORY[0x1E69E65A8];
    *(v46 + 72) = v47;
    if (v82 >> 62)
    {
      v48 = sub_1D7263BFC();
    }

    else
    {
      v48 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v46 + 136) = MEMORY[0x1E69E6530];
    *(v46 + 144) = MEMORY[0x1E69E65A8];
    *(v46 + 112) = v48;
    sub_1D7262EDC();
    sub_1D725C30C();

    v8 = v75;
LABEL_23:
    v49 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v49;
    v51 = sub_1D5B69D90(v80, v81);
    v53 = v49[2];
    v54 = (v52 & 1) == 0;
    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v57 = v52;
    if (v49[3] >= v56)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = v51;
        sub_1D6D7DCE0();
        v51 = v62;
      }
    }

    else
    {
      sub_1D6D666E4(v56, isUniquelyReferenced_nonNull_native);
      v51 = sub_1D5B69D90(v80, v81);
      if ((v57 & 1) != (v58 & 1))
      {

        sub_1D726493C();
        return;
      }
    }

    v5 &= v5 - 1;
    if (v57)
    {
      v10 = v51;

      v8 = v83;
      *(v83[7] + 8 * v10) = v82;
    }

    else
    {
      v8 = v83;
      v83[(v51 >> 6) + 8] |= 1 << v51;
      v59 = (v8[6] + 16 * v51);
      *v59 = v80;
      v59[1] = v81;
      *(v8[7] + 8 * v51) = v82;

      v60 = v8[2];
      v55 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v55)
      {
        goto LABEL_42;
      }

      v8[2] = v61;
    }

    v9 = v11;
    v7 = v8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v63 = v0[1];

  v63(v7);
}

uint64_t sub_1D5E677A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E678C4(a3, a4, a5);
}

uint64_t sub_1D5E678C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E678E8, 0, 0);
}

uint64_t sub_1D5E678E8()
{
  v1 = FormatContent.requirements.getter();
  v2 = Array<A>.issues.getter(v1);

  v0[10] = v2;
  sub_1D5CEFE04(0, &qword_1EDF1B408, type metadata accessor for FormatIssue, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B400, &qword_1EDF1B408, type metadata accessor for FormatIssue);
  v3 = 0;
  v4 = sub_1D72623CC();

  v5 = MEMORY[0x1E69E7CC0];
  v0[11] = MEMORY[0x1E69E7CC0];
  v6 = v0 + 11;
  v0[12] = v5;
  v7 = v0 + 12;
  if (v4 >> 62)
  {
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v0 + 11;
  v56 = v0;
  if (v8)
  {
    if (v8 >= 1)
    {
      v9 = 0;
      v63 = v4 & 0xC000000000000001;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = *(v0[16] + 16);
      v59 = MEMORY[0x1E69E7CC0];
      v60 = v8;
      v57 = v4;
      v61 = v11;
      while (1)
      {
        if (v63)
        {
          v13 = MEMORY[0x1DA6FB460](v9, v4);
          if (!*(v11 + 16))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v13 = *(v4 + 8 * v9 + 32);

          if (!*(v11 + 16))
          {
            goto LABEL_6;
          }
        }

        v15 = v13[2];
        v14 = v13[3];

        v16 = sub_1D5B69D90(v15, v14);
        v18 = v17;
        v8 = v60;

        if (v18)
        {
          v66 = v10;
          v19 = *(*(v11 + 56) + 8 * v16);
          v20 = v13[7];
          if (v13[5])
          {
            v21 = objc_allocWithZone(MEMORY[0x1E69B5360]);

            v22 = v19;

            v23 = sub_1D726203C();
            if (!v20)
            {
              v24 = 0;
              goto LABEL_21;
            }

LABEL_20:
            v24 = sub_1D726203C();
LABEL_21:
            v26 = [v21 initWithTitle:v23 issueDescription:v24];

            [objc_allocWithZone(MEMORY[0x1E69B5348]) initWithIssue:v19 overrides:v26];

            v4 = v57;
            v6 = v58;
          }

          else
          {
            if (v20)
            {
              v21 = objc_allocWithZone(MEMORY[0x1E69B5360]);
              v25 = v19;

              v23 = 0;
              goto LABEL_20;
            }

            v27 = v19;
          }

          MEMORY[0x1DA6F9CE0]();
          v10 = v66;
          v8 = v60;
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v8 = v60;
          }

          sub_1D726278C();

          v59 = *v6;
          goto LABEL_9;
        }

LABEL_6:

        MEMORY[0x1DA6F9CE0](v12);
        if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v8 = v60;
        }

        sub_1D726278C();

        v10 = *v7;
LABEL_9:
        ++v9;
        v11 = v61;
        if (v8 == v9)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v4 = v56;
  v56[21] = v10;
  v56[22] = v59;
  v56[20] = v59;

  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7279970;
  if (v59 >> 62)
  {
    v54 = v28;
    v29 = sub_1D7263BFC();
    v28 = v54;
  }

  else
  {
    v29 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69E6530];
  v32 = MEMORY[0x1E69E65A8];
  *(v28 + 56) = MEMORY[0x1E69E6530];
  *(v28 + 64) = v32;
  *(v28 + 32) = v29;
  v33 = v10 >> 62;
  v65 = v10;
  if (v10 >> 62)
  {
    v55 = v28;
    v34 = sub_1D7263BFC();
    v28 = v55;
  }

  else
  {
    v34 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v56[18];
  *(v28 + 96) = v31;
  *(v28 + 104) = v32;
  *(v28 + 72) = v34;
  v37 = *v35;
  v36 = v35[1];
  *(v28 + 136) = v30;
  v38 = v28;
  *(v28 + 144) = sub_1D5B7E2C0();
  *(v38 + 112) = v37;
  *(v38 + 120) = v36;

  sub_1D7262EDC();
  sub_1D725C30C();

  if (v33)
  {
    v3 = v65;
    if (sub_1D7263BFC())
    {
LABEL_33:
      sub_1D5B68374(v56[19] + 56, (v58 - 9));
      v0 = v56[5];
      v6 = v56[6];
      __swift_project_boxed_opaque_existential_1(v58 - 9, v0);
      if (!(v3 >> 62))
      {
        v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_35;
      }

LABEL_56:
      v39 = sub_1D7263BFC();
LABEL_35:
      v40 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v67 = MEMORY[0x1E69E7CC0];
        v41 = sub_1D5BFC364(0, v39 & ~(v39 >> 63), 0);
        if (v39 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE44EE0](v41);
        }

        v62 = v6;
        v64 = v0;
        v42 = 0;
        v40 = v67;
        v43 = v3 & 0xC000000000000001;
        do
        {
          if (v43)
          {
            v44 = MEMORY[0x1DA6FB460](v42, v65);
          }

          else
          {
            v44 = *(v65 + 8 * v42 + 32);
          }

          swift_beginAccess();
          v46 = *(v44 + 16);
          v45 = *(v44 + 24);

          v48 = *(v67 + 16);
          v47 = *(v67 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1D5BFC364((v47 > 1), v48 + 1, 1);
          }

          ++v42;
          *(v67 + 16) = v48 + 1;
          v49 = v67 + 16 * v48;
          *(v49 + 32) = v46;
          *(v49 + 40) = v45;
        }

        while (v39 != v42);
        v4 = v56;
        v6 = v62;
        v0 = v64;
      }

      *(v4 + 184) = (v6[1])(v40, v0, v6);

      v53 = swift_task_alloc();
      *(v4 + 192) = v53;
      *v53 = v4;
      v53[1] = sub_1D5E680F8;
      v41 = (v58 + 2);

      return MEMORY[0x1EEE44EE0](v41);
    }
  }

  else
  {
    v3 = v65;
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }
  }

  v56[15] = v59;
  sub_1D5B90088();
  sub_1D5C2AF10(&unk_1EDF1AE30, 255, sub_1D5B90088);
  sub_1D5E9E790();
  v50 = sub_1D72623BC();

  v51 = v56[1];

  return v51(v50);
}

uint64_t sub_1D5E680F8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_1D5E68840;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_1D5E68238;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5E68238()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v58 = (v1 & 0xFFFFFFFFFFFFFF8);
    v61 = v1 & 0xC000000000000001;
    v4 = MEMORY[0x1E69E7CC8];
    v56 = v1;
    while (1)
    {
      if (v61)
      {
        v9 = MEMORY[0x1DA6FB460](v3, v1);
      }

      else
      {
        if (v3 >= v58[2])
        {
          goto LABEL_25;
        }

        v9 = *(v1 + 8 * v3 + 32);
      }

      v10 = v9;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v1 = v2;
      v11 = [v9 identifier];
      v12 = sub_1D726207C();
      v14 = v13;

      v15 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      v17 = sub_1D5B69D90(v12, v14);
      v19 = v4[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_26;
      }

      v23 = v18;
      if (v4[3] < v22)
      {
        sub_1D6D66660(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_1D5B69D90(v12, v14);
        if ((v23 & 1) != (v24 & 1))
        {

          return sub_1D726493C();
        }

LABEL_15:
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v28 = v17;
      sub_1D6D7DB30();
      v17 = v28;
      if (v23)
      {
LABEL_4:
        v5 = v17;

        v4 = v63;
        v6 = v63[7];
        v7 = *(v6 + 8 * v5);
        *(v6 + 8 * v5) = v15;

        goto LABEL_5;
      }

LABEL_16:
      v4 = v63;
      v63[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v63[6] + 16 * v17);
      *v25 = v12;
      v25[1] = v14;
      *(v63[7] + 8 * v17) = v15;

      v26 = v63[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_27;
      }

      v63[2] = v27;
LABEL_5:
      ++v3;
      v2 = v1;
      v8 = v0 == v1;
      v1 = v56;
      if (v8)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v2 = sub_1D7263BFC();
    v55 = v0;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_30:
  v30 = v55;
  v31 = v55[21];

  v64 = MEMORY[0x1E69E7CC0];
  v32 = v55[21];
  if (v31 >> 62)
  {
    v62 = v32 & 0xFFFFFFFFFFFFFF8;
    result = sub_1D7263BFC();
    v33 = result;
    v32 = v55[21];
    if (result)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v62 = v32 & 0xFFFFFFFFFFFFFF8;
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
LABEL_32:
      v34 = 0;
      v35 = v32 & 0xC000000000000001;
      v36 = v32 + 32;
      v37 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v59 = v37;
        v38 = v34;
        while (1)
        {
          if (v35)
          {
            result = MEMORY[0x1DA6FB460](v38, v55[21]);
            v39 = result;
            v34 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (v38 >= *(v62 + 16))
            {
              goto LABEL_64;
            }

            v39 = *(v36 + 8 * v38);

            v34 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              return result;
            }
          }

          if (v4[2])
          {
            v40 = v39[2];
            v41 = v39[3];

            v42 = sub_1D5B69D90(v40, v41);
            v44 = v43;

            if (v44)
            {
              break;
            }
          }

          ++v38;
          if (v34 == v33)
          {
            v30 = v55;
            v37 = v59;
            goto LABEL_60;
          }
        }

        v45 = *(v4[7] + 8 * v42);
        v46 = v39[7];
        if (v39[5])
        {
          v60 = objc_allocWithZone(MEMORY[0x1E69B5360]);

          v57 = v45;
          v47 = v45;

          v48 = sub_1D726203C();
          if (!v46)
          {
            v50 = 0;
            goto LABEL_51;
          }
        }

        else
        {
          if (!v46)
          {
            v45;

            goto LABEL_52;
          }

          v57 = v45;
          v60 = objc_allocWithZone(MEMORY[0x1E69B5360]);
          v49 = v45;

          v48 = 0;
        }

        v50 = sub_1D726203C();
LABEL_51:
        v51 = [v60 initWithTitle:v48 issueDescription:v50];

        [objc_allocWithZone(MEMORY[0x1E69B5348]) initWithIssue:v57 overrides:v51];

LABEL_52:
        MEMORY[0x1DA6F9CE0]();
        v30 = v55;
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        result = sub_1D726278C();
        v37 = v64;
        if (v34 == v33)
        {
          goto LABEL_60;
        }
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_60:
  v52 = v30[20];

  sub_1D69856B0(v52);
  v30[14] = v37;
  sub_1D5B90088();
  sub_1D5C2AF10(&unk_1EDF1AE30, 255, sub_1D5B90088);
  sub_1D5E9E790();
  v53 = sub_1D72623BC();

  v54 = v30[1];

  return v54(v53);
}

uint64_t sub_1D5E68840()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E688A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6895C(a3, a4, a5);
}

uint64_t sub_1D5E6895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E68980, 0, 0);
}

uint64_t sub_1D5E68980()
{
  v105 = v0;
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.tags.getter(v2);

  if (v3 >> 62)
  {
    v4 = sub_1D7263BFC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v104 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v5 = 0;
  v6 = v104;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](v5, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    swift_beginAccess();
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);

    v104 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      v6 = v104;
    }

    ++v5;
    *(v6 + 16) = v11 + 1;
    v12 = v6 + 16 * v11;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
  }

  while (v4 != v5);

LABEL_14:
  v103 = v0;
  v13 = v0[6];
  v102 = sub_1D5B86020(v6);

  v14 = sub_1D605A754(MEMORY[0x1E69E7CC0]);
  v15 = *(v13 + 24);
  v17 = *(v15 + 64);
  v1 = v15 + 64;
  v16 = v17;
  v18 = -1;
  v19 = -1 << *(*(v13 + 24) + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & v16;
  v3 = (63 - v19) >> 6;
  v101 = *(v13 + 24);

  v21 = 0;
  while (1)
  {
    v103[10] = v14;
    if (!v20)
    {
      break;
    }

    v23 = v21;
LABEL_23:
    v24 = __clz(__rbit64(v20)) | (v23 << 6);
    v25 = (*(v101 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(*(v101 + 56) + 8 * v24);
    swift_unknownObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v14;
    v30 = sub_1D5B69D90(v27, v26);
    v32 = v14[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_91;
    }

    v36 = v31;
    if (v14[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = v30;
        sub_1D6D7D8F8();
        v30 = v41;
      }
    }

    else
    {
      sub_1D6D6630C(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_1D5B69D90(v27, v26);
      if ((v36 & 1) != (v37 & 1))
      {
LABEL_79:

        return sub_1D726493C();
      }
    }

    v20 &= v20 - 1;
    if (v36)
    {
      v22 = v30;

      v14 = v104;
      *(v104[7] + 8 * v22) = v28;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v21 = v23;
    }

    else
    {
      v14 = v104;
      v104[(v30 >> 6) + 8] |= 1 << v30;
      v38 = (v14[6] + 16 * v30);
      *v38 = v27;
      v38[1] = v26;
      *(v14[7] + 8 * v30) = v28;
      swift_unknownObjectRelease();
      v39 = v14[2];
      v34 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v34)
      {
        goto LABEL_93;
      }

      v14[2] = v40;
      v21 = v23;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v23 >= v3)
    {
      break;
    }

    v20 = *(v1 + 8 * v23);
    ++v21;
    if (v20)
    {
      goto LABEL_23;
    }
  }

  v3 = 0;
  v42 = -1;
  v43 = -1 << *(v102 + 32);
  if (-v43 < 64)
  {
    v42 = ~(-1 << -v43);
  }

  v44 = v42 & *(v102 + 56);
  v45 = (63 - v43) >> 6;
  v46 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v1 = v103;
  v103[11] = v46;
  v47 = v3;
  if (!v44)
  {
    goto LABEL_37;
  }

  do
  {
    v3 = v47;
LABEL_40:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = (*(v102 + 48) + ((v3 << 10) | (16 * v48)));
    v51 = *v49;
    v50 = v49[1];
    v52 = v14[2];

    if (!v52 || (sub_1D5B69D90(v51, v50), (v53 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1D5B858EC(0, *(v46 + 2) + 1, 1, v46);
      }

      v55 = *(v46 + 2);
      v54 = *(v46 + 3);
      if (v55 >= v54 >> 1)
      {
        v46 = sub_1D5B858EC((v54 > 1), v55 + 1, 1, v46);
      }

      *(v46 + 2) = v55 + 1;
      v56 = &v46[16 * v55];
      *(v56 + 4) = v51;
      *(v56 + 5) = v50;
      goto LABEL_35;
    }

    v47 = v3;
  }

  while (v44);
  while (1)
  {
LABEL_37:
    v3 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_87;
    }

    if (v3 >= v45)
    {
      break;
    }

    v44 = *(v102 + 56 + 8 * v3);
    ++v47;
    if (v44)
    {
      goto LABEL_40;
    }
  }

  v57 = v103[8];

  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D7279970;
  v59 = v14[2];
  v60 = MEMORY[0x1E69E6530];
  v61 = MEMORY[0x1E69E65A8];
  *(v58 + 56) = MEMORY[0x1E69E6530];
  *(v58 + 64) = v61;
  *(v58 + 32) = v59;
  v62 = *(v46 + 2);
  *(v58 + 96) = v60;
  *(v58 + 104) = v61;
  *(v58 + 72) = v62;
  v64 = *v57;
  v63 = v57[1];
  *(v58 + 136) = MEMORY[0x1E69E6158];
  *(v58 + 144) = sub_1D5B7E2C0();
  *(v58 + 112) = v64;
  *(v58 + 120) = v63;

  sub_1D7262EDC();
  sub_1D725C30C();

  if (!*(v46 + 2))
  {
    v72 = v14[2];
    if (v72)
    {
      v73 = sub_1D5C38490(v14[2], 0);
      v74 = sub_1D5C38498(&v104, v73 + 32, v72, v14);

      v75 = sub_1D5B87E38();
      if (v74 != v72)
      {
        __break(1u);
        return MEMORY[0x1EEE44EE0](v75);
      }

      v1 = v103;
    }

    else
    {
      v73 = MEMORY[0x1E69E7CC0];
    }

    v3 = sub_1D5E76DE0(v73, *(v1 + 56), *(v1 + 64));

    if (!(v3 >> 62))
    {
      v76 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v76)
      {
LABEL_60:
        v77 = 0;
        v78 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v80 = MEMORY[0x1DA6FB460](v77, v3);
            v81 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              goto LABEL_88;
            }
          }

          else
          {
            if (v77 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v80 = *(v3 + 8 * v77 + 32);
            swift_unknownObjectRetain();
            v81 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              goto LABEL_88;
            }
          }

          v82 = [v80 identifier];
          v83 = sub_1D726207C();
          v85 = v84;

          swift_unknownObjectRetain();
          v1 = swift_isUniquelyReferenced_nonNull_native();
          v104 = v78;
          v86 = sub_1D5B69D90(v83, v85);
          v88 = v78[2];
          v89 = (v87 & 1) == 0;
          v34 = __OFADD__(v88, v89);
          v90 = v88 + v89;
          if (v34)
          {
            goto LABEL_90;
          }

          v91 = v87;
          if (v78[3] < v90)
          {
            break;
          }

          if (v1)
          {
            goto LABEL_71;
          }

          v96 = v86;
          sub_1D6D7D8F8();
          v86 = v96;
          v1 = v103;
          if (v91)
          {
LABEL_61:
            v79 = v86;

            v78 = v104;
            *(v104[7] + 8 * v79) = v80;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_62;
          }

LABEL_72:
          v78 = v104;
          v104[(v86 >> 6) + 8] |= 1 << v86;
          v93 = (v78[6] + 16 * v86);
          *v93 = v83;
          v93[1] = v85;
          *(v78[7] + 8 * v86) = v80;
          swift_unknownObjectRelease();
          v94 = v78[2];
          v34 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v34)
          {
            goto LABEL_92;
          }

          v78[2] = v95;
LABEL_62:
          ++v77;
          if (v81 == v76)
          {
            goto LABEL_97;
          }
        }

        sub_1D6D6630C(v90, v1);
        v86 = sub_1D5B69D90(v83, v85);
        if ((v91 & 1) != (v92 & 1))
        {
          goto LABEL_79;
        }

LABEL_71:
        v1 = v103;
        if (v91)
        {
          goto LABEL_61;
        }

        goto LABEL_72;
      }

LABEL_96:
      v78 = MEMORY[0x1E69E7CC8];
LABEL_97:

      v100 = *(v1 + 8);

      return v100(v78);
    }

LABEL_95:
    v76 = sub_1D7263BFC();
    if (v76)
    {
      goto LABEL_60;
    }

    goto LABEL_96;
  }

  v65 = v103[9];
  v66 = v103[7];
  v67 = v65[15];
  v68 = v65[16];
  __swift_project_boxed_opaque_existential_1(v65 + 12, v67);
  v69 = *(v66 + 40);
  LODWORD(v66) = *(v66 + 48);
  v70 = objc_opt_self();
  if (v66 == 1)
  {
    if (v69 == 0.0)
    {
      v71 = [v70 defaultCachePolicy];
    }

    else
    {
      v71 = [v70 cachedOnlyCachePolicy];
    }
  }

  else
  {
    v71 = [v70 cachePolicyWithSoftMaxAge_];
  }

  v98 = v71;
  v103[12] = (*(v68 + 24))(v46, v98, v67, v68);

  v99 = swift_task_alloc();
  v103[13] = v99;
  *v99 = v103;
  v99[1] = sub_1D5E69354;
  v75 = (v103 + 5);

  return MEMORY[0x1EEE44EE0](v75);
}

uint64_t sub_1D5E69354()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1D5E69794;
  }

  else
  {
    v2 = sub_1D5E69498;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E69498()
{
  v1 = sub_1D5E76DE0(*(v0 + 40), *(v0 + 56), *(v0 + 64));

  if (v1 >> 62)
  {
LABEL_34:
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 80);

  if (v2)
  {
    v4 = 0;
    v26 = v0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v4, v1);
        v0 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v6 = *(v1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v0 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      v7 = [v6 identifier];
      v8 = sub_1D726207C();
      v10 = v9;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_1D5B69D90(v8, v10);
      v14 = v3[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_32;
      }

      v18 = v13;
      if (v3[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v23 = v12;
      sub_1D6D7D8F8();
      v12 = v23;
      if (v18)
      {
LABEL_5:
        v5 = v12;

        *(v3[7] + 8 * v5) = v6;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_6;
      }

LABEL_16:
      v3[(v12 >> 6) + 8] |= 1 << v12;
      v20 = (v3[6] + 16 * v12);
      *v20 = v8;
      v20[1] = v10;
      *(v3[7] + 8 * v12) = v6;
      swift_unknownObjectRelease();
      v21 = v3[2];
      v16 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v16)
      {
        goto LABEL_33;
      }

      v3[2] = v22;
LABEL_6:
      ++v4;
      if (v0 == v2)
      {
        v0 = v26;
        goto LABEL_24;
      }
    }

    sub_1D6D6630C(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1D5B69D90(v8, v10);
    if ((v18 & 1) != (v19 & 1))
    {

      return sub_1D726493C();
    }

LABEL_15:
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_24:

  v24 = *(v0 + 8);

  return v24(v3);
}

uint64_t sub_1D5E69794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E697F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E698B0(a3, a4, a5);
}

uint64_t sub_1D5E698B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_1D5CEFE04(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for FormatServiceOptions();
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E699A4, 0, 0);
}

uint64_t sub_1D5E699A4()
{
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.tagFeeds.getter(v2);

  if (v3 >> 62)
  {
LABEL_64:
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
LABEL_66:
      v38 = sub_1D7263BFC();
      goto LABEL_42;
    }

    v5 = 0;
    v6 = v73;
    v1 = v3 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v7 = MEMORY[0x1DA6FB460](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      swift_beginAccess();
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);

      v11 = *(v73 + 16);
      v10 = *(v73 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v73 + 16) = v11 + 1;
      v12 = v73 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
    }

    while (v4 != v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D5B86020(v6);
  v0[20] = v13;

  if (*(v13 + 16))
  {
    v14 = v0[19];
    v15 = v0[13];
    sub_1D5CEFE68(v0[14], v14, type metadata accessor for FormatServiceOptions);
    *(v14 + 56) |= 0x20024uLL;
    v71 = *(v15 + 40);
    v16 = *(v15 + 24);
    v17 = MEMORY[0x1E69E7CC0];
    v0[10] = MEMORY[0x1E69E7CC0];
    v3 = v13 + 56;
    v18 = -1;
    v19 = -1 << *(v13 + 32);
    if (-v19 < 64)
    {
      v18 = ~(-1 << -v19);
    }

    v20 = v18 & *(v13 + 56);
    v21 = (63 - v19) >> 6;

    v22 = 0;
    v23 = v17;
    v72 = v17;
    v70 = v16;
LABEL_18:
    v69 = v23;
    v0[21] = v23;
    v24 = v22;
    while (1)
    {
      v0[22] = v72;
      if (!v20)
      {
        break;
      }

      v22 = v24;
LABEL_24:
      v25 = v13;
      v26 = (*(v13 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
      v27 = *v26;
      v1 = v26[1];
      v28 = *(v16 + 16);

      if (!v28 || (sub_1D5B69D90(v27, v1), (v29 & 1) == 0))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1D5B858EC(0, *(v72 + 2) + 1, 1, v72);
        }

        v31 = *(v72 + 2);
        v30 = *(v72 + 3);
        if (v31 >= v30 >> 1)
        {
          v72 = sub_1D5B858EC((v30 > 1), v31 + 1, 1, v72);
        }

        *(v72 + 2) = v31 + 1;
        v32 = &v72[16 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = v1;
        v0[10] = v72;
      }

      v20 &= v20 - 1;
      if (!*(v71 + 16) || (sub_1D5B69D90(v27, v1), (v33 & 1) == 0))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = v69;
        }

        else
        {
          v23 = sub_1D5B858EC(0, *(v69 + 2) + 1, 1, v69);
        }

        v35 = *(v23 + 2);
        v34 = *(v23 + 3);
        if (v35 >= v34 >> 1)
        {
          v23 = sub_1D5B858EC((v34 > 1), v35 + 1, 1, v23);
        }

        *(v23 + 2) = v35 + 1;
        v36 = &v23[16 * v35];
        *(v36 + 4) = v27;
        *(v36 + 5) = v1;
        v16 = v70;
        v13 = v25;
        goto LABEL_18;
      }

      v24 = v22;
      v16 = v70;
      v13 = v25;
    }

    while (1)
    {
      v22 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v22 >= v21)
      {
        break;
      }

      v20 = *(v3 + 8 * v22);
      ++v24;
      if (v20)
      {
        goto LABEL_24;
      }
    }

    v37 = FormatContent.requirements.getter();
    v1 = Array<A>.articles.getter(v37);

    if (v1 >> 62)
    {
      goto LABEL_66;
    }

    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_42:
    if (v38)
    {
      v74 = MEMORY[0x1E69E7CC0];
      v39 = sub_1D5BFC364(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEE44EE0](v39);
      }

      v40 = 0;
      v41 = v74;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1DA6FB460](v40, v1);
        }

        else
        {
          v42 = *(v1 + 8 * v40 + 32);
        }

        v43 = *(v42 + 16);
        v44 = *(v42 + 24);

        v46 = *(v74 + 16);
        v45 = *(v74 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D5BFC364((v45 > 1), v46 + 1, 1);
        }

        ++v40;
        *(v74 + 16) = v46 + 1;
        v47 = v74 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
      }

      while (v38 != v40);
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    v0[23] = sub_1D5B86020(v41);

    if (*(v69 + 2))
    {
      v51 = v0[15];
      v0[24] = *(v0[19] + *(v0[18] + 52));
      sub_1D5C384A0();
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1D7279970;
      v53 = *(v70 + 16);
      v54 = MEMORY[0x1E69E6530];
      v55 = MEMORY[0x1E69E65A8];
      *(v52 + 56) = MEMORY[0x1E69E6530];
      *(v52 + 64) = v55;
      *(v52 + 32) = v53;
      v56 = *(v72 + 2);
      *(v52 + 96) = v54;
      *(v52 + 104) = v55;
      *(v52 + 72) = v56;
      v58 = *v51;
      v57 = v51[1];
      *(v52 + 136) = MEMORY[0x1E69E6158];
      *(v52 + 144) = sub_1D5B7E2C0();
      *(v52 + 112) = v58;
      *(v52 + 120) = v57;

      sub_1D7262EDC();
      sub_1D725C30C();

      v59 = swift_task_alloc();
      v0[25] = v59;
      *v59 = v0;
      v59[1] = sub_1D5E6A218;
      v60 = v0[19];
      v61 = v0[16];

      return sub_1D5E775A8((v0 + 10), v70, v61, v60);
    }

    sub_1D5C384A0();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1D7273AE0;
    sub_1D5CEFE04(0, &unk_1EDF43A60, sub_1D5B9EE48, MEMORY[0x1E69D6B18]);
    v63 = MEMORY[0x1E69E6158];
    v64 = sub_1D7261DBC();
    v66 = v65;
    *(v62 + 56) = v63;
    *(v62 + 64) = sub_1D5B7E2C0();
    *(v62 + 32) = v64;
    *(v62 + 40) = v66;
    sub_1D7262EDC();
    sub_1D725C30C();

    v67 = sub_1D725B92C();
    v0[31] = sub_1D725BA5C();

    v68 = swift_task_alloc();
    v0[32] = v68;
    *v68 = v0;
    v68[1] = sub_1D5E6ABC4;
    v39 = (v0 + 12);

    return MEMORY[0x1EEE44EE0](v39);
  }

  v48 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);

  v49 = v0[1];

  return v49(v48);
}

uint64_t sub_1D5E6A218(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {

    v4 = sub_1D5E6AF04;
  }

  else
  {
    v4 = sub_1D5E6A358;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E6A358()
{
  v1 = FormatContent.requirements.getter();
  v2 = Array<A>.tagFeeds.getter(v1);

  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 + 32;
    v9 = 0.0;
    v10 = 1;
    while (1)
    {
      if (v7)
      {
        v19 = v3;
        v17 = MEMORY[0x1DA6FB460](v6);
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return MEMORY[0x1EEE44EE0](v17);
        }

        v12 = *(v17 + 32);
        LODWORD(v11) = *(v17 + 40);
        swift_unknownObjectRelease();
        ++v6;
        v3 = v19;
        if (v10)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6 >= *(v4 + 16))
      {
        goto LABEL_29;
      }

      v13 = v6 + 1;
      v14 = *(v8 + 8 * v6);
      v12 = *(v14 + 32);
      LODWORD(v11) = *(v14 + 40);
      ++v6;
      if (v10)
      {
        goto LABEL_7;
      }

LABEL_12:
      if (v11)
      {
        if (v13 != v5)
        {
          do
          {
            if (v7)
            {
              v16 = v3;
              v17 = MEMORY[0x1DA6FB460](v13);
              v6 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_80;
              }

              v12 = *(v17 + 32);
              v18 = *(v17 + 40);
              swift_unknownObjectRelease();
              v3 = v16;
              if (v18 != 1)
              {
                goto LABEL_5;
              }
            }

            else
            {
              if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              if (v13 >= *(v4 + 16))
              {
                goto LABEL_29;
              }

              v6 = v13 + 1;
              v15 = *(v8 + 8 * v13);
              if ((*(v15 + 40) & 1) == 0)
              {
                v12 = *(v15 + 32);
                goto LABEL_5;
              }
            }

            v13 = v6;
          }

          while (v6 != v5);
        }

        LOBYTE(v11) = 0;
        v12 = v9;
        goto LABEL_32;
      }

      v6 = v13;
LABEL_5:
      LOBYTE(v11) = 0;
      if (v9 > v12)
      {
        v12 = v9;
      }

LABEL_7:
      v10 = v11;
      v9 = v12;
      if (v6 == v5)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v20 = v3;
    v5 = sub_1D7263BFC();
    v3 = v20;
  }

  LOBYTE(v11) = 1;
  v12 = 0.0;
LABEL_32:

  v21 = FormatContent.requirements.getter();
  v22 = Array<A>.tagFeeds.getter(v21);

  v23 = v22;
  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
LABEL_79:
    v54 = v23;
    v25 = sub_1D7263BFC();
    v23 = v54;
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v11;
  v58 = v0;
  if (!v25)
  {
    v30 = 0;
    LODWORD(v0) = 1;
    goto LABEL_61;
  }

  v11 = 0;
  v26 = 0;
  v27 = v23 & 0xC000000000000001;
  v28 = v23 + 32;
  v29 = 1;
  while (v27)
  {
    v56 = v23;
    v17 = MEMORY[0x1DA6FB460](v26);
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_81;
    }

    v30 = *(v17 + 48);
    v0 = *(v17 + 56);
    swift_unknownObjectRelease();
    ++v26;
    v23 = v56;
    if ((v29 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_39:
    v29 = v0;
    v11 = v30;
    if (v26 == v25)
    {
      goto LABEL_61;
    }
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v26 >= *(v24 + 16))
  {
    goto LABEL_78;
  }

  v31 = v26 + 1;
  v32 = *(v28 + 8 * v26);
  v30 = *(v32 + 48);
  v0 = *(v32 + 56);
  ++v26;
  if (v29)
  {
    goto LABEL_39;
  }

LABEL_44:
  if (!v0)
  {
    v26 = v31;
LABEL_37:
    v0 = 0;
    if (v30 <= v11)
    {
      v30 = v11;
    }

    goto LABEL_39;
  }

  if (v31 != v25)
  {
    do
    {
      if (v27)
      {
        v0 = v23;
        v17 = MEMORY[0x1DA6FB460](v31);
        v26 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_81;
        }

        v30 = *(v17 + 48);
        v34 = *(v17 + 56);
        swift_unknownObjectRelease();
        v23 = v0;
        if (v34 != 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (v31 >= *(v24 + 16))
        {
          goto LABEL_78;
        }

        v26 = v31 + 1;
        v33 = *(v28 + 8 * v31);
        if ((*(v33 + 56) & 1) == 0)
        {
          v30 = *(v33 + 48);
          goto LABEL_37;
        }
      }

      v31 = v26;
    }

    while (v26 != v25);
  }

  LODWORD(v0) = 0;
  v30 = v11;
LABEL_61:
  v35 = v58[16];

  sub_1D5B68374(v35 + 16, (v58 + 2));
  v36 = v58[5];
  v37 = v58[6];
  __swift_project_boxed_opaque_existential_1(v58 + 2, v36);
  if (v0)
  {
    v30 = *(v58[19] + 80);
  }

  v38 = v58[17];
  sub_1D725890C();
  v39 = sub_1D725891C();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v38, 0, 1, v39);
  if (v57)
  {
    v12 = *(v58[19] + 72);
  }

  v41 = v58[17];
  if ((*(v40 + 48))(v41, 1, v39) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_1D725881C();
    (*(v40 + 8))(v41, v39);
  }

  v43 = [objc_allocWithZone(MEMORY[0x1E69B5250]) initWithStartDate:v42 timeInterval:v12];

  if (!v43)
  {
    goto LABEL_82;
  }

  v44 = v58[19];

  v45 = *(v44 + 40);
  LODWORD(v44) = *(v44 + 48);
  v46 = objc_opt_self();
  if (v44 == 1)
  {
    if (v45 == 0.0)
    {
      v47 = [v46 defaultCachePolicy];
    }

    else
    {
      v47 = [v46 cachedOnlyCachePolicy];
    }
  }

  else
  {
    v47 = [v46 cachePolicyWithSoftMaxAge_];
  }

  v48 = v58[26];
  v49 = v58[24];
  v51 = v58[18];
  v50 = v58[19];
  v52 = v47;
  v58[28] = HeadlineServiceType.fetchFeedHeadlines(forTags:maxCountPerFeed:dateRange:fromFeedBin:cachePolicy:purpose:log:)(v48, v30, v43, 1, v52, *(v50 + *(v51 + 48)), v49, v36, v37);

  v53 = swift_task_alloc();
  v58[29] = v53;
  *v53 = v58;
  v53[1] = sub_1D5E6A920;
  v17 = (v58 + 11);

  return MEMORY[0x1EEE44EE0](v17);
}

uint64_t sub_1D5E6A920()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {

    v3 = sub_1D5E6AF9C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_1D5E6AA74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5E6AA74()
{
  v1 = v0[23];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v1;
  sub_1D5B9EE48();
  v6 = sub_1D7261D6C();

  sub_1D5EA08F4(v2, type metadata accessor for FormatServiceOptions);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1D5E6ABC4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_1D5E6AE6C;
  }

  else
  {
    v2 = sub_1D5E6AD1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E6AD1C()
{
  v1 = v0[23];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v1;
  sub_1D5B9EE48();
  v6 = sub_1D7261D6C();

  sub_1D5EA08F4(v2, type metadata accessor for FormatServiceOptions);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1D5E6AE6C()
{
  sub_1D5EA08F4(*(v0 + 152), type metadata accessor for FormatServiceOptions);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6AF04()
{
  sub_1D5EA08F4(*(v0 + 152), type metadata accessor for FormatServiceOptions);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6AF9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1D5EA08F4(*(v0 + 152), type metadata accessor for FormatServiceOptions);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6B0F4(a3, a4, a5);
}

uint64_t sub_1D5E6B0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[191] = v3;
  v4[190] = a3;
  v4[189] = a2;
  v4[188] = a1;
  v5 = sub_1D7261ACC();
  v4[192] = v5;
  v4[193] = *(v5 - 8);
  v4[194] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6B1C0, 0, 0);
}

uint64_t sub_1D5E6B1C0()
{
  v161 = v0;
  v1 = FormatContent.requirements.getter();
  v2 = Array<A>.puzzles.getter(v1);

  v3 = sub_1D605A770(MEMORY[0x1E69E7CC0]);
  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v144 = v0;
  while (v4)
  {
    v5 = 0;
    v145 = v2 & 0xFFFFFFFFFFFFFF8;
    v148 = v2 & 0xC000000000000001;
    while (v148)
    {
      v8 = MEMORY[0x1DA6FB460](v5, v2);
      v0 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v9 = v2;
      v2 = v4;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v152 = v3;
      v13 = sub_1D5B69D90(v11, v10);
      v15 = v3;
      v16 = v3[2];
      v17 = (v14 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_24;
      }

      v20 = v14;
      if (v15[3] < v19)
      {
        sub_1D6D669B0(v19, isUniquelyReferenced_nonNull_native);
        v13 = sub_1D5B69D90(v11, v10);
        if ((v20 & 1) != (v21 & 1))
        {
LABEL_99:

          return sub_1D726493C();
        }

LABEL_14:
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v25 = v13;
      sub_1D6D7DFD0();
      v13 = v25;
      if (v20)
      {
LABEL_4:
        v6 = v13;

        v3 = v152;
        *(*(v152 + 56) + 8 * v6) = v8;

        goto LABEL_5;
      }

LABEL_15:
      v3 = v152;
      *(v152 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v3[6] + 16 * v13);
      *v22 = v11;
      v22[1] = v10;
      *(v3[7] + 8 * v13) = v8;

      v23 = v3[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v3[2] = v24;
LABEL_5:
      ++v5;
      v4 = v2;
      v7 = v0 == v2;
      v2 = v9;
      if (v7)
      {
        goto LABEL_27;
      }
    }

    if (v5 >= *(v145 + 16))
    {
      goto LABEL_23;
    }

    v8 = *(v2 + 8 * v5 + 32);

    v0 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v4 = sub_1D7263BFC();
    v144 = v0;
  }

LABEL_27:
  v136 = (v144 + 1168);
  __dst = (v144 + 1024);
  v26 = v3;
  *(v144 + 1560) = v3;
  v27 = *(v144 + 1504);

  v28 = sub_1D605A8C0(MEMORY[0x1E69E7CC0]);
  v29 = *(v27 + 48);
  v30 = *(v29 + 64);
  v146 = v29 + 64;
  v149 = v29;
  v31 = -1;
  v32 = -1 << *(v29 + 32);
  if (-v32 < 64)
  {
    v31 = ~(-1 << -v32);
  }

  v33 = v31 & v30;
  v34 = (63 - v32) >> 6;

  v35 = 0;
  while (1)
  {
    *(v144 + 1568) = v28;
    if (!v33)
    {
      break;
    }

    v36 = v35;
LABEL_36:
    v37 = __clz(__rbit64(v33)) | (v36 << 6);
    v38 = (*(v149 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    v41 = *(*(v149 + 56) + 8 * v37);
    swift_unknownObjectRetain_n();

    v27 = v28;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v152 = v27;
    v43 = sub_1D5B69D90(v40, v39);
    v45 = *(v27 + 16);
    v46 = (v44 & 1) == 0;
    v18 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v18)
    {
      goto LABEL_107;
    }

    v48 = v44;
    if (*(v27 + 24) >= v47)
    {
      if ((v42 & 1) == 0)
      {
        v27 = &v152;
        v53 = v43;
        sub_1D6D7DB18();
        v43 = v53;
      }
    }

    else
    {
      sub_1D6D66648(v47, v42);
      v27 = v152;
      v43 = sub_1D5B69D90(v40, v39);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_99;
      }
    }

    v33 &= v33 - 1;
    if (v48)
    {
      v27 = v43;

      v28 = v152;
      *(*(v152 + 56) + 8 * v27) = v41;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v35 = v36;
    }

    else
    {
      v28 = v152;
      *(v152 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v50 = (*(v28 + 6) + 16 * v43);
      *v50 = v40;
      v50[1] = v39;
      *(*(v28 + 7) + 8 * v43) = v41;
      swift_unknownObjectRelease();
      v51 = *(v28 + 2);
      v18 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v18)
      {
        goto LABEL_109;
      }

      *(v28 + 2) = v52;
      v35 = v36;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
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
      goto LABEL_110;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v146 + 8 * v36);
    ++v35;
    if (v33)
    {
      goto LABEL_36;
    }
  }

  v36 = (v26 + 8);
  v54 = -1;
  v55 = -1 << *(v26 + 32);
  if (-v55 < 64)
  {
    v54 = ~(-1 << -v55);
  }

  v56 = v54 & v26[8];
  v57 = (63 - v55) >> 6;

  v58 = 0;
  v59 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v138 = v59;
  *(v144 + 1576) = v59;
  v60 = v58;
  if (!v56)
  {
    goto LABEL_50;
  }

  do
  {
    v58 = v60;
LABEL_53:
    v61 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v62 = (v26[6] + ((v58 << 10) | (16 * v61)));
    v64 = *v62;
    v63 = v62[1];
    v65 = *(v28 + 2);

    if (!v65 || (v27 = v28, sub_1D5B69D90(v64, v63), (v66 & 1) == 0))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v59 = v138;
      }

      else
      {
        v59 = sub_1D5B858EC(0, *(v138 + 2) + 1, 1, v138);
      }

      v68 = *(v59 + 2);
      v67 = *(v59 + 3);
      v27 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v59 = sub_1D5B858EC((v67 > 1), v68 + 1, 1, v59);
      }

      *(v59 + 2) = v27;
      v69 = &v59[16 * v68];
      *(v69 + 4) = v64;
      *(v69 + 5) = v63;
      goto LABEL_48;
    }

    v60 = v58;
  }

  while (v56);
  while (1)
  {
LABEL_50:
    v58 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_103;
    }

    if (v58 >= v57)
    {
      break;
    }

    v56 = *(v36 + 8 * v58);
    ++v60;
    if (v56)
    {
      goto LABEL_53;
    }
  }

  v70 = *(v144 + 1520);

  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1D7279970;
  v72 = *(v28 + 2);
  v73 = MEMORY[0x1E69E6530];
  v74 = MEMORY[0x1E69E65A8];
  *(v71 + 56) = MEMORY[0x1E69E6530];
  *(v71 + 64) = v74;
  *(v71 + 32) = v72;
  v75 = *(v138 + 2);
  *(v71 + 96) = v73;
  *(v71 + 104) = v74;
  *(v71 + 72) = v75;
  v77 = *v70;
  v76 = v70[1];
  *(v71 + 136) = MEMORY[0x1E69E6158];
  *(v71 + 144) = sub_1D5B7E2C0();
  *(v71 + 112) = v77;
  *(v71 + 120) = v76;

  sub_1D7262EDC();
  sub_1D725C30C();

  if (*(v138 + 2))
  {
    v78 = *(v144 + 1552);
    v79 = *(v144 + 1544);
    v80 = *(v144 + 1536);
    v81 = *(v144 + 1528);
    v82 = v81[33];
    v83 = v81[34];
    __swift_project_boxed_opaque_existential_1(v81 + 30, v82);
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    (*(v79 + 104))(v78, *MEMORY[0x1E69E7F88], v80);
    v84 = sub_1D72630CC();
    *(v144 + 1584) = v84;
    (*(v79 + 8))(v78, v80);
    v150 = (*(v83 + 88) + **(v83 + 88));
    v85 = swift_task_alloc();
    *(v144 + 1592) = v85;
    *v85 = v144;
    v85[1] = sub_1D5E6BE84;

    return v150(v138, 1, v84, v82, v83);
  }

  v87 = *(v28 + 2);
  if (v87)
  {
    v141 = sub_1D5C38490(*(v28 + 2), 0);
    v88 = sub_1D5C38498(&v152, v141 + 32, v87, v28);

    result = sub_1D5B87E38();
    if (v88 != v87)
    {
      __break(1u);
      return result;
    }

    v36 = v144;
    v27 = v141;
    if (v141 < 0)
    {
LABEL_110:
      v89 = sub_1D7263BFC();
      if (!v89)
      {
        goto LABEL_111;
      }

LABEL_74:
      v90 = 0;
      v140 = v27 & 0xC000000000000001;
      v91 = MEMORY[0x1E69E7CC8];
      v142 = v27;
      v139 = v89;
      while (2)
      {
        if (v140)
        {
          v92 = MEMORY[0x1DA6FB460](v90, v27);
          v93 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v90 >= *(v27 + 16))
          {
            goto LABEL_105;
          }

          v92 = *(v27 + 8 * v90 + 32);
          swift_unknownObjectRetain();
          v93 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_104;
          }
        }

        v143 = v93;
        swift_getObjectType();
        v94 = [v92 identifier];
        v147 = sub_1D726207C();
        v151 = v95;

        v96 = [v92 identifier];
        v97 = sub_1D726207C();
        v99 = v98;

        if (v26[2])
        {
          v100 = sub_1D5B69D90(v97, v99);
          v102 = v101;

          if (v102)
          {
            v103 = *(v26[7] + 8 * v100);
            swift_beginAccess();
            *v136 = v103[2];
            v104 = v103[3];
            v105 = v103[4];
            v106 = v103[6];
            *(v144 + 1216) = v103[5];
            *(v144 + 1232) = v106;
            *(v144 + 1184) = v104;
            *(v144 + 1200) = v105;
            v107 = v103[7];
            v108 = v103[8];
            v109 = v103[10];
            *(v144 + 1280) = v103[9];
            *(v144 + 1296) = v109;
            *(v144 + 1248) = v107;
            *(v144 + 1264) = v108;
            memmove(__dst, v103 + 2, 0x90uLL);
            nullsub_1(__dst);
            sub_1D5E9E6F8(v136, v36 + 1312);
            v110 = *(v144 + 1136);
            *(v36 + 832) = *(v144 + 1120);
            *(v36 + 848) = v110;
            *(v36 + 864) = *(v144 + 1152);
            v111 = *(v144 + 1072);
            *(v36 + 768) = *(v144 + 1056);
            *(v36 + 784) = v111;
            v112 = *(v144 + 1104);
            *(v36 + 800) = *(v144 + 1088);
            *(v36 + 816) = v112;
            v113 = *(v144 + 1040);
            *(v36 + 736) = *__dst;
            *(v36 + 752) = v113;
            goto LABEL_85;
          }
        }

        else
        {
        }

        sub_1D5E9E664((v36 + 736));
LABEL_85:
        v114 = *(v36 + 848);
        v158 = *(v36 + 832);
        v159 = v114;
        v160 = *(v36 + 864);
        v115 = *(v36 + 784);
        v154 = *(v36 + 768);
        v155 = v115;
        v116 = *(v36 + 816);
        v156 = *(v36 + 800);
        v157 = v116;
        v117 = *(v36 + 752);
        v152 = *(v36 + 736);
        v153 = v117;
        v118 = FCPuzzleProviding.overridden(by:)(&v152);
        v119 = v159;
        *(v36 + 976) = v158;
        *(v36 + 992) = v119;
        *(v36 + 1008) = v160;
        v120 = v155;
        *(v36 + 912) = v154;
        *(v36 + 928) = v120;
        v121 = v157;
        *(v36 + 944) = v156;
        *(v36 + 960) = v121;
        v122 = v153;
        *(v36 + 880) = v152;
        *(v36 + 896) = v122;
        sub_1D5E9E688(v36 + 880, &unk_1EDF123B0, &type metadata for FormatPuzzle.Overrides);
        v123 = swift_isUniquelyReferenced_nonNull_native();
        *&v152 = v91;
        v27 = v91;
        v125 = sub_1D5B69D90(v147, v151);
        v126 = *(v91 + 2);
        v127 = (v124 & 1) == 0;
        v128 = v126 + v127;
        if (__OFADD__(v126, v127))
        {
          goto LABEL_106;
        }

        v129 = v124;
        if (*(v91 + 3) >= v128)
        {
          if (v123)
          {
            v36 = v144;
            if ((v124 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v27 = &v152;
            sub_1D6D7DB18();
            v36 = v144;
            if ((v129 & 1) == 0)
            {
              goto LABEL_92;
            }
          }
        }

        else
        {
          sub_1D6D66648(v128, v123);
          v27 = v152;
          v130 = sub_1D5B69D90(v147, v151);
          if ((v129 & 1) != (v131 & 1))
          {
            goto LABEL_99;
          }

          v125 = v130;
          v36 = v144;
          if ((v129 & 1) == 0)
          {
LABEL_92:
            v91 = v152;
            *(v152 + 8 * (v125 >> 6) + 64) |= 1 << v125;
            v132 = (*(v91 + 6) + 16 * v125);
            *v132 = v147;
            v132[1] = v151;
            *(*(v91 + 7) + 8 * v125) = v118;
            swift_unknownObjectRelease();
            v133 = *(v91 + 2);
            v18 = __OFADD__(v133, 1);
            v134 = v133 + 1;
            if (v18)
            {
              goto LABEL_108;
            }

            *(v91 + 2) = v134;
            goto LABEL_76;
          }
        }

        v91 = v152;
        *(*(v152 + 56) + 8 * v125) = v118;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_76:
        ++v90;
        v27 = v142;
        if (v143 == v139)
        {
          goto LABEL_112;
        }

        continue;
      }
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v36 = v144;
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }
  }

  if ((v27 & 0x4000000000000000) != 0)
  {
    goto LABEL_110;
  }

  v89 = *(v27 + 16);
  if (v89)
  {
    goto LABEL_74;
  }

LABEL_111:
  v91 = MEMORY[0x1E69E7CC8];
LABEL_112:

  v135 = *(v36 + 8);

  return v135(v91);
}

uint64_t sub_1D5E6BE84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1600) = a1;
  *(v4 + 1608) = v1;

  if (v1)
  {

    v5 = sub_1D5E6C584;
  }

  else
  {
    v5 = sub_1D5E6BFE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E6BFE0()
{
  v77 = v0;
  v1 = *(v0 + 1600);
  *&v68 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1D7263BFC();
    v3 = *(v0 + 1600);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v3 + 32;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x1DA6FB460](v4, *(v0 + 1600));
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_17;
          }

          v8 = *(v7 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v68;

            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_57;
          }
        }

        v1 = [v8 puzzleType];
        swift_getObjectType();
        v10 = FCPuzzleTypeProviding.isAllowed.getter();
        swift_unknownObjectRelease();
        if (v10)
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          v1 = &v68;
          sub_1D7263EAC();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
        if (v9 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_19:
  if ((v11 & 0x4000000000000000) != 0)
  {
LABEL_57:
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  v13 = *(v0 + 1568);
  v14 = *(v0 + 1560);

  if (!v12)
  {
LABEL_47:

    v60 = *(v0 + 8);

    return v60(v13);
  }

  v15 = 0;
  v64 = v11 & 0xC000000000000001;
  v65 = v14;
  v62 = v12;
  v63 = v11;
  while (1)
  {
    if (v64)
    {
      v16 = MEMORY[0x1DA6FB460](v15, v11);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v15 >= *(v11 + 16))
      {
        goto LABEL_54;
      }

      v16 = *(v11 + 8 * v15 + 32);
      swift_unknownObjectRetain();
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    v66 = v17;
    swift_getObjectType();
    v18 = [v16 identifier];
    v67 = sub_1D726207C();
    v20 = v19;

    v21 = [v16 identifier];
    v22 = sub_1D726207C();
    v24 = v23;

    if (*(v65 + 16))
    {
      v25 = sub_1D5B69D90(v22, v24);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v65 + 56) + 8 * v25);
        swift_beginAccess();
        *(v0 + 448) = v28[2];
        v29 = v28[3];
        v30 = v28[4];
        v31 = v28[6];
        *(v0 + 496) = v28[5];
        *(v0 + 512) = v31;
        *(v0 + 464) = v29;
        *(v0 + 480) = v30;
        v32 = v28[7];
        v33 = v28[8];
        v34 = v28[10];
        *(v0 + 560) = v28[9];
        *(v0 + 576) = v34;
        *(v0 + 528) = v32;
        *(v0 + 544) = v33;
        memmove((v0 + 304), v28 + 2, 0x90uLL);
        nullsub_1(v0 + 304);
        sub_1D5E9E6F8(v0 + 448, v0 + 592);
        v35 = *(v0 + 416);
        *(v0 + 112) = *(v0 + 400);
        *(v0 + 128) = v35;
        *(v0 + 144) = *(v0 + 432);
        v36 = *(v0 + 352);
        *(v0 + 48) = *(v0 + 336);
        *(v0 + 64) = v36;
        v37 = *(v0 + 384);
        *(v0 + 80) = *(v0 + 368);
        *(v0 + 96) = v37;
        v38 = *(v0 + 320);
        *(v0 + 16) = *(v0 + 304);
        *(v0 + 32) = v38;
        goto LABEL_33;
      }
    }

    else
    {
    }

    sub_1D5E9E664((v0 + 16));
LABEL_33:
    v39 = *(v0 + 128);
    v74 = *(v0 + 112);
    v75 = v39;
    v76 = *(v0 + 144);
    v40 = *(v0 + 64);
    v70 = *(v0 + 48);
    v71 = v40;
    v41 = *(v0 + 96);
    v72 = *(v0 + 80);
    v73 = v41;
    v42 = *(v0 + 32);
    v68 = *(v0 + 16);
    v69 = v42;
    v43 = FCPuzzleProviding.overridden(by:)(&v68);
    v44 = v75;
    *(v0 + 256) = v74;
    *(v0 + 272) = v44;
    *(v0 + 288) = v76;
    v45 = v71;
    *(v0 + 192) = v70;
    *(v0 + 208) = v45;
    v46 = v73;
    *(v0 + 224) = v72;
    *(v0 + 240) = v46;
    v47 = v69;
    *(v0 + 160) = v68;
    *(v0 + 176) = v47;
    sub_1D5E9E688(v0 + 160, &unk_1EDF123B0, &type metadata for FormatPuzzle.Overrides);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68 = v13;
    v11 = sub_1D5B69D90(v67, v20);
    v50 = v13[2];
    v51 = (v49 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_55;
    }

    v53 = v49;
    if (v13[3] < v52)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v49)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1D6D7DB18();
      if (v53)
      {
LABEL_23:

        v13 = v68;
        *(*(v68 + 56) + 8 * v11) = v43;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

LABEL_40:
    v13 = v68;
    *(v68 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v56 = (v13[6] + 16 * v11);
    *v56 = v67;
    v56[1] = v20;
    *(v13[7] + 8 * v11) = v43;
    swift_unknownObjectRelease();
    v57 = v13[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_56;
    }

    v13[2] = v59;
LABEL_24:
    ++v15;
    v11 = v63;
    if (v66 == v62)
    {
      goto LABEL_47;
    }
  }

  sub_1D6D66648(v52, isUniquelyReferenced_nonNull_native);
  v54 = sub_1D5B69D90(v67, v20);
  if ((v53 & 1) == (v55 & 1))
  {
    v11 = v54;
    if (v53)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  return sub_1D726493C();
}

uint64_t sub_1D5E6C584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6C6AC(a3, a4, a5);
}

uint64_t sub_1D5E6C6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_1D5C2CA80(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  v4[9] = swift_task_alloc();
  sub_1D5CEFE04(0, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720]);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6C7D4, 0, 0);
}

uint64_t sub_1D5E6C7D4()
{
  v1 = FormatContent.requirements.getter();
  v2 = Array<A>.puzzleTypes.getter(v1);

  v3 = sub_1D605A8F8(MEMORY[0x1E69E7CC0]);
  if (v2 >> 62)
  {
LABEL_29:
    v4 = sub_1D7263BFC();
    v43 = v0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v0;
    if (v4)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6FB460](v5, v2);
          v0 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v7 = *(v2 + 8 * v5 + 32);

          v0 = (v5 + 1);
          if (__OFADD__(v5, 1))
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

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = sub_1D5B69D90(v9, v8);
        v13 = v3[2];
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          goto LABEL_27;
        }

        v17 = v12;
        if (v3[3] < v16)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v22 = v11;
        sub_1D6D7DFE8();
        v11 = v22;
        if (v17)
        {
LABEL_4:
          v6 = v11;

          *(v3[7] + 8 * v6) = v7;

          goto LABEL_5;
        }

LABEL_15:
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v19 = (v3[6] + 16 * v11);
        *v19 = v9;
        v19[1] = v8;
        *(v3[7] + 8 * v11) = v7;

        v20 = v3[2];
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_28;
        }

        v3[2] = v21;
LABEL_5:
        ++v5;
        if (v0 == v4)
        {
          goto LABEL_30;
        }
      }

      sub_1D6D669C8(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1D5B69D90(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {

        return sub_1D726493C();
      }

LABEL_14:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

LABEL_30:
  v43[11] = v3;

  if (v3[2])
  {
    v24 = v43[7];
    v25 = sub_1D5E7935C(v43[5], v3, v43[8]);
    v27 = v26;
    v43[12] = v25;
    v43[13] = v26;
    type metadata accessor for FormatServiceOptions();
    sub_1D5C384A0();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7279970;
    v29 = *(v25 + 16);
    v30 = MEMORY[0x1E69E6530];
    v31 = MEMORY[0x1E69E65A8];
    *(v28 + 56) = MEMORY[0x1E69E6530];
    *(v28 + 64) = v31;
    *(v28 + 32) = v29;
    v32 = *(v27 + 16);
    *(v28 + 96) = v30;
    *(v28 + 104) = v31;
    *(v28 + 72) = v32;
    v34 = *v24;
    v33 = v24[1];
    *(v28 + 136) = MEMORY[0x1E69E6158];
    *(v28 + 144) = sub_1D5B7E2C0();
    *(v28 + 112) = v34;
    *(v28 + 120) = v33;

    sub_1D7262EDC();
    sub_1D725C30C();

    if (*(v27 + 16))
    {
      v35 = v43[8];
      v36 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
      v43[14] = v36;
      v37 = v35[33];
      v38 = v35[34];
      __swift_project_boxed_opaque_existential_1(v35 + 30, v37);
      v39 = *(v38 + 128);
      v40 = v36;
      v44 = (v39 + *v39);
      v41 = swift_task_alloc();
      v43[15] = v41;
      *v41 = v43;
      v41[1] = sub_1D5E6CD08;

      return v44(v27, v36, 25, v37, v38);
    }
  }

  else
  {

    v25 = sub_1D605A8DC(MEMORY[0x1E69E7CC0]);
  }

  v42 = v43[1];

  return v42(v25);
}

uint64_t sub_1D5E6CD08(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_1D5E6D3E8;
  }

  else
  {
    v5 = v3[14];

    v4 = sub_1D5E6CE28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E6CE28()
{
  v61 = v0;
  v1 = v0[16];
  v60 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1D7263BFC();
    v3 = v0[16];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v11 = MEMORY[0x1E69E7CC0];

    if (v11 < 0)
    {
      goto LABEL_54;
    }

    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v1;
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = v0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v1 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  while (!v6)
  {
    if (v5 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = *(v8 + 8 * v5);
    swift_unknownObjectRetain();
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    swift_getObjectType();
    v1 = v9;
    if (FCPuzzleTypeProviding.isAllowed.getter())
    {
      sub_1D7263E9C();
      v0 = v60[2];
      sub_1D7263EDC();
      sub_1D7263EEC();
      v1 = &v60;
      sub_1D7263EAC();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v5;
    if (v10 == v2)
    {
      goto LABEL_14;
    }
  }

  v9 = MEMORY[0x1DA6FB460](v5, v4[16]);
  v10 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v11 = v60;
  v0 = v4;

  if (v11 < 0)
  {
LABEL_54:
    while (2)
    {
      v12 = sub_1D7263BFC();
      v13 = v0[11];
      if (!v12)
      {
        goto LABEL_55;
      }

LABEL_21:
      v52 = v13;
      v53 = v12;
      v14 = 0;
      v55 = v0[8];
      v56 = v11 & 0xC000000000000001;
      v15 = v0[12];
      v54 = v11;
LABEL_24:
      if (v56)
      {
        v16 = MEMORY[0x1DA6FB460](v14, v11);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_51;
        }

        v16 = *(v11 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          continue;
        }
      }

      break;
    }

    v57 = v17;
    v18 = v0[11];
    swift_getObjectType();
    v19 = [v16 identifier];
    v20 = sub_1D726207C();
    v58 = v21;
    v59 = v20;

    v22 = [v16 identifier];
    v23 = sub_1D726207C();
    v25 = v24;

    if (*(v18 + 16))
    {
      v26 = sub_1D5B69D90(v23, v25);
      v28 = v27;

      v29 = v0;
      if (v28)
      {
        v31 = v0[9];
        v30 = v0[10];
        v32 = *(*(v52 + 56) + 8 * v26);
        v33 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
        swift_beginAccess();
        sub_1D5E9DB98(v32 + v33, v31, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
        sub_1D5CEFF38(v31, v30, type metadata accessor for FormatPuzzleType.Overrides);
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }
    }

    else
    {

      v34 = 1;
      v29 = v0;
    }

    v0 = v29;
    v11 = v29[10];
    v35 = type metadata accessor for FormatPuzzleType.Overrides(0);
    (*(*(v35 - 8) + 56))(v11, v34, 1, v35);
    v36 = FCPuzzleTypeProviding.overridden(by:assetManager:)(v11, *(v55 + 136));
    sub_1D5CF274C(v11, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v15;
    v39 = sub_1D5B69D90(v59, v58);
    v40 = v15[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_52;
    }

    v11 = v38;
    if (v15[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v38 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_1D6D7D994();
        if ((v11 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_1D6D66390(v42, isUniquelyReferenced_nonNull_native);
      v43 = sub_1D5B69D90(v59, v58);
      if ((v11 & 1) != (v44 & 1))
      {

        return sub_1D726493C();
      }

      v39 = v43;
      if ((v11 & 1) == 0)
      {
LABEL_39:
        v15 = v60;
        v60[(v39 >> 6) + 8] |= 1 << v39;
        v45 = (v15[6] + 16 * v39);
        *v45 = v59;
        v45[1] = v58;
        *(v15[7] + 8 * v39) = v36;
        swift_unknownObjectRelease();
        v46 = v15[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_53;
        }

        v15[2] = v48;
        goto LABEL_23;
      }
    }

    v15 = v60;
    *(v60[7] + 8 * v39) = v36;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_23:
    ++v14;
    v11 = v54;
    if (v57 == v53)
    {
      goto LABEL_56;
    }

    goto LABEL_24;
  }

LABEL_19:
  if ((v11 & 0x4000000000000000) != 0)
  {
    goto LABEL_54;
  }

  v12 = *(v11 + 16);
  v13 = v0[11];
  if (v12)
  {
    goto LABEL_21;
  }

LABEL_55:
  v15 = v0[12];
LABEL_56:
  v50 = v0[14];

  v51 = v0[1];

  return v51(v15);
}

uint64_t sub_1D5E6D3E8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5E6D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E6D548;

  return sub_1D5E6D6B8(a3, a4, a5);
}

uint64_t sub_1D5E6D548(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5E6D694, 0, 0);
  }
}

uint64_t sub_1D5E6D6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for PuzzleStatistic();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6D788, 0, 0);
}

uint64_t sub_1D5E6D788()
{
  v0 = FormatContent.requirements.getter();
  v1 = Array<A>.puzzleStatistics.getter(v0);

  v2 = sub_1D605AB54(MEMORY[0x1E69E7CC0]);
  v10 = v2;
  v54 = *(v1 + 16);
  if (v54)
  {
    v11 = 0;
    v12 = (v1 + 64);
    v53 = v1;
    do
    {
      if (v11 >= *(v1 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return MEMORY[0x1EEE6DD58](v2, v3, v4, v5, v6, v7, v8, v9);
      }

      v55 = v11;
      v15 = *(v12 - 4);
      v14 = *(v12 - 3);
      v17 = *(v12 - 2);
      v16 = *(v12 - 1);
      v18 = *v12;
      v57 = *(v15 + 16);
      v58 = *(v15 + 24);

      MEMORY[0x1DA6F9910](v14, v17);

      v56 = v16;

      v60 = v18;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = sub_1D5B69D90(v57, v58);
      v21 = v10[2];
      v22 = (v3 & 1) == 0;
      v2 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_31;
      }

      v23 = v3;
      if (v10[3] >= v2)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v3)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1D6D7E000();
          if (v23)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1D6D669E0(v2, isUniquelyReferenced_nonNull_native);
        v24 = sub_1D5B69D90(v57, v58);
        if ((v23 & 1) != (v25 & 1))
        {

          return sub_1D726493C();
        }

        v20 = v24;
        if (v23)
        {
LABEL_3:

          v13 = (v10[7] + 40 * v20);
          *v13 = v15;
          v13[1] = v14;
          v13[2] = v17;
          v13[3] = v56;
          v13[4] = v60;

          goto LABEL_4;
        }
      }

      v10[(v20 >> 6) + 8] |= 1 << v20;
      v26 = (v10[6] + 16 * v20);
      *v26 = v57;
      v26[1] = v58;
      v27 = (v10[7] + 40 * v20);
      *v27 = v15;
      v27[1] = v14;
      v27[2] = v17;
      v27[3] = v56;
      v27[4] = v60;

      v28 = v10[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_32;
      }

      v10[2] = v30;
LABEL_4:
      v11 = v55 + 1;
      v12 += 5;
      v1 = v53;
    }

    while (v54 != v55 + 1);
  }

  if (!v10[2])
  {

    v32 = sub_1D605A92C(MEMORY[0x1E69E7CC0]);
    v49 = v52;
LABEL_27:

    v51 = v49[1];

    return v51(v32);
  }

  v31 = v52[5];
  v32 = sub_1D5E7994C(v52[3], v10);
  v34 = v33;

  v52[11] = v32;
  v52[12] = v34;
  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7279970;
  v36 = *(v32 + 16);
  v37 = MEMORY[0x1E69E6530];
  v38 = MEMORY[0x1E69E65A8];
  *(v35 + 56) = MEMORY[0x1E69E6530];
  *(v35 + 64) = v38;
  *(v35 + 32) = v36;
  v39 = *(v34 + 16);
  *(v35 + 96) = v37;
  *(v35 + 104) = v38;
  *(v35 + 72) = v39;
  v41 = *v31;
  v40 = v31[1];
  *(v35 + 136) = MEMORY[0x1E69E6158];
  *(v35 + 144) = sub_1D5B7E2C0();
  *(v35 + 112) = v41;
  *(v35 + 120) = v40;

  sub_1D7262EDC();
  sub_1D725C30C();

  if (!*(v34 + 16))
  {

    v49 = v52;
    goto LABEL_27;
  }

  v42 = v52[6];
  sub_1D5CEFE04(0, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
  v44 = v43;
  sub_1D5CEFE04(0, &qword_1EDF04FF0, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E62F8]);
  v46 = v45;
  v47 = swift_task_alloc();
  v52[13] = v47;
  *(v47 + 16) = v34;
  *(v47 + 24) = v42;
  v48 = swift_task_alloc();
  v52[14] = v48;
  *v48 = v52;
  v48[1] = sub_1D5E6DD2C;
  v7 = &unk_1D7279D50;
  v2 = (v52 + 2);
  v3 = v44;
  v4 = v46;
  v5 = 0;
  v6 = 0;
  v8 = v47;
  v9 = v44;

  return MEMORY[0x1EEE6DD58](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5E6DD2C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_1D5E6E37C;
  }

  else
  {

    v2 = sub_1D5E6DE9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1D5E6DE9C()
{
  v45 = v0;
  result = v0[2];
  v40 = *(result + 16);
  if (v40)
  {
    v2 = 0;
    v39 = v0[8];
    v38 = result + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v3 = v0[11];
    v37 = v0[2];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      v5 = v0[10];
      v41 = *(v39 + 72);
      sub_1D5CEFE68(v38 + v41 * v2++, v5, type metadata accessor for PuzzleStatistic);
      v6 = [*v5 identifier];
      v7 = sub_1D726207C();
      v9 = v8;

      PuzzleStatisticCategory.statisticType.getter(&v42);
      v10 = 0x53646570756F7267;
      if (v42 != 9)
      {
        v10 = 0xD000000000000015;
      }

      v11 = 0x80000001D73B7480;
      if (v42 == 9)
      {
        v11 = 0xEC00000073746174;
      }

      if (v42 == 8)
      {
        v10 = 0xD00000000000001DLL;
      }

      v12 = 0x80000001D73B7430;
      if (v42 == 8)
      {
        v11 = 0x80000001D73B7450;
      }

      if (v42 == 6)
      {
        v13 = 0xD00000000000001CLL;
      }

      else
      {
        v13 = 0xD00000000000001DLL;
      }

      if (v42 == 6)
      {
        v12 = 0x80000001D73B7410;
      }

      if (v42 == 5)
      {
        v13 = 0xD00000000000001CLL;
        v12 = 0x80000001D73B73F0;
      }

      if (v42 <= 7u)
      {
        v10 = v13;
        v11 = v12;
      }

      v14 = 0x5374636566726570;
      if (v42 != 3)
      {
        v14 = 0x74615265766C6F73;
      }

      v15 = 0xE900000000000065;
      if (v42 == 3)
      {
        v15 = 0xED00006465766C6FLL;
      }

      if (v42 == 2)
      {
        v14 = 0x5373656C7A7A7570;
        v15 = 0xED00006465766C6FLL;
      }

      v16 = 0x53747365676E6F6CLL;
      if (v42)
      {
        v16 = 0x53746E6572727563;
      }

      if (v42 <= 1u)
      {
        v14 = v16;
        v15 = 0xED00006B61657274;
      }

      if (v42 <= 4u)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }

      if (v42 <= 4u)
      {
        v18 = v15;
      }

      else
      {
        v18 = v11;
      }

      v20 = v0[9];
      v19 = v0[10];
      v43 = v7;
      v44 = v9;

      MEMORY[0x1DA6F9910](v17, v18);

      v22 = v43;
      v21 = v44;
      sub_1D5CEFE68(v19, v20, type metadata accessor for PuzzleStatistic);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v3;
      result = sub_1D5B69D90(v22, v21);
      v25 = v3[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_58;
      }

      v29 = v24;
      if (v3[3] < v28)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_44;
      }

      v35 = result;
      sub_1D6D7D940();
      result = v35;
      v31 = v0[9];
      if (v29)
      {
LABEL_3:
        v4 = result;

        v3 = v43;
        sub_1D5E9E39C(v31, v43[7] + v4 * v41);
        goto LABEL_4;
      }

LABEL_45:
      v3 = v43;
      v43[(result >> 6) + 8] |= 1 << result;
      v32 = (v3[6] + 16 * result);
      *v32 = v22;
      v32[1] = v21;
      result = sub_1D5CEFF38(v31, v3[7] + result * v41, type metadata accessor for PuzzleStatistic);
      v33 = v3[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_59;
      }

      v3[2] = v34;
LABEL_4:
      sub_1D5EA08F4(v0[10], type metadata accessor for PuzzleStatistic);
      result = v37;
      if (v40 == v2)
      {

        goto LABEL_51;
      }
    }

    sub_1D6D6633C(v28, isUniquelyReferenced_nonNull_native);
    result = sub_1D5B69D90(v22, v21);
    if ((v29 & 1) != (v30 & 1))
    {

      return sub_1D726493C();
    }

LABEL_44:
    v31 = v0[9];
    if (v29)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  v3 = v0[11];
LABEL_51:

  v36 = v0[1];

  return v36(v3);
}

uint64_t sub_1D5E6E37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6E4A0(a3, a4, a5);
}

uint64_t sub_1D5E6E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5E6E4C0, 0, 0);
}

uint64_t sub_1D5E6E4C0()
{
  v1 = FormatContent.requirements.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    while (1)
    {
      if (v3[2].i8[0] == 19)
      {
        v4 = vorrq_s8(*v3, v3[1]);
        if (!(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v3[-1].i64[1]))
        {
          break;
        }
      }

      v3 += 3;
      if (!--v2)
      {
        goto LABEL_9;
      }
    }

    v5 = v0[4];

    v6 = v5[47];
    v7 = v5[48];
    __swift_project_boxed_opaque_existential_1(v5 + 44, v6);
    v0[5] = (*(v7 + 8))(v6, v7);
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_1D5E6E638;

    return MEMORY[0x1EEE44EE0](v0 + 2);
  }

  else
  {
LABEL_9:

    v9 = sub_1D605ACB8(MEMORY[0x1E69E7CC0]);
    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_1D5E6E638()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5E6E770;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E6E770()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6E88C(a3, a4, a5);
}

uint64_t sub_1D5E6E88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E6E8B0, 0, 0);
}

uint64_t sub_1D5E6E8B0()
{
  v159 = v0;
  v1 = v0[9];
  v0[5] = MEMORY[0x1E69E7CC0];
  v2 = v1[15];

  v4 = sub_1D5E4FE10(v3);
  v147 = v2;

  sub_1D6985104(v4);
  v5 = v1[16];

  v7 = sub_1D5E5004C(v6);
  v156 = v5;

  sub_1D6985104(v7);
  v8 = v1[17];

  v10 = sub_1D5E5028C(v9);
  v155 = v8;

  sub_1D6985104(v10);
  v11 = v1[18];

  v13 = sub_1D5E504CC(v12);
  v154 = v11;

  sub_1D6985104(v13);
  v14 = v1[19];

  v16 = sub_1D5E5070C(v15);
  v153 = v14;

  sub_1D6985104(v16);
  v17 = v1[20];

  v19 = sub_1D5E5094C(v18);
  v152 = v17;

  sub_1D6985104(v19);
  v20 = v1[21];

  v22 = sub_1D5E50B90(v21);

  sub_1D6985104(v22);
  v23 = MEMORY[0x1E69E7CD0];
  v0[6] = MEMORY[0x1E69E7CD0];
  v0[7] = v23;
  v24 = FormatContent.requirements.getter();
  v25 = Array<A>.scores.getter(v24);

  if (v25 >> 62)
  {
    goto LABEL_51;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v144 = v0;
  v27 = v147;
  v148 = v25;
  if (!v26)
  {
    v29 = MEMORY[0x1E69E7CC8];
LABEL_32:

    v144[13] = v29;
    v63 = FormatContent.requirements.getter();
    v64 = Array<A>.standings.getter(v63);

    v73 = v29;
    if (v64 >> 62)
    {
      v65 = sub_1D7263BFC();
      v74 = v65;
      v75 = v156;
      if (v65)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v74 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v75 = v156;
      if (v74)
      {
LABEL_34:
        if (v74 >= 1)
        {
          v76 = 0;
          while (1)
          {
            if ((v64 & 0xC000000000000001) != 0)
            {
              v79 = MEMORY[0x1DA6FB460](v76, v64);
              if (!*(v75 + 16))
              {
                goto LABEL_36;
              }
            }

            else
            {
              v79 = *(v64 + 8 * v76 + 32);

              if (!*(v75 + 16))
              {
                goto LABEL_36;
              }
            }

            sub_1D5B69D90(*(v79 + 16), *(v79 + 24));
            v75 = v156;
            if (v80)
            {

              goto LABEL_37;
            }

LABEL_36:
            v77 = *(v79 + 16);
            v78 = *(v79 + 24);

            sub_1D5B860D0(v158, v77, v78);
            v75 = v156;

LABEL_37:
            if (v74 == ++v76)
            {
              goto LABEL_53;
            }
          }
        }

        __break(1u);
        goto LABEL_127;
      }
    }

LABEL_53:

    v82 = FormatContent.requirements.getter();
    v83 = Array<A>.brackets.getter(v82);

    if (v83 >> 62)
    {
      v65 = sub_1D7263BFC();
      v84 = v65;
      v85 = v155;
      if (v65)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v85 = v155;
      if (v84)
      {
LABEL_55:
        if (v84 < 1)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        for (i = 0; v84 != i; ++i)
        {
          if ((v83 & 0xC000000000000001) != 0)
          {
            v89 = MEMORY[0x1DA6FB460](i, v83);
            if (!*(v85 + 16))
            {
              goto LABEL_57;
            }
          }

          else
          {
            v89 = *(v83 + 8 * i + 32);

            if (!*(v85 + 16))
            {
              goto LABEL_57;
            }
          }

          sub_1D5B69D90(*(v89 + 16), *(v89 + 24));
          v85 = v155;
          if (v90)
          {

            continue;
          }

LABEL_57:
          v87 = *(v89 + 16);
          v88 = *(v89 + 24);

          sub_1D5B860D0(v158, v87, v88);
          v85 = v155;
        }
      }
    }

    v91 = FormatContent.requirements.getter();
    v92 = Array<A>.boxScores.getter(v91);

    if (v92 >> 62)
    {
      v65 = sub_1D7263BFC();
      v93 = v65;
      v94 = v154;
      if (v65)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v94 = v154;
      if (v93)
      {
LABEL_68:
        if (v93 < 1)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        for (j = 0; v93 != j; ++j)
        {
          if ((v92 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x1DA6FB460](j, v92);
            if (!*(v94 + 16))
            {
              goto LABEL_70;
            }
          }

          else
          {
            v98 = *(v92 + 8 * j + 32);

            if (!*(v94 + 16))
            {
              goto LABEL_70;
            }
          }

          sub_1D5B69D90(*(v98 + 16), *(v98 + 24));
          v94 = v154;
          if (v99)
          {

            continue;
          }

LABEL_70:
          v96 = *(v98 + 16);
          v97 = *(v98 + 24);

          sub_1D5B860D0(v158, v96, v97);
          v94 = v154;
        }
      }
    }

    v100 = FormatContent.requirements.getter();
    v101 = Array<A>.lineScores.getter(v100);

    if (v101 >> 62)
    {
      v65 = sub_1D7263BFC();
      v102 = v65;
      v103 = v153;
      if (v65)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v103 = v153;
      if (v102)
      {
LABEL_81:
        if (v102 < 1)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        for (k = 0; v102 != k; ++k)
        {
          if ((v101 & 0xC000000000000001) != 0)
          {
            v107 = MEMORY[0x1DA6FB460](k, v101);
            if (!*(v103 + 16))
            {
              goto LABEL_83;
            }
          }

          else
          {
            v107 = *(v101 + 8 * k + 32);

            if (!*(v103 + 16))
            {
              goto LABEL_83;
            }
          }

          sub_1D5B69D90(*(v107 + 16), *(v107 + 24));
          v103 = v153;
          if (v108)
          {

            continue;
          }

LABEL_83:
          v105 = *(v107 + 16);
          v106 = *(v107 + 24);

          sub_1D5B860D0(v158, v105, v106);
          v103 = v153;
        }
      }
    }

    v109 = FormatContent.requirements.getter();
    v110 = Array<A>.injuryReports.getter(v109);

    if (v110 >> 62)
    {
      v65 = sub_1D7263BFC();
      v111 = v65;
      v112 = v152;
      if (v65)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v112 = v152;
      if (v111)
      {
LABEL_94:
        if (v111 < 1)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        for (m = 0; v111 != m; ++m)
        {
          if ((v110 & 0xC000000000000001) != 0)
          {
            v116 = MEMORY[0x1DA6FB460](m, v110);
            if (!*(v112 + 16))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v116 = *(v110 + 8 * m + 32);

            if (!*(v112 + 16))
            {
              goto LABEL_96;
            }
          }

          sub_1D5B69D90(*(v116 + 16), *(v116 + 24));
          v112 = v152;
          if (v117)
          {

            continue;
          }

LABEL_96:
          v114 = *(v116 + 16);
          v115 = *(v116 + 24);

          sub_1D5B860D0(v158, v114, v115);
          v112 = v152;
        }
      }
    }

    v118 = FormatContent.requirements.getter();
    v119 = Array<A>.keyPlayers.getter(v118);

    if (v119 >> 62)
    {
      v65 = sub_1D7263BFC();
      v120 = v65;
      if (v65)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v120)
      {
LABEL_107:
        if (v120 < 1)
        {
LABEL_131:
          __break(1u);
          return MEMORY[0x1EEE6DD58](v65, v66, v67, v68, v69, v70, v71, v72);
        }

        for (n = 0; v120 != n; ++n)
        {
          if ((v119 & 0xC000000000000001) != 0)
          {
            v124 = MEMORY[0x1DA6FB460](n, v119);
            if (!*(v20 + 16))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v124 = *(v119 + 8 * n + 32);

            if (!*(v20 + 16))
            {
              goto LABEL_109;
            }
          }

          sub_1D5B69D90(*(v124 + 16), *(v124 + 24));
          if (v125)
          {

            continue;
          }

LABEL_109:
          v122 = *(v124 + 16);
          v123 = *(v124 + 24);

          sub_1D5B860D0(v158, v122, v123);
        }
      }
    }

    v126 = v144[11];

    type metadata accessor for FormatServiceOptions();
    sub_1D5C384A0();
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_1D7279970;
    v128 = v144[5];
    v129 = v144[6];
    v144[14] = v128;
    v130 = *(v128 + 16);
    v131 = MEMORY[0x1E69E6530];
    v132 = MEMORY[0x1E69E65A8];
    *(v127 + 56) = MEMORY[0x1E69E6530];
    *(v127 + 64) = v132;
    *(v127 + 32) = v130;
    v144[15] = v129;
    v133 = *(v129 + 16);
    *(v127 + 96) = v131;
    *(v127 + 104) = v132;
    *(v127 + 72) = v133;
    v135 = *v126;
    v134 = v126[1];
    *(v127 + 136) = MEMORY[0x1E69E6158];
    *(v127 + 144) = sub_1D5B7E2C0();
    *(v127 + 112) = v135;
    *(v127 + 120) = v134;

    sub_1D7262EDC();
    sub_1D725C30C();

    v136 = *(v129 + 16);
    v137 = v144[7];
    v144[16] = v137;
    if (!v136 && !*(v137 + 16))
    {

      v143 = v144[1];

      return v143(v128);
    }

    v138 = v144[12];
    sub_1D5B5A7A0(0, &qword_1EDF1B050, &type metadata for SportsDataVisualization, MEMORY[0x1E69E62F8]);
    v140 = v139;
    v141 = swift_task_alloc();
    v144[17] = v141;
    v141[2] = v129;
    v141[3] = v138;
    v141[4] = v73;
    v141[5] = v137;
    v142 = swift_task_alloc();
    v144[18] = v142;
    *v142 = v144;
    v142[1] = sub_1D5E6F688;
    v66 = &type metadata for SportsDataVisualizationResult;
    v161 = v140;
    v70 = &unk_1D7279D10;
    v65 = (v144 + 8);
    v67 = v140;
    v68 = 0;
    v69 = 0;
    v71 = v141;
    v72 = &type metadata for SportsDataVisualizationResult;

    return MEMORY[0x1EEE6DD58](v65, v66, v67, v68, v69, v70, v71, v72);
  }

  v28 = 0;
  v151 = v25 & 0xC000000000000001;
  v146 = v25 & 0xFFFFFFFFFFFFFF8;
  v29 = MEMORY[0x1E69E7CC8];
  v145 = v25 + 32;
  v149 = v26;
  v150 = v20;
  while (1)
  {
    if (v151)
    {
      v32 = MEMORY[0x1DA6FB460](v28, v148);
      v33 = __OFADD__(v28++, 1);
      if (v33)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v28 >= *(v146 + 16))
      {
        goto LABEL_48;
      }

      v32 = *(v145 + 8 * v28);

      v33 = __OFADD__(v28++, 1);
      if (v33)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v26 = sub_1D7263BFC();
        goto LABEL_3;
      }
    }

    if (!*(v27 + 16) || (v34 = v32[4], v35 = v32[5], , v36 = sub_1D5B69D90(v34, v35), v38 = v37, , (v38 & 1) == 0))
    {
      v52 = v32[4];
      v51 = v32[5];
      swift_beginAccess();

      v54 = sub_1D5E50DD0(v53);

      v55 = *(v54 + 16);
      v56 = sub_1D5E9DF74();
      v57 = MEMORY[0x1DA6FA1E0](v55, &type metadata for SportsScoreDataVisualizationTrait, v56);
      v158[0] = v57;
      v58 = *(v54 + 16);
      if (v58)
      {
        v59 = 32;
        do
        {
          sub_1D5FE9B8C(&v157, *(v54 + v59++));
          --v58;
        }

        while (v58);

        v25 = v158[0];
      }

      else
      {
        v25 = v57;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v29;
      sub_1D6D76EA8(v25, v52, v51, isUniquelyReferenced_nonNull_native);

      v29 = v158[0];
      v31 = v32[2];
      v0 = v32[3];

      sub_1D5B860D0(v158, v31, v0);

      v20 = v150;
      goto LABEL_7;
    }

    v39 = *(*(v27 + 56) + 8 * v36);
    v0 = *(v39 + 40);
    v25 = *(v39 + 48);
    v40 = *(v39 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits);

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v158[0] = v29;
    v41 = sub_1D5B69D90(v0, v25);
    v43 = v29;
    v44 = v41;
    v45 = v29[2];
    v46 = (v42 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_49;
    }

    v48 = v42;
    if (v43[3] < v47)
    {
      break;
    }

    if (v20)
    {
      v20 = v150;
      if (v42)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D6D7E1B4();
      v20 = v150;
      if (v48)
      {
LABEL_27:

        v29 = v158[0];
        *(*(v158[0] + 56) + 8 * v44) = v40;

        v27 = v147;
        goto LABEL_7;
      }
    }

LABEL_29:
    v29 = v158[0];
    *(v158[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
    v60 = (v29[6] + 16 * v44);
    *v60 = v0;
    v60[1] = v25;
    *(v29[7] + 8 * v44) = v40;

    v61 = v29[2];
    v33 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v33)
    {
      goto LABEL_50;
    }

    v29[2] = v62;
    v27 = v147;
LABEL_7:
    if (v28 == v149)
    {
      goto LABEL_32;
    }
  }

  sub_1D6D66CEC(v47, v20);
  v49 = sub_1D5B69D90(v0, v25);
  if ((v48 & 1) == (v50 & 1))
  {
    v44 = v49;
    v20 = v150;
    if (v48)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  return sub_1D726493C();
}