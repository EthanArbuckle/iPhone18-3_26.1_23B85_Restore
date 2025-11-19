unint64_t sub_1D6C5408C(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C540BC();
  result = sub_1D6C54110();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C540BC()
{
  result = qword_1EDF05A18[0];
  if (!qword_1EDF05A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF05A18);
  }

  return result;
}

unint64_t sub_1D6C54110()
{
  result = qword_1EC893FA8;
  if (!qword_1EC893FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FA8);
  }

  return result;
}

uint64_t type metadata accessor for M18_V1.Bound()
{
  result = qword_1EC893FB8;
  if (!qword_1EC893FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C541B0()
{
  sub_1D725CC1C();
  sub_1D6C55F0C(&qword_1EDF17310, MEMORY[0x1E69D7608]);
  v0 = sub_1D725AA4C();
  v2 = v1;
  if (v0 == sub_1D725AA4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6C542AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v69 = a5;
  v72 = a4;
  v9 = type metadata accessor for FeedHeadline(0);
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v73 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v66 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v66 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v66 - v26;
  v28 = type metadata accessor for GroupLayoutBindingContext();
  v29 = *(v28 + 56);
  v71 = v5;
  if (!*(*&v5[v29] + 16))
  {
    goto LABEL_16;
  }

  v30 = v28;
  v74 = v23;

  v70 = a1;
  sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, a1, a2);
  if ((v31 & 1) == 0 || (v68 = a2, v32 = , v33 = sub_1D5C14D80(v32), result = , !v33))
  {

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  v66 = v30;
  v67 = a3;
  v35 = *(v33 + 16);
  v75 = v33;
  v76 = v35;
  if (v35)
  {
    v36 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v72;
    v39 = v74;
    while (v36 < *(v33 + 16))
    {
      v40 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v41 = *(v77 + 72);
      sub_1D5BF04C4(v33 + v40 + v41 * v36, v27, type metadata accessor for FeedHeadline);
      if ((v38 & ~*(v27 + 4)) != 0)
      {
        result = sub_1D5C10040(v27);
      }

      else
      {
        sub_1D5BDA904(v27, v39, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78[0] = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, v37[2] + 1, 1);
          v38 = v72;
          v37 = v78[0];
        }

        v44 = v37[2];
        v43 = v37[3];
        if (v44 >= v43 >> 1)
        {
          sub_1D5C0F91C(v43 > 1, v44 + 1, 1);
          v38 = v72;
          v37 = v78[0];
        }

        v37[2] = v44 + 1;
        v45 = v37 + v40 + v44 * v41;
        v39 = v74;
        result = sub_1D5BDA904(v74, v45, type metadata accessor for FeedHeadline);
        v33 = v75;
      }

      if (v76 == ++v36)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (v67 && (*v71 & 1) == 0)
  {

    v46 = sub_1D62F071C(v37);

    v37 = v46;
  }

  v47 = *&v71[*(v66 + 72)];
  v48 = *&v71[*(v66 + 76)];
  if (__OFSUB__(v47, v48))
  {
    goto LABEL_48;
  }

  v49 = sub_1D5C0FAD4(v37, v47 - v48);

  if (v76)
  {
    v50 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    v52 = v70;
    v74 = v49;
    while (v50 < *(v33 + 16))
    {
      v53 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v54 = *(v77 + 72);
      v55 = v50 + 1;
      sub_1D5BF04C4(v33 + v53 + v54 * v50, v19, type metadata accessor for FeedHeadline);
      v56 = *(v49 + 16);
      v57 = v49 + v53;
      v58 = v56 + 1;
      while (--v58)
      {
        sub_1D5BF04C4(v57, v15, type metadata accessor for FeedHeadline);
        if (*v15 == *v19 && v15[1] == v19[1])
        {
          sub_1D5C10040(v15);
LABEL_25:
          result = sub_1D5C10040(v19);
          v33 = v75;
          goto LABEL_26;
        }

        v57 += v54;
        v60 = sub_1D72646CC();
        sub_1D5C10040(v15);
        if (v60)
        {
          goto LABEL_25;
        }
      }

      sub_1D5BDA904(v19, v73, type metadata accessor for FeedHeadline);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v51;
      if ((v61 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v51 + 16) + 1, 1);
        v52 = v70;
        v51 = v78[0];
      }

      v33 = v75;
      v63 = *(v51 + 16);
      v62 = *(v51 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1D5C0F91C(v62 > 1, v63 + 1, 1);
        v52 = v70;
        v51 = v78[0];
      }

      *(v51 + 16) = v63 + 1;
      result = sub_1D5BDA904(v73, v51 + v53 + v63 * v54, type metadata accessor for FeedHeadline);
LABEL_26:
      v50 = v55;
      v49 = v74;
      if (v55 == v76)
      {
        goto LABEL_42;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  v51 = MEMORY[0x1E69E7CC0];
  v52 = v70;
LABEL_42:
  strcpy(v78, "FeedHeadline");
  BYTE5(v78[1]) = 0;
  HIWORD(v78[1]) = -5120;
  v78[2] = v52;
  v78[3] = v68;
  v64 = v49;
  if (v69)
  {

    v51 = v75;
  }

  else
  {
  }

  v65 = sub_1D5C107C4(v51);

  sub_1D5BDACA8(v78, v65);

  return v64;
}

uint64_t sub_1D6C548CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = type metadata accessor for GroupLayoutBindingContext();
  if (!*(*&v5[*(v12 + 56)] + 16))
  {
    goto LABEL_19;
  }

  v13 = v12;

  sub_1D5BCF83C(0x6F4D6E6967756C50, 0xEB000000006C6564, a1, a2);
  if ((v14 & 1) == 0 || (v15 = , v16 = sub_1D71500E8(v15), result = , !v16))
  {
LABEL_18:

LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  v37 = a3;
  v34 = a2;
  v35 = v13;
  v32 = a1;
  v33 = a5;
  v38[0] = MEMORY[0x1E69E7CC0];
  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    goto LABEL_46;
  }

  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v20 = MEMORY[0x1E69E7CC0];
  v36 = v6;
  if (v19)
  {
    v21 = 0;
    v22 = a4 & 0xFFFFFFFFFFEFFFFELL;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        a4 = MEMORY[0x1DA6FB460](v21, v16);
        v6 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v21 >= *(v18 + 16))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          result = sub_1D7263BFC();
          v19 = result;
          goto LABEL_6;
        }

        a4 = *(v16 + 8 * v21 + 32);

        v6 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_17;
        }
      }

      if (v22)
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        result = sub_1D7263EAC();
      }

      ++v21;
      if (v6 == v19)
      {
        a4 = v38[0];
        v6 = v36;
        v20 = MEMORY[0x1E69E7CC0];
        if (!v37)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }
  }

  a4 = MEMORY[0x1E69E7CC0];
  if (!v37)
  {
    goto LABEL_26;
  }

LABEL_24:
  if ((*v6 & 1) == 0)
  {

    v24 = sub_1D62F2518(a4);

    a4 = v24;
  }

LABEL_26:
  v25 = *&v6[*(v35 + 72)];
  v26 = *&v6[*(v35 + 76)];
  if (__OFSUB__(v25, v26))
  {
    __break(1u);
    return result;
  }

  v23 = sub_1D6C513B0(a4, v25 - v26);

  v38[0] = v20;
  if (!v19)
  {
    goto LABEL_40;
  }

  v37 = v18;
  v27 = 0;
  v18 = 0;
  while ((v16 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1DA6FB460](v27, v16);
    a4 = v28;
    v6 = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      goto LABEL_38;
    }

LABEL_34:
    v39 = a4;
    MEMORY[0x1EEE9AC00](v28, v29);
    v31[2] = &v39;
    if (sub_1D6151AD0(sub_1D6C55EEC, v31, v23))
    {
    }

    else
    {
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    ++v27;
    if (v6 == v19)
    {
      goto LABEL_39;
    }
  }

  if (v27 >= *(v37 + 16))
  {
    goto LABEL_45;
  }

  a4 = *(v16 + 8 * v27 + 32);

  v6 = (v27 + 1);
  if (!__OFADD__(v27, 1))
  {
    goto LABEL_34;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  v20 = v38[0];
LABEL_40:
  v38[0] = 0x6F4D6E6967756C50;
  v38[1] = 0xEB000000006C6564;
  v38[2] = v32;
  v38[3] = v34;
  if (v33)
  {

    v20 = v16;
  }

  else
  {
  }

  v30 = sub_1D5F63CF0(v20);

  sub_1D5BDACA8(v38, v30);

  return v23;
}

uint64_t sub_1D6C54CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v101 = a4;
  sub_1D6C56248(0, &qword_1EDF3C480, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v89 - v12;
  v14 = type metadata accessor for GroupLayoutBindingContext();
  if (!*(*&v5[*(v14 + 56)] + 16))
  {
    goto LABEL_37;
  }

  v15 = v14;

  sub_1D5BCF83C(0x7573734964656546, 0xE900000000000065, a1, a2);
  if ((v16 & 1) == 0 || (v98 = v15, v17 = , v18 = sub_1D714E90C(v17), result = , !v18))
  {

LABEL_37:

    return MEMORY[0x1E69E7CC0];
  }

  v94 = a2;
  v95 = a3;
  v92 = a1;
  v93 = a5;
  v99 = v5;
  v20 = *(v18 + 16);
  v102 = v20;
  if (v20)
  {
    v21 = 0;
    v97 = v101 & 0xFFFFFFFFFFFFBFBFLL;
    v100 = v101 & 0xFFFFFFFFFFFFFFBFLL;
    v22 = v18 + 32;
    v23 = MEMORY[0x1E69E7CC0];
    v90 = v20 - 1;
    v91 = v18 + 32;
    while (1)
    {
      v96 = v23;
      v24 = (v22 + 144 * v21);
      v25 = v21;
      while (1)
      {
        if (v25 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_65;
        }

        v107 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v24[4];
        v110 = v24[3];
        v111 = v28;
        v108 = v26;
        v109 = v27;
        v29 = v24[5];
        v30 = v24[6];
        v31 = v24[7];
        *(v114 + 9) = *(v24 + 121);
        v113 = v30;
        v114[0] = v31;
        v112 = v29;
        v32 = v107;
        if (v28 != 1)
        {
          break;
        }

        sub_1D5ECF2C4(&v107, v105);
        v33 = [v32 coverImageAssetHandle];
        if (!v33)
        {
          if (!v101)
          {
            goto LABEL_30;
          }

          goto LABEL_8;
        }

        v34 = v33;
        [v32 coverImageAspectRatio];
        v35 = v32;
        v36 = v34;
        v37 = [v35 layeredCoverJSON];
        if (!v37)
        {

LABEL_21:
          if (!v100)
          {
            goto LABEL_30;
          }

          goto LABEL_8;
        }

        v38 = v37;
        sub_1D726207C();

        sub_1D72579DC();
        v39 = sub_1D7257A4C();
        (*(*(v39 - 8) + 56))(v13, 0, 1, v39);
        v40 = sub_1D725AB8C();

        sub_1D60D0CFC(v13);
        if (v40)
        {

          v20 = v102;
          goto LABEL_21;
        }

        [v35 layeredCoverAspectRatio];

        v20 = v102;
        if (!v97)
        {
          goto LABEL_30;
        }

LABEL_8:
        ++v25;
        result = sub_1D5ECF320(&v107);
        v24 += 9;
        if (v20 == v25)
        {
          v23 = v96;
          goto LABEL_40;
        }
      }

      sub_1D5ECF2C4(&v107, v105);
      v41 = [v32 coverImageAssetHandle];
      if (v41)
      {
        v42 = v41;
        [v32 coverImageAspectRatio];
        v43 = v32;
        v44 = v42;
        v45 = [v43 layeredCoverJSON];
        if (v45)
        {
          v46 = v45;
          sub_1D726207C();

          sub_1D72579DC();
          v47 = sub_1D7257A4C();
          (*(*(v47 - 8) + 56))(v13, 0, 1, v47);
          v48 = sub_1D725AB8C();

          sub_1D60D0CFC(v13);
          if (v48)
          {

            v49 = -4161;
          }

          else
          {
            [v43 layeredCoverAspectRatio];

            v49 = -20545;
          }

          v20 = v102;
        }

        else
        {

          v49 = -4161;
        }
      }

      else
      {
        v49 = -4097;
      }

      if ((v49 & v101) != 0)
      {
        goto LABEL_8;
      }

LABEL_30:
      v23 = v96;
      result = swift_isUniquelyReferenced_nonNull_native();
      v103[0] = v23;
      if ((result & 1) == 0)
      {
        result = sub_1D6997F04(0, *(v23 + 16) + 1, 1);
        v23 = v103[0];
      }

      v22 = v91;
      v51 = *(v23 + 16);
      v50 = *(v23 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_1D6997F04((v50 > 1), v51 + 1, 1);
        v23 = v103[0];
      }

      v21 = v25 + 1;
      *(v23 + 16) = v51 + 1;
      v52 = (v23 + 144 * v51);
      v52[2] = v107;
      v53 = v108;
      v54 = v109;
      v55 = v111;
      v52[5] = v110;
      v52[6] = v55;
      v52[3] = v53;
      v52[4] = v54;
      v56 = v112;
      v57 = v113;
      v58 = v114[0];
      *(v52 + 153) = *(v114 + 9);
      v52[8] = v57;
      v52[9] = v58;
      v52[7] = v56;
      v20 = v102;
      if (v90 == v25)
      {
LABEL_40:
        if (!v95)
        {
          goto LABEL_44;
        }

LABEL_41:
        v60 = v99;
        if ((*v99 & 1) == 0)
        {

          v61 = v60;
          v62 = sub_1D62F0AF0(v23);

          v23 = v62;
          v60 = v61;
        }

        goto LABEL_45;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (v95)
  {
    goto LABEL_41;
  }

LABEL_44:
  v60 = v99;
LABEL_45:
  v63 = *&v60[*(v98 + 72)];
  v64 = *&v60[*(v98 + 76)];
  if (__OFSUB__(v63, v64))
  {
    goto LABEL_66;
  }

  sub_1D6C50C60(v23, v63 - v64);
  v59 = v65;

  if (!v20)
  {
    v101 = MEMORY[0x1E69E7CC0];
LABEL_60:
    *&v107 = 0x7573734964656546;
    *(&v107 + 1) = 0xE900000000000065;
    *&v108 = v92;
    *(&v108 + 1) = v94;
    if (v93)
    {

      v101 = v18;
    }

    else
    {
    }

    v88 = sub_1D5F631C8(v101);

    sub_1D5BDACA8(&v107, v88);

    return v59;
  }

  v67 = 0;
  v68 = v18 + 32;
  v98 = v20 - 1;
  v100 = v18 + 32;
  v101 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v69 = (v68 + 144 * v67);
  v70 = v67;
  while (v70 < *(v18 + 16))
  {
    v107 = *v69;
    v71 = v69[1];
    v72 = v69[2];
    v73 = v69[4];
    v110 = v69[3];
    v111 = v73;
    v108 = v71;
    v109 = v72;
    v74 = v69[5];
    v75 = v69[6];
    v76 = v69[7];
    *(v114 + 9) = *(v69 + 121);
    v113 = v75;
    v114[0] = v76;
    v112 = v74;
    v67 = v70 + 1;
    v105[6] = v75;
    v106[0] = v76;
    *(v106 + 9) = *(v114 + 9);
    v105[2] = v109;
    v105[3] = v110;
    v105[4] = v73;
    v105[5] = v74;
    v105[0] = v107;
    v105[1] = v108;
    MEMORY[0x1EEE9AC00](result, v66);
    *(&v89 - 2) = v105;
    sub_1D5ECF2C4(&v107, v103);
    if ((sub_1D61509E8(sub_1D6B9C4B0, (&v89 - 4), v59) & 1) == 0)
    {
      v77 = v101;
      result = swift_isUniquelyReferenced_nonNull_native();
      v104 = v77;
      if ((result & 1) == 0)
      {
        result = sub_1D6997F04(0, *(v101 + 16) + 1, 1);
        v101 = v104;
      }

      v79 = *(v101 + 16);
      v78 = *(v101 + 24);
      if (v79 >= v78 >> 1)
      {
        result = sub_1D6997F04((v78 > 1), v79 + 1, 1);
        v101 = v104;
      }

      v80 = v101;
      *(v101 + 16) = v79 + 1;
      v81 = (v80 + 144 * v79);
      v81[2] = v107;
      v82 = v108;
      v83 = v109;
      v84 = v111;
      v81[5] = v110;
      v81[6] = v84;
      v81[3] = v82;
      v81[4] = v83;
      v85 = v112;
      v86 = v113;
      v87 = v114[0];
      *(v81 + 153) = *(v114 + 9);
      v81[8] = v86;
      v81[9] = v87;
      v81[7] = v85;
      v68 = v100;
      if (v98 != v70)
      {
        goto LABEL_48;
      }

      goto LABEL_60;
    }

    result = sub_1D5ECF320(&v107);
    v69 += 9;
    ++v70;
    if (v102 == v67)
    {
      goto LABEL_60;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1D6C555B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = type metadata accessor for GroupLayoutBindingContext();
  if (!*(*&v5[*(v12 + 56)] + 16))
  {
    goto LABEL_16;
  }

  v13 = v12;

  sub_1D5BCF83C(0x6174614364656546, 0xEF6D657449676F6CLL, a1, a2);
  if ((v14 & 1) == 0 || (v15 = , v16 = sub_1D71501F8(v15), , !v16))
  {

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  v41 = a3;
  v43 = v6;
  v39 = a1;
  v40 = a2;
  v17 = *(v16 + 16);
  v44 = v16;
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 32;
    v20 = a4 & 0xFFFFFFFFFFFFFFBFLL;
    v21 = MEMORY[0x1E69E7CC0];
    while (v18 < *(v16 + 16))
    {
      sub_1D5F76E40(v19, __src);
      if (v20)
      {
        sub_1D5F76EF0(__src);
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69992A8(0, *(v21 + 16) + 1, 1);
          v16 = v44;
          v21 = v47;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D69992A8((v23 > 1), v24 + 1, 1);
          v16 = v44;
          v21 = v47;
        }

        *(v21 + 16) = v24 + 1;
        memcpy((v21 + 288 * v24 + 32), __dst, 0x11AuLL);
      }

      ++v18;
      v19 += 288;
      if (v17 == v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (v41)
  {
    v26 = v43;
    if ((*v43 & 1) == 0)
    {

      v16 = v44;
      v27 = sub_1D62F270C(v21);

      v21 = v27;
    }
  }

  else
  {
    v26 = v43;
  }

  v28 = *&v26[v13[18]];
  v29 = *&v26[v13[19]];
  v30 = __OFSUB__(v28, v29);
  v31 = v28 - v29;
  if (v30)
  {
    goto LABEL_43;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v42 = a5;
    if (v17)
    {
      v32 = 0;
      v13 = 0;
      v33 = v16 + 32;
      v34 = MEMORY[0x1E69E7CC0];
      while (v32 < *(v16 + 16))
      {
        sub_1D5F76E40(v33, __src);
        if (sub_1D6C518DC(__src, v21))
        {
          memcpy(__dst, __src, sizeof(__dst));
          v35 = swift_isUniquelyReferenced_nonNull_native();
          v47 = v34;
          if ((v35 & 1) == 0)
          {
            sub_1D69992A8(0, *(v34 + 16) + 1, 1);
            v16 = v44;
            v34 = v47;
          }

          v37 = *(v34 + 16);
          v36 = *(v34 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1D69992A8((v36 > 1), v37 + 1, 1);
            v16 = v44;
            v34 = v47;
          }

          *(v34 + 16) = v37 + 1;
          memcpy((v34 + 288 * v37 + 32), __dst, 0x11AuLL);
        }

        else
        {
          sub_1D5F76EF0(__src);
        }

        ++v32;
        v33 += 288;
        if (v17 == v32)
        {
          goto LABEL_37;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_37:
    __src[0] = 0x6174614364656546;
    __src[1] = 0xEF6D657449676F6CLL;
    __src[2] = v39;
    __src[3] = v40;
    if (v42)
    {

      v34 = v16;
    }

    else
    {
    }

    v38 = sub_1D5F63F18(v34);

    sub_1D5BDACA8(__src, v38);

    return v21;
  }

LABEL_44:
  __break(1u);

  sub_1D5F76EF0(__src);

  __break(1u);
  return result;
}

uint64_t sub_1D6C559CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = type metadata accessor for GroupLayoutBindingContext();
  if (!*(*&v5[*(v11 + 56)] + 16))
  {
    goto LABEL_16;
  }

  v12 = v11;
  v58 = a3;

  sub_1D5BCF83C(0x6574614364656546, 0xEC00000079726F67, a1, a2);
  if ((v13 & 1) == 0 || (v56 = a1, v14 = , v15 = sub_1D715038C(v14), result = , !v15))
  {

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  v57 = v5;
  v55 = a2;
  v17 = *(v15 + 16);
  v60 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = v15 + 32;
    v20 = a4 & 0xFFFFFFFFFFFBFFFFLL;
    v21 = MEMORY[0x1E69E7CC0];
    while (v18 < *(v15 + 16))
    {
      sub_1D5F76D3C(v19, &v71);
      if (v20)
      {
        result = sub_1D5F76DEC(&v71);
      }

      else
      {
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v80;
        v63 = v73;
        v64 = v74;
        v65 = v75;
        v66 = v76;
        v61 = v71;
        v62 = v72;
        result = swift_isUniquelyReferenced_nonNull_native();
        v81 = v21;
        if ((result & 1) == 0)
        {
          result = sub_1D69992C8(0, *(v21 + 16) + 1, 1);
          v17 = v60;
          v21 = v81;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1D69992C8((v22 > 1), v23 + 1, 1);
          v17 = v60;
          v21 = v81;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 152 * v23;
        v25 = v62;
        *(v24 + 32) = v61;
        *(v24 + 48) = v25;
        v26 = v63;
        v27 = v64;
        v28 = v66;
        *(v24 + 96) = v65;
        *(v24 + 112) = v28;
        *(v24 + 64) = v26;
        *(v24 + 80) = v27;
        v29 = v67;
        v30 = v68;
        v31 = v69;
        *(v24 + 176) = v70;
        *(v24 + 144) = v30;
        *(v24 + 160) = v31;
        *(v24 + 128) = v29;
      }

      ++v18;
      v19 += 152;
      if (v17 == v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (v58 && (*v57 & 1) == 0)
  {

    v33 = sub_1D62F2984(v21);

    v21 = v33;
  }

  v34 = *&v57[*(v12 + 72)];
  v35 = *&v57[*(v12 + 76)];
  if (__OFSUB__(v34, v35))
  {
    goto LABEL_49;
  }

  v59 = a5;
  v32 = sub_1D6C51818(v21, v34 - v35);

  v36 = v60;
  if (!v60)
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_43:
    strcpy(&v71, "FeedCategory");
    BYTE13(v71) = 0;
    HIWORD(v71) = -5120;
    *&v72 = v56;
    *(&v72 + 1) = v55;
    if (v59)
    {

      v38 = v15;
    }

    else
    {
    }

    v54 = sub_1D5F64044(v38);

    sub_1D5BDACA8(&v71, v54);

    return v32;
  }

  v37 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (v37 < *(v15 + 16))
  {
    v39 = v37 + 1;
    sub_1D5F76D3C(v15 + 32 + 152 * v37, &v71);
    v40 = *(v32 + 16) + 1;
    v41 = v32 + 32;
    while (--v40)
    {
      sub_1D5F76D3C(v41, &v61);
      if (v61 == v71 && *(&v61 + 1) == *(&v71 + 1))
      {
        sub_1D5F76DEC(&v61);
LABEL_26:
        result = sub_1D5F76DEC(&v71);
        goto LABEL_27;
      }

      v41 += 152;
      v43 = sub_1D72646CC();
      sub_1D5F76DEC(&v61);
      if (v43)
      {
        goto LABEL_26;
      }
    }

    v67 = v77;
    v68 = v78;
    v69 = v79;
    v70 = v80;
    v63 = v73;
    v64 = v74;
    v65 = v75;
    v66 = v76;
    v61 = v71;
    v62 = v72;
    result = swift_isUniquelyReferenced_nonNull_native();
    v81 = v38;
    if ((result & 1) == 0)
    {
      result = sub_1D69992C8(0, *(v38 + 16) + 1, 1);
      v36 = v60;
      v38 = v81;
    }

    v45 = *(v38 + 16);
    v44 = *(v38 + 24);
    if (v45 >= v44 >> 1)
    {
      result = sub_1D69992C8((v44 > 1), v45 + 1, 1);
      v36 = v60;
      v38 = v81;
    }

    *(v38 + 16) = v45 + 1;
    v46 = v38 + 152 * v45;
    v47 = v62;
    *(v46 + 32) = v61;
    *(v46 + 48) = v47;
    v48 = v63;
    v49 = v64;
    v50 = v66;
    *(v46 + 96) = v65;
    *(v46 + 112) = v50;
    *(v46 + 64) = v48;
    *(v46 + 80) = v49;
    v51 = v67;
    v52 = v68;
    v53 = v69;
    *(v46 + 176) = v70;
    *(v46 + 144) = v52;
    *(v46 + 160) = v53;
    *(v46 + 128) = v51;
LABEL_27:
    v37 = v39;
    if (v39 == v36)
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1D6C55F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6C55F54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6C5619C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6C55FEC()
{
  sub_1D5C10AB0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GroupLayoutContext();
    if (v1 <= 0x3F)
    {
      sub_1D6C5619C(319, &qword_1EDF051B0, &type metadata for FeedCategory, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GroupLayoutKey();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D6C560C4(uint64_t a1)
{
  result = sub_1D6C55F0C(&qword_1EC893FC8, type metadata accessor for M18_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C56144(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C5619C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C5619C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6C56248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6C562C4()
{
  result = qword_1EDF10780;
  if (!qword_1EDF10780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10780);
  }

  return result;
}

unint64_t sub_1D6C56318()
{
  result = qword_1EDF10798;
  if (!qword_1EDF10798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10798);
  }

  return result;
}

uint64_t sub_1D6C56384(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6C563C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C563C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for CategoryViewLayout;
    v8[1] = &type metadata for CategoryViewLayout.Attributes;
    v8[2] = sub_1D6C562C4();
    v8[3] = sub_1D6C56318();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6C5644C()
{
  if (!qword_1EDF02408)
  {
    sub_1D6C56678(255, &qword_1EDF180D0, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02408);
    }
  }
}

uint64_t sub_1D6C5653C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a2(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32));
}

void sub_1D6C56564()
{
  if (!qword_1EDF180A0)
  {
    sub_1D6C56678(255, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    sub_1D6C56734();
    sub_1D6C55F0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory);
    v0 = sub_1D7259D3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF180A0);
    }
  }
}

void sub_1D6C56678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6C566E0()
{
  result = qword_1EDF0ABE8;
  if (!qword_1EDF0ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ABE8);
  }

  return result;
}

unint64_t sub_1D6C56734()
{
  result = qword_1EDF18018;
  if (!qword_1EDF18018)
  {
    sub_1D6C56678(255, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18018);
  }

  return result;
}

uint64_t sub_1D6C567D4()
{
  v17 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v2);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 208);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D5CE97C8(0, v6, 0);
    v7 = v18;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    do
    {
      sub_1D6C586C8(v8, v4, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v11 = *v4;
      v10 = v4[1];
      v12 = *(*(v4 + *(v17 + 24)) + 16);

      sub_1D6C58730(v4, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D5CE97C8((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 24 * v14);
      v15[4] = v11;
      v15[5] = v10;
      v15[6] = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1D6C56990()
{
  v1 = 0;
  v28 = *(v0 + 208);
  v2 = *(v0 + 176);
  v27[10] = *(v0 + 160);
  v27[11] = v2;
  v27[12] = *(v0 + 192);
  v3 = *(v0 + 112);
  v27[6] = *(v0 + 96);
  v27[7] = v3;
  v4 = *(v0 + 144);
  v27[8] = *(v0 + 128);
  v27[9] = v4;
  v5 = *(v0 + 48);
  v27[2] = *(v0 + 32);
  v27[3] = v5;
  v6 = *(v0 + 80);
  v27[4] = *(v0 + 64);
  v27[5] = v6;
  v7 = *(v0 + 16);
  v27[0] = *v0;
  v27[1] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v25 = byte_1F5118F70[v1 + 32];
    sub_1D6C57B14(&v25, v27, &v21);
    if (v22)
    {
      sub_1D5B63F14(&v21, v24);
      sub_1D5B63F14(v24, &v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1D5BDEE24(0, v8[2] + 1, 1, v8);
        v26 = v8;
      }

      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        v8 = sub_1D5BDEE24((v10 > 1), v11 + 1, 1, v8);
        v26 = v8;
      }

      v12 = v22;
      v13 = v23;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(&v21, v22);
      v15 = MEMORY[0x1EEE9AC00](v14, v14);
      v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      sub_1D6302700(v11, v17, &v26, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      sub_1D6C58730(&v21, sub_1D630BB34);
    }

    ++v1;
  }

  while (v1 != 6);
  return v8;
}

void sub_1D6C56BC8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DebugFormatCacheFile();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 208);
  v17 = *(v16 + 16);
  if (v17)
  {
    v30 = v9;
    v31 = v6;
    v32 = v5;
    v33 = a2;
    v18 = 0;
    v19 = *a1;
    v20 = a1[1];
    v34 = v19;
    v21 = *(v13 + 24);
    v22 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (v18 < *(v16 + 16))
    {
      sub_1D6C586C8(v22 + *(v11 + 72) * v18, v15, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v23 = *&v15[v21];

      sub_1D6C58730(v15, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v24 = *(v23 + 32);

      if (*(v24 + 16))
      {
        v25 = sub_1D5B69D90(v34, v20);
        if (v26)
        {
          v27 = v30;
          v6 = v31;
          sub_1D6C586C8(*(v24 + 56) + *(v31 + 72) * v25, v30, type metadata accessor for DebugFormatCacheFile);

          a2 = v33;
          sub_1D6C58660(v27, v33, type metadata accessor for DebugFormatCacheFile);
          v28 = 0;
          v5 = v32;
          goto LABEL_10;
        }
      }

      ++v18;

      if (v17 == v18)
      {
        v28 = 1;
        v5 = v32;
        a2 = v33;
        v6 = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = 1;
LABEL_10:
    (*(v6 + 56))(a2, v28, 1, v5);
  }
}

void sub_1D6C56E68(uint64_t *a1)
{
  v3 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  MEMORY[0x1EEE9AC00](v3, v4);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 208);
  v30 = *(v8 + 16);
  if (v30)
  {
    v9 = 0;
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v34 = a1[3];
    v35 = v12;
    v13 = *(v5 + 24);
    v31 = v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v32 = v13;
    v28 = v8;
    v29 = v6;
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v14 = v33;
      sub_1D6C586C8(v31 + *(v6 + 72) * v9, v33, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v15 = *(v14 + v32);

      sub_1D6C58730(v14, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v16 = *(v15 + 48);

      if (*(v16 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        MEMORY[0x1DA6FC0B0](v35);
        MEMORY[0x1DA6FC0B0](v34);
        v17 = sub_1D7264A5C();
        v18 = -1 << *(v16 + 32);
        v19 = v17 & ~v18;
        if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          break;
        }
      }

LABEL_3:
      ++v9;

      v6 = v29;
      v8 = v28;
      if (v9 == v30)
      {
        return;
      }
    }

    v20 = ~v18;
    v21 = *(v16 + 48);
    while (1)
    {
      v22 = (v21 + 32 * v19);
      v24 = v22[2];
      v23 = v22[3];
      v25 = *v22 == v10 && v22[1] == v11;
      if (v25 || (sub_1D72646CC()) && v24 == v35 && v23 == v34)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1D6C570DC(unint64_t a1)
{
  v2 = type metadata accessor for DebugFormatPackagesDelta();
  v3 = *(a1 + *(v2 + 20));
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_29:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v5 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](i, v3);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *(v4 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = sub_1D6C5727C(v7);

    if (v8)
    {
      return 1;
    }
  }

  a1 = *(a1 + *(v2 + 24));
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  do
  {
    v9 = v2 != v3;
    if (v2 == v3)
    {
      break;
    }

    if (v4)
    {
      v10 = MEMORY[0x1DA6FB460](v3, a1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v10 = *(a1 + 8 * v3 + 32);

      if (__OFADD__(v3, 1))
      {
LABEL_24:
        __break(1u);
        return 1;
      }
    }

    v11 = sub_1D6C5727C(v10);

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v9;
}

uint64_t sub_1D6C5727C(uint64_t a1)
{
  v3 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  if (*(v9 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) == 4)
  {
    v3 = *(v1 + 200);
    v11 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!(v3 >> 62))
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_18:
    v15 = *(v1 + 208);
    v11 = *(v15 + 16);
    if (!v11)
    {
      return 0;
    }

    v16 = 0;
    v17 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v16 < *(v15 + 16))
    {
      sub_1D6C586C8(v17 + *(v4 + 72) * v16, v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      if (*(v9 + v10) > 3u)
      {
        sub_1D6C58730(v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      }

      else
      {
        v18 = *(*(v8 + *(v3 + 24)) + 16);
        if (*(v18 + 16) == *(v9 + 16) && *(v18 + 24) == *(v9 + 24))
        {
          sub_1D6C58730(v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          return 1;
        }

        v20 = sub_1D72646CC();
        sub_1D6C58730(v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        if (v20)
        {
          return 1;
        }
      }

      if (v11 == ++v16)
      {
        return 0;
      }
    }

LABEL_36:
    __break(1u);
  }

  v1 = sub_1D7263BFC();
LABEL_4:
  v4 = 0;
  do
  {
    v8 = v1 != v4;
    if (v1 == v4)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA6FB460](v4, v3, v6);
      if (__OFADD__(v4, 1))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v10 = *(v3 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_17;
      }
    }

    v12 = *(v10 + 16);
    if (*(v12 + 16) == *(v9 + 16) && *(v12 + 24) == *(v9 + 24))
    {

      return 1;
    }

    v14 = sub_1D72646CC();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v8;
}

double sub_1D6C57524(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 160);
  v5 = *(v1 + 128);
  v68 = *(v1 + 144);
  v69 = v4;
  v6 = *(v1 + 160);
  v70[0] = *(v1 + 176);
  v7 = *(v1 + 96);
  v8 = *(v1 + 64);
  v64 = *(v1 + 80);
  v65 = v7;
  v9 = *(v1 + 96);
  v10 = *(v1 + 128);
  v66 = *(v1 + 112);
  v67 = v10;
  v11 = *(v1 + 32);
  v61[0] = *(v1 + 16);
  v61[1] = v11;
  v12 = *(v1 + 64);
  v14 = *(v1 + 16);
  v13 = *(v1 + 32);
  v62 = *(v1 + 48);
  v63 = v12;
  v58 = v68;
  v59 = v6;
  v60[0] = *(v1 + 176);
  v54 = v64;
  v55 = v9;
  v56 = v66;
  v57 = v5;
  v50 = v14;
  v51 = v13;
  *(v70 + 15) = *(v1 + 191);
  *(v60 + 15) = *(v1 + 191);
  v17 = *(v1 + 200);
  v15 = (v1 + 200);
  v16 = v17;
  v52 = v62;
  v53 = v8;
  v18 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
LABEL_29:
    v19 = sub_1D7263BFC();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  sub_1D5ECF1C0(v61, v48);
  v20 = 0;
  while (v19 != v20)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA6FB460](v20, v16);
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v16 + 8 * v20 + 32);
    }

    v22 = *(v21 + 16);
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    v25 = *(a1 + 16);
    if (v23 == *(v25 + 16) && v24 == *(v25 + 24))
    {

LABEL_25:
      sub_1D5EC4C00(v20);

      sub_1D5EC26A0(v20, v48);

      goto LABEL_26;
    }

    v27 = sub_1D72646CC();

    if (v27)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_28;
    }
  }

  MEMORY[0x1DA6F9CE0](v29);
  if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  v30 = *(&v63 + 1);
  sub_1D726278C();
  v31 = *(a1 + 16);
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1D69960B8(0, *(v30 + 2) + 1, 1, v30);
  }

  v35 = *(v30 + 2);
  v34 = *(v30 + 3);
  if (v35 >= v34 >> 1)
  {
    v30 = sub_1D69960B8((v34 > 1), v35 + 1, 1, v30);
  }

  *(v30 + 2) = v35 + 1;
  v36 = &v30[16 * v35];
  *(v36 + 4) = v33;
  *(v36 + 5) = v32;
  *(&v53 + 1) = v30;
LABEL_26:
  v37 = *(v2 + 160);
  v48[8] = *(v2 + 144);
  v48[9] = v37;
  v49[0] = *(v2 + 176);
  *(v49 + 15) = *(v2 + 191);
  v38 = *(v2 + 96);
  v48[4] = *(v2 + 80);
  v48[5] = v38;
  v39 = *(v2 + 128);
  v48[6] = *(v2 + 112);
  v48[7] = v39;
  v40 = *(v2 + 32);
  v48[0] = *(v2 + 16);
  v48[1] = v40;
  v41 = *(v2 + 64);
  v48[2] = *(v2 + 48);
  v48[3] = v41;
  sub_1D5ECF21C(v48);
  v42 = v59;
  *(v2 + 144) = v58;
  *(v2 + 160) = v42;
  *(v2 + 176) = v60[0];
  *(v2 + 191) = *(v60 + 15);
  v43 = v55;
  *(v2 + 80) = v54;
  *(v2 + 96) = v43;
  v44 = v57;
  *(v2 + 112) = v56;
  *(v2 + 128) = v44;
  v45 = v51;
  *(v2 + 16) = v50;
  *(v2 + 32) = v45;
  result = *&v52;
  v47 = v53;
  *(v2 + 48) = v52;
  *(v2 + 64) = v47;
  return result;
}

uint64_t sub_1D6C57828@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v7, v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 208);
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_14:
    result = sub_1D5B68374(a1, a3);
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = a2 & 1;
    return result;
  }

  result = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v13 = 0;
  v14 = *(result - 8);
  v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v39 = a3;
  v38 = a2;
  v34 = v11;
  v35 = v7;
  v32 = v14;
  v33 = result;
  v31 = v15;
  while (2)
  {
    if (v13 < *(v10 + 16))
    {
      v36 = v13 + 1;
      v16 = *(v15 + *(v14 + 72) * v13 + *(result + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;
      v17 = *(v7 + 60);
      v37 = v16;
      v18 = *(v16 + v17);
      v19 = *(v18 + 16);

      v20 = v18 + 64;
      v21 = -v19;
      v22 = -1;
      while (v21 + v22 != -1)
      {
        if (++v22 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        sub_1D5B68374(v20, v41);
        __swift_project_boxed_opaque_existential_1(v41, v41[3]);
        v23 = sub_1D725AA4C();
        v25 = v24;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        if (v23 == sub_1D725AA4C() && v25 == v26)
        {

          __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_16:

          v29 = v40;
          sub_1D6C586C8(v37, v40, type metadata accessor for GroupLayoutBindingContext);
          sub_1D62F8E24(a1, v38 & 1, v39);
          return sub_1D6C58730(v29, type metadata accessor for GroupLayoutBindingContext);
        }

        v20 += 72;
        v28 = sub_1D72646CC();

        result = __swift_destroy_boxed_opaque_existential_1(v41);
        if (v28)
        {
          goto LABEL_16;
        }
      }

      v7 = v35;
      v13 = v36;
      result = v33;
      a3 = v39;
      LOBYTE(a2) = v38;
      v15 = v31;
      v14 = v32;
      if (v36 != v34)
      {
        continue;
      }

      goto LABEL_14;
    }

    break;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D6C57B14(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5C1F7A8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v69 - v8;
  sub_1D5C1F7A8(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v69 - v12;
  v14 = *a1;
  v15 = *(a2 + 208);
  v16 = *(v15 + 16);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      if (v16)
      {
        type metadata accessor for DebugFormatEditorWorkspaceGroup();

        sub_1D678EE54(v40, v9);

        v41 = type metadata accessor for FeedRecipe();
        if ((*(*(v41 - 8) + 48))(v9, 1, v41) != 1)
        {
          *(a3 + 24) = v41;
          *(a3 + 32) = sub_1D6C58618(&qword_1EDF12E00, type metadata accessor for FeedRecipe);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          sub_1D6C58660(v9, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
          return;
        }

        sub_1D6C585BC(v9, qword_1EDF34D20, type metadata accessor for FeedRecipe);
      }

LABEL_42:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    if (v14 == 4)
    {
      if (!v16)
      {
        goto LABEL_42;
      }

      v22 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
      v23 = *(*(v15 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)) + *(v22 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
      v24 = *(v23 + 16);

      if (v24 && (v25 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v26 & 1) != 0) && (sub_1D5B68374(*(v23 + 56) + 40 * v25, v84), sub_1D5B49474(0, qword_1EDF431A0), swift_dynamicCast()))
      {
        nullsub_1();
      }

      else
      {
        sub_1D5F588A0(&v69);
        v96 = v80;
        v97 = v81;
        v98 = v82;
        v99 = v83;
        v92[1] = v76[1];
        v93 = v77;
        v94 = v78;
        v95 = v79;
        v89 = v73;
        v90 = v74;
        v91 = v75;
        v92[0] = v76[0];
        v85 = v69;
        v86 = v70;
        v87 = v71;
        v88 = v72;
      }

      v80 = v96;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      v76[1] = v92[1];
      v77 = v93;
      v78 = v94;
      v79 = v95;
      v73 = v89;
      v74 = v90;
      v75 = v91;
      v76[0] = v92[0];
      v69 = v85;
      v70 = v86;
      v71 = v87;
      v72 = v88;
      if (sub_1D5DEA380(&v69) == 1)
      {
        goto LABEL_42;
      }

      *(a3 + 24) = &type metadata for FeedPaywall;
      *(a3 + 32) = sub_1D62DBF34();
      v61 = swift_allocObject();
      *a3 = v61;
      v62 = v81;
      *(v61 + 208) = v80;
      *(v61 + 224) = v62;
      *(v61 + 240) = v82;
      *(v61 + 256) = v83;
      v63 = v77;
      *(v61 + 144) = v76[1];
      *(v61 + 160) = v63;
      v64 = v79;
      *(v61 + 176) = v78;
      *(v61 + 192) = v64;
      v65 = v74;
      *(v61 + 80) = v73;
      *(v61 + 96) = v65;
      v66 = v76[0];
      *(v61 + 112) = v75;
      *(v61 + 128) = v66;
      v67 = v70;
      *(v61 + 16) = v69;
      *(v61 + 32) = v67;
      v68 = v72;
      *(v61 + 48) = v71;
      *(v61 + 64) = v68;
      return;
    }

    if (!v16)
    {
      goto LABEL_42;
    }

    v44 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
    v45 = *(*(v15 + ((*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80)) + *(v44 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v46 = *(v45 + 16);

    if (v46)
    {
      v47 = sub_1D5B69D90(0x726F705364656546, 0xEF746E6576457374);
      if (v48)
      {
        sub_1D5B68374(*(v45 + 56) + 40 * v47, &v85);
        sub_1D5B49474(0, qword_1EDF431A0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          LOBYTE(v71) = 0;
          v69 = 0u;
          v70 = 0u;
        }

        v49 = *(&v69 + 1);
        if (*(&v69 + 1))
        {
          v50 = v71;
          v51 = v70;
          v52 = v69;
          *(a3 + 24) = &type metadata for FeedSportsEvent;
          *(a3 + 32) = sub_1D62DC038();
          v53 = swift_allocObject();
          *a3 = v53;
          *(v53 + 16) = v52;
          *(v53 + 24) = v49;
          *(v53 + 32) = v51;
          *(v53 + 48) = v50 & 1;
          return;
        }

        goto LABEL_42;
      }
    }

LABEL_36:

    goto LABEL_42;
  }

  if (!*a1)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    v27 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
    v28 = *(*(v15 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80)) + *(v27 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v29 = *(v28 + 16);

    if (v29)
    {
      v30 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470);
      if (v31)
      {
        sub_1D5B68374(*(v28 + 56) + 40 * v30, &v85);
        sub_1D5B49474(0, qword_1EDF431A0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v69 = 0uLL;
          LOBYTE(v70) = 0;
        }

        v32 = v69;
        if (v69)
        {
          v33 = *(&v69 + 1);
          *(a3 + 24) = &type metadata for FeedTag;
          *(a3 + 32) = sub_1D5EE5BA8();
          v34 = swift_allocObject();
          *a3 = v34;
          v35 = [swift_unknownObjectRetain() identifier];
          v36 = sub_1D726207C();
          v38 = v37;

          *(v34 + 96) = xmmword_1D7279980;
          *(v34 + 112) = 0u;
          *(v34 + 128) = 0u;
          *(v34 + 144) = 0u;
          *(v34 + 160) = 0;
          sub_1D5F587AC(v32, v33);
          *(v34 + 16) = v36;
          *(v34 + 24) = v38;
          *(v34 + 32) = v32;
          *(v34 + 40) = 0;
          *(v34 + 64) = 0;
          *(v34 + 72) = 0xE000000000000000;
          *(v34 + 48) = 0;
          *(v34 + 56) = 0;
          v39 = MEMORY[0x1E69E7CD0];
          *(v34 + 80) = 0;
          *(v34 + 88) = v39;
          return;
        }

        goto LABEL_42;
      }
    }

    goto LABEL_36;
  }

  if (v14 == 1)
  {
    if (v16)
    {
      v17 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
      v18 = *(*(v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(v17 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
      v19 = *(v18 + 16);

      if (v19 && (v20 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v21 & 1) != 0) && (sub_1D5B68374(*(v18 + 56) + 40 * v20, v84), sub_1D5B49474(0, qword_1EDF431A0), swift_dynamicCast()))
      {
        nullsub_1();
      }

      else
      {
        sub_1D5D62850(&v69);
        v91 = v75;
        v92[0] = v76[0];
        *(v92 + 9) = *(v76 + 9);
        v87 = v71;
        v88 = v72;
        v89 = v73;
        v90 = v74;
        v85 = v69;
        v86 = v70;
      }

      v75 = v91;
      v76[0] = v92[0];
      *(v76 + 9) = *(v92 + 9);
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v74 = v90;
      v69 = v85;
      v70 = v86;
      if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v69) != 1)
      {
        *(a3 + 24) = &type metadata for FeedIssue;
        *(a3 + 32) = sub_1D5EE5AA4();
        v54 = swift_allocObject();
        *a3 = v54;
        v55 = v76[0];
        v54[7] = v75;
        v54[8] = v55;
        *(v54 + 137) = *(v76 + 9);
        v56 = v72;
        v54[3] = v71;
        v54[4] = v56;
        v57 = v74;
        v54[5] = v73;
        v54[6] = v57;
        v58 = v70;
        v54[1] = v69;
        v54[2] = v58;
        return;
      }
    }

    goto LABEL_42;
  }

  if (!v16)
  {
    goto LABEL_42;
  }

  type metadata accessor for DebugFormatEditorWorkspaceGroup();

  sub_1D678EE20(v42, v13);

  v43 = type metadata accessor for FeedHeadline(0);
  if ((*(*(v43 - 8) + 48))(v13, 1, v43) == 1)
  {
    sub_1D6C585BC(v13, qword_1EDF42030, type metadata accessor for FeedHeadline);
    goto LABEL_42;
  }

  *(a3 + 24) = v43;
  *(a3 + 32) = sub_1D6C58618(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
  v60 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D6C58660(v13, v60, type metadata accessor for FeedHeadline);
}

uint64_t sub_1D6C585BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5C1F7A8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C58618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6C58660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C586C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C58730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C587B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

unint64_t FormatPatternPositionRelative.rawValue.getter()
{
  v1 = 2003134838;
  v2 = 0x656E6961746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x6566615377656976;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6C5888C@<X0>(double *a1@<X8>)
{
  v3 = *v1;
  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v1 + 24);
  type metadata accessor for FormatDecorationContext();
  sub_1D7259E9C();
  if (v3 <= 1)
  {
    if (v3)
    {
      if (!v6)
      {
        v8 = v8 + v5;
        v7 = v7 + v4;
      }

      *a1 = v8;
      a1[1] = v7;
    }

    else
    {
      if (v6)
      {
        v9 = sub_1D725ED0C();
        (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
LABEL_16:
        v14 = MEMORY[0x1E69D8360];
        goto LABEL_20;
      }

      *a1 = v5;
      a1[1] = v4;
    }

    v11 = *MEMORY[0x1E69D8340];
    v12 = sub_1D725ED0C();
    v13 = *(v12 - 8);
    (*(v13 + 104))(a1, v11, v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    goto LABEL_16;
  }

  if (v3 != 2)
  {
    if (!v6)
    {
      v8 = v8 + v5;
      v7 = v7 + v4;
    }

    *a1 = v8;
    a1[1] = v7;
    goto LABEL_18;
  }

  if ((v6 & 1) == 0)
  {
    *a1 = v5;
    a1[1] = v4;
LABEL_18:
    v15 = *MEMORY[0x1E69D8340];
    v16 = sub_1D725ED0C();
    v17 = *(v16 - 8);
    (*(v17 + 104))(a1, v15, v16);
    (*(v17 + 56))(a1, 0, 1, v16);
    goto LABEL_19;
  }

  v10 = sub_1D725ED0C();
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
LABEL_19:
  v14 = MEMORY[0x1E69D8368];
LABEL_20:
  v18 = *v14;
  v19 = sub_1D725ED4C();
  v20 = *(*(v19 - 8) + 104);

  return v20(a1, v18, v19);
}

__n128 FormatPatternPosition.adjustment.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

NewsFeed::FormatPatternPositionRelative_optional __swiftcall FormatPatternPositionRelative.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6C58BFC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C58CD0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6C58D90()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6C58E6C(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 2003134838;
  v4 = 0xED00007765695672;
  v5 = 0x656E6961746E6F63;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000015;
    v4 = 0x80000001D73BC860;
  }

  if (*v1)
  {
    v3 = 0x6566615377656976;
    v2 = 0xEC00000061657241;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

BOOL _s8NewsFeed21FormatPatternPositionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v2 = 2003134838;
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = *(a1 + 24);
  v8 = a2[1];
  v7 = a2[2];
  v9 = *(a2 + 24);
  v10 = 0xE400000000000000;
  v11 = 0x656E6961746E6F63;
  v12 = 0xED00007765695672;
  v13 = 0x80000001D73BC860;
  if (v3 != 2)
  {
    v11 = 0xD000000000000015;
    v12 = 0x80000001D73BC860;
  }

  v14 = 0x6566615377656976;
  if (*a1)
  {
    v10 = 0xEC00000061657241;
  }

  else
  {
    v14 = 2003134838;
  }

  if (*a1 <= 1u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v3 <= 1)
  {
    v16 = v10;
  }

  else
  {
    v16 = v12;
  }

  v17 = 0xE400000000000000;
  v18 = 0x656E6961746E6F63;
  if (*a2 == 2)
  {
    v13 = 0xED00007765695672;
  }

  else
  {
    v18 = 0xD000000000000015;
  }

  if (*a2)
  {
    v2 = 0x6566615377656976;
    v17 = 0xEC00000061657241;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v18;
  }

  if (*a2 <= 1u)
  {
    v20 = v17;
  }

  else
  {
    v20 = v13;
  }

  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_1D72646CC();

    result = 0;
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    return (v9 & 1) == 0 && v5 == v8 && v4 == v7;
  }

  return (v9 & 1) != 0;
}

unint64_t sub_1D6C5919C(uint64_t a1)
{
  result = sub_1D6C591C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C591C4()
{
  result = qword_1EC893FD0;
  if (!qword_1EC893FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FD0);
  }

  return result;
}

unint64_t sub_1D6C59258()
{
  result = qword_1EC893FD8;
  if (!qword_1EC893FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FD8);
  }

  return result;
}

unint64_t sub_1D6C592B0()
{
  result = qword_1EC893FE0;
  if (!qword_1EC893FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FE0);
  }

  return result;
}

unint64_t sub_1D6C59304(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C59334();
  result = sub_1D6C59388();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C59334()
{
  result = qword_1EC893FE8;
  if (!qword_1EC893FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FE8);
  }

  return result;
}

unint64_t sub_1D6C59388()
{
  result = qword_1EDF0A450;
  if (!qword_1EDF0A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A450);
  }

  return result;
}

unint64_t sub_1D6C593DC(uint64_t a1)
{
  result = sub_1D6C59404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C59404()
{
  result = qword_1EC893FF0;
  if (!qword_1EC893FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FF0);
  }

  return result;
}

unint64_t sub_1D6C59498(uint64_t a1)
{
  result = sub_1D6C594C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C594C0()
{
  result = qword_1EC893FF8;
  if (!qword_1EC893FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FF8);
  }

  return result;
}

uint64_t sub_1D6C59554(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C595A8()
{
  result = qword_1EC894000;
  if (!qword_1EC894000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894000);
  }

  return result;
}

uint64_t sub_1D6C595FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
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

uint64_t static Commands.openInSafari.getter()
{
  if (qword_1EDF3AFD8 != -1)
  {
    swift_once();
  }
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE12openInSafari8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B74A74(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v11, v12).n128_u64[0];
  v15 = v30 - v14;
  v16 = [a1 contentURL];
  if (!v16)
  {
    v23 = sub_1D72585BC();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
    v22 = v15;
    goto LABEL_5;
  }

  v17 = v16;
  sub_1D72584EC();

  v18 = sub_1D72585BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 0, 1, v18);
  sub_1D5E3E404(v15);
  v20 = [a1 routeURL];
  if (v20)
  {
    v21 = v20;
    sub_1D72584EC();

    v19(v10, 0, 1, v18);
    v22 = v10;
LABEL_5:
    sub_1D5E3E404(v22);
    return 0;
  }

  v19(v10, 1, 1, v18);
  sub_1D5E3E404(v10);
  if (qword_1EDF3AFD8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = objc_opt_self();

  v27 = [v26 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05BF0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDF05BF8;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v30[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v29 = v28;
  swift_unknownObjectRetain();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE12openInSafari8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B74A74(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = v25 - v11;
  v13 = [a1 contentURL];
  if (!v13)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v19 = v12;
    goto LABEL_5;
  }

  v14 = v13;
  sub_1D72584EC();

  v15 = sub_1D72585BC();
  v16 = *(*(v15 - 8) + 56);
  v16(v12, 0, 1, v15);
  sub_1D5E3E404(v12);
  v17 = [a1 routeURL];
  if (v17)
  {
    v18 = v17;
    sub_1D72584EC();

    v16(v7, 0, 1, v15);
    v19 = v7;
LABEL_5:
    sub_1D5E3E404(v19);
    return 0;
  }

  v16(v7, 1, 1, v15);
  sub_1D5E3E404(v7);
  if (qword_1EDF3AFD8 != -1)
  {
    swift_once();
  }

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05BF0 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDF05BF8;
  sub_1D725DFDC();
  v25[1] = a1;
  sub_1D725D5DC();
  swift_allocObject();
  swift_unknownObjectRetain();
  return sub_1D725D5CC();
}

uint64_t FormatLayoutValue.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v54 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    if (v12)
    {
      v13 = sub_1D726433C();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 2;
        v17 = *v14;
        v14 += 2;
        if (v17 >= 4)
        {
          v18 = *(v16 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v19 = v18;
          *(v19 + 8) = v17;
          *(v19 + 16) = &unk_1F5118820;
          *(v19 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D6C5B08C();
    v55 = 0uLL;
    sub_1D726431C();
    switch(v54)
    {
      case 1:
        type metadata accessor for FormatViewNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC883A08, type metadata accessor for FormatViewNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v38 = v54;
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *a2 = v39 | 4;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 2:
        type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894050, type metadata accessor for FormatWebEmbedNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v32 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v32;
        v27 = 0x1000000000000004;
        goto LABEL_33;
      case 3:
        type metadata accessor for FormatTextNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894048, type metadata accessor for FormatTextNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v34 = v54;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        *a2 = v35 | 0x2000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 4:
        type metadata accessor for FormatImageNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EDF1FA90, type metadata accessor for FormatImageNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v28 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v28;
        v27 = 0x2000000000000004;
        goto LABEL_33;
      case 5:
        type metadata accessor for FormatSupplementaryNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC88D380, type metadata accessor for FormatSupplementaryNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v43 = v54;
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        *a2 = v44 | 0x3000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 6:
        type metadata accessor for FormatButtonNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC885F28, type metadata accessor for FormatButtonNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v47 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v47;
        v27 = 0x3000000000000004;
        goto LABEL_33;
      case 7:
        type metadata accessor for FormatFrameNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894040, type metadata accessor for FormatFrameNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v36 = v54;
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *a2 = v37 | 0x4000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 8:
        (*(v7 + 8))(v10, v6);
        *a2 = 0xA000000000000004;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 9:
        type metadata accessor for FormatStateViewNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC88B588, type metadata accessor for FormatStateViewNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v31 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v31;
        v27 = 0x4000000000000004;
        goto LABEL_33;
      case 10:
        type metadata accessor for FormatCustomNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894038, type metadata accessor for FormatCustomNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v49 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v49;
        v27 = 0x5000000000000000;
        goto LABEL_33;
      case 11:
        type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894030, type metadata accessor for FormatAdMetricsNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v25 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        v27 = 0x5000000000000004;
        goto LABEL_33;
      case 12:
        type metadata accessor for FormatMicaNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894028, type metadata accessor for FormatMicaNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v29 = v54;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        *a2 = v30 | 0x6000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 13:
        type metadata accessor for FormatLayeredMediaNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC893C90, type metadata accessor for FormatLayeredMediaNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v46 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v46;
        v27 = 0x6000000000000004;
        goto LABEL_33;
      case 14:
        type metadata accessor for FormatVideoNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894020, type metadata accessor for FormatVideoNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v23 = v54;
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *a2 = v24 | 0x7000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 15:
        type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC881B28, type metadata accessor for FormatIssueCoverNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v33 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v33;
        v27 = 0x7000000000000004;
        goto LABEL_33;
      case 16:
        v54 = xmmword_1D7279980;
        sub_1D6C5B0E0();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v51 = swift_allocObject();
        v52 = v58;
        *(v51 + 48) = v57;
        *(v51 + 64) = v52;
        *(v51 + 80) = v59;
        v53 = v56;
        *(v51 + 16) = v55;
        *(v51 + 32) = v53;
        *a2 = v51 | 0x1000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 17:
        type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC8923D8, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v40 = v54;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        *a2 = v41 | 0x8000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 18:
        type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894018, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v48 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v48;
        v27 = 0x8000000000000004;
        goto LABEL_33;
      case 19:
        type metadata accessor for FormatProgressViewLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC8935C0, type metadata accessor for FormatProgressViewLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v50 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v50;
        v27 = 0x9000000000000000;
        goto LABEL_33;
      case 20:
        type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894010, type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v42 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v42;
        v27 = 0x9000000000000004;
        goto LABEL_33;
      case 21:
        type metadata accessor for FormatSponsoredBannerLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC891720, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v45 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v45;
        v27 = 0xA000000000000000;
LABEL_33:
        *a2 = v26 | v27;
        break;
      default:
        type metadata accessor for FormatItemNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC890B28, type metadata accessor for FormatItemNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v21 = v54;
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *a2 = v22;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6C5B08C()
{
  result = qword_1EC894008;
  if (!qword_1EC894008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894008);
  }

  return result;
}

unint64_t sub_1D6C5B0E0()
{
  result = qword_1EC894058;
  if (!qword_1EC894058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894058);
  }

  return result;
}

uint64_t FormatLayoutValue.encode(to:)(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v35 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  switch((v10 >> 59) & 0x1E | (v10 >> 2) & 1)
  {
    case 1uLL:
      v25 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 1;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v25;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatViewNodeLayoutAttributes();
      v12 = &qword_1EC883A10;
      v13 = type metadata accessor for FormatViewNodeLayoutAttributes;
      break;
    case 2uLL:
      v20 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v39 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v40 = v20;
      v41 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v42 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v38 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v43 = 16;
      v37 = 0uLL;
      sub_1D6C5C0C4(&v38, v35);
      sub_1D6C5C070();
      sub_1D726443C();
      if (!v2)
      {
        v35[2] = v40;
        v35[3] = v41;
        v36 = v42;
        v35[0] = v38;
        v35[1] = v39;
        v37 = xmmword_1D7279980;
        sub_1D6C5C174();
        sub_1D726443C();
      }

      (*(v6 + 8))(v9, v5);
      return sub_1D6C5C120(&v38);
    case 3uLL:
      v23 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 2;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v23;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
      v12 = &unk_1EC8940A8;
      v13 = type metadata accessor for FormatWebEmbedNodeLayoutAttributes;
      break;
    case 4uLL:
      v17 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 3;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v17;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatTextNodeLayoutAttributes();
      v12 = &unk_1EC8940A0;
      v13 = type metadata accessor for FormatTextNodeLayoutAttributes;
      break;
    case 5uLL:
      v28 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 4;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v28;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatImageNodeLayoutAttributes();
      v12 = &unk_1EDF1FA98;
      v13 = type metadata accessor for FormatImageNodeLayoutAttributes;
      break;
    case 6uLL:
      v30 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 5;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v30;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatSupplementaryNodeLayoutAttributes();
      v12 = &qword_1EC88D388;
      v13 = type metadata accessor for FormatSupplementaryNodeLayoutAttributes;
      break;
    case 7uLL:
      v24 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 6;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v24;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatButtonNodeLayoutAttributes();
      v12 = &qword_1EC885F30;
      v13 = type metadata accessor for FormatButtonNodeLayoutAttributes;
      break;
    case 8uLL:
      v33 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 7;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v33;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatFrameNodeLayoutAttributes();
      v12 = &unk_1EC894098;
      v13 = type metadata accessor for FormatFrameNodeLayoutAttributes;
      break;
    case 9uLL:
      v19 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 9;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v19;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatStateViewNodeLayoutAttributes();
      v12 = &qword_1EC88B590;
      v13 = type metadata accessor for FormatStateViewNodeLayoutAttributes;
      break;
    case 0xAuLL:
      v32 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 10;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v32;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatCustomNodeLayoutAttributes();
      v12 = &unk_1EC894090;
      v13 = type metadata accessor for FormatCustomNodeLayoutAttributes;
      break;
    case 0xBuLL:
      v16 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 11;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v16;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
      v12 = &unk_1EC894088;
      v13 = type metadata accessor for FormatAdMetricsNodeLayoutAttributes;
      break;
    case 0xCuLL:
      v18 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 12;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v18;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatMicaNodeLayoutAttributes();
      v12 = &unk_1EC894080;
      v13 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      break;
    case 0xDuLL:
      v29 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 13;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v29;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatLayeredMediaNodeLayoutAttributes();
      v12 = &qword_1EC893C98;
      v13 = type metadata accessor for FormatLayeredMediaNodeLayoutAttributes;
      break;
    case 0xEuLL:
      v15 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 14;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v15;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatVideoNodeLayoutAttributes();
      v12 = &unk_1EC894078;
      v13 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      break;
    case 0xFuLL:
      v22 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 15;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v22;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
      v12 = &qword_1EC881B30;
      v13 = type metadata accessor for FormatIssueCoverNodeLayoutAttributes;
      break;
    case 0x10uLL:
      v14 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 17;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v14;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
      v12 = &qword_1EC8923E0;
      v13 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      break;
    case 0x11uLL:
      v26 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 18;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v26;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
      v12 = &unk_1EC894070;
      v13 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
      break;
    case 0x12uLL:
      v31 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 19;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v31;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatProgressViewLayoutAttributes();
      v12 = &qword_1EC8935C8;
      v13 = type metadata accessor for FormatProgressViewLayoutAttributes;
      break;
    case 0x13uLL:
      v34 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 20;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v34;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes();
      v12 = &unk_1EC894068;
      v13 = type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes;
      break;
    case 0x14uLL:
      v27 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 21;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v27;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatSponsoredBannerLayoutAttributes();
      v12 = &qword_1EC891728;
      v13 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
      break;
    case 0x15uLL:
      LOBYTE(v35[0]) = 8;
      sub_1D6C5C070();
      v38 = 0uLL;
      sub_1D726443C();
      return (*(v6 + 8))(v9, v5);
    default:
      v11 = *(v10 + 16);
      LOBYTE(v35[0]) = 0;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v11;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatItemNodeLayoutAttributes();
      v12 = &qword_1EC890B30;
      v13 = type metadata accessor for FormatItemNodeLayoutAttributes;
      break;
  }

  sub_1D6C5D254(v12, v13);
  sub_1D726443C();
LABEL_47:
  (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6C5C070()
{
  result = qword_1EC894060;
  if (!qword_1EC894060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894060);
  }

  return result;
}

unint64_t sub_1D6C5C174()
{
  result = qword_1EC8940B0;
  if (!qword_1EC8940B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8940B0);
  }

  return result;
}

unint64_t sub_1D6C5C1C8(char a1)
{
  result = 1835365481;
  switch(a1)
  {
    case 1:
      result = 2003134838;
      break;
    case 2:
      result = 0x6465626D45626577;
      break;
    case 3:
      result = 1954047348;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x656D656C70707573;
      break;
    case 6:
      result = 0x6E6F74747562;
      break;
    case 7:
      result = 0x656D617266;
      break;
    case 8:
      result = 0x6E6564646968;
      break;
    case 9:
      result = 0x6569566574617473;
      break;
    case 10:
      result = 0x6D6F74737563;
      break;
    case 11:
      result = 0x63697274654D6461;
      break;
    case 12:
      result = 1633905005;
      break;
    case 13:
      result = 0x4D6465726579616CLL;
      break;
    case 14:
      result = 0x6F65646976;
      break;
    case 15:
      result = 0x766F436575737369;
      break;
    case 16:
      result = 0x70756F7267;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x616C506F65646976;
      break;
    case 19:
      result = 0x73736572676F7270;
      break;
    case 20:
      result = 0x6D45656C7A7A7570;
      break;
    case 21:
      result = 0x65726F736E6F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6C5C400(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6C5C1C8(*a1);
  v5 = v4;
  if (v3 == sub_1D6C5C1C8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6C5C488()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C5C1C8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C5C4EC()
{
  sub_1D6C5C1C8(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6C5C540()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C5C1C8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C5C5A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C5D6FC();
  *a1 = result;
  return result;
}

unint64_t sub_1D6C5C5D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6C5C1C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void FormatLayoutValue.flipRightToLeft(bounds:)(unint64_t *a1@<X8>)
{
  v3 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
      v8 = swift_allocObject();
      type metadata accessor for FormatViewNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC883A38, type metadata accessor for FormatViewNodeLayoutAttributes);
      sub_1D725A24C();
      v3 = v8 | 4;
      break;
    case 2uLL:
      v10 = swift_allocObject();
      FormatGroupNodeLayoutAttributes.flipRightToLeft(bounds:)(v10 + 16);
      v3 = v10 | 0x1000000000000000;
      break;
    case 3uLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940F8, type metadata accessor for FormatWebEmbedNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x1000000000000004;
      goto LABEL_23;
    case 4uLL:
      v14 = swift_allocObject();
      type metadata accessor for FormatTextNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940F0, type metadata accessor for FormatTextNodeLayoutAttributes);
      sub_1D725A24C();
      v3 = v14 | 0x2000000000000000;
      break;
    case 5uLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatImageNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EDF1FAA0, type metadata accessor for FormatImageNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x2000000000000004;
      goto LABEL_23;
    case 6uLL:
      v11 = swift_allocObject();

      v12 = FormatSupplementaryNodeLayoutAttributes.flipRightToLeft(bounds:)();

      *(v11 + 16) = v12;
      v3 = v11 | 0x3000000000000000;
      break;
    case 7uLL:
      v5 = swift_allocObject();

      v17 = FormatButtonNodeLayoutAttributes.flipRightToLeft(bounds:)();

      *(v5 + 16) = v17;
      v6 = 0x3000000000000004;
      goto LABEL_23;
    case 8uLL:
      v7 = swift_allocObject();
      type metadata accessor for FormatFrameNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940E8, type metadata accessor for FormatFrameNodeLayoutAttributes);
      sub_1D725A24C();
      v3 = v7 | 0x4000000000000000;
      break;
    case 9uLL:
      v5 = swift_allocObject();

      v16 = FormatStateViewNodeLayoutAttributes.flipRightToLeft(bounds:)();

      *(v5 + 16) = v16;
      v6 = 0x4000000000000004;
      goto LABEL_23;
    case 0xAuLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatCustomNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940E0, type metadata accessor for FormatCustomNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x5000000000000000;
      goto LABEL_23;
    case 0xBuLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940D8, type metadata accessor for FormatAdMetricsNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x5000000000000004;
      goto LABEL_23;
    case 0xCuLL:
      v15 = swift_allocObject();
      type metadata accessor for FormatMicaNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940D0, type metadata accessor for FormatMicaNodeLayoutAttributes);
      sub_1D725A24C();
      v3 = v15 | 0x6000000000000000;
      break;
    case 0xDuLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatLayeredMediaNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC893CC0, type metadata accessor for FormatLayeredMediaNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x6000000000000004;
      goto LABEL_23;
    case 0xEuLL:
      v9 = swift_allocObject();
      type metadata accessor for FormatVideoNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940C8, type metadata accessor for FormatVideoNodeLayoutAttributes);
      sub_1D725A24C();
      v3 = v9 | 0x7000000000000000;
      break;
    case 0xFuLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC881B58, type metadata accessor for FormatIssueCoverNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x7000000000000004;
      goto LABEL_23;
    case 0x10uLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC892408, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
      sub_1D725A24C();
      v3 = v13 | 0x8000000000000000;
      break;
    case 0x11uLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940C0, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x8000000000000004;
      goto LABEL_23;
    case 0x12uLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatProgressViewLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8935F0, type metadata accessor for FormatProgressViewLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x9000000000000000;
      goto LABEL_23;
    case 0x13uLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940B8, type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes);
      sub_1D725A24C();
      v6 = 0x9000000000000004;
      goto LABEL_23;
    case 0x14uLL:
      v5 = swift_allocObject();
      type metadata accessor for FormatSponsoredBannerLayoutAttributes();
      sub_1D6C5D254(&qword_1EC891750, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
      sub_1D725A24C();
      v6 = 0xA000000000000000;
LABEL_23:
      v3 = v5 | v6;
      break;
    case 0x15uLL:
      break;
    default:
      v3 = swift_allocObject();

      v4 = FormatItemNodeLayoutAttributes.flipRightToLeft(bounds:)();

      *(v3 + 16) = v4;
      break;
  }

  *a1 = v3;
}

uint64_t sub_1D6C5D254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FormatLayoutValue.identifier.getter()
{
  v1 = *v0;
  v2 = (*v0 >> 59) & 0x1E | (*v0 >> 2) & 1;
  v3 = 0x6E6564646968;
  switch(v2)
  {
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
      v4 = v1 & 0xFFFFFFFFFFFFFFBLL;
      v5 = 16;
      goto LABEL_6;
    case 2uLL:
      v4 = v1 & 0xFFFFFFFFFFFFFFBLL;
      goto LABEL_5;
    case 6uLL:
    case 7uLL:
    case 9uLL:
      v1 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_4;
    case 0x15uLL:
      return v3;
    default:
LABEL_4:
      v4 = *(v1 + 16);
LABEL_5:
      v5 = 48;
LABEL_6:
      v3 = *(*(v4 + 16) + v5);

      return v3;
  }
}

unint64_t sub_1D6C5D388()
{
  result = qword_1EDF2F4A0;
  if (!qword_1EDF2F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F4A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed17FormatLayoutValueO(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x14)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 21;
  }
}

uint64_t sub_1D6C5D404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6B && *(a1 + 8))
  {
    return (*a1 + 107);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C5D460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6A)
  {
    *result = a2 - 107;
    if (a3 >= 0x6B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D6C5D4B0(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x15)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 21)) | 0xA000000000000004;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatLayoutValue.CodingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatLayoutValue.CodingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D6C5D654()
{
  result = qword_1EC894100;
  if (!qword_1EC894100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894100);
  }

  return result;
}

unint64_t sub_1D6C5D6A8()
{
  result = qword_1EC894108;
  if (!qword_1EC894108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894108);
  }

  return result;
}

uint64_t sub_1D6C5D6FC()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6C5D750()
{
  result = type metadata accessor for FeedCursorTrackerSnapshot();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D6C5D840(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = type metadata accessor for DebugJournalSection();
  v30[1] = sub_1D7261CFC();

  v11 = a4;
  sub_1D71BECD0(a1, v11, v31);
  sub_1D72627FC();
  sub_1D72627BC();
  v30[0] = 0;
  v31[0].n128_u64[0] = *(a1 + *(*a1 + 240));
  v20 = v30;
  v21 = a3;
  v22 = a2;
  v23 = v11;
  v24 = a1;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = sub_1D6C66334;
  v18[5] = &v19;
  sub_1D6C66364();
  v13 = v12;
  v14 = sub_1D6C66478();

  v16 = sub_1D5B874E4(sub_1D6C6634C, v18, v13, v10, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

  v31[0].n128_u64[0] = v16;
  swift_getWitnessTable();
  sub_1D72627AC();

  sub_1D71C0468(a1, v11, v31);

  v27 = v31[2];
  v28 = v31[3];
  v29 = v32;
  v25 = v31[0];
  v26 = v31[1];
  sub_1D72627BC();
  return v30[0];
}

uint64_t sub_1D6C5DA58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = type metadata accessor for DebugJournalSection();
  v30[1] = sub_1D7261CFC();

  v11 = a4;
  sub_1D71BED7C(a1, v11, v31);
  sub_1D72627FC();
  sub_1D72627BC();
  v30[0] = 0;
  v31[0].n128_u64[0] = *(a1 + qword_1EDFFC678);
  v20 = v30;
  v21 = a3;
  v22 = a2;
  v23 = v11;
  v24 = a1;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = sub_1D6C666D8;
  v18[5] = &v19;
  sub_1D6C66364();
  v13 = v12;
  v14 = sub_1D6C66478();

  v16 = sub_1D5B874E4(sub_1D6C667A4, v18, v13, v10, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

  v31[0].n128_u64[0] = v16;
  swift_getWitnessTable();
  sub_1D72627AC();

  sub_1D71C0684(a1, v11, v31);

  v27 = v31[2];
  v28 = v31[3];
  v29 = v32;
  v25 = v31[0];
  v26 = v31[1];
  sub_1D72627BC();
  return v30[0];
}

void sub_1D6C5DC90()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = MEMORY[0x1E69E7D40];
  v36 = *MEMORY[0x1E69E7D40] & v3;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v5 = [v1 navigationItem];
  v6 = sub_1D726203C();
  [v5 setTitle_];

  v7 = *(v1 + *((*v4 & *v1) + 0xC0));
  v8 = objc_opt_self();
  v9 = [v8 secondaryLabelColor];
  [v7 setTextColor_];

  v10 = [objc_opt_self() systemFontOfSize_];
  [v7 setFont_];

  v11 = sub_1D726203C();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed_];

  if (v13)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v13 style:2 target:sub_1D72646AC() action:sel_doDismiss];

    swift_unknownObjectRelease();
    v15 = [v8 systemGrayColor];
    [v14 setTintColor_];

    v16 = [v1 navigationItem];
    sub_1D6C66634(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D72816C0;
    *(v17 + 32) = v14;
    sub_1D5B5A498(0, &qword_1EDF04590);
    v35 = v14;
    v18 = sub_1D726265C();

    [v16 setRightBarButtonItems_];

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D72849C0;
    v20 = sub_1D726203C();
    v21 = [v12 systemImageNamed_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v21 style:0 target:sub_1D72646AC() action:sel_doSettingsWithSender_];
    swift_unknownObjectRelease();
    *(v19 + 32) = v22;
    *(v19 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v19 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    *(v19 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v23 = sub_1D726203C();
    v24 = [v12 systemImageNamed_];

    v25 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v24 style:0 target:sub_1D72646AC() action:sel_doScrollToUserEnteredSection];
    swift_unknownObjectRelease();
    *(v19 + 64) = v25;
    v26 = sub_1D726203C();
    v27 = [v12 systemImageNamed_];

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = *(v36 + 80);
    v29[3] = *(v36 + 88);
    v29[4] = v28;
    v30 = objc_allocWithZone(sub_1D725E86C());
    *(v19 + 72) = sub_1D725E85C();
    v31 = sub_1D726265C();

    [v1 setToolbarItems_];

    v32 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
    [v32 setDelegate_];
    [v32 setDataSource_];
    [v32 setAlwaysBounceVertical_];
    type metadata accessor for DebugJournalTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for DebugJournalHeaderView();
    sub_1D7262D9C();
    v33 = [v1 view];
    if (v33)
    {
      v34 = v33;
      [v33 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D6C5E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B5A498(0, &qword_1EC885090);
  sub_1D6C66634(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D72816D0;
  sub_1D5B5A498(0, &qword_1EDF04350);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;

  *(v6 + 32) = sub_1D726375C();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;

  *(v6 + 40) = sub_1D726375C();
  return sub_1D72633FC();
}

id sub_1D6C5E524()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for DebugJournalSection();
  sub_1D72627FC();

  swift_getWitnessTable();
  v3 = sub_1D7263E7C();
  v4 = *((*v2 & *v1) + 0x70);
  swift_beginAccess();
  *(v1 + v4) = v3;

  return [*(v1 + *((*v2 & *v1) + 0x80)) reloadData];
}

void sub_1D6C5E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    sub_1D6D9968C(a5);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_1D6C5E524();
  }
}

void sub_1D6C5E764(void *a1)
{
  v1 = a1;
  sub_1D6C5DC90();
}

void sub_1D6C5E7AC(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setToolbarHidden:0 animated:0];
  }
}

void sub_1D6C5E82C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D6C5E7AC(a3);
}

id sub_1D6C5E880()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  result = [v0 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame_];
    return [*(v0 + *((*v1 & *v0) + 0xC0)) sizeToFit];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D6C5E990(void *a1)
{
  v1 = a1;
  sub_1D6C5E880();
}

uint64_t sub_1D6C5E9D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D6C65880();

  return v6;
}

uint64_t sub_1D6C5EA24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D6C6593C();

  return v6;
}

uint64_t sub_1D6C5EA78(uint64_t *a1)
{
  v237 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  sub_1D7258DAC();
  swift_beginAccess();
  v4 = *((v3 & v2) + 0x50);
  v232 = v1;
  v5 = *((v3 & v2) + 0x58);
  v236 = type metadata accessor for DebugJournalSection();
  sub_1D726282C();
  v271 = v268[2];
  v272 = v268[3];
  v273 = v269;
  v270[0] = v268[0];
  v270[1] = v268[1];
  swift_endAccess();
  sub_1D7258D9C();
  v233 = v5;
  v234 = v4;
  v238 = type metadata accessor for DebugJournalItem();
  sub_1D726282C();
  type metadata accessor for DebugJournalTableViewCell();
  v6 = sub_1D7262D8C();
  v7 = [v6 textLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() systemFontOfSize_];
    [v8 setFont_];
  }

  v10 = [v6 textLabel];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() labelColor];
    [v11 setTextColor_];
  }

  v13 = [v6 detailTextLabel];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() secondaryLabelColor];
    [v14 setTextColor_];
  }

  v16 = [v6 detailTextLabel];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() systemFontOfSize_];
    [v17 setFont_];
  }

  v19 = [v6 detailTextLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setNumberOfLines_];
  }

  [v6 setSelectionStyle_];
  [v6 setAccessoryType_];
  v21 = OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_stripView;
  v22 = *(&v271 + 1);
  [*&v6[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_stripView] setBackgroundColor_];
  v23 = OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView;
  [*&v6[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView] setHidden_];
  [v6 setIndentationLevel_];
  [v6 setIndentationWidth_];
  v235 = *(v238 - 8);
  (*(v235 + 16))(&v263, v268);
  if (v267 > 3u)
  {
    if (v267 > 5u)
    {
      if (v267 != 6)
      {
        v78 = [v6 textLabel];
        if (v78)
        {
          v79 = v78;
          [v78 setText_];
        }

        v80 = [v6 detailTextLabel];
        if (v80)
        {
          v81 = v80;
          [v80 setText_];
        }

        [v6 setAccessoryType_];
        [*&v6[v23] setHidden_];
        [*&v6[v23] startAnimating];
        (*(*(v236 - 8) + 8))(v270);
        (*(v235 + 8))(v268, v238);

        return v6;
      }

      v46 = v263;
      v47 = [v6 textLabel];
      if (v47)
      {
        v49 = v47;
        *&v252 = 0;
        *(&v252 + 1) = 0xE000000000000000;
        v50 = *(v46 + qword_1EDFFC640);
        if (v50 <= 2)
        {
          if (*(v46 + qword_1EDFFC640))
          {
            if (v50 == 1)
            {
              v52 = 0xE400000000000000;
              v51 = 1852138835;
            }

            else
            {
              v52 = 0xE600000000000000;
              v51 = 0x6E657A6F7246;
            }
          }

          else
          {
            v51 = 0x657669746341;
            v52 = 0xE600000000000000;
          }
        }

        else if (*(v46 + qword_1EDFFC640) > 4u)
        {
          v52 = 0xE800000000000000;
          if (v50 == 5)
          {
            v125 = 0x6C6F6F706552;
          }

          else
          {
            v125 = 0x646E61707845;
          }

          v51 = v125 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
        }

        else if (v50 == 3)
        {
          v51 = 0x4620666F20646E45;
          v52 = 0xEB00000000646565;
        }

        else
        {
          v52 = 0xE600000000000000;
          v51 = 0x646568636143;
        }

        MEMORY[0x1DA6F9910](v51, v52);

        MEMORY[0x1DA6F9910](0x7265666544202D20, 0xEB00000000646572);
        v163 = sub_1D726203C();

        [v49 setText_];
      }

      *&v252 = *(v46 + qword_1EDFFC660);
      MEMORY[0x1EEE9AC00](v47, v48);
      v223 = v232;
      type metadata accessor for FeedDeferredCursorGroup();
      sub_1D72627FC();

      swift_getWitnessTable();
      sub_1D7263E7C();
      v164 = [v6 detailTextLabel];
      if (v164)
      {
        v237 = v164;
        *&v252 = 0;
        *(&v252 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        if (qword_1EDF145A8 != -1)
        {
          swift_once();
        }

        v165 = qword_1EDF145B0;
        v166 = sub_1D725881C();
        v167 = [v165 stringFromDate_];

        v168 = sub_1D726207C();
        v170 = v169;

        *&v252 = v168;
        *(&v252 + 1) = v170;
        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D726279C();
        v171 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v171);

        MEMORY[0x1DA6F9910](0x207370756F724720, 0xEA0000000000202FLL);
        sub_1D726279C();

        v172 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v172);

        MEMORY[0x1DA6F9910](0xA6E65655320, 0xE600000000000000);
        type metadata accessor for FeedDatabaseGroup();
        *&v245[0] = sub_1D726279C();
        v173 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v173);

        MEMORY[0x1DA6F9910](0x696E69616D655220, 0xEB000000000A676ELL);
        v174 = *(v46 + 16);
        v175 = *(v46 + 24);

        MEMORY[0x1DA6F9910](v174, v175);

        v161 = sub_1D726203C();

        v162 = v237;
        [v237 setText_];
        goto LABEL_105;
      }
    }

    else
    {
      if (v267 != 4)
      {
        v62 = *(v235 + 8);
        v62(&v263, v238);
        v63 = [v6 textLabel];
        if (v63)
        {
          v64 = v63;
          v65 = sub_1D726203C();
          [v64 setText_];
        }

        v66 = [v6 detailTextLabel];
        if (v66)
        {
          v67 = v66;
          v68 = sub_1D726203C();
          [v67 setText_];
        }

        v69 = [v6 textLabel];
        if (v69)
        {
          v70 = v69;
          v71 = [objc_opt_self() systemBlueColor];
          [v70 &selRef_contentURL];
        }

        v72 = [v6 textLabel];
        if (v72)
        {
          v73 = v72;
          v74 = [objc_opt_self() systemFontOfSize_];
          [v73 setFont_];
        }

        [v6 setSelectionStyle_];
        [v6 setAccessoryType_];

        (*(*(v236 - 8) + 8))(v270);
        v62(v268, v238);
        return v6;
      }

      v27 = v263;
      v28 = [v6 textLabel];
      if (v28)
      {
        v30 = v28;
        v146 = sub_1D726203C();

        [v30 setText_];
      }

      v237 = qword_1EDFFCF40;
      *&v252 = *(v27 + qword_1EDFFCF40);
      MEMORY[0x1EEE9AC00](v28, v29);
      v223 = v232;
      type metadata accessor for FeedCursorGroup();
      sub_1D72627FC();

      swift_getWitnessTable();
      sub_1D7263E7C();
      v147 = [v6 detailTextLabel];
      if (v147)
      {
        *&v231 = 0;
        v232 = v147;
        *&v252 = 0;
        *(&v252 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        if (qword_1EDF145A8 != -1)
        {
          swift_once();
        }

        v148 = qword_1EDF145B0;
        v149 = sub_1D725881C();
        v150 = [v148 stringFromDate_];

        v151 = sub_1D726207C();
        v153 = v152;

        MEMORY[0x1DA6F9910](v151, v153);

        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D726279C();
        v154 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v154);

        MEMORY[0x1DA6F9910](0x207370756F724720, 0xEA0000000000202FLL);
        sub_1D726279C();

        v155 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v155);

        MEMORY[0x1DA6F9910](0xA6E65655320, 0xE600000000000000);
        type metadata accessor for FeedGroupEmitter();
        sub_1D72627FC();
        nullsub_1();
        sub_1D7261DCC();

        swift_getWitnessTable();
        sub_1D726247C();
        sub_1D726279C();

        v156 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v156);

        MEMORY[0x1DA6F9910](0x646574746F6C5320, 0xEB00000000202F20);
        sub_1D726279C();
        v157 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v157);

        MEMORY[0x1DA6F9910](0x202F206E65704F20, 0xE800000000000000);
        type metadata accessor for FeedDatabaseGroup();
        *&v245[0] = sub_1D726279C();
        v158 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v158);

        MEMORY[0x1DA6F9910](0x7361626174614420, 0xEA00000000000A65);
        v159 = *(v27 + 16);
        v160 = *(v27 + 24);

        MEMORY[0x1DA6F9910](v159, v160);

        v161 = sub_1D726203C();

        v162 = v232;
        [v232 setText_];
LABEL_105:

LABEL_107:
        [v6 setAccessoryType_];

        goto LABEL_108;
      }
    }

    goto LABEL_107;
  }

  if (v267 > 1u)
  {
    if (v267 != 2)
    {
      sub_1D5B63F14(v264, &v252);
      v75 = [v6 textLabel];
      if (v75)
      {
        v76 = v75;
        v77 = sub_1D726203C();

        [v76 setText_];
      }

      else
      {
      }

      v122 = [v6 detailTextLabel];
      if (v122)
      {
        v123 = v122;
        __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
        sub_1D72644BC();
        v124 = sub_1D726203C();

        [v123 setText_];

        (*(*(v236 - 8) + 8))(v270);
      }

      else
      {
        (*(*(v236 - 8) + 8))(v270);
      }

      (*(v235 + 8))(v268, v238);
      __swift_destroy_boxed_opaque_existential_1(&v252);
      return v6;
    }

    v31 = v263;
    v32 = [v6 textLabel];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1D726203C();
      [v33 setText_];
    }

    v35 = [v6 detailTextLabel];
    if (v35)
    {
      v37 = v35;
      v38 = v6;
      *&v252 = v31;
      MEMORY[0x1EEE9AC00](v35, v36);
      v223 = v234;
      v224 = v233;
      type metadata accessor for FeedGroupEmitter();
      v39 = sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      v42 = MEMORY[0x1E69E6158];
      v43 = MEMORY[0x1E69E73E0];
      v44 = MEMORY[0x1E69E7410];
      v45 = sub_1D6C6678C;
LABEL_35:
      v60 = sub_1D5B874E4(v45, &v222, v39, v42, v43, WitnessTable, v44, v41);

      v6 = v38;
      *&v252 = v60;
      sub_1D6C66634(0, &qword_1EDF43BA0, v42, MEMORY[0x1E69E62F8]);
      sub_1D6C66420(&qword_1EDF3C840, &qword_1EDF43BA0, v42);
      sub_1D7261F3C();

      v61 = sub_1D726203C();

      [v37 setText_];

LABEL_108:
      (*(*(v236 - 8) + 8))(v270);
      goto LABEL_109;
    }

LABEL_52:

    (*(*(v236 - 8) + 8))(v270);

LABEL_109:
    (*(v235 + 8))(v268, v238);
    return v6;
  }

  if (v267)
  {
    v53 = v263;
    v54 = [v6 textLabel];
    if (v54)
    {
      v55 = v54;
      *&v252 = 0x2820746F6C53;
      *(&v252 + 1) = 0xE600000000000000;
      *&v245[0] = v53;
      v56 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v56);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v57 = sub_1D726203C();

      [v55 setText_];
    }

    v58 = [v6 detailTextLabel];
    if (v58)
    {
      v37 = v58;
      v38 = v6;
      *&v252 = *(&v53 + 1);
      MEMORY[0x1EEE9AC00](v58, v59);
      v223 = v234;
      v224 = v233;
      type metadata accessor for FeedGroupEmitter();
      v39 = sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      v42 = MEMORY[0x1E69E6158];
      v43 = MEMORY[0x1E69E73E0];
      v44 = MEMORY[0x1E69E7410];
      v45 = sub_1D6C66614;
      goto LABEL_35;
    }

    goto LABEL_52;
  }

  v24 = v266;
  v260[4] = v264[11];
  v260[5] = v264[12];
  v261 = v264[13];
  v262 = v265;
  v260[0] = v264[7];
  v260[1] = v264[8];
  v260[2] = v264[9];
  v260[3] = v264[10];
  v256 = v264[3];
  v257 = v264[4];
  v258 = v264[5];
  v259 = v264[6];
  v252 = v263;
  v253 = v264[0];
  v254 = v264[1];
  v255 = v264[2];
  [v6 setIndentationLevel_];
  v25 = *&v6[v21];
  if (v24 == 1)
  {
    v26 = [v22 colorWithAlphaComponent_];
  }

  else
  {
    v26 = v22;
  }

  v82 = v26;
  [v25 setBackgroundColor_];

  sub_1D5C034F0(v260, v245);
  if (v248 >= 3u)
  {
    if (v248 - 4 >= 3)
    {
      v130 = v246;
      v129 = v247;
      sub_1D5B63F14(v245, v242);
      v131 = [v6 textLabel];
      if (v131)
      {
        v132 = v131;
        v134 = v243;
        v133 = v244;
        __swift_project_boxed_opaque_existential_1(v242, v243);
        (*(*(*(v133 + 8) + 8) + 16))(v134);
        v135 = sub_1D726203C();

        [v132 setText_];
      }

      v136 = [v6 textLabel];
      if (v136)
      {
        v137 = v136;
        v138 = [objc_opt_self() systemGray2Color];
        [v137 setTextColor_];
      }

      v139 = [v6 detailTextLabel];
      if (v139)
      {
        v140 = v139;
        v240 = 0;
        v241 = 0xE000000000000000;
        FeedJournalGroupResult.kind.getter(&v239);
        sub_1D609D0C4();
        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v130, v129);

        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_1D7273AE0;
        v142 = v261;
        v143 = MEMORY[0x1E69E6438];
        *(v141 + 56) = MEMORY[0x1E69E63B0];
        *(v141 + 64) = v143;
        *(v141 + 32) = v142;
        v144 = sub_1D72620BC();
        MEMORY[0x1DA6F9910](v144);

        v145 = sub_1D726203C();

        [v140 setText_];
      }

      else
      {
      }

      v176 = [v6 detailTextLabel];
      if (v176)
      {
        v177 = v176;
        v178 = [objc_opt_self() systemGray2Color];
        [v177 setTextColor_];
      }

      [v6 setSelectionStyle_];
      [v6 setAccessoryType_];

      (*(*(v236 - 8) + 8))(v270, v236);
      (*(v235 + 8))(v268, v238);
      sub_1D60E9D6C(&v252);
      __swift_destroy_boxed_opaque_existential_1(v242);
    }

    else
    {
      v83 = v245[0];
      v84 = [v6 textLabel];
      if (v84)
      {
        v85 = v84;
        (*(&v261 + 1))();
        v86 = sub_1D726203C();

        [v85 setText_];
      }

      v87 = [v6 textLabel];
      if (v87)
      {
        v88 = v87;
        v89 = [objc_opt_self() systemGray2Color];
        [v88 setTextColor_];
      }

      v90 = [v6 detailTextLabel];
      if (v90)
      {
        v91 = v90;
        *&v245[0] = 0;
        *(&v245[0] + 1) = 0xE000000000000000;
        FeedJournalGroupResult.kind.getter(v242);
        sub_1D609D0C4();
        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v83, *(&v83 + 1));

        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1D7273AE0;
        v93 = v261;
        v94 = MEMORY[0x1E69E6438];
        *(v92 + 56) = MEMORY[0x1E69E63B0];
        *(v92 + 64) = v94;
        *(v92 + 32) = v93;
        v95 = sub_1D72620BC();
        MEMORY[0x1DA6F9910](v95);

        v96 = sub_1D726203C();

        [v91 setText_];
      }

      else
      {
      }

      v126 = [v6 detailTextLabel];
      if (v126)
      {
        v127 = v126;
        v128 = [objc_opt_self() systemGray2Color];
        [v127 setTextColor_];
      }

      [v6 setSelectionStyle_];
      [v6 setAccessoryType_];

      (*(*(v236 - 8) + 8))(v270, v236);
      (*(v235 + 8))(v268, v238);
      sub_1D60E9D6C(&v252);
    }

    return v6;
  }

  v229 = v6;
  sub_1D5B63F14(v245, v249);
  v98 = v250;
  v97 = v251;
  __swift_project_boxed_opaque_existential_1(v249, v250);
  (*(*(*(v97 + 8) + 8) + 16))(v98);
  sub_1D6C661C8(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v228 = v99;
  v100 = swift_allocObject();
  v231 = xmmword_1D7273AE0;
  *(v100 + 16) = xmmword_1D7273AE0;
  v101 = *MEMORY[0x1E69DB650];
  *(v100 + 32) = *MEMORY[0x1E69DB650];
  v233 = objc_opt_self();
  v232 = v101;
  v102 = [v233 labelColor];
  v226 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(v100 + 64) = v226;
  *(v100 + 40) = v102;
  sub_1D5C09CEC(v100);
  swift_setDeallocating();
  sub_1D69D7BC4(v100 + 32);
  swift_deallocClassInstance();
  v103 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v104 = sub_1D726203C();

  type metadata accessor for Key(0);
  v106 = v105;
  v107 = sub_1D5C09E68();
  v108 = sub_1D7261D2C();

  v234 = [v103 initWithString:v104 attributes:v108];

  sub_1D70B38C8();
  v110 = v109;
  v227 = v106;
  v230 = v107;
  if (!(v109 >> 62))
  {
    v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v111)
    {
      goto LABEL_64;
    }

LABEL_116:

    v6 = v229;
    v179 = [v229 textLabel];
    if (v179)
    {
      v180 = v179;
      [v179 setAttributedText_];
    }

    *&v245[0] = 0;
    *(&v245[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    v182 = v250;
    v181 = v251;
    __swift_project_boxed_opaque_existential_1(v249, v250);
    v183 = (*(*(*(v181 + 8) + 8) + 24))(v182);
    if (v184)
    {
      v185 = v184;
    }

    else
    {
      v183 = 2960685;
      v185 = 0xE300000000000000;
    }

    MEMORY[0x1DA6F9910](v183, v185);

    MEMORY[0x1DA6F9910](0x203A65726F63730ALL, 0xE800000000000000);
    v186 = v233;
    if (qword_1EC87DD88 != -1)
    {
      swift_once();
    }

    v187 = qword_1EC9BAF48;
    v188 = sub_1D725A62C();
    v189 = [v187 stringForObjectValue_];

    if (v189)
    {
      v190 = sub_1D726207C();
      v192 = v191;

      v193 = v190;
    }

    else
    {
      v193 = sub_1D7262A9C();
      v192 = v194;
    }

    MEMORY[0x1DA6F9910](v193, v192);

    MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73EEA70);
    v196 = v250;
    v195 = v251;
    __swift_project_boxed_opaque_existential_1(v249, v250);
    (*(*(v195 + 8) + 64))(v196);
    v197 = sub_1D725A62C();
    v198 = [v187 stringForObjectValue_];

    if (v198)
    {
      v199 = sub_1D726207C();
      v201 = v200;

      v202 = v199;
    }

    else
    {
      v202 = sub_1D7262A9C();
      v201 = v203;
    }

    MEMORY[0x1DA6F9910](v202, v201);

    v204 = swift_allocObject();
    *(v204 + 16) = v231;
    v205 = v232;
    *(v204 + 32) = v232;
    v225 = v205;
    v206 = [v186 secondaryLabelColor];
    v207 = v226;
    *(v204 + 64) = v226;
    *(v204 + 40) = v206;
    sub_1D5C09CEC(v204);
    swift_setDeallocating();
    sub_1D69D7BC4(v204 + 32);
    swift_deallocClassInstance();
    v208 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v209 = sub_1D726203C();

    v210 = sub_1D7261D2C();

    v232 = [v208 initWithString:v209 attributes:v210];

    sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
    v211 = swift_allocObject();
    *(v211 + 16) = v231;
    v212 = v261;
    v213 = MEMORY[0x1E69E6438];
    *(v211 + 56) = MEMORY[0x1E69E63B0];
    *(v211 + 64) = v213;
    *(v211 + 32) = v212;
    sub_1D72620BC();
    v214 = swift_allocObject();
    *(v214 + 16) = v231;
    *(v214 + 32) = v225;
    v215 = [v237 tintColor];
    *(v214 + 64) = v207;
    if (!v215)
    {
      v215 = [v233 systemBlueColor];
    }

    *(v214 + 40) = v215;
    sub_1D5C09CEC(v214);
    swift_setDeallocating();
    sub_1D69D7BC4(v214 + 32);
    swift_deallocClassInstance();
    v216 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v217 = sub_1D726203C();

    v218 = sub_1D7261D2C();

    v219 = [v216 initWithString:v217 attributes:v218];

    [v232 appendAttributedString_];
    v220 = [v6 detailTextLabel];
    if (v220)
    {
      v221 = v220;
      [v220 setAttributedText_];
    }

    [v6 setSelectionStyle_];
    [v6 setAccessoryType_];

    (*(*(v236 - 8) + 8))(v270);
    (*(v235 + 8))(v268, v238);
    sub_1D60E9D6C(&v252);
    __swift_destroy_boxed_opaque_existential_1(v249);
    return v6;
  }

  v111 = sub_1D7263BFC();
  if (!v111)
  {
    goto LABEL_116;
  }

LABEL_64:
  v112 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v113 = sub_1D726203C();
  v114 = [v112 initWithString_];

  [v234 insertAttributedString:v114 atIndex:0];
  sub_1D5B5A498(0, &qword_1EDF1A7E0);
  result = swift_getObjCClassFromMetadata();
  if (v111 >= 1)
  {
    v116 = result;
    v117 = 0;
    do
    {
      if ((v110 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x1DA6FB460](v117, v110);
      }

      else
      {
        v118 = *(v110 + 8 * v117 + 32);
      }

      v119 = v118;
      ++v117;
      v120 = [v116 attributedStringWithAttachment_];
      v121 = [v233 systemGrayColor];
      [v120 addAttribute:v232 value:v121 range:{0, 1}];

      [v234 insertAttributedString:v120 atIndex:0];
    }

    while (v111 != v117);
    goto LABEL_116;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C6119C@<X0>(void *a1@<X8>)
{
  v2 = sub_1D6B6AE5C();
  MEMORY[0x1DA6F9910](v2);

  *a1 = 547520738;
  a1[1] = 0xA400000000000000;
  return result;
}

uint64_t sub_1D6C61208(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void), uint64_t (*a4)(uint64_t))
{
  v5 = a3(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0x50), *((*MEMORY[0x1E69E7D40] & *a2) + 0x58));
  v6 = a4(v5);
  v8 = v7;
  type metadata accessor for FeedCursorTrackerSnapshot();
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  LOBYTE(v6) = FeedCursorTrackerSnapshot.contains(identifier:)(v9);

  return v6 & 1;
}

id sub_1D6C612F8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D7258DBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v10 = a3;
  v11 = a1;
  v12 = sub_1D6C5EA78(v10);

  (*(v6 + 8))(v9, v5);

  return v12;
}

char *sub_1D6C6140C()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = *((v4 & v2) + 0x50);
  v39 = *((v4 & v2) + 0x58);
  v6 = type metadata accessor for DebugJournalSection();
  sub_1D726282C();
  v44 = v40[2];
  v45 = v40[3];
  v46 = v41;
  v42 = v40[0];
  v43 = v40[1];
  swift_endAccess();
  type metadata accessor for DebugJournalHeaderView();
  v7 = sub_1D7262D7C();
  v8 = [v7 textLabel];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D726203C();
    [v9 setText_];
  }

  v11 = sub_1D7262BDC();
  v13 = (v1 + *((*v3 & *v1) + 0x88));
  if (v11 == *v13 && v12 == v13[1])
  {
  }

  else
  {
    v15 = sub_1D72646CC();

    v16 = v7;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v17 = [v7 textLabel];

  if (v17)
  {
    *&v40[0] = 545626338;
    *(&v40[0] + 1) = 0xA400000000000000;
    MEMORY[0x1DA6F9910](v43, *(&v43 + 1));
    v16 = sub_1D726203C();

    [v17 setText_];

LABEL_12:
  }

  v18 = *(v1 + *((*v3 & *v1) + 0xB8));
  v19 = v46;
  v20 = v5;
  v21 = sub_1D6A69FC0(v46);
  v23 = v22;
  swift_beginAccess();
  v24 = *(v18 + 16);
  if (*(v24 + 16) && (v25 = sub_1D5B69D90(v21, v23), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + v25);
    swift_endAccess();

    v28 = *&v7[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel];
  }

  else
  {
    swift_endAccess();

    v28 = *&v7[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel];
    v27 = 1;
  }

  v29 = sub_1D726203C();

  [v28 setText_];

  v30 = OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel;
  v31 = sub_1D725D03C();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 56) = v43;
  v35 = v45;
  *(v33 + 72) = v44;
  *(v33 + 88) = v35;
  *(v33 + 16) = v20;
  *(v33 + 24) = v39;
  *(v33 + 32) = v32;
  *(v33 + 104) = v46;
  *(v33 + 40) = v34;
  *(v33 + 112) = v27;
  v36 = *(v6 - 8);
  (*(v36 + 16))(v40, &v42, v6);

  v37 = *&v7[v30];
  [v37 setHidden_];
  (*(v36 + 8))(&v42, v6);

  return v7;
}

void sub_1D6C618A8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8));
    v7 = Strong;

    v8 = sub_1D6A69FC0(*(a2 + 64));
    v10 = v9;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v6 + 16);
    *(v6 + 16) = 0x8000000000000000;
    sub_1D6D7BE4C((a3 & 1) == 0, v8, v10, isUniquelyReferenced_nonNull_native);

    *(v6 + 16) = v14;
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_1D6C5E524();
  }
}

char *sub_1D6C619FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D6C6140C();

  return v6;
}

uint64_t sub_1D6C61A70(void *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  sub_1D7258DAC();
  swift_beginAccess();
  v4 = type metadata accessor for DebugJournalSection();
  sub_1D726282C();
  v91[2] = v74;
  v91[3] = v75;
  v92 = v76;
  v91[0] = v72;
  v91[1] = v73;
  swift_endAccess();
  v5 = *(*(v4 - 8) + 8);

  v5(v91, v4);
  sub_1D7258D9C();
  v6 = type metadata accessor for DebugJournalItem();
  sub_1D726282C();

  v7 = *(v6 - 8);
  (*(v7 + 16))(&v72, v90, v6);
  if (v89 > 3u)
  {
    if (v89 > 5u)
    {
      if (v89 == 6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v89 == 4)
      {
        goto LABEL_15;
      }

      v38 = v72;
      v39 = v73;
      v40 = sub_1D7258D4C();
      [a1 deselectRowAtIndexPath:v40 animated:1];

      sub_1D6C62538(v38, *(&v38 + 1), v39);
    }

    return (*(v7 + 8))(v90, v6);
  }

  if (v89 > 1u)
  {
    if (v89 != 2)
    {
      (*(v7 + 8))(v90, v6);

      return __swift_destroy_boxed_opaque_existential_1(&v73);
    }

    goto LABEL_15;
  }

  if (v89)
  {
LABEL_15:
    v41 = *(v7 + 8);
    v41(v90, v6);
    return v41(&v72, v6);
  }

  v70[12] = v84;
  v70[13] = v85;
  v70[14] = v86;
  v45 = v88;
  v71 = v87;
  v70[8] = v80;
  v70[9] = v81;
  v70[10] = v82;
  v70[11] = v83;
  v70[4] = v76;
  v70[5] = v77;
  v70[6] = v78;
  v70[7] = v79;
  v70[0] = v72;
  v70[1] = v73;
  v70[2] = v74;
  v70[3] = v75;
  v8 = sub_1D7258D4C();
  [a1 deselectRowAtIndexPath:v8 animated:1];

  v42 = *(v2 + *((*v3 & *v2) + 0x90));
  v43 = *(v2 + *((*v3 & *v2) + 0x98));
  sub_1D5B68374(v2 + *((*v3 & *v2) + 0xA0), v69);
  sub_1D5B68374(v2 + *((*v3 & *v2) + 0xA8), v68);
  v55 = *(v2 + *((*v3 & *v2) + 0xB0));
  sub_1D5C0C678(v70, v67);
  sub_1D5B68374(v2 + *((*v3 & *v2) + 0xC8), v66);
  sub_1D5B68374(v2 + *((*v3 & *v2) + 0xD0), v65);
  v44 = type metadata accessor for DebugJournalGroupViewController();
  v9 = objc_allocWithZone(v44);
  v10 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tableView;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v57 = v9;
  *&v9[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages] = MEMORY[0x1E69E7CC8];
  v49 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_placeholderImage;
  v11 = objc_opt_self();
  v12 = [v11 systemGrayColor];
  v48 = v11;
  v50 = [v11 lightGrayColor];
  v13 = objc_opt_self();
  v14 = *MEMORY[0x1E69DB958];
  v47 = v13;
  v15 = [v13 systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  v53 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v46 = vdupq_n_s64(0x4046000000000000uLL);
  *(v16 + 24) = v46;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *(v16 + 56) = v15;
  *(v16 + 64) = v50;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D6139584;
  *(v17 + 24) = v16;
  v63 = sub_1D6139588;
  v64 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1D62E78B0;
  v62 = &block_descriptor_88;
  v18 = _Block_copy(&aBlock);
  v19 = v12;
  v20 = v15;
  v21 = v50;

  v51 = [v53 imageWithActions_];

  _Block_release(v18);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    *&v9[v49] = v51;
    v52 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage;
    v23 = [v48 lightGrayColor];
    v24 = [v47 systemFontOfSize:12.0 weight:v14];
    v54 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = v46;
    *(v25 + 40) = xmmword_1D729E1B0;
    *(v25 + 56) = v24;
    *(v25 + 64) = v23;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1D61395AC;
    *(v26 + 24) = v25;
    v63 = sub_1D61395B0;
    v64 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1D62E78B0;
    v62 = &block_descriptor_15;
    v27 = _Block_copy(&aBlock);
    v28 = v24;
    v29 = v23;

    v30 = [v54 imageWithActions_];

    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      *&v57[v52] = v30;
      *&v57[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_cloudContext] = v42;
      sub_1D5B68374(v69, &v57[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tagService]);
      *&v57[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_commandCenter] = v55;
      sub_1D5C0C678(v67, &v57[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_group]);
      sub_1D6C6614C();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D7284F00;
      v32 = v42;
      swift_unknownObjectRetain();
      *(v31 + 32) = sub_1D7214FA4(v67);
      *(v31 + 40) = sub_1D72157C8(v67);
      *(v31 + 48) = sub_1D7216DB4(v67);
      *(v31 + 56) = sub_1D7216FD4(v67, v32, v43, v69, v68, v65);
      *(v31 + 64) = sub_1D72184CC(v67);
      v33 = sub_1D7218710(v45);

      *(v31 + 72) = v33;
      v34 = sub_1D63019AC(v31);
      swift_setDeallocating();
      sub_1D6C66634(0, &qword_1EC8941C0, &type metadata for DebugJournalGroupSection, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *&v57[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_sections] = v34;
      sub_1D5B68374(v66, &v57[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_radarAttachmentProvider]);
      v58.receiver = v57;
      v58.super_class = v44;
      v35 = objc_msgSendSuper2(&v58, sel_initWithNibName_bundle_, 0, 0);
      __swift_destroy_boxed_opaque_existential_1(v65);
      __swift_destroy_boxed_opaque_existential_1(v66);
      sub_1D60E9D6C(v67);
      __swift_destroy_boxed_opaque_existential_1(v68);
      __swift_destroy_boxed_opaque_existential_1(v69);
      v36 = [v2 navigationController];
      if (v36)
      {
        v37 = v36;
        [v36 showViewController:v35 sender:v2];

        v35 = v37;
      }

      sub_1D60E9D6C(v70);
      return (*(v7 + 8))(v90, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C62538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *MEMORY[0x1E69E7D40];
  sub_1D6C661C8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v26 - v12;
  v14 = *((v9 & v8) + 0x78);
  swift_beginAccess();
  v26[2] = *&v4[v14];
  v15 = type metadata accessor for DebugJournalSection();
  v16 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v19 = sub_1D5B874E4(sub_1D6C6622C, a1, v16, v15, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  *&v4[v14] = v19;

  sub_1D6C5E524();
  v20 = sub_1D726294C();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_1D726290C();

  v21 = v4;
  v22 = sub_1D72628FC();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a1;
  v23[5] = v21;
  v23[6] = a2;
  v23[7] = a3;
  sub_1D6BD1334(0, 0, v13, &unk_1D7341078, v23);
}

uint64_t sub_1D6C627D4(void *a1)
{
  v2 = v1;
  v21 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = sub_1D7258DBC();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v18 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258DAC();
  v7 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  v8 = type metadata accessor for DebugJournalSection();
  sub_1D726282C();
  v30[2] = v26[1];
  v30[3] = v26[2];
  v31 = v27;
  v30[0] = v25;
  v30[1] = v26[0];
  swift_endAccess();
  v9 = *(*(v8 - 8) + 8);

  v9(v30, v8);
  sub_1D7258D9C();
  v10 = type metadata accessor for DebugJournalItem();
  sub_1D726282C();

  v11 = *(v10 - 8);
  (*(v11 + 16))(&v25, v29, v10);
  if (v28 > 3u)
  {
    if (v28 > 5u)
    {
      v13 = v21;
      if (v28 != 6)
      {
        return (*(v11 + 8))(v29, v10);
      }
    }

    else
    {
      v13 = v21;
      if (v28 != 4)
      {
        goto LABEL_9;
      }
    }

    v15 = sub_1D7258D4C();
    [v13 deselectRowAtIndexPath:v15 animated:1];

    v22 = *(v2 + v7);
    sub_1D72627FC();

    swift_getWitnessTable();
    sub_1D7262C7C();

    if (v24 == 1)
    {
      (*(v11 + 8))(v29, v10);
    }

    v16 = v18;
    MEMORY[0x1DA6F0420](0, v23);
    v17 = sub_1D7258D4C();
    (*(v19 + 8))(v16, v20);
    [v13 scrollToRowAtIndexPath:v17 atScrollPosition:1 animated:1];

    return (*(v11 + 8))(v29, v10);
  }

  if (v28 <= 1u)
  {
    if (!v28)
    {
      (*(v11 + 8))(v29, v10);

      return sub_1D60E9D6C(&v25);
    }

    goto LABEL_9;
  }

  if (v28 == 2)
  {
LABEL_9:
    v14 = *(v11 + 8);
    v14(v29, v10);
    return v14(&v25, v10);
  }

  (*(v11 + 8))(v29, v10);

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1D6C62CBC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

void sub_1D6C62DC8()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1D6C62E38(void *a1)
{
  v1 = a1;
  sub_1D6C62DC8();
}

void sub_1D6C62E80()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = sub_1D7258DBC();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v3 & v2) + 0x70);
  swift_beginAccess();
  *&v18 = *(v1 + v8);
  v17 = v1;
  v9 = type metadata accessor for DebugJournalSection();
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7262C7C();

  if ((BYTE8(v24[0]) & 1) == 0)
  {
    v10 = *&v24[0];
    swift_beginAccess();
    sub_1D726282C();
    v25 = v20;
    v26 = v21;
    v27 = v22;
    v24[0] = v18;
    v24[1] = v19;
    swift_endAccess();
    v11 = v25;
    v12 = *(*(v9 - 8) + 8);

    v12(v24, v9);
    v23 = v11;
    type metadata accessor for DebugJournalItem();
    sub_1D72627FC();
    swift_getWitnessTable();
    LOBYTE(v12) = sub_1D7262CCC();

    if ((v12 & 1) == 0)
    {
      v13 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
      MEMORY[0x1DA6F0420](0, v10);
      v14 = sub_1D7258D4C();
      (*(v16 + 8))(v7, v4);
      [v13 scrollToRowAtIndexPath:v14 atScrollPosition:1 animated:{objc_msgSend(objc_opt_self(), sel_areAnimationsEnabled)}];
    }
  }
}

uint64_t sub_1D6C631D0(void *a1, void *a2)
{
  v2 = (a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0x88));
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

void sub_1D6C63250(void *a1)
{
  v1 = a1;
  sub_1D6C62E80();
}

void sub_1D6C63298(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D6C65A88();
}

uint64_t sub_1D6C632F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0xB8));
  v4 = sub_1D6A69FC0(v2);
  v6 = v5;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_1D5B69D90(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + v8);
  }

  else
  {
    v10 = 1;
  }

  swift_endAccess();

  if ((v2 >> 61) > 5 || ((1 << (v2 >> 61)) & 0x31) == 0)
  {
    return v10;
  }

  else
  {
    return 1;
  }
}

__n128 sub_1D6C6340C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v17 = *(a1 + 64);
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  if (v17 >> 61 == 4 && (v17 & 0x1FFFFFFFFFFFFFFFLL) == a2)
  {
    sub_1D71BEC38(*(&v15 + 1), v12);
    v11 = v12[3];
    a3[2] = v12[2];
    a3[3] = v11;
    a3[4].n128_u64[0] = v13;
    result = v12[1];
    *a3 = v12[0];
    a3[1] = result;
  }

  else
  {
    v7 = *(a1 + 48);
    a3[2] = *(a1 + 32);
    a3[3] = v7;
    a3[4].n128_u64[0] = *(a1 + 64);
    v8 = *(a1 + 16);
    *a3 = *a1;
    a3[1] = v8;
    v9 = type metadata accessor for DebugJournalSection();
    (*(*(v9 - 8) + 16))(v12, v14, v9);
  }

  return result;
}

uint64_t sub_1D6C6352C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[11] = *a4;
  sub_1D726290C();
  v7[12] = sub_1D72628FC();
  v9 = sub_1D726285C();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D6C635F0, v9, v8);
}

uint64_t sub_1D6C635F0()
{
  sub_1D725B77C();
  v1 = v0[4];
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  v3 = type metadata accessor for FeedCursor();
  v4 = sub_1D5B49474(0, &qword_1EDF3C5D0);
  v0[17] = v4;
  *v2 = v0;
  v2[1] = sub_1D6C636EC;
  v5 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 5, v1, v3, v4, v5);
}

uint64_t sub_1D6C636EC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1D6C638D0;
  }

  else
  {
    v5 = sub_1D6C63844;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D6C63844()
{
  v1 = v0[9];
  v2 = v0[10];

  sub_1D6C63A3C(v0[5], v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D6C638D0()
{
  v1 = v0[18];

  sub_1D7262EBC();
  sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_1D7273AE0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_1D7263F9C();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D5B5A498(0, &qword_1EDF3C6A0);
  v5 = sub_1D72638FC();
  sub_1D725C30C();

  v6 = v0[1];

  return v6();
}

void sub_1D6C63A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v84 = a3;
  v76 = a1;
  v77 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & v5) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & v5) + 0x58);
  isUniquelyReferenced_nonNull_native = type metadata accessor for FeedCursorTrackerSnapshot();
  v10 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v11);
  v13 = &v69 - v12;
  v14 = *((v6 & v5) + 0x78);
  swift_beginAccess();
  v90.n128_u64[0] = *&v4[v14];
  v85 = v7;
  v86 = v8;
  v81 = v8;
  v82 = v7;
  v15 = type metadata accessor for DebugJournalSection();
  v16 = sub_1D72627FC();

  swift_getWitnessTable();
  v74 = v16;
  v17 = sub_1D7263E7C();
  v75 = v14;
  *&v4[v14] = v17;

  (*(v10 + 16))(v13, &v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0x68)], isUniquelyReferenced_nonNull_native);
  if (qword_1EC87DA50 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v18 = qword_1EC894110;
    v19 = qword_1EC894110 >> 62;
    if (qword_1EC894110 >> 62)
    {
      v20 = sub_1D7263BFC();
      v21 = v77;
      if (!v20)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        v22 = MEMORY[0x1DA6FB460](v20, v18);
        goto LABEL_10;
      }
    }

    else
    {
      v20 = *((qword_1EC894110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v77;
      if (!v20)
      {
        goto LABEL_55;
      }
    }

    if (v21 == 0x8000000000000000 && v20 == -1)
    {
      goto LABEL_60;
    }

    v20 = v21 % v20;
    v72 = v19;
    v73 = v18;
    v71 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_56;
    }

    if (v20 < 0)
    {
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
      goto LABEL_64;
    }

    if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v22 = *(v18 + 8 * v20 + 32);
LABEL_10:
    v23 = v22;
    v70 = sub_1D6C5D840(v76, v13, v84, v22);
    v25 = v24;

    (*(v10 + 8))(v13, isUniquelyReferenced_nonNull_native);
    *&v88[0] = v25;
    swift_beginAccess();

    swift_getWitnessTable();
    sub_1D72627AC();
    swift_endAccess();

    if (!sub_1D726279C())
    {
      break;
    }

    v26 = *&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0xB8)];
    v27 = sub_1D726277C();
    sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      goto LABEL_50;
    }

    v69 = v4;
    v28 = 0;
    v79 = v15;
    v80 = v15 - 8;
    v29 = 32;
    v78 = v25;
    while (1)
    {
      v90 = *(v25 + v29);
      v30 = *(v25 + v29 + 16);
      v31 = *(v25 + v29 + 32);
      v32 = *(v25 + v29 + 48);
      v94 = *(v25 + v29 + 64);
      v92 = v31;
      v93 = v32;
      v91 = v30;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v83 = v28;
      v84 = v28 + 1;
      v10 = sub_1D6A69FC0(v94);
      v34 = v33;
      swift_beginAccess();
      v13 = *(v15 - 8);
      (*(v13 + 2))(v88, &v90, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v88[0] = *(v26 + 2);
      v35 = *&v88[0];
      v4 = v26;
      *(v26 + 2) = 0x8000000000000000;
      v15 = sub_1D5B69D90(v10, v34);
      v37 = *(v35 + 16);
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_49;
      }

      v40 = v36;
      if (*(v35 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v36)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1D6D85E80();
          if (v40)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_1D6D747C0(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_1D5B69D90(v10, v34);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_67;
        }

        v15 = v41;
        if (v40)
        {
LABEL_21:

          v43 = *&v88[0];
          *(*(*&v88[0] + 56) + v15) = 1;
          goto LABEL_25;
        }
      }

      v43 = *&v88[0];
      *(*&v88[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
      v44 = (v43[6] + 16 * v15);
      *v44 = v10;
      v44[1] = v34;
      *(v43[7] + v15) = 1;
      v45 = v43[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_52;
      }

      v43[2] = v47;
LABEL_25:
      v26 = v4;
      *(v4 + 2) = v43;
      swift_endAccess();
      v48 = *(v13 + 1);
      v13 += 8;
      v15 = v79;
      v48(&v90, v79);
      v25 = v78;
      v49 = sub_1D726279C();
      v10 = v84;
      if (v84 == v49)
      {

        v4 = v69;
        goto LABEL_30;
      }

      v50 = sub_1D726277C();
      sub_1D726271C();
      v29 += 72;
      v28 = v83 + 1;
      if ((v50 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v10 = 0;
LABEL_51:
    sub_1D7263DBC();
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_30:
  v51 = v77 + 1;
  if (__OFADD__(v77, 1))
  {
    goto LABEL_59;
  }

  v52 = v76;
  v53 = *(*v76 + 272);
  swift_beginAccess();
  if (!*(v52 + v53) || !sub_1D6F759D8())
  {
    goto LABEL_45;
  }

  v54 = v73;
  if (v72)
  {
    v55 = sub_1D7263BFC();
  }

  else
  {
    v55 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v55)
  {
    goto LABEL_61;
  }

  if (v51 == 0x8000000000000000 && v55 == -1)
  {
    goto LABEL_62;
  }

  v56 = v51 % v55;
  if (v71)
  {
    v57 = MEMORY[0x1DA6FB460](v56, v54);
    goto LABEL_44;
  }

  if ((v56 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v57 = *(v54 + 8 * v56 + 32);
LABEL_44:
  v58 = v57;

  sub_1D71BEB84(v59, v58, v51, v70, &v90);
  v88[2] = v92;
  v88[3] = v93;
  v89 = v94;
  v88[0] = v90;
  v88[1] = v91;
  swift_beginAccess();
  v60 = *(v15 - 8);
  (*(v60 + 16))(v87, &v90, v15);
  sub_1D72627BC();
  swift_endAccess();

  (*(v60 + 8))(&v90, v15);
LABEL_45:
  sub_1D6C5E524();
  v61 = *&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0xC0)];
  v87[0] = v51;
  *&v88[0] = sub_1D72644BC();
  *(&v88[0] + 1) = v62;
  MEMORY[0x1DA6F9910](0x73726F7372754320, 0xE800000000000000);
  v63 = v4;
  v64 = sub_1D726203C();

  [v61 setText_];

  v65 = [v63 view];
  if (!v65)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v66 = v65;
  [v65 setNeedsLayout];

  v67 = [v63 view];
  if (v67)
  {
    v68 = v67;

    [v68 layoutIfNeeded];

    return;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  sub_1D726493C();
  __break(1u);
}

void sub_1D6C64364(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1D6C66064();
}

uint64_t sub_1D6C643D4(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = type metadata accessor for FeedCursorTrackerSnapshot();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA8)]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xC8)]);
  v5 = &a1[*((*v2 & *a1) + 0xD0)];

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

id sub_1D6C646AC()
{
  sub_1D6C66634(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7312360;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemPinkColor];
  *(v0 + 40) = [v1 systemBlueColor];
  *(v0 + 48) = [v1 systemGreenColor];
  *(v0 + 56) = [v1 systemTealColor];
  *(v0 + 64) = [v1 systemYellowColor];
  *(v0 + 72) = [v1 systemRedColor];
  *(v0 + 80) = [v1 systemOrangeColor];
  *(v0 + 88) = [v1 systemPurpleColor];
  result = [v1 systemIndigoColor];
  *(v0 + 96) = result;
  qword_1EC894110 = v0;
  return result;
}

__n128 sub_1D6C64824@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void (*a8)(_OWORD *__return_ptr, void *, uint64_t, void, uint64_t, uint64_t, id, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = sub_1D6C64918(*a2, v16, a3, a4);
  v20 = v19;
  v24[0] = v15;
  v24[1] = v16;
  v24[2] = v17;

  sub_1D5C07390(v16);
  v21 = a6;

  a8(v25, v24, v18, v20 & 1, a1, a5, v21, a7);
  v22 = v25[3];
  *(a9 + 32) = v25[2];
  *(a9 + 48) = v22;
  *(a9 + 64) = v26;
  result = v25[1];
  *a9 = v25[0];
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_1D6C64918(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1D5C0C678(result + 32, v11);
  sub_1D5C034F0(&v12, v9);
  sub_1D5C074F4(v11);
  if (v10 <= 2u)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = *a3;
    result = *a3 + a4;
    if (!__OFADD__(*a3, a4))
    {
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (!v7)
      {
        *a3 = v8;
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1D5BC3420(v9);
  }

  return 0;
}

uint64_t sub_1D6C649F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v18 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x80);
  *&v12[v19] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v20 = *((*v18 & *v12) + 0xB8);
  type metadata accessor for DebugJournalSectionStateManager();
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x1E69E7CC8];
  v98 = v20;
  *&v12[v20] = v21;
  v90 = *((*v18 & *v12) + 0xC0);
  *&v12[v90] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v12[*((*v18 & *v12) + 0x90)] = a1;
  *&v12[*((*v18 & *v12) + 0x98)] = a2;
  v93 = a3;
  sub_1D5B68374(a3, &v12[*((*v18 & *v12) + 0xA0)]);
  v92 = a4;
  sub_1D5B68374(a4, &v12[*((*v18 & *v12) + 0xA8)]);
  v22 = &v12[*((*v18 & *v12) + 0xB0)];
  *v22 = a5;
  *(v22 + 1) = a6;
  *&v12[*((*v18 & *v12) + 0x60)] = a7;
  v23 = *((*v18 & *v12) + 0x68);
  v24 = type metadata accessor for FeedCursorTrackerSnapshot();
  (*(*(v24 - 8) + 16))(&v12[v23], a8, v24);
  v25 = &v12[*((*v18 & *v12) + 0x88)];
  *v25 = a9;
  *(v25 + 1) = a10;
  v99 = v12;
  sub_1D5B68374(a12, &v12[*((*v18 & *v12) + 0xD0)]);
  v26 = a7 & 0x7FFFFFFFFFFFFFFFLL;
  v27 = type metadata accessor for DebugJournalSection();
  swift_retain_n();
  v28 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v110 = sub_1D7261CFC();
  v101 = v27;
  v29 = 0;
  v30 = 0;
  if (a7 < 0)
  {
    goto LABEL_24;
  }

  do
  {
    if (qword_1EC87DA50 != -1)
    {
      swift_once();
    }

    v31 = qword_1EC894110;
    v27 = qword_1EC894110 >> 62;
    if (qword_1EC894110 >> 62)
    {
      v32 = sub_1D7263BFC();
      if (!v32)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v32 = *((qword_1EC894110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_72;
      }
    }

    v33 = v29 % v32;
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1DA6FB460](v33, v31);
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v34 = *(v31 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = sub_1D6C5D840(a7, a8, v30, v34);
    v38 = v37;

    v111[0].n128_u64[0] = v38;
    sub_1D72627FC();

    swift_getWitnessTable();
    sub_1D72627AC();
    v39 = __OFADD__(v30, v36);
    v30 += v36;
    if (v39)
    {
      goto LABEL_74;
    }

    v40 = *(*a7 + 272);
    swift_beginAccess();
    v41 = *(a7 + v40);
    if (v41)
    {
      v41 = FeedNextCursor.syncCursor.getter();
    }

    sub_1D5BD9F54(a7);
    v42 = FeedCursorContainer.init(optionalCursor:)(v41);
    v43 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v44 = v42;
    if ((~v42 & 0xF000000000000007) == 0)
    {
      v94 = v42;
      if (*(a7 + v40))
      {
        ++v29;
        if (sub_1D6F759D8())
        {
          if (v27)
          {
            v45 = sub_1D7263BFC();
          }

          else
          {
            v45 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v27 = v101;
          if (!v45)
          {
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          if (v29 == 0x8000000000000000 && v45 == -1)
          {
            goto LABEL_89;
          }

          v54 = v29 % v45;
          if ((v31 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x1DA6FB460](v54, v31);
          }

          else
          {
            if ((v54 & 0x8000000000000000) != 0)
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              result = sub_1D726493C();
              __break(1u);
              return result;
            }

            if (v54 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v55 = *(v31 + 8 * v54 + 32);
          }

          v56 = v55;

          sub_1D71BEB84(v57, v56, v29, v30, v111);
          v107 = v111[2];
          v108 = v111[3];
          v109 = v112;
          v105 = v111[0];
          v106 = v111[1];
          v58 = *(v101 - 8);
          (*(v58 + 16))(v104, v111, v101);
          sub_1D72627BC();

          v59 = *(v58 + 8);
          v30 = v58 + 8;
          v59(v111, v101);
        }

        else
        {

          v27 = v101;
        }
      }

      else
      {

        v27 = v101;
        ++v29;
      }

      v53 = v94;
      goto LABEL_49;
    }

    v26 = v42 & 0x7FFFFFFFFFFFFFFFLL;

    ++v29;
    a7 = v44;
  }

  while ((v44 & 0x8000000000000000) == 0);
  a7 = v44;
  v27 = v101;
  v29 = v43;
LABEL_24:
  if (qword_1EC87DA50 != -1)
  {
    goto LABEL_80;
  }

  while (2)
  {
    v46 = qword_1EC894110;
    if (qword_1EC894110 >> 62)
    {
      v47 = sub_1D7263BFC();
    }

    else
    {
      v47 = *((qword_1EC894110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v47)
    {
      __break(1u);
LABEL_83:
      v49 = MEMORY[0x1DA6FB460](v48, v46);
      goto LABEL_34;
    }

    if (v29 == 0x8000000000000000 && v47 == -1)
    {
      goto LABEL_87;
    }

    v48 = v29 % v47;
    if ((v46 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v49 = *(v46 + 8 * v48 + 32);
LABEL_34:
    v50 = v49;
    sub_1D6C5DA58(v26, a8, v30, v49);
    v52 = v51;

    v111[0].n128_u64[0] = v52;
    v30 = sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D72627AC();
    sub_1D5BD9F54(a7);

    v39 = __OFADD__(v29++, 1);
    if (v39)
    {
      goto LABEL_85;
    }

    v53 = 0xF000000000000007;
LABEL_49:
    v95 = v53;
    v60 = v110;
    v61 = MEMORY[0x1E69E7D40];
    *(v99 + *((*MEMORY[0x1E69E7D40] & *v99) + 0x78)) = v110;
    *(v99 + *((*v61 & *v99) + 0x70)) = v60;
    swift_bridgeObjectRetain_n();
    if (sub_1D726279C())
    {
      v62 = sub_1D726277C();
      sub_1D726271C();
      if ((v62 & 1) == 0)
      {
LABEL_77:
        v26 = 0;
LABEL_78:
        sub_1D7263DBC();
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        swift_once();
        continue;
      }

      v89 = v29;
      v29 = 0;
      v96 = v60;
      v30 = 32;
      while (2)
      {
        v105 = *(v60 + v30);
        v63 = *(v60 + v30 + 16);
        v64 = *(v60 + v30 + 32);
        v65 = *(v60 + v30 + 48);
        v109 = *(v60 + v30 + 64);
        v107 = v64;
        v108 = v65;
        v106 = v63;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        a8 = v29 + 1;
        a7 = *(v99 + v98);
        v66 = sub_1D6A69FC0(v109);
        v68 = v67;
        swift_beginAccess();
        v69 = *(v27 - 8);
        (*(v69 + 16))(v104, &v105, v27);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104[0] = *(a7 + 16);
        v71 = v104[0];
        *(a7 + 16) = 0x8000000000000000;
        v27 = sub_1D5B69D90(v66, v68);
        v73 = *(v71 + 16);
        v74 = (v72 & 1) == 0;
        v75 = v73 + v74;
        if (__OFADD__(v73, v74))
        {
          goto LABEL_71;
        }

        v26 = v72;
        if (*(v71 + 24) >= v75)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v72 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            sub_1D6D85E80();
            if ((v26 & 1) == 0)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          sub_1D6D747C0(v75, isUniquelyReferenced_nonNull_native);
          v76 = sub_1D5B69D90(v66, v68);
          if ((v26 & 1) != (v77 & 1))
          {
            goto LABEL_92;
          }

          v27 = v76;
          if ((v26 & 1) == 0)
          {
LABEL_62:
            v78 = v104[0];
            *(v104[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
            v79 = (v78[6] + 16 * v27);
            *v79 = v66;
            v79[1] = v68;
            *(v78[7] + v27) = 1;
            v80 = v78[2];
            v39 = __OFADD__(v80, 1);
            v81 = v80 + 1;
            if (v39)
            {
              goto LABEL_79;
            }

            v78[2] = v81;
            goto LABEL_64;
          }
        }

        v78 = v104[0];
        *(*(v104[0] + 56) + v27) = 1;
LABEL_64:
        *(a7 + 16) = v78;
        swift_endAccess();

        v27 = v101;
        (*(v69 + 8))(&v105, v101);
        v60 = v96;
        v26 = v29 + 1;
        if (a8 == sub_1D726279C())
        {

          v29 = v89;
          goto LABEL_69;
        }

        v82 = sub_1D726277C();
        sub_1D726271C();
        v30 += 72;
        ++v29;
        if ((v82 & 1) == 0)
        {
          goto LABEL_78;
        }

        continue;
      }
    }

    break;
  }

LABEL_69:
  v83 = *(v99 + v90);
  v104[0] = v29;
  v84 = v83;
  v105.n128_u64[0] = sub_1D72644BC();
  v105.n128_u64[1] = v85;
  MEMORY[0x1DA6F9910](0x73726F7372754320, 0xE800000000000000);
  v86 = sub_1D726203C();

  [v84 setText_];

  sub_1D5B68374(a11, v99 + *((*MEMORY[0x1E69E7D40] & *v99) + 0xC8));
  v103.receiver = v99;
  v103.super_class = ObjectType;
  v87 = objc_msgSendSuper2(&v103, sel_initWithNibName_bundle_, 0, 0);
  sub_1D5BD9F54(v95);
  __swift_destroy_boxed_opaque_existential_1(a12);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v93);
  return v87;
}

void sub_1D6C65740()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v3 = *((*v1 & *v0) + 0xB8);
  type metadata accessor for DebugJournalSectionStateManager();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + v3) = v4;
  v5 = *((*v1 & *v0) + 0xC0);
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6C65880()
{
  swift_beginAccess();
  type metadata accessor for DebugJournalSection();

  v0 = sub_1D726279C();

  return v0;
}

uint64_t sub_1D6C6593C()
{
  swift_beginAccess();
  v0 = type metadata accessor for DebugJournalSection();
  sub_1D726282C();
  v9[2] = v6;
  v9[3] = v7;
  v10 = v8;
  v9[0] = v4;
  v9[1] = v5;
  swift_endAccess();
  v1 = *(*(v0 - 8) + 8);

  v1(v9, v0);
  type metadata accessor for DebugJournalItem();
  v2 = sub_1D726279C();

  return v2;
}

void sub_1D6C65A88()
{
  sub_1D6C66094(0, &qword_1EC881610, MEMORY[0x1E69D6E30]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v29 - v4;
  v6 = sub_1D725970C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C661C8(0, &unk_1EC8941A0, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6F90]);
  v11 = *(sub_1D72597DC() - 8);
  v29[3] = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D7273AE0;
  v37 = 0x206E6F6973726556;
  v38 = 0xE800000000000000;
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1DA6F9910](qword_1EC881F18, unk_1EC881F20);
  v29[1] = v38;
  v29[2] = v37;
  sub_1D5B677A8(0, &qword_1EC88F1B0, &qword_1EC8941B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279970;
  sub_1D6C66094(0, &qword_1EC881630, MEMORY[0x1E69D6E50]);
  v14 = v13;
  if (qword_1EDF18780 != -1)
  {
    swift_once();
  }

  v15 = *MEMORY[0x1E69D6D78];
  v16 = *(v7 + 104);
  v33 = v7 + 104;
  v36 = v15;
  v35 = v16;
  v16(v10);
  v17 = *MEMORY[0x1E69D6E28];
  v34 = *(v2 + 104);
  v34(v5, v17, v1);

  v18 = sub_1D72597BC();
  v32 = v6;
  v19 = v10;
  v20 = v18;
  *(v12 + 56) = v14;
  v21 = sub_1D6A14FC8();
  *(v12 + 64) = v21;
  *(v12 + 32) = v20;
  if (qword_1EDF18758 != -1)
  {
    swift_once();
  }

  v35(v19, v36, v32);
  v34(v5, v17, v1);

  v22 = sub_1D72597BC();
  *(v12 + 96) = v14;
  *(v12 + 104) = v21;
  *(v12 + 72) = v22;
  if (qword_1EDF18740 != -1)
  {
    swift_once();
  }

  v35(v19, v36, v32);
  v34(v5, v17, v1);

  v23 = sub_1D72597BC();
  *(v12 + 136) = v14;
  *(v12 + 144) = v21;
  *(v12 + 112) = v23;
  sub_1D72597CC();
  v24 = sub_1D725DFCC();
  swift_allocObject();
  v25 = sub_1D725DFBC();
  v39 = v24;
  v40 = MEMORY[0x1E69D7D00];
  v37 = v25;
  v26 = objc_allocWithZone(sub_1D725E42C());
  v27 = sub_1D725E41C();
  v28 = [objc_allocWithZone(sub_1D725EDBC()) initWithRootViewController_];

  [v31 presentViewController:v28 animated:1 completion:0];
}

void sub_1D6C66094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_1D6C66114(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = v2 >> 61 == 6;
  v3 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  return v4 && v3 == v1;
}

BOOL sub_1D6C66130(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = v2 >> 61 == 1;
  v3 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  return v4 && v3 == v1;
}

void sub_1D6C6614C()
{
  if (!qword_1EC8941B8)
  {
    sub_1D6C66634(255, &qword_1EC8941C0, &type metadata for DebugJournalGroupSection, MEMORY[0x1E69E62F8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8941B8);
    }
  }
}

void sub_1D6C661C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C6624C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6C6352C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1D6C66364()
{
  if (!qword_1EC8941C8)
  {
    sub_1D6C66634(255, &qword_1EDF05270, &type metadata for FeedJournalEntry, MEMORY[0x1E69E62F8]);
    sub_1D6C66420(&qword_1EC8941D8, &qword_1EDF05270, &type metadata for FeedJournalEntry);
    v0 = sub_1D72640AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8941C8);
    }
  }
}

uint64_t sub_1D6C66420(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C66634(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C66478()
{
  result = qword_1EC8941E0;
  if (!qword_1EC8941E0)
  {
    sub_1D6C66364();
    sub_1D6C66420(&unk_1EDF05260, &qword_1EDF05270, &type metadata for FeedJournalEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8941E0);
  }

  return result;
}

void sub_1D6C66634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_1D6C66718@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 32))(v6, *a1, a1 + 1);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t FormatKeyPlayerDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatKeyPlayerDataVisualization.eventIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatKeyPlayerDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatKeyPlayerDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatKeyPlayerDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t FormatKeyPlayerDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *FormatKeyPlayerDataVisualization.__allocating_init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  swift_beginAccess();
  v16[6] = a5;
  swift_beginAccess();
  v16[7] = a6;
  swift_beginAccess();
  v16[8] = a7;
  v16[9] = a8;
  return v16;
}

void *FormatKeyPlayerDataVisualization.init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();
  v8[6] = a5;
  swift_beginAccess();
  v8[7] = a6;
  swift_beginAccess();
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t sub_1D6C66C14(uint64_t a1)
{
  v2 = sub_1D5E19208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C66C50(uint64_t a1)
{
  v2 = sub_1D5E19208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatKeyPlayerDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatKeyPlayerDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatKeyPlayerDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C67710(0, &qword_1EC87F890, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19208();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v18 = 1;
  sub_1D72643FC();
  swift_beginAccess();
  if (*(v3[6] + 16))
  {

    sub_1D5E066F4(v12, v10, 2);
  }

  swift_beginAccess();
  v13 = v3[7];
  if (*(v13 + 16))
  {
    v17 = 3;
    v16 = v13;
    sub_1D6C67008();
    sub_1D5E4C584();
    sub_1D5E4C5D4();

    sub_1D72647EC();
  }

  swift_beginAccess();
  v14 = v3[8];
  v15 = v3[9];

  sub_1D5EAEE10(v14, v15, 4);
  (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6C67008()
{
  result = qword_1EC87F8A0;
  if (!qword_1EC87F8A0)
  {
    sub_1D6C67710(255, &qword_1EC87F890, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8A0);
  }

  return result;
}

uint64_t FormatKeyPlayerDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatKeyPlayerDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatKeyPlayerDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v40 = v2;
  v41 = v4;
  sub_1D5E18934();
  v37 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v9 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C67710(0, &qword_1EC8941E8, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19208();
  v18 = v40;
  v19 = v1;
  sub_1D7264B0C();
  if (v18)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v12;
    v21 = v39;
    LOBYTE(v42) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v22;
    LOBYTE(v42) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v24;
    v40 = v1;
    LOBYTE(v42) = 2;
    v25 = sub_1D726434C();
    if (v25)
    {
      v45 = 2;
      sub_1D6C67774(&qword_1EDF3BE00, 255, sub_1D5C8CD38);
      v26 = v9;
      sub_1D726431C();
      v27 = v14;
      v28 = sub_1D725A74C();
      (*(v36 + 8))(v20, v26);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
      v27 = v14;
    }

    v40[6] = v28;
    LOBYTE(v42) = 3;
    if (sub_1D726434C())
    {
      v45 = 3;
      sub_1D6C67774(&qword_1EDF3BD70, 255, sub_1D5E18934);
      v29 = v37;
      v30 = v38;
      sub_1D726431C();
      v31 = sub_1D725A74C();
      (*(v35 + 8))(v30, v29);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v40[7] = v31;
    v45 = 4;
    if (sub_1D726434C())
    {
      v44 = 4;
      sub_1D726431C();
      v33 = v42;
      v32 = v43;
    }

    else
    {
      v33 = 0;
      v32 = 0xE000000000000000;
    }

    (*(v21 + 8))(v17, v27);
    v19 = v40;
    v40[8] = v33;
    v19[9] = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

void *sub_1D6C67688@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatKeyPlayerDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1D6C67710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E19208();
    v7 = a3(a1, &type metadata for FormatKeyPlayerDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C67774(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6C677BC(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6C67774(&qword_1EC885AF8, a2, type metadata accessor for FormatKeyPlayerDataVisualization);
  a1[2] = sub_1D6C67774(&qword_1EC885B38, v3, type metadata accessor for FormatKeyPlayerDataVisualization);
  result = sub_1D6C67774(&qword_1EC8941F0, v4, type metadata accessor for FormatKeyPlayerDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C678F4()
{
  result = qword_1EC8941F8;
  if (!qword_1EC8941F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8941F8);
  }

  return result;
}

unint64_t sub_1D6C6794C()
{
  result = qword_1EC894200;
  if (!qword_1EC894200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894200);
  }

  return result;
}

unint64_t sub_1D6C679A4()
{
  result = qword_1EC894208;
  if (!qword_1EC894208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894208);
  }

  return result;
}

unint64_t FormatContentSizeCategoryValue.rawValue.getter()
{
  result = 0x616D536172747865;
  switch(*v0)
  {
    case 1:
      result = 29560;
      break;
    case 2:
      result = 0x6C6C616D73;
      break;
    case 3:
      result = 115;
      break;
    case 4:
      result = 0x6D756964656DLL;
      break;
    case 5:
      result = 109;
      break;
    case 6:
      result = 0x656772616CLL;
      break;
    case 7:
      result = 108;
      break;
    case 8:
      result = 0x72614C6172747865;
      break;
    case 9:
      result = 27768;
      break;
    case 0xA:
      result = 0x7478456172747865;
      break;
    case 0xB:
      result = 7108728;
      break;
    case 0xC:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 1819834488;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 7174241;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 7108705;
      break;
    case 0x12:
      result = 0xD000000000000017;
      break;
    case 0x13:
      result = 1819834465;
      break;
    case 0x14:
      result = 0xD00000000000001CLL;
      break;
    case 0x15:
      result = 0x6C78787861;
      break;
    case 0x16:
      result = 0xD000000000000021;
      break;
    case 0x17:
      result = 0x6C7878787861;
      break;
    default:
      return result;
  }

  return result;
}

NewsFeed::FormatContentSizeCategoryValue_optional __swiftcall FormatContentSizeCategoryValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D6C67D7C()
{
  result = qword_1EDF20890;
  if (!qword_1EDF20890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20890);
  }

  return result;
}

uint64_t sub_1D6C67DD0()
{
  sub_1D7264A0C();
  FormatContentSizeCategoryValue.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C67E38()
{
  FormatContentSizeCategoryValue.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6C67E9C()
{
  sub_1D7264A0C();
  FormatContentSizeCategoryValue.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6C67F0C@<X0>(unint64_t *a1@<X8>)
{
  result = FormatContentSizeCategoryValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6C67F34()
{
  v0 = FormatContentSizeCategoryValue.rawValue.getter();
  v2 = v1;
  if (v0 == FormatContentSizeCategoryValue.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D6C67FD0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C68000();
  result = sub_1D6C68054();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C68000()
{
  result = qword_1EC894210;
  if (!qword_1EC894210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894210);
  }

  return result;
}

unint64_t sub_1D6C68054()
{
  result = qword_1EDF20888;
  if (!qword_1EDF20888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20888);
  }

  return result;
}

unint64_t sub_1D6C680A8(uint64_t a1)
{
  result = sub_1D66F48AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C680D0(void *a1)
{
  a1[1] = sub_1D6C68108();
  a1[2] = sub_1D6C6815C();
  result = sub_1D6C67D7C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C68108()
{
  result = qword_1EDF20880;
  if (!qword_1EDF20880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20880);
  }

  return result;
}

unint64_t sub_1D6C6815C()
{
  result = qword_1EDF20898;
  if (!qword_1EDF20898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20898);
  }

  return result;
}

uint64_t FeedPuzzle.init(puzzle:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = xmmword_1D728A8D0;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 56) = a1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 3;
  sub_1D5C3AE80(v23, a2 + 88, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  sub_1D5C3AE80(v21, a2 + 128, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D5C3AE80(&v18, a2 + 168, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  *(a2 + 80) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
  {
    v9 = [a1 teaserClue];
    v8 = 0x8000000000;
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D726207C();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v8 = 0x28000000000;
      }
    }
  }

  else
  {
    v8 = 0x8000000000;
  }

  v15 = [a1 thumbnailSmallImageAssetHandle];
  if (v15)
  {

    v8 |= 4uLL;
  }

  v16 = [a1 thumbnailLargeImageAssetHandle];
  swift_unknownObjectRelease();
  if (v16)
  {

    v8 |= 0x40000000000uLL;
  }

  sub_1D5BFB7D0(&v18, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D5BFB7D0(v21, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  result = sub_1D5BFB7D0(v23, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  *a2 = v8;
  return result;
}

uint64_t FeedPuzzle.userHasAccess.getter()
{
  if (*(v0 + 72) > 1u)
  {
    if (*(v0 + 72) == 2)
    {
    }

    v2 = 0;
  }

  else
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

id FeedPuzzle.debugAssetHandle.getter()
{
  v1 = [*(v0 + 56) thumbnailSmallImageAssetHandle];

  return v1;
}

uint64_t FeedPuzzle.additionalFormatFeedItems.getter()
{
  v1 = [*(v0 + 56) puzzleType];
  v2 = [v1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  v18[0] = 1;
  v20 = 0uLL;
  v21[0] = 1;
  *&v21[8] = xmmword_1D728A8E0;
  *&v21[24] = v3;
  *&v22 = v5;
  *(&v22 + 1) = v1;
  sub_1D5C16694(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 56) = &type metadata for FeedPuzzleType;
  *(v6 + 64) = sub_1D6307250();
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  v8 = *v21;
  v7[1] = v20;
  v7[2] = v8;
  v9 = v22;
  v7[3] = *&v21[16];
  v7[4] = v9;
  v19 = v6;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FeedTag;
  *(inited + 64) = sub_1D5EE5BA8();
  v11 = swift_allocObject();
  *(inited + 32) = v11;
  sub_1D63071F4(&v20, v18);
  v12 = [swift_unknownObjectRetain() identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  *(v11 + 96) = xmmword_1D7279980;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0;
  *(v11 + 16) = v13;
  *(v11 + 24) = v15;
  *(v11 + 32) = v1;
  *(v11 + 40) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0xE000000000000000;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v16 = MEMORY[0x1E69E7CD0];
  *(v11 + 80) = 0;
  *(v11 + 88) = v16;
  sub_1D6985C1C(inited);
  sub_1D5F2DE58(&v20);
  return v19;
}

uint64_t PuzzleAccessLevel.rawValue.getter()
{
  v1 = 0x6563634165657266;
  if (*v0 != 1)
  {
    v1 = 0x7373656363416F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563634164696170;
  }
}

uint64_t static FeedPuzzle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

NewsFeed::PuzzleAccessLevel_optional __swiftcall PuzzleAccessLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6C688AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6563634165657266;
  v4 = 0xE800000000000000;
  if (v2 == 1)
  {
    v4 = 0xEA00000000007373;
  }

  else
  {
    v3 = 0x7373656363416F6ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6563634164696170;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007373;
  }

  v7 = 0x6563634165657266;
  v8 = 0xE800000000000000;
  if (*a2 == 1)
  {
    v8 = 0xEA00000000007373;
  }

  else
  {
    v7 = 0x7373656363416F6ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6563634164696170;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007373;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6C689A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C68A4C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6C68ADC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6C68B88(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007373;
  v3 = *v1;
  v4 = 0x6563634165657266;
  v5 = 0xE800000000000000;
  if (v3 == 1)
  {
    v5 = 0xEA00000000007373;
  }

  else
  {
    v4 = 0x7373656363416F6ELL;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6563634164696170;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

void FeedPuzzle.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t FeedPuzzle.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedPuzzle.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FeedPuzzle.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void *FeedPuzzle.puzzleHistoryItem.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t FeedPuzzle.init(identifier:puzzle:puzzleHistoryItem:accessState:puzzleImageShareAttributeProvider:puzzleRankProvider:puzzleDifficultyDescriptionProvider:additionalContextMenuOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a5;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = xmmword_1D728A8D0;
  *(a9 + 40) = a1;
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v16;
  sub_1D5C3AE80(a6, a9 + 88, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  sub_1D5C3AE80(a7, a9 + 128, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D5C3AE80(a8, a9 + 168, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  *(a9 + 80) = a10;
  swift_getObjectType();
  v17 = a4;
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
  {
    v19 = [a3 teaserClue];
    v18 = 0x8000000000;
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D726207C();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v18 = 0x28000000000;
      }
    }
  }

  else
  {
    v18 = 0x8000000000;
  }

  v25 = [a3 thumbnailSmallImageAssetHandle];
  if (v25)
  {

    v18 |= 4uLL;
  }

  v26 = [a3 thumbnailLargeImageAssetHandle];
  swift_unknownObjectRelease();

  if (v26)
  {

    v18 |= 0x40000000000uLL;
  }

  sub_1D5BFB7D0(a8, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D5BFB7D0(a7, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  result = sub_1D5BFB7D0(a6, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  *a9 = v18;
  return result;
}

uint64_t sub_1D6C69070()
{
  v1 = [*(v0 + 56) title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

id sub_1D6C690D8()
{
  v1 = [*(v0 + 56) thumbnailSmallImageAssetHandle];

  return v1;
}

uint64_t FeedPuzzle.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5F2DEAC(v1, a1);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C69160@<X0>(uint64_t a1@<X8>)
{
  sub_1D5F2DEAC(v1, a1);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t FeedPuzzle.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D6C696B4();
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D6C69200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6C69860();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t FeedPuzzle.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = &v22 - v11;
  v13 = *(v1 + 56);
  v14 = [v13 identifier];
  if (!v14)
  {
    sub_1D726207C();
    v14 = sub_1D726203C();
  }

  v15 = [objc_opt_self() nss:v14 NewsURLForPuzzleID:?];

  if (v15)
  {
    sub_1D72584EC();

    (*(v4 + 32))(v12, v7, v3);
    sub_1D725844C();
    v16 = [v13 title];
    if (v16)
    {
      v17 = v16;
      sub_1D726207C();
    }

    sub_1D725F83C();
    (*(v4 + 8))(v12, v3);
    v21 = sub_1D725F84C();
    return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
  }

  else
  {
    v18 = sub_1D725F84C();
    v19 = *(*(v18 - 8) + 56);

    return v19(a1, 1, 1, v18);
  }
}

char *sub_1D6C694F4()
{
  v12 = MEMORY[0x1E69E7CC0];
  v1 = [*(v0 + 56) puzzleType];
  swift_getObjectType();
  v2 = FCPuzzleTypeProviding.contentSelectors.getter();
  swift_unknownObjectRelease();
  sub_1D6985160(v2);
  if (*(v0 + 72) - 2 >= 2)
  {
    if (*(v0 + 72))
    {
      v3 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D5B858EC(0, *(v12 + 16) + 1, 1, v12);
      }

      v8 = 0xD000000000000019;
      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      v6 = v5 + 1;
      v9 = "puzzle-access-free-access";
    }

    else
    {
      v3 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D5B858EC(0, *(v12 + 16) + 1, 1, v12);
      }

      v8 = 0xD000000000000019;
      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      v6 = v5 + 1;
      v9 = "puzzle-access-paid-access";
    }

    v7 = (v9 - 32);
  }

  else
  {
    v3 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v12 + 16) + 1, 1, v12);
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    v6 = v5 + 1;
    v7 = "ormatKeyPlayerDataVisualization";
    v8 = 0xD000000000000017;
  }

  if (v5 >= v4 >> 1)
  {
    v3 = sub_1D5B858EC((v4 > 1), v6, 1, v3);
  }

  *(v3 + 2) = v6;
  v10 = &v3[16 * v5];
  *(v10 + 4) = v8;
  *(v10 + 5) = v7 | 0x8000000000000000;
  return v3;
}

unint64_t sub_1D6C696B4()
{
  result = qword_1EC894220;
  if (!qword_1EC894220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894220);
  }

  return result;
}

unint64_t sub_1D6C6970C()
{
  result = qword_1EC894228;
  if (!qword_1EC894228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894228);
  }

  return result;
}

unint64_t sub_1D6C69760(uint64_t a1)
{
  result = sub_1D5FC4A04();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D6C697A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6C697EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6C69860()
{
  result = qword_1EC894230;
  if (!qword_1EC894230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894230);
  }

  return result;
}

unint64_t sub_1D6C698B4()
{
  result = qword_1EC894238;
  if (!qword_1EC894238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894238);
  }

  return result;
}

uint64_t sub_1D6C69918()
{
  if (qword_1EC87D5C8 != -1)
  {
    swift_once();
  }

  sub_1D6C6A170();
  sub_1D725964C();
  if (qword_1EC87D5D0 != -1)
  {
    swift_once();
  }

  sub_1D725964C();
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910]();

  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  MEMORY[0x1DA6F9910]();

  MEMORY[0x1DA6F9910](0x747265766E6F632FLL, 0xE800000000000000);
  return 0x2F2F3A70747468;
}

uint64_t sub_1D6C69AAC()
{
  v1 = sub_1D72577EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54C54(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = *(v0 + 16);
  if (*(v0 + 32) == 1)
  {
    sub_1D5B54C54(0, &qword_1EC8938B8, sub_1D5B58D88, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v19 = v18;
    return sub_1D725BAFC();
  }

  v21 = *(v0 + 24);
  v22 = v21 >> 62;
  v41 = &v39 - v16;
  v42 = v17;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_12;
    }

    v40 = v10;
    v23 = v5;
    v24 = v2;
    v25 = v1;
    v27 = *(v18 + 16);
    v26 = *(v18 + 24);
LABEL_10:
    sub_1D69DEDF0(v18, v21, 0);
    v28 = v27 == v26;
    v1 = v25;
    v2 = v24;
    v5 = v23;
    v10 = v40;
    if (!v28)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_1D5B54C54(0, &qword_1EC8938B8, sub_1D5B58D88, MEMORY[0x1E69D6B18]);
    v43 = 0;
    v44 = 0;
    swift_allocObject();
    v29 = sub_1D725BB1C();
    goto LABEL_15;
  }

  if (v22)
  {
    v40 = v10;
    v23 = v5;
    v24 = v2;
    v25 = v1;
    v27 = v18;
    v26 = v18 >> 32;
    goto LABEL_10;
  }

  if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_1D6C69918();
  sub_1D725855C();

  v30 = v42;
  if ((*(v42 + 48))(v9, 1, v10) != 1)
  {
    v36 = v41;
    (*(v30 + 32))(v41, v9, v10);
    (*(v30 + 16))(v13, v36, v10);
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D5E3E824(v18, v21);
    sub_1D72577CC();
    sub_1D72577DC();
    v37 = [objc_opt_self() sharedSession];
    sub_1D725B90C();

    v38 = sub_1D725B92C();
    sub_1D5B58D88();
    v35 = sub_1D725BA8C();

    sub_1D69DEE44(v18, v21, 0);
    (*(v2 + 8))(v5, v1);
    (*(v30 + 8))(v41, v10);
    return v35;
  }

  sub_1D5E3E404(v9);
  v31 = sub_1D6C69918();
  v33 = v32;
  sub_1D6C6A11C();
  swift_allocError();
  *v34 = v31;
  v34[1] = v33;
  sub_1D5B54C54(0, &qword_1EC8938B8, sub_1D5B58D88, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v29 = sub_1D725BAFC();
LABEL_15:
  v35 = v29;
  sub_1D69DEE44(v18, v21, 0);
  return v35;
}

uint64_t sub_1D6C6A020@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D72620CC();
  result = sub_1D726209C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1D6C6A11C()
{
  result = qword_1EC894240;
  if (!qword_1EC894240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894240);
  }

  return result;
}

unint64_t sub_1D6C6A170()
{
  result = qword_1EC894248;
  if (!qword_1EC894248)
  {
    type metadata accessor for DebugFormatCodeYAMLLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894248);
  }

  return result;
}

uint64_t FormatStandingDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatStandingDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatStandingDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatStandingDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatStandingDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void *FormatStandingDataVisualization.__allocating_init(tagIdentifier:query:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  swift_beginAccess();
  v12[4] = a3;
  v12[5] = a4;
  swift_beginAccess();
  v12[6] = a5;
  swift_beginAccess();
  v12[7] = a6;
  return v12;
}

void *FormatStandingDataVisualization.init(tagIdentifier:query:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  swift_beginAccess();
  v6[4] = a3;
  v6[5] = a4;
  swift_beginAccess();
  v6[6] = a5;
  swift_beginAccess();
  v6[7] = a6;
  return v6;
}

uint64_t sub_1D6C6A5E0(uint64_t a1)
{
  v2 = sub_1D5E191B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C6A61C(uint64_t a1)
{
  v2 = sub_1D5E191B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStandingDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatStandingDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatStandingDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C6B084(0, &qword_1EC87F878, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E191B4();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  v12 = v3[4];
  v13 = v3[5];

  sub_1D5EAEE54(v12, v13, 1);

  swift_beginAccess();
  if (*(v3[6] + 16))
  {

    sub_1D5E06738(v14, v10, 2);
  }

  swift_beginAccess();
  v15 = v3[7];
  if (*(v15 + 16))
  {
    v17 = 3;
    v16[1] = v15;
    sub_1D6C6A9A8();
    sub_1D5E4C584();
    sub_1D5E4C5D4();

    sub_1D72647EC();
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6C6A9A8()
{
  result = qword_1EC87F888;
  if (!qword_1EC87F888)
  {
    sub_1D6C6B084(255, &qword_1EC87F878, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F888);
  }

  return result;
}