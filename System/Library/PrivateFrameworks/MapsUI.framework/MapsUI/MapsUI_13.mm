uint64_t sub_1C57716F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5698000(v8);
  sub_1C5699C90(a2);
  sub_1C57734FC(v8, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  v9 = [a1 title];
  v10 = sub_1C584F660();
  v12 = v11;

  sub_1C569A4B4(v10, v12);
  v13 = [a1 subtitle];
  v14 = sub_1C584F660();
  v16 = v15;

  sub_1C569A4CC(v14, v16);
  sub_1C569A4E4([a1 isRatingSuggestion]);
  sub_1C569A514([a1 isPhotoSuggestion]);
  v17 = [a1 userImage];
  v18 = sub_1C584F660();
  v20 = v19;

  sub_1C569A544(v18, v20);
  sub_1C569A55C([a1 canAddPhotos]);
  sub_1C569A58C([a1 hasNearbyPhotos]);
  sub_1C569A5BC([a1 canRate]);
  sub_1C569A5EC([a1 isPinned]);
  sub_1C569A61C([a1 hasVisited]);
  return sub_1C569A64C([a1 isNearbyLocation]);
}

uint64_t sub_1C57718F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710F0, &qword_1C58795A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v142 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v154 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v147 = &v142 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v153 = &v142 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v157 = &v142 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v148 = &v142 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v156 = &v142 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v142 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v158 = &v142 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v152 = &v142 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v146 = &v142 - v41;
  v144 = a2;
  sub_1C56993E8(a2);
  v143 = a1;
  v42 = [a1 postalAddresses];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710F8, &qword_1C58795B0);
  v43 = sub_1C584F770();

  if (v43 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v45 = 0;
    v150 = v43 & 0xFFFFFFFFFFFFFF8;
    v151 = v43 & 0xC000000000000001;
    v46 = MEMORY[0x1E69E7CC0];
    v145 = v9;
    v149 = i;
    while (1)
    {
      if (v151)
      {
        v47 = v43;
        v48 = MEMORY[0x1C694A320](v45, v43);
      }

      else
      {
        if (v45 >= *(v150 + 16))
        {
          goto LABEL_18;
        }

        v47 = v43;
        v48 = *(v43 + 8 * v45 + 32);
      }

      v43 = v48;
      v49 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      v159 = v48;
      sub_1C5772680(&v159, v8);

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1C5625230(v8, &qword_1EC1710F0, &qword_1C58795A8);
      }

      else
      {
        v50 = v146;
        sub_1C577355C(v8, v146, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        sub_1C577355C(v50, v152, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1C5772914(0, v46[2] + 1, 1, v46, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        }

        v52 = v46[2];
        v51 = v46[3];
        if (v52 >= v51 >> 1)
        {
          v46 = sub_1C5772914(v51 > 1, v52 + 1, 1, v46, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        }

        v46[2] = v52 + 1;
        sub_1C577355C(v152, v46 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v52, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        v9 = v145;
      }

      ++v45;
      v43 = v47;
      if (v49 == v149)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v53 = v144;
  v54 = *v144;

  *v53 = v46;
  v55 = [v143 phoneNumbers];
  v56 = sub_1C584F770();

  if (v56 >> 62)
  {
    goto LABEL_40;
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = v10; v57; j = v10)
  {
    v58 = 0;
    v151 = v56 & 0xFFFFFFFFFFFFFF8;
    v152 = v56 & 0xC000000000000001;
    v59 = MEMORY[0x1E69E7CC0];
    v150 = v57;
    while (1)
    {
      if (v152)
      {
        v60 = MEMORY[0x1C694A320](v58, v56);
      }

      else
      {
        if (v58 >= *(v151 + 16))
        {
          goto LABEL_39;
        }

        v60 = *(v56 + 8 * v58 + 32);
      }

      v61 = v60;
      v62 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v63 = v56;
      sub_1C5699964(v33);
      v64 = [v61 label];
      if (v64)
      {
        v65 = v64;
        v66 = sub_1C584F660();
        v68 = v67;
      }

      else
      {
        v66 = 0;
        v68 = 0xE000000000000000;
      }

      sub_1C569991C(v66, v68);
      v69 = [objc_allocWithZone(MUContactLabeledValue) initWithContactLabeledValue:v61 type:1];
      v70 = [v69 valueString];
      v71 = sub_1C584F660();
      v73 = v72;

      sub_1C5699934(v71, v73);
      v74 = [v61 identifier];
      v75 = sub_1C584F660();
      v77 = v76;

      sub_1C569994C(v75, v77);
      sub_1C577355C(v33, v158, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1C5772914(0, v59[2] + 1, 1, v59, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v56 = v63;
      v78 = v150;
      v80 = v59[2];
      v79 = v59[3];
      v10 = j;
      if (v80 >= v79 >> 1)
      {
        v59 = sub_1C5772914(v79 > 1, v80 + 1, 1, v59, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v59[2] = v80 + 1;
      sub_1C577355C(v158, v59 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v80, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      ++v58;
      if (v62 == v78)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v57 = sub_1C584FB90();
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v81 = v144;
  v82 = v144[1];

  v81[1] = v59;
  v83 = [v143 emailAddresses];
  v84 = sub_1C584F770();

  if (v84 >> 62)
  {
    goto LABEL_61;
  }

  for (k = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_1C584FB90())
  {
    v86 = 0;
    v158 = v84 & 0xC000000000000001;
    v152 = v84 & 0xFFFFFFFFFFFFFF8;
    v87 = MEMORY[0x1E69E7CC0];
    v151 = k;
    while (1)
    {
      if (v158)
      {
        v88 = MEMORY[0x1C694A320](v86, v84);
      }

      else
      {
        if (v86 >= *(v152 + 16))
        {
          goto LABEL_60;
        }

        v88 = *(v84 + 8 * v86 + 32);
      }

      v89 = v88;
      v90 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      sub_1C5699964(v157);
      v91 = [v89 label];
      if (v91)
      {
        v92 = v91;
        v93 = sub_1C584F660();
        v95 = v94;
      }

      else
      {
        v93 = 0;
        v95 = 0xE000000000000000;
      }

      v96 = v157;
      sub_1C569991C(v93, v95);
      v97 = [v89 value];
      v98 = sub_1C584F660();
      v100 = v99;

      sub_1C5699934(v98, v100);
      v101 = [v89 identifier];
      v102 = sub_1C584F660();
      v104 = v103;

      sub_1C569994C(v102, v104);
      v105 = v148;
      sub_1C577355C(v96, v148, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      sub_1C577355C(v105, v156, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1C5772914(0, v87[2] + 1, 1, v87, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v106 = v151;
      v108 = v87[2];
      v107 = v87[3];
      if (v108 >= v107 >> 1)
      {
        v87 = sub_1C5772914(v107 > 1, v108 + 1, 1, v87, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v87[2] = v108 + 1;
      sub_1C577355C(v156, v87 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v108, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      ++v86;
      if (v90 == v106)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v87 = MEMORY[0x1E69E7CC0];
LABEL_63:

  v109 = v144;
  v110 = v144[2];

  v109[2] = v87;
  v111 = [v143 urlAddresses];
  v112 = sub_1C584F770();

  if (v112 >> 62)
  {
    goto LABEL_83;
  }

  for (m = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_1C584FB90())
  {
    v114 = 0;
    v157 = v112 & 0xFFFFFFFFFFFFFF8;
    v158 = v112 & 0xC000000000000001;
    v115 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v158)
      {
        v116 = MEMORY[0x1C694A320](v114, v112);
      }

      else
      {
        if (v114 >= *(v157 + 16))
        {
          goto LABEL_82;
        }

        v116 = *(v112 + 8 * v114 + 32);
      }

      v117 = v116;
      v118 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      v119 = v112;
      v120 = m;
      sub_1C5699964(v154);
      v121 = [v117 label];
      if (v121)
      {
        v122 = v121;
        v123 = sub_1C584F660();
        v125 = v124;
      }

      else
      {
        v123 = 0;
        v125 = 0xE000000000000000;
      }

      v126 = v154;
      sub_1C569991C(v123, v125);
      v127 = [v117 value];
      v128 = sub_1C584F660();
      v130 = v129;

      sub_1C5699934(v128, v130);
      v131 = [v117 identifier];
      v132 = sub_1C584F660();
      v134 = v133;

      sub_1C569994C(v132, v134);
      v135 = v147;
      sub_1C577355C(v126, v147, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      sub_1C577355C(v135, v153, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1C5772914(0, v115[2] + 1, 1, v115, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v137 = v115[2];
      v136 = v115[3];
      if (v137 >= v136 >> 1)
      {
        v115 = sub_1C5772914(v136 > 1, v137 + 1, 1, v115, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v115[2] = v137 + 1;
      sub_1C577355C(v153, v115 + ((*(j + 80) + 32) & ~*(j + 80)) + *(j + 72) * v137, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      ++v114;
      m = v120;
      v138 = v118 == v120;
      v112 = v119;
      if (v138)
      {
        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v115 = MEMORY[0x1E69E7CC0];
LABEL_85:

  v139 = v144;
  v140 = v144[3];

  v139[3] = v115;
  return result;
}

uint64_t sub_1C5772680@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1C5699964(v9);
  v11 = [v10 label];
  if (v11)
  {
    v12 = v11;
    sub_1C584F660();
  }

  v13 = objc_opt_self();
  v14 = sub_1C584F630();

  v15 = [v13 localizedStringForLabel_];

  v16 = sub_1C584F660();
  v18 = v17;

  v33[0] = v16;
  v33[1] = v18;
  sub_1C566339C();
  v19 = sub_1C584FB20();
  v21 = v20;

  sub_1C569991C(v19, v21);
  v22 = objc_opt_self();
  v23 = [v10 value];
  v24 = [v22 stringFromPostalAddress:v23 style:0];

  v25 = sub_1C584F660();
  v27 = v26;

  sub_1C5699934(v25, v27);
  v28 = [v10 identifier];
  v29 = sub_1C584F660();
  v31 = v30;

  sub_1C569994C(v29, v31);
  sub_1C577355C(v9, a2, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

size_t sub_1C5772914(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_1C5772AF0(unint64_t a1)
{
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, a1);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5, v8);
  v12 = &v34 - v11;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (v13 >= 1)
    {
      v14 = 0;
      v35 = v10 & 0xC000000000000001;
      v15 = MEMORY[0x1E69E7CC0];
      v34 = v10;
      while (1)
      {
        v16 = v35 ? MEMORY[0x1C694A320](v14) : *(v10 + 8 * v14 + 32);
        v17 = v16;
        sub_1C569A400(v12);
        v18 = [v17 title];
        v19 = sub_1C584F660();
        v21 = v20;

        sub_1C569A380(v19, v21);
        v22 = [v17 guideID];
        v23 = sub_1C584F660();
        v25 = v24;

        sub_1C569A398(v23, v25);
        v26 = [v17 image];
        v27 = sub_1C584F660();
        v29 = v28;

        sub_1C569A3B0(v27, v29);
        v30 = [v17 numberOfPlaces];
        if ((v30 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v30))
        {
          goto LABEL_17;
        }

        sub_1C569A3C8(v30);
        sub_1C5773494(v12, v7, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1C5772914(0, v15[2] + 1, 1, v15, &qword_1EC1710D8, &qword_1C5879588, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        }

        v32 = v15[2];
        v31 = v15[3];
        if (v32 >= v31 >> 1)
        {
          v15 = sub_1C5772914(v31 > 1, v32 + 1, 1, v15, &qword_1EC1710D8, &qword_1C5879588, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        }

        ++v14;

        sub_1C57734FC(v12, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        v15[2] = v32 + 1;
        sub_1C577355C(v7, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        v10 = v34;
        if (v13 == v14)
        {
          return v15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v33 = v10;
      result = sub_1C584FB90();
      v10 = v33;
      v13 = result;
      if (!result)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1C5772E5C()
{
  result = qword_1EC16D030;
  if (!qword_1EC16D030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D030);
  }

  return result;
}

uint64_t sub_1C5772EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_6MapsUI14MUOfflineStateVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1C5772F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
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

uint64_t sub_1C5772F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
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

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1C5773014()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0 - 8, v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v27 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - v16;
  if (GEOConfigGetBOOL())
  {
    sub_1C569C458(v17);
    sub_1C569C410(0xD000000000000010, 0x80000001C589C450);
    sub_1C569C428(0x61702E746867696CLL, 0xEB000000006C656ELL);
    sub_1C569C440(0xD000000000000014, 0x80000001C5897990);
    sub_1C5773494(v17, v14, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v18 = sub_1C5772914(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1C5772914(v19 > 1, v20 + 1, 1, v18, &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    }

    sub_1C57734FC(v17, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v18[2] = v20 + 1;
    sub_1C577355C(v14, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v20, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v21 = [objc_opt_self() standardUserDefaults];
  v22 = sub_1C584F630();
  v23 = [v21 BOOLForKey_];

  if (v23)
  {
    sub_1C569C458(v10);
    sub_1C569C410(0xD000000000000011, 0x80000001C589C430);
    sub_1C569C428(0x6E6F697461636F6CLL, 0xED00006C6C69662ELL);
    sub_1C569C440(0xD000000000000018, 0x80000001C58979B0);
    sub_1C5773494(v10, v6, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1C5772914(0, v18[2] + 1, 1, v18, &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    }

    v25 = v18[2];
    v24 = v18[3];
    if (v25 >= v24 >> 1)
    {
      v18 = sub_1C5772914(v24 > 1, v25 + 1, 1, v18, &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    }

    sub_1C57734FC(v10, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v18[2] = v25 + 1;
    sub_1C577355C(v6, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v25, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
  }

  return v18;
}

uint64_t sub_1C5773494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C57734FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C577355C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HikingTipViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUHikingTipViewModel_title);
  v2 = *(v0 + OBJC_IVAR___MUHikingTipViewModel_title + 8);

  return v1;
}

id sub_1C5773618(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_1C584F630();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t HikingTipViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUHikingTipViewModel_subtitle);
  v2 = *(v0 + OBJC_IVAR___MUHikingTipViewModel_subtitle + 8);

  return v1;
}

id sub_1C57736C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, id a8, char a9)
{
  v10 = v9;
  v19 = objc_allocWithZone(v10);
  v20 = v19;
  *&v19[OBJC_IVAR___MUHikingTipViewModel_mapIdentifier] = a1;
  v21 = &v19[OBJC_IVAR___MUHikingTipViewModel_title];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v19[OBJC_IVAR___MUHikingTipViewModel_subtitle];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &v19[OBJC_IVAR___MUHikingTipViewModel_actionText];
  *v23 = a6;
  *(v23 + 1) = a7;
  if (a8)
  {
    v24 = a1;
    a8 = a8;
    *&v20[OBJC_IVAR___MUHikingTipViewModel_image] = sub_1C584F560();
  }

  else
  {
    *&v19[OBJC_IVAR___MUHikingTipViewModel_image] = 0;
    v25 = a1;
  }

  v20[OBJC_IVAR___MUHikingTipViewModel_usesOriginMapItem] = a9 & 1;
  v28.receiver = v20;
  v28.super_class = v10;
  v26 = objc_msgSendSuper2(&v28, sel_init);

  return v26;
}

id HikingTipViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HikingTipViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5773944@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1C584F3C0();
  *a1 = result;
  return result;
}

uint64_t WatchPlaceAddressViewModel.titleText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

MapsUI::WatchPlaceAddressViewModel_optional __swiftcall WatchPlaceAddressViewModel.init(mapItem:)(MKMapItem mapItem)
{
  v3 = v1;
  v4 = [(objc_class *)mapItem.super.isa _addressFormattedAsMultilineAddress];
  if (!v4)
  {

LABEL_8:
    *v3 = 0;
    v3[1] = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_1C584F660();
  v8 = v7;

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    goto LABEL_8;
  }

  *v3 = v6;
  v3[1] = v8;
LABEL_9:
  result.value.titleText._object = v10;
  result.value.titleText._countAndFlagsBits = v9;
  result.is_nil = v11;
  return result;
}

id sub_1C5773AD4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_1C5774758(a1, a2, a3, a4, a5, a6);

  return v14;
}

uint64_t sub_1C5773BDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = Strong + OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v5 = sub_1C5694BCC();
    v7 = v6;
    swift_endAccess();
    (*(v3 + 8))(v5, v7, 0, 0xE000000000000000, 1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  v8 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_menuButton;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C564898C(sub_1C5774B64, v10, sub_1C5774B68, v11, GEOLocationCoordinate2DMake, 0, GEOLocationCoordinate2DMake, 0, &v14);
  v12 = sub_1C5646814(v9, 0, 0xE000000000000000, 0, 0, -1);

  return v12;
}

id sub_1C5773E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C5774678;
  v16 = &block_descriptor_11;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C57746C8;
  v16 = &block_descriptor_8_0;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1C5632FA8(a4);
  sub_1C5632FA8(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void sub_1C5774068()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v5 = sub_1C5694BCC();
      v7 = v6;
      swift_endAccess();
      v8 = sub_1C56952EC();
      (*(v3 + 8))(v5, v7, v8, v9, 1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1C57741A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C584F2C0();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v44, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_1C56954CC(v18);
    v21 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_mapItem;
    swift_beginAccess();
    v22 = *&v20[v21];
    v23 = v22;
    sub_1C5774F00(v22);
    v25 = v24;

    sub_1C5774AF0(v18, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    if (v25)
    {
      type metadata accessor for MUPlaceActionFeedbackEnvironment();
      v26 = a2;
      v27 = sub_1C56433CC(a2);
      v28 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_actionDispatcher;
      swift_beginAccess();
      v29 = *&v20[v28];
      MUPlaceActionDispatcher.performAction(for:environment:completion:)(v25, v27, 0, 0);
    }

    else
    {
      v30 = sub_1C5716150();
      v31 = v9;
      v32 = *(v9 + 16);
      v33 = v44;
      v32(v13, v30, v44);
      sub_1C5774A88(a1, v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      v34 = sub_1C584F2A0();
      v35 = sub_1C584F9B0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45 = v37;
        *v36 = 136315138;
        v38 = sub_1C56953AC();
        v43 = v31;
        v40 = v39;
        sub_1C5774AF0(v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v41 = sub_1C5649518(v38, v40, &v45);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1C5620000, v34, v35, "Failed to create dispatch action from menu item: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1C694B7A0](v37, -1, -1);
        MEMORY[0x1C694B7A0](v36, -1, -1);

        (*(v43 + 8))(v13, v33);
      }

      else
      {

        sub_1C5774AF0(v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        (*(v31 + 8))(v13, v33);
      }
    }
  }
}

uint64_t sub_1C577463C()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 32);
  do
  {
    v5 = *v4++;
    result |= qword_1C5879760[v5];
    --v2;
  }

  while (v2);
  return result;
}

id sub_1C5774678(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_1C57746C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
  v3 = sub_1C584F770();

  v4 = v2(v3);

  return v4;
}

id sub_1C5774758(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_mapItem] = 0;
  sub_1C5774A88(a1, &v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_menuButton], type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
  *&v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_actionDispatcher] = a2;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a3, a4, a5, a6);
  [v15 setContextMenuInteractionEnabled_];
  [v15 setShowsMenuAsPrimaryAction_];
  [v15 setIsAccessibilityElement_];
  [v15 setAccessibilityTraits_];
  v16 = sub_1C584F630();
  [v15 setAccessibilityLabel_];

  v17 = v15;
  v18 = sub_1C584F630();
  [v17 setAccessibilityIdentifier_];

  v19 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  sub_1C5774AF0(a1, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
  return v17;
}

uint64_t type metadata accessor for MUWebUIMenu()
{
  result = qword_1EC17AEE0;
  if (!qword_1EC17AEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C57749D8()
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(319);
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

uint64_t sub_1C5774A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5774AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1C5774B6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  result = [v0 setZeroPadsFractionDigits_];
  qword_1EC190488 = v0;
  return result;
}

uint64_t sub_1C5774BBC@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C5698B54(a3);
  if (a1 < 6)
  {
    sub_1C569C688(a1);
    sub_1C569C65C();
    sub_1C56F62E8();
    sub_1C584F730();
    sub_1C584F730();
    if (v18 == v17)
    {
      return sub_1C569C574(100.0);
    }

    if (a2)
    {
      [a2 fractionCompleted];
      *&v6 = v6;
      sub_1C569C574(*&v6);
      sub_1C569C5EC([a2 completedUnitCount]);
      sub_1C569C624([a2 totalUnitCount]);
      v7 = a2;
      v8 = [v7 byteCompletedCount];
      if (v8)
      {
        if (qword_1EC18EF80 != -1)
        {
          v16 = v8;
          swift_once();
          v8 = v16;
        }

        v9 = v8;
        v10 = [qword_1EC190488 stringFromByteCount_];
        v11 = sub_1C584F660();
        v13 = v12;

        v14 = v13;
        v15 = v11;
        return sub_1C569C6B8(v15, v14);
      }
    }

    else
    {
      sub_1C569C574(0.0);
      sub_1C569C5EC(0.0);
      sub_1C569C624(0.0);
    }

    v15 = 0;
    v14 = 0xE000000000000000;
    return sub_1C569C6B8(v15, v14);
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5774DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5774E50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for MUOfflineMapDownloadState()
{
  if (!qword_1EC171140)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC171140);
    }
  }
}

void sub_1C5774F00(void *a1)
{
  v322 = a1;
  v2 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v324 = &v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v320 = &v289 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v321 = &v289 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v318 = &v289 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v319 = &v289 - v19;
  v20 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v314 = (&v289 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v317 = (&v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v316 = (&v289 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v313 = (&v289 - v34);
  MEMORY[0x1EEE9AC00](v33, v35);
  v311 = (&v289 - v36);
  v37 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v37 - 8, v39);
  v310 = &v289 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v307 = &v289 - v43;
  v44 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
  v45 = *(*(v44 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v44 - 8, v46);
  v309 = &v289 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v306 = &v289 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v304 = &v289 - v53;
  v54 = type metadata accessor for MULocation(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8, v56);
  v315 = &v289 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v59 = *(*(v58 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v58 - 8, v60);
  v312 = &v289 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v61, v63);
  v308 = &v289 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64, v66);
  v305 = &v289 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67, v69);
  v303 = &v289 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v302 = &v289 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73, v75);
  v301 = &v289 - v77;
  MEMORY[0x1EEE9AC00](v76, v78);
  v300 = &v289 - v79;
  v80 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80 - 8, v82);
  v299 = &v289 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v85 = *(*(v84 - 8) + 64);
  v87 = MEMORY[0x1EEE9AC00](v84 - 8, v86);
  v298 = &v289 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v89);
  v297 = &v289 - v90;
  v91 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91 - 8, v93);
  v296 = &v289 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
  v96 = *(*(v95 - 8) + 64);
  v98 = MEMORY[0x1EEE9AC00](v95 - 8, v97);
  v290 = (&v289 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v98, v100);
  v289 = (&v289 - v101);
  v102 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v103 = *(*(v102 - 8) + 64);
  v105 = MEMORY[0x1EEE9AC00](v102 - 8, v104);
  v295 = &v289 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105, v107);
  v294 = &v289 - v108;
  v109 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109 - 8, v111);
  v293 = &v289 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  v114 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113 - 8, v115);
  v323 = &v289 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v118 = *(*(v117 - 8) + 64);
  v120 = MEMORY[0x1EEE9AC00](v117 - 8, v119);
  v292 = (&v289 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = MEMORY[0x1EEE9AC00](v120, v122);
  v291 = (&v289 - v124);
  MEMORY[0x1EEE9AC00](v123, v125);
  v127 = (&v289 - v126);
  v128 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
  v129 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128 - 8, v130);
  v132 = &v289 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133 - 8, v135);
  v137 = &v289 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v139 = *(*(v138 - 8) + 64);
  v141 = MEMORY[0x1EEE9AC00](v138 - 8, v140);
  v143 = &v289 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v141, v144);
  v146 = &v289 - v145;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FEF0, &qword_1C586B090);
  v148 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147 - 8, v149);
  v151 = &v289 - v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  v153 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152 - 8, v154);
  v156 = &v289 - v155;
  v157 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
  v158 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157 - 8, v159);
  v161 = &v289 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  v163 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162 - 8, v164);
  v166 = &v289 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = v1;
  switch(sub_1C56921A8())
  {
    case 1u:
      type metadata accessor for MUPlaceActionDispatcher.OpenUserGuideAction();
      sub_1C5692380(v161);
      v167 = sub_1C5695A4C();
      v169 = v168;
      sub_1C5776894(v161, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
      sub_1C5709C3C(v167, v169);
      break;
    case 2u:
      type metadata accessor for MUPlaceActionDispatcher.ExploreGuidesAction();
      v254 = v296;
      sub_1C56921FC(v296);
      v255 = sub_1C5695A34();
      v257 = v256;
      sub_1C5776894(v254, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
      sub_1C5708830(v255, v257);
      break;
    case 3u:
      type metadata accessor for MUPlaceActionDispatcher.TappedARPRatingAction();
      sub_1C5692504(v146);
      v234 = sub_1C5695A7C();
      v236 = v235;
      sub_1C5776894(v146, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
      sub_1C5692504(v143);
      v237 = sub_1C5695A94();
      sub_1C5776894(v143, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
      sub_1C5708000(v234, v236, v237);
      break;
    case 5u:
      type metadata accessor for MUPlaceActionDispatcher.RAPsInReviewAction();
      MUPlaceActionDispatcher.RAPsInReviewAction.__allocating_init()();
      break;
    case 6u:
      v253 = qword_1C58797E0[sub_1C5693A40()];
      type metadata accessor for MUPlaceActionDispatcher.ReportAnIssueAction();
      sub_1C57072B0(v253);
      break;
    case 7u:
      type metadata accessor for MUPlaceActionDispatcher.ShareAction();
      MUPlaceActionDispatcher.ShareAction.__allocating_init()();
      break;
    case 8u:
      type metadata accessor for MUPlaceActionDispatcher.CallAction();
      MUPlaceActionDispatcher.CallAction.__allocating_init()();
      break;
    case 9u:
      type metadata accessor for MUPlaceActionDispatcher.MessageAction();
      MUPlaceActionDispatcher.MessageAction.__allocating_init()();
      break;
    case 0xAu:
      type metadata accessor for MUPlaceActionDispatcher.WebsiteAction();
      MUPlaceActionDispatcher.WebsiteAction.__allocating_init()();
      break;
    case 0xBu:
      type metadata accessor for MUPlaceActionDispatcher.ActionGroupAction();
      MUPlaceActionDispatcher.ActionGroupAction.__allocating_init()();
      break;
    case 0xCu:
      type metadata accessor for MUPlaceActionDispatcher.DirectionsAction(0);
      sub_1C5693BDC(v156);
      v229 = type metadata accessor for MUContactLabeledValue(0);
      (*(*(v229 - 8) + 56))(v156, 0, 1, v229);
      sub_1C5707364(v156);
      break;
    case 0xDu:
      type metadata accessor for MUPlaceActionDispatcher.FlyoverAction();
      MUPlaceActionDispatcher.FlyoverAction.__allocating_init()();
      break;
    case 0xEu:
      type metadata accessor for MUPlaceActionDispatcher.OfflineDownloadAction();
      v240 = sub_1C5693A20();
      sub_1C5707524(v240);
      break;
    case 0xFu:
      type metadata accessor for MUPlaceActionDispatcher.AddPhotosAction();
      sub_1C5694704(v151);
      v221 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
      (*(*(v221 - 8) + 56))(v151, 0, 1, v221);
      sub_1C570759C(v151);
      break;
    case 0x10u:
      type metadata accessor for MUPlaceActionDispatcher.AddToFavoritesAction();
      MUPlaceActionDispatcher.AddToFavoritesAction.__allocating_init()();
      break;
    case 0x11u:
      type metadata accessor for MUPlaceActionDispatcher.AddToGuidesAction();
      v274 = sub_1C56940EC();
      sub_1C5693F68(v166);
      v275 = sub_1C569682C();
      sub_1C5776894(v166, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
      sub_1C57071DC(v274, v275 & 1);
      break;
    case 0x12u:
      type metadata accessor for MUPlaceActionDispatcher.TappedPhotoAction();
      v278 = v323;
      sub_1C5692868(v323);
      v279 = sub_1C5695E78();
      sub_1C5776894(v278, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
      sub_1C5707EF8(v279);
      break;
    case 0x13u:
      type metadata accessor for MUPlaceActionDispatcher.TappedAlbumAction();
      v276 = v323;
      sub_1C5692868(v323);
      v277 = sub_1C5695E90();
      sub_1C5776894(v276, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
      sub_1C5707F70(v277);
      break;
    case 0x14u:
      type metadata accessor for MUPlaceActionDispatcher.MorePlacesAction();
      sub_1C5692A10(v127);
      v208 = sub_1C5695FC8();
      v210 = v209;
      sub_1C5776894(v127, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
      v211 = v291;
      sub_1C5692A10(v291);
      v212 = *v211;

      sub_1C5776894(v211, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
      v213 = v292;
      sub_1C5692A10(v292);
      sub_1C5695FE0();
      sub_1C5776894(v213, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
      sub_1C5707AE0(v208, v210, v212);
      break;
    case 0x15u:
      type metadata accessor for MUPlaceActionDispatcher.TappedPhotoAction();
      sub_1C5707EF8(0.0);
      break;
    case 0x16u:
      type metadata accessor for MUPlaceActionDispatcher.TappedGuideAction();
      v281 = v293;
      sub_1C5692BB0(v293);
      v282 = sub_1C5695A64();
      v284 = v283;
      sub_1C5776894(v281, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
      sub_1C570810C(v282, v284);
      break;
    case 0x17u:
      type metadata accessor for MUPlaceActionDispatcher.TappedPlaceAction();
      sub_1C5692D34(v132);
      v218 = sub_1C5695FF8();
      v220 = v219;
      sub_1C5776894(v132, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
      sub_1C5707A08(v218, v220);
      break;
    case 0x18u:
      sub_1C569269C(v137);
      v238 = sub_1C5695AEC();
      sub_1C5776894(v137, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
      v239 = qword_1C58797E0[v238];
      type metadata accessor for MUPlaceActionDispatcher.InlineRapEntryAction();
      sub_1C5707938(v239);
      break;
    case 0x19u:
      type metadata accessor for MUPlaceActionDispatcher.TappedURLAction(0);
      v222 = v294;
      sub_1C5692EB8(v294);
      v223 = sub_1C5696010();
      v225 = v224;
      sub_1C5776894(v222, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
      v226 = v295;
      sub_1C5692EB8(v295);
      v227 = sub_1C5696028();
      sub_1C5776894(v226, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
      sub_1C57082D4(v223, v225, v227 & 1);
      break;
    case 0x1Au:
      v262 = v322;
      if (v322)
      {
        type metadata accessor for MUPlaceActionDispatcher.TappedAttributionURLAction();
        v263 = v262;
        v264 = v289;
        sub_1C5693048(v289);
        v265 = *v264;

        sub_1C5776894(v264, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
        v266 = v290;
        sub_1C5693048(v290);
        v267 = sub_1C5696050();
        v269 = v268;
        sub_1C5776894(v266, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
        sub_1C5708688(v265, v267, v269, v263);
      }

      break;
    case 0x1Bu:
      type metadata accessor for MUPlaceActionDispatcher.TappedYourPhotosAction();
      MUPlaceActionDispatcher.TappedYourPhotosAction.__allocating_init()();
      break;
    case 0x1Cu:
      type metadata accessor for MUPlaceActionDispatcher.ContactsAction();
      MUPlaceActionDispatcher.ContactsAction.__allocating_init()();
      break;
    case 0x1Du:
      type metadata accessor for MUPlaceActionDispatcher.OpenFindMyAction();
      MUPlaceActionDispatcher.OpenFindMyAction.__allocating_init()();
      break;
    case 0x1Eu:
      type metadata accessor for MUPlaceActionDispatcher.LocationAction();
      MUPlaceActionDispatcher.LocationAction.__allocating_init()();
      break;
    case 0x1Fu:
      type metadata accessor for MUPlaceActionDispatcher.CloseAction();
      MUPlaceActionDispatcher.CloseAction.__allocating_init()();
      break;
    case 0x20u:
      type metadata accessor for MUPlaceActionDispatcher.RemoveFromFavoritesAction();
      MUPlaceActionDispatcher.RemoveFromFavoritesAction.__allocating_init()();
      break;
    case 0x21u:
      type metadata accessor for MUPlaceActionDispatcher.TappedLibraryAction();
      v230 = v297;
      sub_1C56931DC(v297);
      v231 = sub_1C5696068();
      sub_1C5776894(v230, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
      v232 = v298;
      sub_1C56931DC(v298);
      v233 = sub_1C5696094();
      sub_1C5776894(v232, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
      sub_1C57088F0(v231, v233 & 1);
      break;
    case 0x22u:
      type metadata accessor for MUPlaceActionDispatcher.TappedNoteAction();
      MUPlaceActionDispatcher.TappedNoteAction.__allocating_init()();
      break;
    case 0x23u:
      type metadata accessor for MUPlaceActionDispatcher.BrowseCategoryAction();
      v214 = v299;
      sub_1C569336C(v299);
      v215 = sub_1C56960BC();
      v217 = v216;
      sub_1C5776894(v214, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
      sub_1C57089D0(v215, v217);
      break;
    case 0x24u:
      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromLibraryAction();
      MUPlaceActionDispatcher.AddPhotoFromLibraryAction.__allocating_init()();
      break;
    case 0x25u:
      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromCameraAction();
      MUPlaceActionDispatcher.AddPhotoFromCameraAction.__allocating_init()();
      break;
    case 0x26u:
      v324 = type metadata accessor for MUPlaceActionDispatcher.TappedTransitDepartureAction();
      v188 = v300;
      sub_1C56934F0(v300);
      LODWORD(v323) = sub_1C56960D4();
      sub_1C5776894(v188, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v189 = v301;
      sub_1C56934F0(v301);
      v190 = sub_1C56960FC();
      v321 = v191;
      v322 = v190;
      sub_1C5776894(v189, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v192 = v302;
      sub_1C56934F0(v302);
      v193 = sub_1C5696114();
      v319 = v194;
      v320 = v193;
      sub_1C5776894(v192, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v195 = v303;
      sub_1C56934F0(v303);
      v196 = sub_1C569612C();
      v198 = v197;
      sub_1C5776894(v195, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v199 = v305;
      sub_1C56934F0(v305);
      LODWORD(v195) = sub_1C56961EC();
      v201 = v200;
      sub_1C5776894(v199, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v202 = v308;
      sub_1C56934F0(v308);
      v203 = sub_1C56962AC();
      v205 = v204;
      sub_1C5776894(v202, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v206 = v312;
      sub_1C56934F0(v312);
      v207 = v315;
      sub_1C56962C4(v315);
      sub_1C5776894(v206, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      sub_1C5708BDC(v323 & 1, v322, v321, v320, v319, v196, v198, v195, v201, v203, v205, v207);
      break;
    case 0x27u:
      type metadata accessor for MUPlaceActionDispatcher.CreateCustomRouteAction();
      MUPlaceActionDispatcher.CreateCustomRouteAction.__allocating_init()();
      break;
    case 0x28u:
      type metadata accessor for MUPlaceActionDispatcher.OpenAppClipAction();
      v185 = v304;
      sub_1C56936F4(v304);
      sub_1C56966BC();
      sub_1C5776894(v185, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
      v186 = v306;
      sub_1C56936F4(v306);
      sub_1C56966D4();
      sub_1C5776894(v186, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
      v187 = v309;
      sub_1C56936F4(v309);
      sub_1C56966EC();
      sub_1C5776894(v187, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
      sub_1C5709000();
      break;
    case 0x29u:
      type metadata accessor for MUPlaceActionDispatcher.OpenExtensionAction();
      v179 = v307;
      sub_1C5693890(v307);
      v180 = sub_1C5696704();
      v182 = v181;
      sub_1C5776894(v179, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
      v183 = v310;
      sub_1C5693890(v310);
      v184 = sub_1C569671C();
      sub_1C5776894(v183, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
      sub_1C5709214(v180, v182, v184 & 1);
      break;
    case 0x2Au:
      type metadata accessor for MUPlaceActionDispatcher.MarkedLocationAction();
      v228 = sub_1C5693B58();
      sub_1C5709324(v228);
      break;
    case 0x2Bu:
      type metadata accessor for MUPlaceActionDispatcher.ShowAllCollectionsAction();
      v241 = v311;
      sub_1C5693DD0(v311);
      v242 = sub_1C5696814();
      v244 = v243;
      sub_1C5776894(v241, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      v245 = v313;
      sub_1C5693DD0(v313);
      v246 = *v245;

      sub_1C5776894(v245, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      v247 = v316;
      sub_1C5693DD0(v316);
      v248 = v247[1];

      sub_1C5776894(v247, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      v249 = v317;
      sub_1C5693DD0(v317);
      v250 = v249[2];

      sub_1C5776894(v249, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      sub_1C570940C(v242, v244, v246, v248, v250);
      break;
    case 0x2Cu:
      type metadata accessor for MUPlaceActionDispatcher.TappedTransitIncidentAction();
      v280 = v314;
      sub_1C569420C(v314);
      sub_1C5708E54(v280);
      break;
    case 0x2Du:
      type metadata accessor for MUPlaceActionDispatcher.PublisherGuideAction();
      v170 = v319;
      sub_1C56943DC(v319);
      v171 = v318;
      sub_1C56943DC(v318);
      v172 = sub_1C5696498();
      v174 = v173;
      sub_1C5776894(v171, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
      v175 = v321;
      sub_1C56943DC(v321);
      v176 = sub_1C5696480();
      v178 = v177;
      sub_1C5776894(v175, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
      sub_1C5709CDC(v170, v172, v174, v176, v178);
      break;
    case 0x2Eu:
      type metadata accessor for MUPlaceActionDispatcher.SaveToContactAction();
      MUPlaceActionDispatcher.SaveToContactAction.__allocating_init()();
      break;
    case 0x2Fu:
      type metadata accessor for MUPlaceActionDispatcher.OpenPhotoViewerAction();
      v251 = v320;
      sub_1C5694578(v320);
      v252 = sub_1C569650C();
      sub_1C5776894(v251, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
      sub_1C570A15C(v252);
      break;
    case 0x30u:
      type metadata accessor for MUPlaceActionDispatcher.CopyCoordinatesAction();
      v270 = v324;
      sub_1C56948C0(v324);
      v271 = sub_1C56967FC();
      v273 = v272;
      sub_1C5776894(v270, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
      sub_1C570A22C(v271, v273);
      break;
    case 0x31u:
      type metadata accessor for MUPlaceActionDispatcher.CopyLinkAction();
      v285 = v324;
      sub_1C56948C0(v324);
      v286 = sub_1C56967FC();
      v288 = v287;
      sub_1C5776894(v285, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
      sub_1C570A2CC(v286, v288);
      break;
    case 0x32u:
      type metadata accessor for MUPlaceActionDispatcher.CopyAddressAction();
      v258 = v324;
      sub_1C56948C0(v324);
      v259 = sub_1C56967FC();
      v261 = v260;
      sub_1C5776894(v258, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
      sub_1C570A36C(v259, v261);
      break;
    case 0x35u:
      type metadata accessor for MUPlaceActionDispatcher.TappedSimulateLocationAction();
      MUPlaceActionDispatcher.TappedSimulateLocationAction.__allocating_init()();
      break;
    default:
      return;
  }
}

uint64_t sub_1C5776894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1C5776938(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_viewModel] = a1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  swift_unknownObjectRetain();
  v5 = [v4 initWithFrame_];
  v6 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel;
  *&v2[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel] = v5;
  v7 = objc_opt_self();
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = v5;
  v10 = [v7 preferredFontForTextStyle_];
  [v9 setFont_];

  [*&v2[v6] setNumberOfLines_];
  [*&v2[v6] setAdjustsFontForContentSizeCategory_];
  v11 = *&v2[v6];
  v12 = sub_1C584F630();
  [v11 setAccessibilityIdentifier_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696F3F8]) init];
  v14 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel;
  *&v2[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel] = v13;
  [v13 setTextAlignment_];
  [*&v2[v14] setNumberOfLines_];
  v15 = *MEMORY[0x1E69DDD00];
  v16 = *&v2[v14];
  v17 = [v7 preferredFontForTextStyle_];
  [v16 setFont_];

  v18 = *&v2[v14];
  v19 = sub_1C584F630();
  [v18 setAccessibilityIdentifier_];

  v20 = [objc_opt_self() defaultPlatterView];
  v21 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterView;
  *&v2[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterView] = v20;
  v22 = v20;
  v23 = [v7 preferredFontForTextStyle_];
  [v22 setGlyphFont_];

  v24 = *&v2[v21];
  v25 = sub_1C584F630();
  [v24 setGlyph_];

  v26 = *&v2[v21];
  v27 = sub_1C584F630();
  [v26 setAccessibilityIdentifier_];

  v69.receiver = v2;
  v69.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v69, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = sub_1C584F630();
  [v28 setAccessibilityIdentifier_];

  [v28 _mapsui_resetLayoutMargins];
  [v28 setDirectionalLayoutMargins_];
  v30 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel];
  [v28 addSubview_];
  v31 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel];
  [v28 addSubview_];
  v32 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterView];
  [v28 addSubview_];
  type metadata accessor for SizeLayout();
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 preferredFontForTextStyle_];
  [v35 _mapkit_scaledValueForValue_];
  v37 = v36;

  v38 = SizeLayout.__allocating_init(item:size:)(v34, v37, v37);
  v39 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout];
  *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout] = v38;
  v40 = v38;

  sub_1C575D20C(1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E928, &qword_1C5879830);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C5867990;
  *(v41 + 56) = sub_1C5626E40(0, &qword_1EC171170, 0x1E69DCC10);
  *(v41 + 64) = &off_1F44C2610;
  *(v41 + 32) = v30;
  *(v41 + 96) = sub_1C5626E40(0, &qword_1EC171178, 0x1E696F3F8);
  *(v41 + 104) = &off_1F44C2610;
  *(v41 + 72) = v31;
  v42 = v30;
  v43 = v31;
  sub_1C575D334(v41);
  sub_1C563E578(v72);
  *(&v77 + 1) = LOBYTE(v72[0]) | (DWORD1(v72[0]) << 32);
  sub_1C563E578(v72);
  v44 = 0x20000000;
  if (LOBYTE(v72[0]))
  {
    v44 = 536870913;
  }

  *&v77 = v44 | (DWORD1(v72[0]) << 32);
  sub_1C575D20C(0, v72);
  sub_1C563E578(v70);
  v45 = 1610612736;
  if (v70[0])
  {
    v45 = 1610612737;
  }

  v73 = v45 | (v71 << 32);
  sub_1C563E578(v70);
  v46 = 0x40000000;
  if (v70[0])
  {
    v46 = 1073741825;
  }

  v74 = v46 | (v71 << 32);
  v75 = 0x4020000000000000;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C5867990;
  *(v47 + 56) = &_s5GroupVN;
  *(v47 + 64) = &off_1F44C2640;
  v48 = swift_allocObject();
  *(v47 + 32) = v48;
  v49 = v78;
  *(v48 + 48) = v77;
  *(v48 + 64) = v49;
  *(v48 + 80) = v79;
  *(v48 + 96) = v80;
  v50 = v76[1];
  *(v48 + 16) = v76[0];
  *(v48 + 32) = v50;
  *(v47 + 96) = sub_1C5626E40(0, &unk_1EC171180, off_1E8216160);
  *(v47 + 104) = &off_1F44C2610;
  *(v47 + 72) = v34;
  sub_1C575D334(v47);
  type metadata accessor for CompositionalStackLayout();
  v51 = sub_1C57783A8([v28 layoutMarginsGuide], v72);
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C58682A0;
  *(v52 + 32) = v40;
  *(v52 + 40) = v51;
  v53 = v40;
  v54 = v51;
  static NSLayoutConstraint.activate(layouts:)(v52);

  v55 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel];
  v56 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_viewModel;
  swift_beginAccess();
  v57 = *&v28[v56];
  v58 = swift_unknownObjectRetain();
  sub_1C577C150(v58);
  swift_unknownObjectRelease();
  v59 = sub_1C584F630();

  [v55 setText_];

  v60 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel];
  v61 = *&v28[v56];
  v62 = swift_unknownObjectRetain();
  sub_1C577C1AC(v62);
  swift_unknownObjectRelease();
  v63 = sub_1C584F750();

  [v60 setLabelItems_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE90, &qword_1C5876290);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1C5867900;
  v65 = sub_1C584F310();
  v66 = MEMORY[0x1E69DC2B0];
  *(v64 + 32) = v65;
  *(v64 + 40) = v66;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
  sub_1C584FAA0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v28;
}

void sub_1C577727C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout);
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = *MEMORY[0x1E69DDCF8];
      v5 = v2;
      v6 = [v3 preferredFontForTextStyle_];
      [v6 _mapkit_scaledValueForValue_];
      v8 = v7;

      (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC0))(v8, v8);
    }
  }
}

uint64_t GridButtonCell.viewModel.getter()
{
  v1 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t GridButtonCell.viewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (a1)
  {
    [v1 _mapsui_registerButtonCellModel_];
    swift_unknownObjectRelease();
  }

  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C57776A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

void sub_1C5777700(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v2)
  {
    [v3 _mapsui_registerButtonCellModel_];
  }

  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
}

void _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0()
{
  v1 = v0;
  v2 = sub_1C584EDD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C584EDE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v15 = *&v1[v14];
  if (v15)
  {
    v16 = *&v1[v14];
    v17 = [swift_unknownObjectRetain() actionStyle];
    v33 = v3;
    v34 = v2;
    if (v17 == 1)
    {
      v18 = sub_1C584F510();
    }

    else
    {
      v18 = sub_1C584F520();
    }

    v19 = *&v1[OBJC_IVAR___MUGridButtonCell_internalViewModel];
    v35 = v18;

    v20 = [v15 titleString];
    sub_1C584F660();

    sub_1C584EE30();
    v21 = [v15 symbolName];
    if (v21)
    {
      v22 = v21;
      sub_1C584F660();
    }

    sub_1C584EE00();
    (*(v9 + 104))(v13, *MEMORY[0x1E69AE038], v8);
    sub_1C584EE40();
    (*(v33 + 104))(v7, *MEMORY[0x1E69AE030], v34);
    sub_1C584EE20();
    sub_1C584EE10();
    v23 = OBJC_IVAR___MUGridButtonCell_viewModel;
    swift_beginAccess();
    v24 = *&v1[v23];
    if (v24 && ([v24 respondsToSelector_] & 1) != 0 && (v25 = objc_msgSend(v24, sel_menu)) != 0)
    {
      v26 = v25;
      v27 = [objc_opt_self() buttonWithType_];
      [v27 setTranslatesAutoresizingMaskIntoConstraints_];
      [v27 setShowsMenuAsPrimaryAction_];
      [v27 setMenu_];
      [v1 addSubview_];
      v28 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v27 container:v1];
      [v28 activate];

      v29 = *&v1[OBJC_IVAR___MUGridButtonCell_menuButton];
      *&v1[OBJC_IVAR___MUGridButtonCell_menuButton] = v27;
    }

    else
    {
      v30 = OBJC_IVAR___MUGridButtonCell_menuButton;
      v31 = *&v1[OBJC_IVAR___MUGridButtonCell_menuButton];
      if (v31)
      {
        [v31 removeFromSuperview];
        v29 = *&v1[v30];
      }

      else
      {
        v29 = 0;
      }

      *&v1[v30] = 0;
    }

    swift_unknownObjectRelease();
  }
}

void (*GridButtonCell.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MUGridButtonCell_viewModel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C5777BE8;
}

void sub_1C5777BE8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(*(v3 + 24) + *(v3 + 32)))
    {
      [*(v3 + 24) _mapsui_registerButtonCellModel_];
      v4 = *(v3 + 24);
    }

    _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
  }

  free(v3);
}

id GridButtonCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void GridButtonCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v43[0] = swift_getObjectType();
  v10 = sub_1C584EDA0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v43[1] = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C584EDD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C584EB60();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C584EDE0();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  *&v5[OBJC_IVAR___MUGridButtonCell_hostingView] = 0;
  *&v5[OBJC_IVAR___MUGridButtonCell_menuButton] = 0;
  *&v5[OBJC_IVAR___MUGridButtonCell_viewModel] = 0;
  (*(v30 + 104))(v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69AE038]);
  sub_1C584EB50();
  sub_1C584EB40();
  (*(v21 + 8))(v25, v20);
  (*(v15 + 104))(v19, *MEMORY[0x1E69AE030], v14);
  sub_1C584F520();
  v31 = sub_1C584EE50();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *&v5[OBJC_IVAR___MUGridButtonCell_internalViewModel] = sub_1C584EDF0();
  v44.receiver = v5;
  v44.super_class = v43[0];

  v34 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v35 = v34;
  sub_1C584ED90();
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1711B0, &qword_1C5879838));
  v37 = sub_1C584F460();
  v38 = OBJC_IVAR___MUGridButtonCell_hostingView;
  v39 = *&v35[OBJC_IVAR___MUGridButtonCell_hostingView];
  *&v35[OBJC_IVAR___MUGridButtonCell_hostingView] = v37;
  v40 = v37;

  [v35 addSubview_];
  v41 = *&v35[v38];
  if (v41)
  {
    v42 = [objc_allocWithZone(MUEdgeLayout) initWithItem:v41 container:v35];
    [v42 activate];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C57781A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___MUGridButtonCell_viewModel;
    swift_beginAccess();
    if (*&v1[v2])
    {
      v3 = [swift_unknownObjectRetain() actionBlock];
      if (v3)
      {
        v4 = v3;
        (*(v3 + 2))(v3, v1);

        _Block_release(v4);
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id GridButtonCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C57783EC(uint64_t a1, __int128 *a2)
{
  v3 = a2[3];
  v13 = a2[2];
  v14 = v3;
  v15 = a2[4];
  v16 = *(a2 + 10);
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171280, qword_1C5879870);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v9[40] = v13;
  *&v9[56] = v14;
  *&v9[72] = v15;
  v10 = v16;
  *&v9[8] = v11;
  *&v9[24] = v12;
  sub_1C5763FAC(&v11, v8);
  *(v2 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder) = sub_1C562370C(v9);

  v6 = sub_1C562389C(v5, &off_1F44C6BC0);
  sub_1C5779578();
  *&v9[48] = v14;
  *&v9[64] = v15;
  *&v9[80] = v16;
  *v9 = v11;
  *&v9[16] = v12;
  *&v9[32] = v13;
  sub_1C563310C();
  swift_unknownObjectRelease();

  sub_1C5763FE4(&v11);
  return v6;
}

uint64_t CompositionalStackLayout.__allocating_init(container:groupRef:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x58))(v9);
  v7 = (*(ObjectType + 104))(a1, v9);

  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t CompositionalStackLayout.init(container:groupRef:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x58))(v7);
  v5 = (*(ObjectType + 104))(a1, v7);

  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1C5778800()
{
  v1 = *(v0 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C57796A8(v4);
  return Strong;
}

uint64_t sub_1C57788F0()
{
  v1 = *(v0 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v5);
  swift_unknownObjectWeakAssign();
  sub_1C57796D8(v5, v4);
  sub_1C5623B40(v4, v2);
  sub_1C57796A8(v5);
  sub_1C5779578();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5778970@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57789CC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C5778A30(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 200) = v1;
  *(v3 + 208) = *(v1 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C57796A8(v4);
  *(v4 + 192) = Strong;
  return sub_1C5778AD0;
}

void sub_1C5778AD0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 192);
  v5 = *(*a1 + 200);
  v4 = *(*a1 + 208);
  if (a2)
  {
    v6 = *(*a1 + 192);
    swift_unknownObjectRetain();
    sub_1C5623A68(v2);
    v7 = swift_unknownObjectWeakAssign();
    sub_1C57796D8(v7, (v2 + 12));
    sub_1C5623B40((v2 + 12), v8);
    sub_1C57796A8(v2);
    sub_1C5779578();
    swift_unknownObjectRelease();
    v9 = v2[24];
  }

  else
  {
    sub_1C5623A68(*a1);
    v10 = swift_unknownObjectWeakAssign();
    sub_1C57796D8(v10, (v2 + 12));
    sub_1C5623B40((v2 + 12), v11);
    sub_1C57796A8(v2);
    sub_1C5779578();
  }

  swift_unknownObjectRelease();

  free(v2);
}

double sub_1C5778BA4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v8);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v15 = v9;
  v16 = v10;
  sub_1C5763FAC(&v15, v7);
  sub_1C57796A8(v8);
  v4 = v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = v4;
  *(a1 + 64) = v19;
  *(a1 + 80) = v20;
  result = *&v15;
  v6 = v16;
  *a1 = v15;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_1C5778C48(uint64_t a1)
{
  v3 = *(a1 + 48);
  *&v11[32] = *(a1 + 32);
  *&v11[48] = v3;
  *&v11[64] = *(a1 + 64);
  *&v11[80] = *(a1 + 80);
  v4 = *(a1 + 16);
  *v11 = *a1;
  *&v11[16] = v4;
  sub_1C563310C();
  v5 = *(v1 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v11);
  v13[2] = *&v11[40];
  v13[3] = *&v11[56];
  v13[4] = *&v11[72];
  v14 = v12;
  v13[0] = *&v11[8];
  v13[1] = *&v11[24];
  sub_1C5763FE4(v13);
  v6 = *(a1 + 48);
  *&v11[40] = *(a1 + 32);
  *&v11[56] = v6;
  *&v11[72] = *(a1 + 64);
  v12 = *(a1 + 80);
  v7 = *(a1 + 16);
  *&v11[8] = *a1;
  *&v11[24] = v7;
  sub_1C57796D8(v11, v10);
  sub_1C5623B40(v10, v8);
  return sub_1C57796A8(v11);
}

void (*sub_1C5778D38(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x280uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 280);
  *(v3 + 632) = *(v1 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = *(v4 + 56);
  *(v4 + 224) = *(v4 + 40);
  *(v4 + 240) = v6;
  *(v4 + 256) = *(v4 + 72);
  *(v4 + 272) = *(v4 + 88);
  v7 = *(v4 + 24);
  *(v4 + 192) = *(v4 + 8);
  *(v4 + 208) = v7;
  sub_1C5763FAC(v4 + 192, v4 + 96);
  sub_1C57796A8(v4);
  v8 = *(v4 + 240);
  v5[2] = *(v4 + 224);
  v5[3] = v8;
  v5[4] = *(v4 + 256);
  *(v4 + 360) = *(v4 + 272);
  v9 = *(v4 + 208);
  *v5 = *(v4 + 192);
  v5[1] = v9;
  return sub_1C5778E1C;
}

void sub_1C5778E1C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 280;
  if (a2)
  {
    v5 = *(*a1 + 312);
    v4 = *(*a1 + 328);
    v6 = *(*a1 + 296);
    *(v2 + 576) = v5;
    *(v2 + 592) = v4;
    v7 = *(v3 + 48);
    *(v2 + 608) = *(v3 + 64);
    v8 = *(v3 + 16);
    v9 = *v3;
    *(v2 + 544) = *v3;
    *(v2 + 560) = v8;
    v29 = *(v3 + 64);
    v10 = *(v2 + 632);
    *(v2 + 624) = *(v3 + 80);
    v30 = *(v3 + 80);
    sub_1C5763FAC(v2 + 544, v2);
    sub_1C563310C();
    sub_1C5623A68(v2);
    v11 = *(v2 + 56);
    *(v2 + 488) = *(v2 + 40);
    *(v2 + 504) = v11;
    *(v2 + 520) = *(v2 + 72);
    *(v2 + 536) = *(v2 + 88);
    v12 = *(v2 + 24);
    *(v2 + 456) = *(v2 + 8);
    *(v2 + 472) = v12;
    sub_1C5763FE4(v2 + 456);
    v13 = *(v2 + 592);
    *(v2 + 40) = *(v2 + 576);
    *(v2 + 56) = v13;
    *(v2 + 72) = *(v2 + 608);
    *(v2 + 88) = *(v2 + 624);
    v14 = *(v2 + 560);
    *(v2 + 8) = *(v2 + 544);
    *(v2 + 24) = v14;
    sub_1C57796D8(v2, v2 + 96);
    sub_1C5623B40(v2 + 96, v15);
    sub_1C57796A8(v2);
    v16 = *(v3 + 48);
    *(v2 + 400) = *(v3 + 32);
    *(v2 + 416) = v16;
    *(v2 + 432) = *(v3 + 64);
    *(v2 + 448) = *(v3 + 80);
    v17 = *(v3 + 16);
    *(v2 + 368) = *v3;
    *(v2 + 384) = v17;
    sub_1C5763FE4(v2 + 368);
  }

  else
  {
    v24 = *(*a1 + 312);
    v25 = *(*a1 + 328);
    v26 = *(*a1 + 344);
    v22 = *v3;
    v23 = *(*a1 + 296);
    v18 = *(v2 + 632);
    v27 = *(*a1 + 360);
    v28 = *v3;
    sub_1C563310C();
    sub_1C5623A68(v2);
    v19 = *(v2 + 56);
    *(v2 + 400) = *(v2 + 40);
    *(v2 + 416) = v19;
    *(v2 + 432) = *(v2 + 72);
    *(v2 + 448) = *(v2 + 88);
    v20 = *(v2 + 24);
    *(v2 + 368) = *(v2 + 8);
    *(v2 + 384) = v20;
    sub_1C5763FE4(v2 + 368);
    *(v2 + 40) = v24;
    *(v2 + 56) = v25;
    *(v2 + 72) = v26;
    *(v2 + 88) = v27;
    *(v2 + 8) = v22;
    *(v2 + 24) = v23;
    sub_1C57796D8(v2, v2 + 96);
    sub_1C5623B40(v2 + 96, v21);
    sub_1C57796A8(v2);
  }

  free(v2);
}

id sub_1C57790F4()
{
  type metadata accessor for CompositionalStackLayout.GroupRef();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v2);
  return sub_1C575D800(v2);
}

void sub_1C577923C(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))(v4);
  (*((*v2 & *v1) + 0x90))(v4);
}

uint64_t sub_1C57792F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

void (*sub_1C57793B4(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  type metadata accessor for CompositionalStackLayout.GroupRef();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v4);
  *a1 = sub_1C575D800(v4);
  return sub_1C5779458;
}

void sub_1C5779458(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  if (a2)
  {
    v7 = v2;
    v6(v8);
    (*((*v5 & *v3) + 0x90))(v8);
  }

  else
  {
    v7 = v2;
    v6(v8);
    (*((*v5 & *v3) + 0x90))(v8);
  }
}

void sub_1C5779578()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v2 = v1();
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v7 = v3;
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    v2 = swift_unknownObjectRelease();
  }

  if ((v1)(v2))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v7 = [v4 owningView];
      swift_unknownObjectRelease();
      v5 = v7;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0;
LABEL_10:
  v6 = *(v0 + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  sub_1C571ACC0(v7);
}

void *sub_1C5779710(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(a1 + 4);
  v6 = *(a1 + 5);
  v9 = *(a1 + 6);
  v8 = *(a1 + 7);
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *(a1 + 10);
  v72 = *a1;
  v73 = v4;
  v74 = v5;
  v75 = v7;
  v76 = v6;
  v77 = v9;
  v78 = v8;
  v79 = v10;
  v80 = v11;
  v81 = v12;
  v13 = *(v2 + 24);
  v90[0] = *(v2 + 8);
  v90[1] = v13;
  v14 = *(v2 + 40);
  v15 = *(v2 + 56);
  v16 = *(v2 + 72);
  v91 = *(v2 + 88);
  v90[3] = v15;
  v90[4] = v16;
  v90[2] = v14;
  v17 = *(v2 + 56);
  v85 = *(v2 + 40);
  v86 = v17;
  v87 = *(v2 + 72);
  v88 = *(v2 + 88);
  v18 = *(v2 + 24);
  v83 = *(v2 + 8);
  v84 = v18;
  sub_1C5763FAC(v90, v92);
  v19 = sub_1C575CE74(&v72, &v83);
  v92[2] = v85;
  v92[3] = v86;
  v92[4] = v87;
  v93 = v88;
  v92[0] = v83;
  v92[1] = v84;
  sub_1C5763FE4(v92);
  if (v19)
  {
    sub_1C56250A4(v2, v89);
    v89[16] = 0;
  }

  else
  {
    v72 = *a1;
    v73 = v4;
    v74 = v5;
    v75 = v7;
    v76 = v6;
    v77 = v9;
    v78 = v8;
    v79 = v10;
    v80 = v11;
    v81 = v12;
    sub_1C56330C0(v89);
  }

  v20 = *(v5 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v53 = v7;
    v54 = v9;
    v55 = v10;
    v56 = v8;
    *&v58[0] = MEMORY[0x1E69E7CC0];
    sub_1C5675B20(0, v20, 0);
    v22 = *&v58[0];
    v57 = v5;
    v23 = v5 + 32;
    do
    {
      sub_1C56331B4(v23, &v72);
      sub_1C563326C(&v72, &v62);
      v24 = *(&v63 + 1);
      v25 = v64;
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      (*(v25 + 8))(v60, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v26 = v76;
      v27 = v77;
      v28 = v78;
      v29 = v79;
      v30 = v80;
      v31 = v81;
      v71[0] = v82;
      sub_1C5633434();
      sub_1C563E43C(v60, v71, &type metadata for LayoutItemSpecification, &v83, v26, v27, v28, v29, v30, v31);
      sub_1C56332A4(&v72);
      *&v58[0] = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C5675B20((v32 > 1), v33 + 1, 1);
        v22 = *&v58[0];
      }

      *(v22 + 16) = v33 + 1;
      sub_1C5683AE4(&v83, v22 + 80 * v33 + 32);
      v23 += 96;
      --v20;
    }

    while (v20);
    v5 = v57;
    v10 = v55;
    v8 = v56;
    v9 = v54;
    v7 = v53;
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1C5625EE8(v89, &v72);
  *&v62 = v7;

  sub_1C565297C(&v72, v4, v22, &v62, &v83, v9, v8, v10, v11, v12);
  sub_1C5625EE8(v89, &v72);
  v34 = sub_1C570FBF0(v4);
  *&v62 = v6;
  sub_1C5688A00(&v72, v34, v22, &v62, v71, v8, v10, v11, v12);
  v70 = v21;
  v35 = sub_1C564CD3C();
  sub_1C5650E8C(v35);
  v36 = sub_1C5687648();
  sub_1C5650E8C(v36);
  v37 = *(v5 + 16);
  if (!v37)
  {
LABEL_29:
    sub_1C5675B40(v71);
    sub_1C5675B94(&v83);
    sub_1C5626250(v89);
    return v70;
  }

  v38 = &qword_1EC170F60;
  v39 = v5 + 32;
  while (1)
  {
    sub_1C56331B4(v39, &v72);
    sub_1C563326C(&v72, v69);
    sub_1C56332A4(&v72);
    sub_1C5632F90(v69, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, &unk_1C58791A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    v41 = v38;
    v60[2] = v64;
    v60[3] = v65;
    v60[4] = v66;
    v61 = v67;
    v60[0] = v62;
    v60[1] = v63;
    v58[2] = v64;
    v58[3] = v65;
    v58[4] = v66;
    v59 = v67;
    v58[0] = v62;
    v58[1] = v63;
    v42 = v2;
    v43 = sub_1C5779710(v58);
    result = sub_1C5763FE4(v60);
    v44 = *(v43 + 16);
    v45 = v70;
    v46 = v70[2];
    v47 = v46 + v44;
    if (__OFADD__(v46, v44))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v48 = v45[3] >> 1, v48 < v47))
    {
      if (v46 <= v47)
      {
        v49 = v46 + v44;
      }

      else
      {
        v49 = v46;
      }

      result = sub_1C5625864(result, v49, 1, v45);
      v45 = result;
      v48 = result[3] >> 1;
    }

    v2 = v42;
    if (*(v43 + 16))
    {
      if (v48 - v45[2] < v44)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v44)
      {
        v50 = v45[2];
        v51 = __OFADD__(v50, v44);
        v52 = v50 + v44;
        if (v51)
        {
          goto LABEL_33;
        }

        v45[2] = v52;
      }
    }

    else
    {

      if (v44)
      {
        goto LABEL_31;
      }
    }

    v70 = v45;
    v38 = v41;
LABEL_15:
    v39 += 96;
    if (!--v37)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_1C5779C90()
{
  v1 = *(v0 + 56);
  v13[2] = *(v0 + 40);
  v13[3] = v1;
  v13[4] = *(v0 + 72);
  v14 = *(v0 + 88);
  v2 = *(v0 + 24);
  v13[0] = *(v0 + 8);
  v13[1] = v2;
  v3 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = v3;
  v11 = *(v0 + 72);
  v12 = *(v0 + 88);
  v4 = *(v0 + 24);
  v7 = *(v0 + 8);
  v8 = v4;
  sub_1C5763FAC(v13, v15);
  v5 = sub_1C5779710(&v7);
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v16 = v12;
  v15[0] = v7;
  v15[1] = v8;
  sub_1C5763FE4(v15);
  return v5;
}

uint64_t sub_1C5779D48()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_1C577A0D8();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5779DDC()
{
  sub_1C5662408();
  sub_1C584F5F0();
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_1C577A0D8();
  return sub_1C584F5F0();
}

uint64_t sub_1C5779E60()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_1C577A0D8();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

id CompositionalStackLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompositionalStackLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5779F78(uint64_t a1, uint64_t a2)
{
  if (sub_1C5623E2C(a1, a2))
  {
    v4 = *(a1 + 56);
    v28[2] = *(a1 + 40);
    v28[3] = v4;
    v28[4] = *(a1 + 72);
    v29 = *(a1 + 88);
    v5 = *(a1 + 24);
    v28[0] = *(a1 + 8);
    v28[1] = v5;
    v6 = *(a1 + 56);
    v24 = *(a1 + 40);
    v25 = v6;
    v26 = *(a1 + 72);
    v27 = *(a1 + 88);
    v7 = *(a1 + 24);
    v22 = *(a1 + 8);
    v23 = v7;
    v8 = *(a2 + 24);
    v30[0] = *(a2 + 8);
    v30[1] = v8;
    v9 = *(a2 + 40);
    v10 = *(a2 + 56);
    v11 = *(a2 + 72);
    v31 = *(a2 + 88);
    v30[3] = v10;
    v30[4] = v11;
    v30[2] = v9;
    v12 = *(a2 + 56);
    v18 = *(a2 + 40);
    v19 = v12;
    v20 = *(a2 + 72);
    v21 = *(a2 + 88);
    v13 = *(a2 + 24);
    v16 = *(a2 + 8);
    v17 = v13;
    sub_1C5763FAC(v28, v34);
    sub_1C5763FAC(v30, v34);
    v14 = sub_1C575CE74(&v22, &v16);
    v32[2] = v18;
    v32[3] = v19;
    v32[4] = v20;
    v33 = v21;
    v32[0] = v16;
    v32[1] = v17;
    sub_1C5763FE4(v32);
    v34[2] = v24;
    v34[3] = v25;
    v34[4] = v26;
    v35 = v27;
    v34[0] = v22;
    v34[1] = v23;
    sub_1C5763FE4(v34);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_1C577A0D8()
{
  result = qword_1EC171290;
  if (!qword_1EC171290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC171290);
  }

  return result;
}

unint64_t sub_1C577A150(uint64_t a1)
{
  result = sub_1C577A178();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C577A178()
{
  result = qword_1ED77E888;
  if (!qword_1ED77E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E888);
  }

  return result;
}

unint64_t sub_1C577A1D0()
{
  result = qword_1ED77E880;
  if (!qword_1ED77E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E880);
  }

  return result;
}

uint64_t sub_1C577A374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C577A3BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void (*TransitLineItemActionManager.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MUTransitLineItemActionManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56685B4;
}

uint64_t sub_1C577A4F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t sub_1C577A55C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*TransitLineItemActionManager.analyticsDelegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MUTransitLineItemActionManager_analyticsDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C566688C;
}

id TransitLineItemActionManager.__allocating_init(delegate:analyticsDelegate:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

id TransitLineItemActionManager.init(delegate:analyticsDelegate:)()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

id TransitLineItemActionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitLineItemActionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TransitLineItemActionManager.createRowActions(with:)()
{
  v0 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  if (_MKRAPIsAvailable())
  {
    v1 = [objc_opt_self() actionItemWithType_];
    [v1 setEnabled_];
    v2 = v1;
    MEMORY[0x1C6949DF0]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    return v5;
  }

  return v0;
}

void TransitLineItemActionManager.performAction(_:options:completion:)(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    if (a2)
    {
      v6 = a1;
      v7 = sub_1C584F5C0();
    }

    else
    {
      v9 = a1;
      v7 = 0;
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E696F2F8]) initWithOptions_];

    if (v10)
    {
      if ([v10 isQuickAction])
      {
        v11 = 30;
      }

      else
      {
        v11 = 201;
      }

      if ([a1 type] == 1)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = [v10 analyticsModuleMetadata];
          [v13 infoCardAnalyticsDidSelectAction:5013 target:v11 eventValue:0 moduleMetadata:v14 feedbackDelegateSelector:62 actionRichProviderId:0 classification:0];

          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          [v15 lineItemManager:v3 didSelectReportAProblemWithEnvironment:v10];
          swift_unknownObjectRelease();
        }
      }

      if (a3)
      {

        a3(v16);

        sub_1C5632FA8(a3);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (a3)
  {

    a3(v8);

    sub_1C5632FA8(a3);
  }
}

uint64_t _s6MapsUI28TransitLineItemActionManagerC19createFooterActionsSaySo011MKPlaceCardfE0CGSgyF_0()
{
  v0 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  if (_MKRAPIsAvailable())
  {
    v1 = [objc_opt_self() actionItemWithType_];
    [v1 setEnabled_];
    v2 = v1;
    MEMORY[0x1C6949DF0]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    return v5;
  }

  return v0;
}

unint64_t sub_1C577AFF8()
{
  result = qword_1EC1713D8;
  if (!qword_1EC1713D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1713D8);
  }

  return result;
}

uint64_t LazyScrollableVStack.init(alignment:spacing:ignoresTopSafeArea:content:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = a6;
  *(a5 + 32) = a2;
  return result;
}

uint64_t LazyScrollableVStack.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v5;
  v19 = *(v2 + 32);
  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  v8 = *(v2 + 16);
  *(v6 + 32) = *v2;
  *(v6 + 48) = v8;
  *(v6 + 64) = *(v2 + 32);
  (*(*(a1 - 8) + 16))(v17, v18, a1);
  sub_1C584F400();
  sub_1C584F470();
  WitnessTable = swift_getWitnessTable();
  v16 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  sub_1C584F410();
  swift_getWitnessTable();
  v13 = sub_1C584F440();
  v14 = v9;
  v10 = sub_1C584F450();
  swift_getWitnessTable();
  v11 = *(*(v10 - 8) + 16);
  v11(v17, &v13, v10);

  v13 = v17[0];
  v14 = v17[1];
  v11(a2, &v13, v10);
}

uint64_t sub_1C577B270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23 = a5;
  sub_1C584F400();
  sub_1C584F470();
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  v9 = sub_1C584F410();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v22 - v17;
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v27 = a1;
  sub_1C584F4A0();
  sub_1C584F420();
  swift_getWitnessTable();
  v19 = v10[2];
  v19(v18, v15, v9);
  v20 = v10[1];
  v20(v15, v9);
  v19(v23, v18, v9);
  return (v20)(v18, v9);
}

uint64_t sub_1C577B4A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v33[1] = a2;
  v33[2] = a3;
  v40 = a4;
  v5 = sub_1C584F490();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = sub_1C584F400();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8, v8);
  v11 = v33 - v10;
  v34 = v12;
  v13 = sub_1C584F470();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v37 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v38 = v33 - v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  sub_1C577B7C8();
  v35 = v11;
  sub_1C584F3F0();
  if (a1[4])
  {
    sub_1C584F430();
  }

  v24 = v34;
  WitnessTable = swift_getWitnessTable();
  v26 = v37;
  v27 = v35;
  sub_1C584F4F0();
  (*(v39 + 8))(v27, v24);
  v41 = WitnessTable;
  v42 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  v28 = v36;
  v29 = *(v36 + 16);
  v30 = v38;
  v29(v38, v26, v13);
  v31 = *(v28 + 8);
  v31(v26, v13);
  v29(v40, v30, v13);
  return (v31)(v30, v13);
}

uint64_t sub_1C577B7C8()
{
  sub_1C584F490();
  sub_1C577B8C8();
  return sub_1C584FF00();
}

uint64_t sub_1C577B868()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C577B8C8()
{
  result = qword_1EC171440;
  if (!qword_1EC171440)
  {
    sub_1C584F490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC171440);
  }

  return result;
}

id RealTimeEVChargerUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RealTimeEVChargerUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RealTimeEVChargerUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s6MapsUI24RealTimeEVChargerUtilityC10evPlugIcon13configurationSo7UIImageCSgSo0K13ConfigurationC_tFZ_0(uint64_t a1)
{
  v2 = sub_1C584F630();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:a1];

  if (v3)
  {
    v4 = [v3 CGImage];
    if (v4)
    {
      v5 = v4;
      [v3 scale];
      v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v5 scale:2 orientation:v6];

      v8 = [v7 imageWithRenderingMode_];
      return v8;
    }
  }

  return 0;
}

uint64_t _s6MapsUI24RealTimeEVChargerUtilityC03getcD11ChargerInfo6garage7chargerSo06MURealdE0CSo15VGVirtualGarageCSg_So24GEOEVChargerAvailabilityCtFZ_0(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 vehicles];
    sub_1C5626E40(0, &qword_1EC16E320, 0x1E69DF8A0);
    v4 = sub_1C584F770();

    if (v4 >> 62)
    {
      while (2)
      {
        v5 = sub_1C584FB90();
        if (v5)
        {
LABEL_4:
          v20 = a2;
          v6 = 0;
          v21 = MEMORY[0x1E69E7CC0];
          a2 = &unk_1F44C8A78;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1C694A320](v6, v4);
            }

            else
            {
              if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v7 = *(v4 + 32 + 8 * v6);
            }

            v8 = v7;
            if (__OFADD__(v6++, 1))
            {
              goto LABEL_22;
            }

            v10 = 0x20u;
            do
            {
              v11 = *(&unk_1F44C8A78 + v10);
              if ((v11 & ~[v8 supportedConnectors]) == 0)
              {
                GEOEvChargingConnectorTypeFromVGConnectorType();
                sub_1C584FE70();
                MEMORY[0x1C6949DF0]();
                if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v19 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_1C584F7A0();
                }

                sub_1C584F7E0();
              }

              v10 += 8;
            }

            while (v10 != 104);
          }

          while (v6 != v5);

          sub_1C5626E40(0, &qword_1EC16E148, 0x1E696AD98);
          v12 = sub_1C584F750();
          a2 = v20;
          v4 = [v20 aggregatedTotalCount_];

          if (v4 >= 1)
          {
            v13 = sub_1C584F750();

            v14 = [v20 aggregatedAvailableCount_];

            v15 = [v20 _realTimePlugAvailabilityStatus];
            goto LABEL_29;
          }

          result = [v20 availableEVChargers];
          if ((result & 0x8000000000000000) == 0)
          {
            v14 = result;
            result = [v20 totalEVChargers];
            if ((result & 0x8000000000000000) == 0)
            {
              goto LABEL_28;
            }

            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            continue;
          }

          goto LABEL_34;
        }

        break;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }
  }

  result = [a2 availableEVChargers];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v14 = result;
  result = [a2 totalEVChargers];
  if (result < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

LABEL_28:
  v4 = result;
  v15 = [a2 _availabilityStatus];
LABEL_29:
  v17 = v15;
  v18 = objc_allocWithZone(MURealTimeEVCharger);

  return [v18 initWithAvailable:v14 total:v4 status:v17];
}

uint64_t sub_1C577BF34()
{
  sub_1C584FEA0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    MEMORY[0x1C694A560]();
    swift_unknownObjectRelease();
  }

  return sub_1C584FEF0();
}

uint64_t sub_1C577BF8C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    MEMORY[0x1C694A560]();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C577BFE4()
{
  sub_1C584FEA0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    MEMORY[0x1C694A560]();
    swift_unknownObjectRelease();
  }

  return sub_1C584FEF0();
}

unint64_t sub_1C577C03C()
{
  result = qword_1EC171450;
  if (!qword_1EC171450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC171450);
  }

  return result;
}

unint64_t sub_1C577C094()
{
  result = qword_1ED77E8A8;
  if (!qword_1ED77E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8A8);
  }

  return result;
}

uint64_t sub_1C577C0F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C577C118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

id sub_1C577C150(void *a1)
{
  result = [a1 name];
  if (result)
  {
    v2 = result;
    v3 = sub_1C584F660();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C577C1AC(void *a1)
{
  v2 = [a1 labelItems];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [a1 labelItems];
  if (result)
  {
    v4 = result;
    v5 = sub_1C584F770();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C577C240()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = v0;
  swift_unknownObjectRetain();
  v2 = [v1 identifier];
  v3 = sub_1C584F660();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_8;
  }

  v7 = [v1 identifier];
  v8 = sub_1C584F660();
  v10 = v9;

  MEMORY[0x1C6949D90](v8, v10);

  MEMORY[0x1C6949D90](39, 0xE100000000000000);
  swift_unknownObjectRelease();
  v12 = 39;
  v11 = 0xE100000000000000;
LABEL_8:
  MEMORY[0x1C6949D90](60, 0xE100000000000000);
  swift_getObjectType();
  swift_getMetatypeMetadata();
  v13 = sub_1C584F680();
  MEMORY[0x1C6949D90](v13);

  MEMORY[0x1C6949D90](8250, 0xE200000000000000);
  sub_1C584FCF0();
  MEMORY[0x1C6949D90](62, 0xE100000000000000);
  MEMORY[0x1C6949D90](v12, v11);

  return 0;
}

uint64_t sub_1C577C420()
{
  v1 = *v0;
  swift_getObjectType();
  return sub_1C577C240();
}

uint64_t sub_1C577C44C()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0x296C6C756E28;
  }

  swift_getObjectType();
  v0 = sub_1C577C240();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C577C4B8()
{
  sub_1C5625EE8(v0, &v19);
  v19 = sub_1C584F6A0();
  v20 = v1;
  MEMORY[0x1C6949D90](46, 0xE100000000000000);
  v16 = *(v0 + 24);
  type metadata accessor for Attribute(0);
  v2 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v2);

  v21 = v19;
  v22 = v20;
  MEMORY[0x1C6949D90](32, 0xE100000000000000);
  v19 = *(v0 + 32);
  type metadata accessor for Relation(0);
  v3 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v3);

  sub_1C5626108(v0 + 40, &v16);
  if (v18 == 255)
  {
    sub_1C571D770(&v16);
    v19 = 32;
    v20 = 0xE100000000000000;
    v8 = *(v0 + 80);
    v9 = sub_1C584F8B0();
    MEMORY[0x1C6949D90](v9);

    MEMORY[0x1C6949D90](v19, v20);

    v10 = *(v0 + 104);
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_1C56251C8(&v16, &v19);
  if (*(v0 + 72) != 1.0)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    v4 = sub_1C584F8B0();
    MEMORY[0x1C6949D90](v4);

    MEMORY[0x1C6949D90](10784, 0xE200000000000000);
    MEMORY[0x1C6949D90](v16, v17);
  }

  sub_1C5625EE8(&v19, &v16);
  v5 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v5);

  MEMORY[0x1C6949D90](46, 0xE100000000000000);
  v16 = *(v0 + 64);
  v6 = sub_1C584F6A0();
  MEMORY[0x1C6949D90](v6);

  MEMORY[0x1C6949D90](32, 0xE100000000000000);

  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    if (v7 >= 0.0)
    {
      goto LABEL_11;
    }

    v16 = 2108704;
    v17 = 0xE300000000000000;
  }

  else
  {
    v16 = 2108192;
    v17 = 0xE300000000000000;
  }

  v11 = sub_1C584F8B0();
  MEMORY[0x1C6949D90](v11);

  MEMORY[0x1C6949D90](v16, v17);

LABEL_11:
  sub_1C5626250(&v19);
  v10 = *(v0 + 104);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = *(v0 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v19 = 10016;
    v20 = 0xE200000000000000;
    MEMORY[0x1C6949D90]();
    MEMORY[0x1C6949D90](39, 0xE100000000000000);
    MEMORY[0x1C6949D90](v19, v20);
  }

LABEL_16:
  type metadata accessor for UILayoutPriority(0);
  v13 = *(v0 + 88);
  *&v19 = v13;
  LODWORD(v16) = 1148846080;
  sub_1C5625AB0(&qword_1ED77E830);
  result = sub_1C584F2D0();
  if ((result & 1) == 0)
  {
    return v21;
  }

  v19 = 2113568;
  v20 = 0xE300000000000000;
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 < 9.2234e18)
  {
    v16 = v13;
    v15 = sub_1C584FD90();
    MEMORY[0x1C6949D90](v15);

    MEMORY[0x1C6949D90](v19, v20);

    return v21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C577C8C8()
{
  sub_1C5625EE8(v0, v5);
  if (v6)
  {
    v4[0] = v5[0];
    v4[1] = v5[1];
    return sub_1C584F6A0();
  }

  else
  {
    sub_1C5626058(v5, v4);
    sub_1C56250A4(v4, &v3);
    v2 = sub_1C584F6A0();
    sub_1C56260B4(v4);
    return v2;
  }
}

uint64_t NSLayoutRelation.debugDescription.getter(uint64_t a1)
{
  v1 = 15678;
  v2 = 63;
  if (!a1)
  {
    v2 = 61;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1 == -1)
  {
    return 15676;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C577CC08()
{
  v1 = *v0;
  v2 = 15678;
  v3 = 63;
  if (!*v0)
  {
    v3 = 61;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == -1)
  {
    return 15676;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C577CC74()
{
  result = sub_1C577EDD0(MEMORY[0x1E69E7CC0]);
  qword_1EC18F518 = result;
  return result;
}

void sub_1C577CC9C(uint64_t a1)
{
  if ([v1 isTesting])
  {
    v3 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1714C0, &unk_1C5879D98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5867900;
    sub_1C584FBF0();
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 72) = a1;
    sub_1C5748DE0(inited);
    swift_setDeallocating();
    sub_1C5625230(inited + 32, &qword_1EC170B98, &unk_1C5878630);
    v5 = sub_1C584F5C0();

    [v3 postNotificationName:@"MUWebBasedPlacecardContentLoadNotification" object:v1 userInfo:v5];
  }
}

void sub_1C577CF90(uint64_t a1)
{
  v2 = sub_1C584E7C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C584F2C0();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v45 - v17;
  v19 = sub_1C584E7B0();
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = sub_1C577D5DC(v19);

  if (!v20)
  {
    goto LABEL_15;
  }

  if (!*(v20 + 16))
  {
    goto LABEL_14;
  }

  v21 = sub_1C5645D34(0x746E657665, 0xE500000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C56465F8(*(v20 + 56) + 32 * v21, aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!*(v20 + 16))
  {
    goto LABEL_14;
  }

  v47 = v53;
  v23 = sub_1C5645D34(0x656D614E74736574, 0xE800000000000000);
  if ((v24 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C56465F8(*(v20 + 56) + 32 * v23, aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v45 = v53;
  v46 = v54;
  sub_1C584E7A0();
  if (!v50)
  {

    sub_1C5625230(aBlock, &qword_1EC16E790, &unk_1C586A110);
LABEL_15:
    v32 = sub_1C5726A3C();
    (*(v9 + 16))(v13, v32, v8);
    (*(v3 + 16))(v7, a1, v2);
    v33 = sub_1C584F2A0();
    v34 = sub_1C584F9B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v7;
      v37 = v9;
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v35 = 136315138;
      sub_1C577EFBC();
      v39 = sub_1C584FD90();
      v47 = v13;
      v48 = v8;
      v40 = v39;
      v42 = v41;
      (*(v3 + 8))(v36, v2);
      v43 = sub_1C5649518(v40, v42, aBlock);

      *(v35 + 4) = v43;
      _os_log_impl(&dword_1C5620000, v33, v34, "Failed to parse the object from notification:%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1C694B7A0](v38, -1, -1);
      MEMORY[0x1C694B7A0](v35, -1, -1);

      (*(v37 + 8))(v47, v48);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
      (*(v9 + 8))(v13, v8);
    }

    return;
  }

  v25 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171538, &qword_1C5879DA8);
  if (!swift_dynamicCast())
  {
LABEL_14:

    goto LABEL_15;
  }

  v26 = v53;
  if (v47 == 1)
  {
    [v48 fetchWebScrollFPSWithCompletion_];
    if (qword_1EC18F510 != -1)
    {
      swift_once();
    }

    sub_1C584EB20();
    v44 = sub_1C584EB30();
    (*(*(v44 - 8) + 56))(v18, 0, 1, v44);
    swift_beginAccess();
    sub_1C577D8B8(v18, v45, v25);
    swift_endAccess();
  }

  else
  {
    if (v47 == 2)
    {
      v27 = swift_allocObject();
      v28 = v48;
      v29 = v45;
      v27[2] = v48;
      v27[3] = v29;
      v27[4] = v25;
      v27[5] = v26;
      v51 = sub_1C577F014;
      v52 = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C577DA90;
      v50 = &block_descriptor_15;
      v30 = _Block_copy(aBlock);
      v31 = v28;
      swift_unknownObjectRetain();

      [v31 fetchWebScrollFPSWithCompletion_];
      swift_unknownObjectRelease();
      _Block_release(v30);
      return;
    }
  }

  swift_unknownObjectRelease();
}

unint64_t sub_1C577D5DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
    v2 = sub_1C584FD50();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1C57492F4(*(a1 + 48) + 40 * v14, v29);
        sub_1C56465F8(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1C57492F4(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1C56465F8(v27 + 8, v22);
        sub_1C5625230(v26, &qword_1EC171560, &unk_1C5879DC0);
        v23 = v20;
        sub_1C563D304(v22, v24);
        v15 = v23;
        sub_1C563D304(v24, v25);
        sub_1C563D304(v25, &v23);
        result = sub_1C5645D34(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1C563D304(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1C563D304(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1C5625230(v26, &qword_1EC171560, &unk_1C5879DC0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C577D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_1C584EB30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_1C5625230(a1, &unk_1EC170AC0, &qword_1C5878418);
    sub_1C577E244(a2, a3, v11);

    return sub_1C5625230(v11, &unk_1EC170AC0, &qword_1C5878418);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v12);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1C577E920(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_1C577DA90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1C584F770();

  v2(v3);
}

uint64_t sub_1C577DBE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v25 - v16;
  v18 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v22);
  sub_1C569A8D8(12);
  sub_1C569BF54(v17);
  sub_1C569CA6C(1);
  sub_1C577F144(v17, v14);
  sub_1C569A908(v8);
  sub_1C569BF70(v14);
  sub_1C569AAB0(v8);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_1C5633060(a1);
  sub_1C572FEB0(v22, sub_1C577F1A8, v23);

  sub_1C577F940(v17, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
  return sub_1C577F940(v22, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

uint64_t sub_1C577DDFC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v27[1] = a3;
  v5 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E6E0, &qword_1C586A108);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = v27 - v18;
  v20 = type metadata accessor for WebBridgeReply(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56466CC(a1, v19, &unk_1EC16E6E0, &qword_1C586A108);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    result = sub_1C5625230(v19, &unk_1EC16E6E0, &qword_1C586A108);
    if (!a2)
    {
      return result;
    }

    return a2(MEMORY[0x1E69E7CC0]);
  }

  sub_1C577F8DC(v19, v25);
  if (!sub_1C569CC84())
  {
    result = sub_1C577F940(v25, type metadata accessor for WebBridgeReply);
    if (!a2)
    {
      return result;
    }

    return a2(MEMORY[0x1E69E7CC0]);
  }

  sub_1C569CAEC(v9);
  sub_1C569CCC0(v14);
  sub_1C577F940(v9, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
  if (a2)
  {
    a2(*v14);
  }

  sub_1C577F940(v25, type metadata accessor for WebBridgeReply);
  return sub_1C577F940(v14, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
}

uint64_t sub_1C577E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C5645D34(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C577EB50();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1C584EB30();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1C577E734(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1C584EB30();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1C577E3B4(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_1C584EB30();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171548, &qword_1C5879DB0);
  v47 = a2;
  result = sub_1C584FD40();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_1C584FEA0();
      sub_1C584F6C0();
      result = sub_1C584FEF0();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

unint64_t sub_1C577E734(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C584FB60() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C584FEA0();

      sub_1C584F6C0();
      v13 = sub_1C584FEF0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1C584EB30() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C577E920(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C5645D34(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1C577EB50();
      goto LABEL_7;
    }

    sub_1C577E3B4(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1C5645D34(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1C584FE00();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1C584EB30();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1C577EAA0(v12, a2, a3, a1, v18);
}

uint64_t sub_1C577EAA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1C584EB30();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_1C577EB50()
{
  v1 = v0;
  v37 = sub_1C584EB30();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171548, &qword_1C5879DB0);
  v5 = *v0;
  v6 = sub_1C584FD30();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_1C577EDD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171550, &qword_1C5879DB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171548, &qword_1C5879DB0);
    v9 = sub_1C584FD50();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1C56466CC(v11, v7, &unk_1EC171550, &qword_1C5879DB8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C5645D34(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1C584EB30();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1C577EFBC()
{
  result = qword_1EC1714C8;
  if (!qword_1EC1714C8)
  {
    sub_1C584E7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1714C8);
  }

  return result;
}

void sub_1C577F014()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_1C584F750();
  v6 = sub_1C584F630();
  v7 = [v1 generateReportWithResult:v5 testName:v6];

  v8 = sub_1C584F5D0();
  sub_1C5644230(v8);

  v9 = sub_1C584F5C0();

  [v3 addWebPlacecardMetrics_];
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C577F144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C577F1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v68 - v9;
  v73 = sub_1C584EB30();
  v11 = *(v73 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v73, v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v68 - v22;
  result = sub_1C564647C(MEMORY[0x1E69E7CC0]);
  v25 = *(a1 + 16);
  if (v25)
  {
    v71 = v23;
    v72 = result;
    if (qword_1EC18F510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = qword_1EC18F518;
    if (!*(qword_1EC18F518 + 16) || (v27 = sub_1C5645D34(a2, a3), (v28 & 1) == 0))
    {
      swift_endAccess();
      return v72;
    }

    v29 = *(v26 + 56) + *(v11 + 72) * v27;
    v30 = *(v11 + 16);
    v69 = v25;
    v31 = v73;
    v30(v20, v29, v73);
    (*(v11 + 32))(v71, v20, v31);
    swift_endAccess();
    swift_beginAccess();
    v70 = a2;
    sub_1C577E244(a2, a3, v10);
    swift_endAccess();
    sub_1C5625230(v10, &unk_1EC170AC0, &qword_1C5878418);
    sub_1C584EB20();
    sub_1C584EAF0();
    v33 = v32;
    v34 = *(v11 + 8);
    v35 = v31;
    v36 = v69;
    v34(v16, v35);
    v68 = v11 + 8;
    if (v36 >= 8)
    {
      v37 = v36 & 0x7FFFFFFFFFFFFFF8;
      v41 = a1 + 48;
      v38 = 0.0;
      v42 = v36 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v38 = (((((((v38 + COERCE_FLOAT(*(v41 - 16))) + COERCE_FLOAT(HIDWORD(*(v41 - 16)))) + COERCE_FLOAT(*(v41 - 8))) + COERCE_FLOAT(HIDWORD(*(v41 - 16)))) + COERCE_FLOAT(*v41)) + COERCE_FLOAT(HIDWORD(*v41))) + COERCE_FLOAT(*(v41 + 8))) + COERCE_FLOAT(HIDWORD(*v41));
        v41 += 32;
        v42 -= 8;
      }

      while (v42);
      v39 = a3;
      v40 = v70;
      if (v36 == v37)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v37 = 0;
      v38 = 0.0;
      v39 = a3;
      v40 = v70;
    }

    v43 = v36 - v37;
    v44 = (a1 + 4 * v37 + 32);
    do
    {
      v45 = *v44++;
      v38 = v38 + v45;
      --v43;
    }

    while (v43);
LABEL_14:
    v46 = (v36 / v38) * 1000.0;
    *&v76 = 977489990;
    *(&v76 + 1) = 0xE400000000000000;
    MEMORY[0x1C6949D90](v40, v39);
    v47 = v76;

    MEMORY[0x1C6949D90](0xD000000000000010, 0x80000001C589C990);
    v48 = v76;
    v77 = MEMORY[0x1E69E6448];
    *&v76 = v46;
    sub_1C563D304(&v76, v75);
    v49 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v49;
    sub_1C564611C(v75, v48, *(&v48 + 1), isUniquelyReferenced_nonNull_native);

    v51 = v74;
    v76 = v47;

    MEMORY[0x1C6949D90](0xD000000000000015, 0x80000001C589C9B0);
    v52 = MEMORY[0x1E69E6158];
    v53 = v76;
    v77 = MEMORY[0x1E69E6158];
    *&v76 = 7565414;
    *(&v76 + 1) = 0xE300000000000000;
    sub_1C563D304(&v76, v75);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v51;
    sub_1C564611C(v75, v53, *(&v53 + 1), v54);

    v55 = v74;
    v76 = v47;

    MEMORY[0x1C6949D90](0xD000000000000016, 0x80000001C589C9D0);
    v56 = v76;
    v77 = MEMORY[0x1E69E6530];
    *&v76 = v36;
    sub_1C563D304(&v76, v75);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v55;
    sub_1C564611C(v75, v56, *(&v56 + 1), v57);

    v58 = v74;
    v76 = v47;

    MEMORY[0x1C6949D90](0xD00000000000001BLL, 0x80000001C589C9F0);
    v59 = v76;
    v77 = v52;
    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    sub_1C563D304(&v76, v75);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v58;
    sub_1C564611C(v75, v59, *(&v59 + 1), v60);

    v61 = v74;
    v76 = v47;

    MEMORY[0x1C6949D90](0xD000000000000026, 0x80000001C589CA10);
    v62 = v76;
    v63 = v33;
    v77 = MEMORY[0x1E69E6448];
    *&v76 = v36 / v63;
    sub_1C563D304(&v76, v75);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v61;
    sub_1C564611C(v75, v62, *(&v62 + 1), v64);

    v65 = v74;
    v76 = v47;

    MEMORY[0x1C6949D90](0xD00000000000002BLL, 0x80000001C589CA40);

    v66 = v76;
    v77 = v52;
    *&v76 = 7565414;
    *(&v76 + 1) = 0xE300000000000000;
    sub_1C563D304(&v76, v75);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v65;
    sub_1C564611C(v75, v66, *(&v66 + 1), v67);

    v34(v71, v73);
    return v74;
  }

  return result;
}

void sub_1C577F87C()
{
  v1 = *(v0 + 16);
  v2 = sub_1C584F750();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1C577F8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebBridgeReply(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C577F940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C5780D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUPlaceExternalActionMenuHelperLog()
{
  if (MUGetMUPlaceExternalActionMenuHelperLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceExternalActionMenuHelperLog_onceToken, &__block_literal_global_52);
  }

  v1 = MUGetMUPlaceExternalActionMenuHelperLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceExternalActionMenuHelperLog_block_invoke()
{
  MUGetMUPlaceExternalActionMenuHelperLog_log = os_log_create("com.apple.MapsUI", "MUPlaceExternalActionMenuHelper");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C5781758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1C5781EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5783200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _MULocalizedStringFromThisBundle(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 _mapsuiBundle];
  v4 = [v3 _mapsui_localizedStringForKey:v2 value:@"<unlocalized>" table:0];

  return v4;
}

id MUMap(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = v4[2](v4, *(*(&v16 + 1) + 8 * i), v9);
          if (v12)
          {
            [v5 addObject:{v12, v16}];
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id MUFindFirst(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v15 = 0;
          if (v4[2](v4, v11, v8, &v15))
          {
            v12 = v11;
            goto LABEL_15;
          }

          if (v15)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v12 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

LABEL_15:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

double MUPlacePlatterCornerRadius(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v2 = [v1 traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v4 = v3;

  return v4;
}

double kMUPlaceHorizontalStackSpacing(int a1)
{
  result = 8.0;
  if (a1)
  {
    return 10.0;
  }

  return result;
}

uint64_t __MUGetMUPlaceCoverPhotoTransitionControllerLog_block_invoke()
{
  MUGetMUPlaceCoverPhotoTransitionControllerLog_log = os_log_create("com.apple.MapsUI", "MUPlaceCoverPhotoTransitionController");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C5784B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5785EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C57860F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetPlaceCardAnalyticsUILog()
{
  if (MUGetPlaceCardAnalyticsUILog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceCardAnalyticsUILog_onceToken, &__block_literal_global_132);
  }

  v1 = MUGetPlaceCardAnalyticsUILog_log;

  return v1;
}

uint64_t __MUGetPlaceCardAnalyticsUILog_block_invoke()
{
  MUGetPlaceCardAnalyticsUILog_log = os_log_create("com.apple.MapsUI", "PlaceCardAnalyticsUI");

  return MEMORY[0x1EEE66BB8]();
}

id MUGetPlaceCardRevealLoggingLog()
{
  if (MUGetPlaceCardRevealLoggingLog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceCardRevealLoggingLog_onceToken, &__block_literal_global_136);
  }

  v1 = MUGetPlaceCardRevealLoggingLog_log;

  return v1;
}

uint64_t __MUGetPlaceCardRevealLoggingLog_block_invoke()
{
  MUGetPlaceCardRevealLoggingLog_log = os_log_create("com.apple.MapsUI", "PlaceCardRevealLogging");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C5792A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57939F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57943C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57957D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5795A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5796460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5796D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak((v41 + 56));
  objc_destroyWeak(&a41);
  objc_destroyWeak((v42 - 248));
  _Unwind_Resume(a1);
}

void sub_1C579729C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57981AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5799458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5799828(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

void sub_1C5799F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C579A194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C579A644(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C579AA58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C579B800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_1C579C7E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C579CFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C579D1B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C579DE6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C579E558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C579FD60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C579FEDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57A00B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57A0FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57A6A38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1C57A9064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57AB2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57ABB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57AD238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57ADC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57B06C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id unwrapLayoutItem(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 internal];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id _MUCreateNoResultsActivityProviderError()
{
  v0 = MEMORY[0x1E696ABC0];
  v1 = GEOErrorDomain();
  v2 = [v0 errorWithDomain:v1 code:-8 userInfo:0];

  return v2;
}

void sub_1C57B604C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUActivityProvidersLog()
{
  if (MUGetMUActivityProvidersLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUActivityProvidersLog_onceToken, &__block_literal_global_189);
  }

  v1 = MUGetMUActivityProvidersLog_log;

  return v1;
}

uint64_t __MUGetMUActivityProvidersLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUActivityProviders");
  v1 = MUGetMUActivityProvidersLog_log;
  MUGetMUActivityProvidersLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57B6E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUPlaceSectionHeaderFont()
{
  v0 = +[MUInfoCardStyle sectionHeaderStyle];
  v1 = MEMORY[0x1E69DDD80];
  if (v0 == 1)
  {
    v2 = MEMORY[0x1E69DB970];
  }

  else
  {
    v1 = MEMORY[0x1E69DDDC8];
    v2 = MEMORY[0x1E69DB980];
  }

  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v1];
  v4 = [v3 _mapkit_fontWithWeight:*v2];

  return v4;
}

id MUPlaceSectionHeaderSubtitleFont()
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v1 = [v0 _mapkit_fontWithWeight:*MEMORY[0x1E69DB978]];

  return v1;
}

id MUPlaceSectionHeaderAccessoryButtonFont()
{
  if (+[MUInfoCardStyle sectionHeaderStyle]== 1)
  {
    v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v1 = [v0 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  }

  return v1;
}

void sub_1C57B8CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MUGetMUPlaceEnrichmentActionLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentAction");
  v1 = MUGetMUPlaceEnrichmentActionLog_log;
  MUGetMUPlaceEnrichmentActionLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t MURevealedButtonModuleTypeForActionType(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = 2;
  switch(a1)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
      v3 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v4 = MKPlaceCardActionTypeAsString();
        v6 = 138412290;
        v7 = v4;
      }

      goto LABEL_5;
    case 1:
      break;
    case 5:
    case 6:
      result = 52;
      break;
    case 9:
      result = 51;
      break;
    case 10:
      result = 4;
      break;
    case 11:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 16:
      result = 3;
      break;
    case 17:
      result = 10;
      break;
    case 21:
      result = 1;
      break;
    case 31:
      result = 50;
      break;
    default:
LABEL_5:
      result = 0;
      break;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id MUExternalActionRevealedAnalyticsModuleButtonsForAction(void *a1)
{
  v1 = a1;
  v2 = [v1 categoryId];
  v3 = [v1 actionProviders];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MUExternalActionRevealedAnalyticsModuleButtonsForAction_block_invoke;
  v7[3] = &unk_1E8218CA8;
  v8 = v2;
  v4 = v2;
  v5 = MUMap(v3, v7);

  return v5;
}

id __MUExternalActionRevealedAnalyticsModuleButtonsForAction_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A24B0];
  v4 = a2;
  v5 = [v3 moduleButtonForType:7];
  v6 = [v4 appAdamId];

  [v5 setVendor:v6];
  [v5 setMetadata:*(a1 + 32)];

  return v5;
}

uint64_t MUActionButtonDetailAnalyticsLinkTypeFromActionType(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C5879FD0[a1 - 1];
  }
}

id MUPhotosRevealedModuleForProvider(void *a1)
{
  v1 = MEMORY[0x1E69A24C8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 displayType];

  [v3 setCategoryAlbumExists:v4 == 1];

  return v3;
}

id MUHeaderRevealedModuleForViewModel(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69A24D8]);
  if ([v1 supportsCoverPhoto])
  {
    [v2 addTitleElements:1];
  }

  if ([v1 supportsLogo])
  {
    [v2 addTitleElements:2];
  }

  if ([v1 isClaimed])
  {
    [v2 addTitleElements:3];
  }

  return v2;
}

void sub_1C57BAFF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C57BCCDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1C57BEBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57BFCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C01EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C0FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1C57C31E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C4A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUCollectionViewDiffableDataSourceCellProviderForwardingBlock(id val)
{
  objc_initWeak(&location, val);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __MUCollectionViewDiffableDataSourceCellProviderForwardingBlock_block_invoke;
  v3[3] = &unk_1E8218E40;
  objc_copyWeak(&v4, &location);
  v1 = _Block_copy(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

id __MUCollectionViewDiffableDataSourceCellProviderForwardingBlock_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView:v7 cellForItemAtIndexPath:v8 itemIdentifier:v9];

  if (!v11)
  {
    if (!NavdRecentLocationsEntitlment_block_invoke_fallbackCellRegistration)
    {
      v12 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_4541];
      v13 = NavdRecentLocationsEntitlment_block_invoke_fallbackCellRegistration;
      NavdRecentLocationsEntitlment_block_invoke_fallbackCellRegistration = v12;
    }

    v11 = [v7 dequeueConfiguredReusableCellWithRegistration:? forIndexPath:? item:?];
  }

  return v11;
}

void sub_1C57C52A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C57C7854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57C84C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMURouteSnapshotManagerLog()
{
  if (MUGetMURouteSnapshotManagerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMURouteSnapshotManagerLog_onceToken, &__block_literal_global_51);
  }

  v1 = MUGetMURouteSnapshotManagerLog_log;

  return v1;
}

uint64_t __MUGetMURouteSnapshotManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MURouteSnapshotManager");
  v1 = MUGetMURouteSnapshotManagerLog_log;
  MUGetMURouteSnapshotManagerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57CA438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5692(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id metadataWithURL(void *a1)
{
  v1 = MEMORY[0x1E696ECA0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setOriginalURL:v2];
  [v3 setURL:v2];

  return v3;
}

id imageWithPlaceholderAndLoadHandler(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696ACA0];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  v7 = [*MEMORY[0x1E6982F28] identifier];
  [v6 registerItemForTypeIdentifier:v7 loadHandler:v4];

  v8 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v5];
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithItemProvider:v6 properties:0 placeholderImage:v8];

  return v9;
}

id createMapSnapshotImage(void *a1, int a2)
{
  v3 = [a1 copy];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  [v3 _setUseSnapshotService:{objc_msgSend(v5, "isEqualToString:", @"com.apple.Maps"}];

  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v6];
  [v3 setTraitCollection:v7];

  [v3 setSize:{300.0, 300.0}];
  v8 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:v3];
  v9 = +[MUPlaceholderGridCache unretainedInstance];
  v10 = v9;
  if (a2)
  {
    [v9 lightGrid];
  }

  else
  {
    [v9 darkGrid];
  }
  v11 = ;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __createMapSnapshotImage_block_invoke;
  v15[3] = &unk_1E8218FD0;
  v16 = v8;
  v12 = v8;
  v13 = imageWithPlaceholderAndLoadHandler(v11, v15);

  return v13;
}

void __createMapSnapshotImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __createMapSnapshotImage_block_invoke_2;
  v7[3] = &unk_1E8219070;
  v8 = v3;
  v6 = v3;
  [v4 startWithQueue:v5 completionHandler:v7];
}

void __createMapSnapshotImage_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __createMapSnapshotImage_block_invoke_3;
  block[3] = &unk_1E821B8D8;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __createMapSnapshotImage_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) image];

  v3 = *(a1 + 48);
  if (v2)
  {
    v8 = [*(a1 + 32) image];
    v4 = UIImagePNGRepresentation(v8);
    (*(v3 + 16))(v3, v4, 0);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(v3 + 16);
    v7 = *(a1 + 48);

    v6(v7, 0, v5);
  }
}

id annotatedSnapshotImageWithMapItems(void *a1, int a2)
{
  v3 = MEMORY[0x1E696F188];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 initWithMapItems:v4 mapSize:objc_msgSend(v7 useSnapshotService:{"isEqualToString:", @"com.apple.Maps", 300.0, 300.0}];

  if (a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v9];
  [v8 setTraitCollection:v10];

  v11 = +[MUPlaceholderGridCache unretainedInstance];
  v12 = v11;
  if (a2)
  {
    [v11 lightGrid];
  }

  else
  {
    [v11 darkGrid];
  }
  v13 = ;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __annotatedSnapshotImageWithMapItems_block_invoke;
  v17[3] = &unk_1E8218FD0;
  v18 = v8;
  v14 = v8;
  v15 = imageWithPlaceholderAndLoadHandler(v13, v17);

  return v15;
}

void __annotatedSnapshotImageWithMapItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __annotatedSnapshotImageWithMapItems_block_invoke_2;
  v7[3] = &unk_1E8219070;
  v8 = v3;
  v6 = v3;
  [v4 startWithQueue:v5 completionHandler:v7];
}

void __annotatedSnapshotImageWithMapItems_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __annotatedSnapshotImageWithMapItems_block_invoke_3;
  block[3] = &unk_1E821B8D8;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __annotatedSnapshotImageWithMapItems_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) image];

  v3 = *(a1 + 48);
  if (v2)
  {
    v8 = [*(a1 + 32) image];
    v4 = UIImagePNGRepresentation(v8);
    (*(v3 + 16))(v3, v4, 0);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(v3 + 16);
    v7 = *(a1 + 48);

    v6(v7, 0, v5);
  }
}

id categoryIconFromMapItem(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 _styleAttributes];
  if (v2)
  {
    v3 = MEMORY[0x1E696F220];
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v5 = [v3 imageForStyle:v2 size:5 forScale:0 format:?];

    if (v5)
    {
      v6 = createLinkPresentationImage(v5);

      v7 = v2;
      goto LABEL_13;
    }

    v8 = MUGetShareSheetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v2;
      v17 = 2112;
      v18 = v1;
      _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_ERROR, "Failed to retrieve POI icon with non-null attributes : %@ and mapItem : %@", &v15, 0x16u);
    }
  }

  v7 = [MEMORY[0x1E69A1DB0] addressMarkerStyleAttributes];

  v9 = MEMORY[0x1E696F220];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v11 = [v9 imageForStyle:v7 size:5 forScale:0 format:?];

  if (v11)
  {
    v6 = createLinkPresentationImage(v11);
  }

  else
  {
    v12 = MUGetShareSheetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v1;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_ERROR, "Failed to retrieve fallback address icon with attributes : %@ and mapItem : %@", &v15, 0x16u);
    }

    v6 = 0;
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

id createLinkPresentationImage(void *a1)
{
  v1 = MEMORY[0x1E696EC68];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = UIImagePNGRepresentation(v2);

  v5 = [v3 initWithData:v4 MIMEType:@"image/png"];

  return v5;
}

id HTMLStringForMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 URL];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5898;
  v25 = __Block_byref_object_dispose__5899;
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __HTMLStringForMetadata_block_invoke;
  aBlock[3] = &unk_1E8218FF8;
  v3 = v2;
  v18 = v3;
  v4 = v1;
  v19 = v4;
  v20 = &v21;
  v5 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5[2](v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __HTMLStringForMetadata_block_invoke_2;
    block[3] = &unk_1E821B860;
    v16 = v5;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v13 = HTMLBodyWrapperStringWithFormat(@"%@", v6, v7, v8, v9, v10, v11, v12, v22[5]);

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __Block_byref_object_copy__5898(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HTMLStringForMetadata_block_invoke(void *a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [objc_alloc(MEMORY[0x1E696EC90]) initWithURL:a1[4]];
  [v5 setMetadata:a1[5]];
  v2 = [v5 HTMLFragmentString];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1C57CD968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C57CEF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HTMLBodyWrapperStringWithFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<html><head><meta charset=utf-8 /></head><body>%@</body></html>", v11];

  return v12;
}

id HTMLStringForPhoto(void *a1)
{
  v1 = MEMORY[0x1E696F3B8];
  v2 = a1;
  v3 = [v1 sharedInstance];
  [v3 screenScale];
  v5 = v4;
  v6 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithCropStyle:4];
  v7 = [v2 bestPhotoForFrameSize:v6 displayScale:300.0 options:{150.0, v5}];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 url];
  v10 = [v8 stringWithFormat:@"<img style=border-radius:8px src=%@ width=%f height=%f>", v9, 0x4072C00000000000, 0x4062C00000000000];;

  return v10;
}

void MUHTMLStringForAnnotatedSnapshotImageWithMapItems(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696F188];
  v5 = a1;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 initWithMapItems:v5 mapSize:objc_msgSend(v8 useSnapshotService:{"isEqualToString:", @"com.apple.Maps", 300.0, 150.0}];

  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  [v9 setTraitCollection:v10];

  v11 = dispatch_get_global_queue(25, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MUHTMLStringForAnnotatedSnapshotImageWithMapItems_block_invoke;
  v13[3] = &unk_1E8219070;
  v14 = v3;
  v12 = v3;
  [v9 startWithQueue:v11 completionHandler:v13];
}

void __MUHTMLStringForAnnotatedSnapshotImageWithMapItems_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 image];

  if (v6)
  {
    v7 = [v11 image];
    v8 = UIImagePNGRepresentation(v7);

    v9 = [v8 base64EncodedStringWithOptions:0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<img style=border-radius:8px src=data:image/png;base64, %@ width=%f height=%f>", v9, 0x4072C00000000000, 0x4062C00000000000];;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id HTMLStringForMapItemDetailsWithTitle(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF70];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 _navigation_sanitizedStringForDisplayInHTML];

  v9 = [v7 stringWithFormat:@"<b>%@</b>", v8];

  v10 = [v3 _firstLocalizedCategoryName];
  if ([v10 length])
  {
    v11 = [v10 _navigation_sanitizedStringForDisplayInHTML];
    v12 = [v9 stringByAppendingFormat:@"<br>%@", v11];

    v9 = v12;
  }

  [v6 addObject:v9];
  v13 = [v3 _addressFormattedAsMultilineAddress];
  if ([v13 length])
  {
    v14 = [v13 _navigation_sanitizedStringForDisplayInHTML];
    [v6 addObject:v14];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [v3 phoneNumber];
  if ([v16 length])
  {
    v17 = [v16 _navigation_sanitizedStringForDisplayInHTML];
    [v15 addObject:v17];
  }

  v18 = [v3 url];
  v19 = [v18 absoluteString];

  if ([v19 length])
  {
    v20 = [MEMORY[0x1E696AEC0] _mapkit_shortenedURLStringForFullURLString:v19];
    v21 = [v20 _navigation_sanitizedStringForDisplayInHTML];

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<a href=%@>%@</a>", v19, v21];
    [v15 addObject:v22];
  }

  v23 = [v15 componentsJoinedByString:@"<br>"];
  if ([v23 length])
  {
    [v6 addObject:v23];
  }

  v24 = [v6 componentsJoinedByString:@"<br><br>"];

  return v24;
}

id HTMLStringForURLWithLabel(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = [a2 _navigation_sanitizedStringForDisplayInHTML];
  }

  else
  {
    v5 = _MULocalizedStringFromThisBundle(@"Open in Apple Maps [Sharing]");
    v4 = [v5 _navigation_sanitizedStringForDisplayInHTML];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 absoluteString];

  v8 = [v6 stringWithFormat:@"<a href=%@>%@</a>", v7, v4];

  return v8;
}

void sub_1C57D2F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D3298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D40E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57D4704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D4C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D62EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D6904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57D6B6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57D733C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D8194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D8618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id MUGetMUWebContentLog()
{
  if (MUGetMUWebContentLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUWebContentLog_onceToken, &__block_literal_global_150);
  }

  v1 = MUGetMUWebContentLog_log;

  return v1;
}

uint64_t __MUGetMUWebContentLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUWebContent");
  v1 = MUGetMUWebContentLog_log;
  MUGetMUWebContentLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57D9708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57D9F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DC46C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57DCD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DD498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DD92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57DFD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E059C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUGroupedExternalActionControllerLog()
{
  if (MUGetMUGroupedExternalActionControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUGroupedExternalActionControllerLog_onceToken, &__block_literal_global_104);
  }

  v1 = MUGetMUGroupedExternalActionControllerLog_log;

  return v1;
}

uint64_t __MUGetMUGroupedExternalActionControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUGroupedExternalActionController");
  v1 = MUGetMUGroupedExternalActionControllerLog_log;
  MUGetMUGroupedExternalActionControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57E2D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E42EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E51F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8957(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MUGetMUPlaceEnrichmentSectionControllerLog()
{
  if (MUGetMUPlaceEnrichmentSectionControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceEnrichmentSectionControllerLog_onceToken, &__block_literal_global_296);
  }

  v1 = MUGetMUPlaceEnrichmentSectionControllerLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceEnrichmentSectionControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentSectionController");
  v1 = MUGetMUPlaceEnrichmentSectionControllerLog_log;
  MUGetMUPlaceEnrichmentSectionControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57E5F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C57E7804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57E7C30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C57E8FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9469(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __MUGetMUVariableBlurViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUVariableBlurView");
  v1 = MUGetMUVariableBlurViewLog_log;
  MUGetMUVariableBlurViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _createAmenityImageView()
{
  v0 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [MEMORY[0x1E69DC888] labelColor];
  [v1 setTintColor:v2];

  return v1;
}

void sub_1C57EF864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F00A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10417(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __MUGetMUVendorLinkSorterLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUVendorLinkSorter");
  v1 = MUGetMUVendorLinkSorterLog_log;
  MUGetMUVendorLinkSorterLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57F035C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id MUGetMUImpressionCalculatorBackgroundingLog()
{
  if (MUGetMUImpressionCalculatorBackgroundingLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUImpressionCalculatorBackgroundingLog_onceToken, &__block_literal_global_168);
  }

  v1 = MUGetMUImpressionCalculatorBackgroundingLog_log;

  return v1;
}

uint64_t __MUGetMUImpressionCalculatorBackgroundingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUImpressionCalculatorBackgrounding");
  v1 = MUGetMUImpressionCalculatorBackgroundingLog_log;
  MUGetMUImpressionCalculatorBackgroundingLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetMUImpressionVisibilityCheckingLog()
{
  if (MUGetMUImpressionVisibilityCheckingLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUImpressionVisibilityCheckingLog_onceToken, &__block_literal_global_164);
  }

  v1 = MUGetMUImpressionVisibilityCheckingLog_log;

  return v1;
}

uint64_t __MUGetMUImpressionVisibilityCheckingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUImpressionVisibilityChecking");
  v1 = MUGetMUImpressionVisibilityCheckingLog_log;
  MUGetMUImpressionVisibilityCheckingLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57F2C5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

id _createTitleLabel()
{
  v0 = [MUInfoCardStyle labelForProminence:0];
  [v0 setNumberOfLines:2];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v2 = [v1 _mapkit_fontWithSymbolicTraits:0x8000];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [v0 setFont:v3];

  [v0 setLineBreakMode:4];
  LODWORD(v4) = 1.0;
  [v0 _setHyphenationFactor:v4];
  [v0 setAllowsDefaultTighteningForTruncation:1];

  return v0;
}

id _createSecondaryLabel()
{
  v0 = [MUInfoCardStyle labelForProminence:1];
  [v0 setNumberOfLines:2];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v0 setFont:v1];

  v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setLineBreakMode:4];
  [v0 setAllowsDefaultTighteningForTruncation:1];

  return v0;
}

id _createFooterLabel()
{
  v0 = [MUInfoCardStyle labelForProminence:1];
  [v0 setNumberOfLines:2];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v2 = [v1 _mapkit_fontWithSymbolicTraits:0x8000];
  [v0 setFont:v2];

  v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v0 setTextColor:v3];

  [v0 setAllowsDefaultTighteningForTruncation:1];

  return v0;
}

double _calculateBoundingRectForAttributedStringWithHeight(void *a1, double a2)
{
  v3 = a1;
  if ([v3 length])
  {
    [v3 boundingRectWithSize:3 options:0 context:{a2, 1000.0}];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [MEMORY[0x1E696F3B8] sharedInstance];
    [v12 screenScale];

    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    CGRectGetWidth(v19);
    UICeilToScale();
    v14 = v13;
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v14;
    v20.size.height = v11;
    CGRectGetHeight(v20);
    UICeilToScale();
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  return v5;
}

void sub_1C57F4220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F57B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C57F6A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F8000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak(&a55);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57F83A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUStringForGEOAmenityType(int a1)
{
  v2 = a1 - 1;
  v3 = @"Accepts Credit Cards";
  switch(v2)
  {
    case 0:
      goto LABEL_69;
    case 1:
      v3 = @"Wheelchair Accessible";
      goto LABEL_69;
    case 2:
      v3 = @"Kid Friendly";
      goto LABEL_69;
    case 3:
      v3 = @"Delivery";
      goto LABEL_69;
    case 4:
      v3 = @"Pets Allowed";
      goto LABEL_69;
    case 5:
      v3 = @"Open 24 Hours";
      goto LABEL_69;
    case 6:
      v3 = @"Fitness Center";
      goto LABEL_69;
    case 7:
      v3 = @"Free Breakfast";
      goto LABEL_69;
    case 8:
      v3 = @"Spa";
      goto LABEL_69;
    case 9:
      v3 = @"Swimming Pool";
      goto LABEL_69;
    case 10:
      v4 = MGGetBoolAnswer();
      v5 = @"Wi-Fi";
      v6 = @"WLAN";
      goto LABEL_46;
    case 11:
      v4 = MGGetBoolAnswer();
      v5 = @"Free Wi-Fi";
      v6 = @"Free WLAN";
LABEL_46:
      if (v4)
      {
        v3 = v6;
      }

      else
      {
        v3 = v5;
      }

      goto LABEL_69;
    case 12:
      v3 = @"Free Internet";
      goto LABEL_69;
    case 13:
      v3 = @"Shuttle Service";
      goto LABEL_69;
    case 14:
      v3 = @"Airport Transportation";
      goto LABEL_69;
    case 15:
      v3 = @"Parking Available";
      goto LABEL_69;
    case 16:
      v3 = @"Parking Garage";
      goto LABEL_69;
    case 17:
      v3 = @"Free Parking";
      goto LABEL_69;
    case 18:
      v3 = @"Smoking Allowed";
      goto LABEL_69;
    case 19:
      v3 = @"Reservations";
      goto LABEL_69;
    case 20:
      v3 = @"Accepts Apple Pay";
      goto LABEL_69;
    case 21:
      v3 = @"Gender-Neutral Restrooms";
      goto LABEL_69;
    case 22:
      v3 = @"Takeout";
      goto LABEL_69;
    case 23:
      v3 = @"Appointment Only";
      goto LABEL_69;
    case 24:
      v3 = @"Good for Groups";
      goto LABEL_69;
    case 25:
      v3 = @"Scenic View";
      goto LABEL_69;
    case 26:
      v3 = @"Outdoor Seating";
      goto LABEL_69;
    case 27:
      v3 = @"Waterfront";
      goto LABEL_69;
    case 28:
      v3 = @"Beachfront";
      goto LABEL_69;
    case 29:
      v3 = @"Dogs Allowed";
      goto LABEL_69;
    case 30:
      v3 = @"Drive-through";
      goto LABEL_69;
    case 31:
      v3 = @"Full Bar";
      goto LABEL_69;
    case 32:
      v3 = @"Vegetarian Options";
      goto LABEL_69;
    case 33:
      v3 = @"Vegan Options";
      goto LABEL_69;
    case 34:
      v3 = @"Glutenfree Options";
      goto LABEL_69;
    case 35:
      v3 = @"Soy-free Options";
      goto LABEL_69;
    case 36:
      v3 = @"Halal Options";
      goto LABEL_69;
    case 37:
      v3 = @"Dairy-free Options";
      goto LABEL_69;
    case 38:
      v3 = @"Meeting Rooms";
      goto LABEL_69;
    case 39:
      v3 = @"Smoke-free property";
      goto LABEL_69;
    case 40:
      v3 = @"Non-smoking Rooms";
      goto LABEL_69;
    case 41:
      v3 = @"Family Rooms";
      goto LABEL_69;
    case 42:
      v3 = @"Bar / Lounge";
      goto LABEL_69;
    case 43:
      v3 = @"Restaurant";
      goto LABEL_69;
    case 44:
      v3 = @"Laundry Service";
      goto LABEL_69;
    case 45:
      v3 = @"Large Tables";
      goto LABEL_69;
    case 46:
      v3 = @"Private Rooms";
      goto LABEL_69;
    case 47:
      v3 = @"High Chairs";
      goto LABEL_69;
    case 48:
      v3 = @"Self Ordering Online";
      goto LABEL_69;
    case 49:
      v3 = @"Online Queuing";
      goto LABEL_69;
    case 50:
      v3 = @"Seating for Couples";
      goto LABEL_69;
    case 51:
      v3 = @"Children's Discount";
      goto LABEL_69;
    case 52:
      v3 = @"IMAX";
      goto LABEL_69;
    case 53:
      v3 = @"Device Trade-in for Credit";
      goto LABEL_69;
    case 54:
      v3 = @"Free Today at Apple Sessions";
      goto LABEL_69;
    case 55:
      v3 = @"Small Business Solutions";
      goto LABEL_69;
    case 56:
      v3 = @"Hardware Repairs and Support";
      goto LABEL_69;
    case 57:
      v3 = @"Genius Bar Walk-ins";
      goto LABEL_69;
    case 58:
      v3 = @"Apple Authorized Service Provider";
      goto LABEL_69;
    case 59:
      v3 = @"Offers Same Day iPhone Screen Repair";
      goto LABEL_69;
    case 60:
      v3 = @"Walk-in Repairs";
      goto LABEL_69;
    case 61:
      v3 = @"Apple Authorized Drop-off Location";
LABEL_69:
      v7 = _MULocalizedStringFromThisBundle(v3);

      break;
    default:
      v7 = 0;

      break;
  }

  return v7;
}

id MUGetMUImpressionsLoggerLog()
{
  if (MUGetMUImpressionsLoggerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUImpressionsLoggerLog_onceToken, &__block_literal_global_11696);
  }

  v1 = MUGetMUImpressionsLoggerLog_log;

  return v1;
}

uint64_t __MUGetMUImpressionsLoggerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUImpressionsLogger");
  v1 = MUGetMUImpressionsLoggerLog_log;
  MUGetMUImpressionsLoggerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C57FC918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57FD850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12685(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C57FE4D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C57FE604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C57FE9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12821(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C57FF96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C57FFFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUExpandableHoursViewLog()
{
  if (MUGetMUExpandableHoursViewLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUExpandableHoursViewLog_onceToken, &__block_literal_global_136_13090);
  }

  v1 = MUGetMUExpandableHoursViewLog_log;

  return v1;
}

uint64_t __MUGetMUExpandableHoursViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUExpandableHoursView");
  v1 = MUGetMUExpandableHoursViewLog_log;
  MUGetMUExpandableHoursViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5802880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C58068C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5809684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ___defaultTitleAttributedStringForString_block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v7 = *MEMORY[0x1E69DB650];
  v14[0] = *MEMORY[0x1E69DB648];
  v14[1] = v7;
  v15[0] = v5;
  v15[1] = v6;
  v8 = MEMORY[0x1E695DF20];
  v9 = v5;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = [v2 initWithString:v3 attributes:v10];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1C580DA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C58128B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5814478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5814C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16682(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5814FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetPlaceExtensionDiscoveryManagerLog()
{
  if (MUGetPlaceExtensionDiscoveryManagerLog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceExtensionDiscoveryManagerLog_onceToken, &__block_literal_global_99);
  }

  v1 = MUGetPlaceExtensionDiscoveryManagerLog_log;

  return v1;
}

uint64_t __MUGetPlaceExtensionDiscoveryManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "PlaceExtensionDiscoveryManager");
  v1 = MUGetPlaceExtensionDiscoveryManagerLog_log;
  MUGetPlaceExtensionDiscoveryManagerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5815588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5815904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id createMapPlaceholderGrid(int a1, double a2, double a3)
{
  v6 = MUGetShareSheetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Synchronously creating placeholder grid as it has not been prefetched. This is an expensive operation on the main thread.", buf, 2u);
  }

  v7 = createPlaceholderSnapshotOptions(a1, a2, a3);
  v8 = [MEMORY[0x1E696F2A0] createSnapshotWithOptions:v7 timeoutInSeconds:3];
  v9 = [v8 image];
  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2, a3}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __createMapPlaceholderGrid_block_invoke;
    v12[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v12[4] = a2;
    *&v12[5] = a3;
    v9 = [v10 imageWithActions:v12];
  }

  return v9;
}

id createPlaceholderSnapshotOptions(int a1, double a2, double a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [v6 setSize:{a2, a3}];
  [v6 setMapType:105];
  if (a1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = MEMORY[0x1E695DEC8];
  v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v7];
  v10 = MEMORY[0x1E69DD1B8];
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 nativeScale];
  v12 = [v10 traitCollectionWithDisplayScale:?];
  v13 = [v8 arrayWithObjects:{v9, v12, 0}];

  v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraitsFromCollections:v13];
  [v6 setTraitCollection:v14];

  return v6;
}

void __createMapPlaceholderGrid_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v5 = a2;
  v4 = [v3 colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  [v4 setFill];

  [v5 fillRect:{0.0, 0.0, *(a1 + 32), *(a1 + 40)}];
}

void sub_1C5816A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void ___placeholderSnapshotQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.maps.PlaceholderSnapshotQueue", attr);
  v2 = _placeholderSnapshotQueue_snapshotQueue;
  _placeholderSnapshotQueue_snapshotQueue = v1;
}

id MUGetMUPhotoSliderViewLog()
{
  if (MUGetMUPhotoSliderViewLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPhotoSliderViewLog_onceToken, &__block_literal_global_17027);
  }

  v1 = MUGetMUPhotoSliderViewLog_log;

  return v1;
}

uint64_t __MUGetMUPhotoSliderViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPhotoSliderView");
  v1 = MUGetMUPhotoSliderViewLog_log;
  MUGetMUPhotoSliderViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetMUPlaceEnrichmentAPIControllerLog()
{
  if (MUGetMUPlaceEnrichmentAPIControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceEnrichmentAPIControllerLog_onceToken, &__block_literal_global_115);
  }

  v1 = MUGetMUPlaceEnrichmentAPIControllerLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceEnrichmentAPIControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentAPIController");
  v1 = MUGetMUPlaceEnrichmentAPIControllerLog_log;
  MUGetMUPlaceEnrichmentAPIControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5819300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C581A9AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id MUConvertedFormattedDurationString(double a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AD28]);
  v3 = [MEMORY[0x1E696B008] milliseconds];
  v4 = [v2 initWithDoubleValue:v3 unit:a1];

  v5 = [MEMORY[0x1E696B008] seconds];
  v6 = [v4 measurementByConvertingToUnit:v5];
  [v6 doubleValue];
  v8 = v7;

  v9 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v10 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  [v9 setCalendar:v10];

  [v9 setAllowedUnits:112];
  [v9 setMaximumUnitCount:2];
  [v9 setUnitsStyle:2];
  v11 = [v9 stringFromTimeInterval:v8];

  return v11;
}

void MUConfigureMeasurementFormatter(void *a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v9 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v12 setLocale:v9];

  [v12 setUnitStyle:2];
  [v12 setUnitOptions:1];
  v10 = [v12 numberFormatter];
  [v10 setMaximumFractionDigits:a4];

  v11 = [v12 numberFormatter];
  [v11 setRoundingMode:a5];

  if ((a2 & 1) == 0 && (a3 == 8 || a3 == 3))
  {
    [v12 setUnitStyle:1];
  }
}

id MUFactoidMeasurementFormatterForValue(int a1, double a2)
{
  v3 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareKilometers];
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_20;
        }

        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareMeters];
      }

      goto LABEL_19;
    }

    if (a1 == 5)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] meters];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B008] milliseconds];
    }

    goto LABEL_8;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B088] cubicMeters];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] kilometers];
    }

    v5 = LABEL_8:;
    goto LABEL_19;
  }

  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      goto LABEL_20;
    }

    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [MEMORY[0x1E696B088] cubicKilometers];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [[_MUEmptyUnit alloc] initWithSymbol:&stru_1F44CA030];
  }

LABEL_19:
  v6 = v5;
  v3 = [v4 initWithDoubleValue:v5 unit:a2];

LABEL_20:

  return v3;
}

id MUFactoidImpericalMeasurementFormatterForValue(int a1, double a2)
{
  v3 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareMiles];
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_20;
        }

        v4 = objc_alloc(MEMORY[0x1E696AD28]);
        v5 = [MEMORY[0x1E696AFE8] squareFeet];
      }

      goto LABEL_19;
    }

    if (a1 == 5)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] feet];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B008] milliseconds];
    }

    goto LABEL_8;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B088] cubicFeet];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AD28]);
      [MEMORY[0x1E696B058] miles];
    }

    v5 = LABEL_8:;
    goto LABEL_19;
  }

  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      goto LABEL_20;
    }

    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [MEMORY[0x1E696B088] cubicMiles];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    v5 = [[_MUEmptyUnit alloc] initWithSymbol:&stru_1F44CA030];
  }

LABEL_19:
  v6 = v5;
  v3 = [v4 initWithDoubleValue:v5 unit:a2];

LABEL_20:

  return v3;
}

id MUConvertedFormattedString(void *a1, void *a2, void *a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 canBeConvertedToUnit:v8];
  if (MUGetFactoidConversionLog_onceToken != -1)
  {
    dispatch_once(&MUGetFactoidConversionLog_onceToken, &__block_literal_global_18000);
  }

  v11 = MUGetFactoidConversionLog_log;
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 unit];
      v26 = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "Will convert %@ to %@", &v26, 0x16u);
    }

    v14 = [v7 measurementByConvertingToUnit:v8];
    if (a4)
    {
      v15 = [MEMORY[0x1E696AFE8] squareMiles];
      v16 = [v8 isEqual:v15];

      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x1E696AD28]);
        [v14 doubleValue];
        v19 = v18;
        v20 = [_MUEmptyUnit unitFromUnit:v8];
        v21 = [v17 initWithDoubleValue:v20 unit:v19];

        v14 = v21;
      }
    }

    v22 = [v9 stringFromMeasurement:v14];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23 = [v7 unit];
      v26 = 138412546;
      v27 = v23;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_ERROR, "Tried to convert %@ to %@ but unsuccessful. Using original unit", &v26, 0x16u);
    }

    v22 = [v9 stringFromMeasurement:v7];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

uint64_t __MUGetFactoidConversionLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "FactoidConversion");
  v1 = MUGetFactoidConversionLog_log;
  MUGetFactoidConversionLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C581E390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C581E894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MUStringFromUIRectEdge(char a1)
{
  if ((a1 & 0xF) == 0)
  {
    v1 = @"UIRectEdgeNone";
    goto LABEL_11;
  }

  if ((a1 & 0xF) == 0xFLL)
  {
    v1 = @"UIRectEdgeAll";
    goto LABEL_11;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (a1)
  {
    [v3 addObject:@"UIRectEdgeTop"];
    if ((a1 & 2) == 0)
    {
LABEL_7:
      if ((a1 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      [v4 addObject:@"UIRectEdgeBottom"];
      if ((a1 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"UIRectEdgeLeft"];
  if ((a1 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a1 & 8) != 0)
  {
LABEL_9:
    [v4 addObject:@"UIRectEdgeRight"];
  }

LABEL_10:
  v1 = [v4 componentsJoinedByString:@" | "];

LABEL_11:

  return v1;
}

void MURoundPointsToNearestPixel(long double a1, double a2)
{
  if (a2 >= 1.0)
  {
    fmod(a1, 0.5 / a2);
  }
}

uint64_t MUContentSizeCategoryComparisonResult(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v6 = MEMORY[0x1E69DDC90];
  if (!v3)
  {
    v7 = 1;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:
    v12 = !v7;
    goto LABEL_18;
  }

  v7 = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC90]) == NSOrderedSame;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_4:
  v8 = UIContentSizeCategoryCompareToCategory(v5, *v6);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1;
  }

  v11 = v9 - 1;
  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v12 = UIContentSizeCategoryCompareToCategory(v3, v5);
  }

LABEL_18:

  return v12;
}

uint64_t MUIdiomInTraitEnvironment(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2;
}

void MURegisterForButtonShapeEnablementChanges(void *a1, uint64_t a2)
{
  v4 = a1;
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v4 selector:a2 name:*MEMORY[0x1E69DD8A8] object:0];
  }
}

id MUGetMUPlaceEnrichmentActionManagerLog()
{
  if (MUGetMUPlaceEnrichmentActionManagerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceEnrichmentActionManagerLog_onceToken, &__block_literal_global_200);
  }

  v1 = MUGetMUPlaceEnrichmentActionManagerLog_log;

  return v1;
}

void sub_1C58215AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MUGetMUPlaceEnrichmentActionManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceEnrichmentActionManager");
  v1 = MUGetMUPlaceEnrichmentActionManagerLog_log;
  MUGetMUPlaceEnrichmentActionManagerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C58231A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose((v57 - 240), 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18756(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MUHighlightedAttributionString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 length])
  {
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v8];
    if (!v10)
    {
      v10 = v8;
    }

    if ([v9 length])
    {
      v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v10];
      v13 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v11, v12];
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = objc_opt_new();
  }

  return v13;
}

void sub_1C58254CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _MUFactoidStringForFactoid(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MUFactoidViewModel viewModelForFactoid:a1];
  v5 = [v4 valueString];
  v6 = v3;
  v7 = [v5 length];
  v8 = MEMORY[0x1E69DB650];
  v9 = MEMORY[0x1E69DB648];
  if (v7)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = [MEMORY[0x1E69DC888] systemGrayColor];
    v12 = *v8;
    v49 = *v9;
    v50 = v12;
    v51 = v6;
    v52 = v11;
    v13 = MEMORY[0x1E695DF20];
    v14 = v6;
    v15 = [v13 dictionaryWithObjects:&v51 forKeys:&v49 count:2];

    v16 = [v10 initWithString:v5 attributes:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v4 symbolName];
  v18 = MEMORY[0x1E69DCAB8];
  v19 = MEMORY[0x1E69DCAD8];
  v20 = v6;
  v21 = [v19 configurationWithFont:v20 scale:1];
  v22 = [v18 _mapsui_resolvedSymbolImageNamed:v17 withConfiguration:v21];

  v23 = [v22 imageWithRenderingMode:2];

  if (v23)
  {
    v47 = v5;
    v24 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v24 setImage:v23];
    v25 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v24];
    v26 = [v25 mutableCopy];

    v27 = [v4 symbolColor];

    if (v27)
    {
      v28 = [v4 symbolColor];
      v49 = *MEMORY[0x1E69DB650];
      v51 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v49 count:1];
      [v26 addAttributes:v29 range:{0, objc_msgSend(v26, "length")}];
    }

    v48[0] = v26;
    v30 = v20;
    if ([@" " length])
    {
      v46 = objc_alloc(MEMORY[0x1E696AAB0]);
      v31 = [MEMORY[0x1E69DC888] systemGrayColor];
      v32 = *MEMORY[0x1E69DB650];
      v49 = *MEMORY[0x1E69DB648];
      v50 = v32;
      v51 = v30;
      v52 = v31;
      v33 = v16;
      v34 = MEMORY[0x1E695DF20];
      v35 = v24;
      v36 = v20;
      v37 = v4;
      v38 = v23;
      v39 = v30;
      v40 = [v34 dictionaryWithObjects:&v51 forKeys:&v49 count:2];

      v23 = v38;
      v4 = v37;
      v20 = v36;
      v24 = v35;
      v41 = [v46 initWithString:@" " attributes:v40];

      v16 = v33;
    }

    else
    {
      v41 = 0;
    }

    v48[1] = v41;
    v48[2] = v16;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
    v43 = +[MapsUILayout buildAttributedDisplayStringForComponents:reverseIfRTLLayout:](MapsUILayout, "buildAttributedDisplayStringForComponents:reverseIfRTLLayout:", v42, [v4 shouldReverseForRTLLayout]);

    v5 = v47;
  }

  else
  {
    v43 = [v16 copy];
  }

  v44 = *MEMORY[0x1E69E9840];

  return v43;
}

void _MUFetchBadgeIconWithStyleAttributes(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  v8 = a3;
  v9 = v8;
  if (v5)
  {
    v10 = [MEMORY[0x1E696F3B8] sharedInstance];
    [v10 screenScale];
    v12 = v11;

    if (_MUIconFetchingQueue_onceToken != -1)
    {
      dispatch_once(&_MUIconFetchingQueue_onceToken, &__block_literal_global_19250);
    }

    v13 = _MUIconFetchingQueue_iconFetchQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___MUFetchBadgeIconWithStyleAttributes_block_invoke;
    v15[3] = &unk_1E821A008;
    v16 = v5;
    v19 = 5;
    v20 = v12;
    v21 = a2;
    v14 = v6;
    v17 = v6;
    v18 = v9;
    dispatch_async(v13, v15);
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0, 0);
  }
}

void sub_1C5829058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C582A8C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C582C77C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C582D4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C582D71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C582EE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUPlacePhotoVCLog()
{
  if (MUGetMUPlacePhotoVCLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlacePhotoVCLog_onceToken, &__block_literal_global_20489);
  }

  v1 = MUGetMUPlacePhotoVCLog_log;

  return v1;
}

uint64_t __MUGetMUPlacePhotoVCLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlacePhotoVC");
  v1 = MUGetMUPlacePhotoVCLog_log;
  MUGetMUPlacePhotoVCLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C58307B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5833920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5833CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C58348F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5834DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583578C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1C5835BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5837198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_destroyWeak(v26 + 6);
  objc_destroyWeak(v26 + 5);
  objc_destroyWeak(v26 + 4);
  objc_destroyWeak((v27 - 128));
  objc_destroyWeak((v27 - 120));
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

id MUGetMUPlaceActionBarSectionControllerLog()
{
  if (MUGetMUPlaceActionBarSectionControllerLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceActionBarSectionControllerLog_onceToken, &__block_literal_global_113);
  }

  v1 = MUGetMUPlaceActionBarSectionControllerLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceActionBarSectionControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceActionBarSectionController");
  v1 = MUGetMUPlaceActionBarSectionControllerLog_log;
  MUGetMUPlaceActionBarSectionControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C5837FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MUGetMUPlaceTilesViewLog()
{
  if (MUGetMUPlaceTilesViewLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceTilesViewLog_onceToken, &__block_literal_global_21754);
  }

  v1 = MUGetMUPlaceTilesViewLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceTilesViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceTilesView");
  v1 = MUGetMUPlaceTilesViewLog_log;
  MUGetMUPlaceTilesViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C583BC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583DB04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id MUGetMUWebContentLog_22854()
{
  if (MUGetMUWebContentLog_onceToken_22856 != -1)
  {
    dispatch_once(&MUGetMUWebContentLog_onceToken_22856, &__block_literal_global_303);
  }

  v1 = MUGetMUWebContentLog_log_22857;

  return v1;
}

uint64_t __MUGetMUWebContentLog_block_invoke_22859()
{
  v0 = os_log_create("com.apple.MapsUI", "MUWebContent");
  v1 = MUGetMUWebContentLog_log_22857;
  MUGetMUWebContentLog_log_22857 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C583E0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C583ECF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

id MUGetMUAMSResultProviderLog()
{
  if (MUGetMUAMSResultProviderLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUAMSResultProviderLog_onceToken, &__block_literal_global_23060);
  }

  v1 = MUGetMUAMSResultProviderLog_log;

  return v1;
}

uint64_t __MUGetMUAMSResultProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUAMSResultProvider");
  v1 = MUGetMUAMSResultProviderLog_log;
  MUGetMUAMSResultProviderLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetMUPlaceCardImpressionLoggingLog()
{
  if (MUGetMUPlaceCardImpressionLoggingLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPlaceCardImpressionLoggingLog_onceToken, &__block_literal_global_23148);
  }

  v1 = MUGetMUPlaceCardImpressionLoggingLog_log;

  return v1;
}

uint64_t __MUGetMUPlaceCardImpressionLoggingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPlaceCardImpressionLogging");
  v1 = MUGetMUPlaceCardImpressionLoggingLog_log;
  MUGetMUPlaceCardImpressionLoggingLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void ___punchOutForAnnotatedList_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 absoluteString];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Punched out annotated list with url %@ url and bundle identifier %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

id MUGetMUPhotoSliderTileProviderLog()
{
  if (MUGetMUPhotoSliderTileProviderLog_onceToken != -1)
  {
    dispatch_once(&MUGetMUPhotoSliderTileProviderLog_onceToken, &__block_literal_global_64_24275);
  }

  v1 = MUGetMUPhotoSliderTileProviderLog_log;

  return v1;
}

uint64_t __MUGetMUPhotoSliderTileProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "MUPhotoSliderTileProvider");
  v1 = MUGetMUPhotoSliderTileProviderLog_log;
  MUGetMUPhotoSliderTileProviderLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __MUGetMUWebContentLog_block_invoke_24342()
{
  v0 = os_log_create("com.apple.MapsUI", "MUWebContent");
  v1 = MUGetMUWebContentLog_log_24338;
  MUGetMUWebContentLog_log_24338 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetPlaceCardLog()
{
  if (MUGetPlaceCardLog_onceToken != -1)
  {
    dispatch_once(&MUGetPlaceCardLog_onceToken, &__block_literal_global_24349);
  }

  v1 = MUGetPlaceCardLog_log;

  return v1;
}

uint64_t __MUGetPlaceCardLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "PlaceCard");
  v1 = MUGetPlaceCardLog_log;
  MUGetPlaceCardLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id MUGetShareSheetLog()
{
  if (MUGetShareSheetLog_onceToken != -1)
  {
    dispatch_once(&MUGetShareSheetLog_onceToken, &__block_literal_global_8);
  }

  v1 = MUGetShareSheetLog_log;

  return v1;
}

uint64_t __MUGetShareSheetLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapsUI", "ShareSheet");
  v1 = MUGetShareSheetLog_log;
  MUGetShareSheetLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C584B6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C584CB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C584D548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&a41);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C584DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}