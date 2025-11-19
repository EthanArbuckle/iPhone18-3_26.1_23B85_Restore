void sub_232B61878(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *a1;
  sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  sub_232CE9A60();
  sub_232B48E4C(&qword_27DDC7300, &qword_27DDC72F8, &unk_232CFAAE0);
  v10 = sub_232CE9A80();
  (*(v5 + 8))(v8, v4);
  v11 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *a2;
  sub_232B1FE44(v10, v9);
  *a2 = v13;
}

uint64_t sub_232B619FC()
{
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v1 = sub_232CE9C60();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74();
  v3 = *(v0 + v2);
  v5 = v3 + 64;
  v4 = *(v3 + 64);
  v6 = *(v3 + 32);
  sub_232B34F88();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v31 = v12;

  v13 = 0;
  while (v9)
  {
    v14 = v13;
LABEL_7:
    v15 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(v31 + 48) + v15);
    v17 = *(*(v31 + 56) + v15);
    type metadata accessor for DUVectorUtils();

    v32 = sub_232C18940(v18);

    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_232B20520(v16);
    if (__OFADD__(v1[2], (v20 & 1) == 0))
    {
      goto LABEL_17;
    }

    v21 = v19;
    v22 = v20;
    sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
    if (sub_232CEA5C0())
    {
      v23 = sub_232B20520(v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v21 = v23;
    }

    v9 &= v9 - 1;
    if (v22)
    {
      v25 = v1[7];
      v26 = *(v25 + 8 * v21);
      *(v25 + 8 * v21) = v32;

      v13 = v14;
    }

    else
    {
      sub_232B66BE0(&v1[v21 >> 6]);
      *(v1[6] + 8 * v21) = v16;
      *(v1[7] + 8 * v21) = v32;
      v27 = v1[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_18;
      }

      v1[2] = v29;
      v13 = v14;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v1;
    }

    v9 = *(v5 + 8 * v14);
    ++v13;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232B61C3C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74();
  v2 = *(v0 + v1);

  v4 = sub_232B61DD0(v3);
  v6 = v5;

  v7 = MEMORY[0x277D84F90];
  if ((v6 & 1) == 0)
  {
    v8 = sub_232B1E270(v4, *(v0 + v1));
    if (v8)
    {
      return v8;
    }
  }

  return v7;
}

uint64_t sub_232B61CC8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (1)
    {
      v5 = v10 + 1;
      if (v10 + 1 >= v8)
      {
        return 0;
      }

      v11 = *(a1 + 72 + 8 * v10);
      v9 += 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) + v9;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_232B61DD0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (1)
    {
      v5 = v10 + 1;
      if (v10 + 1 >= v8)
      {
        return 0;
      }

      v11 = *(a1 + 72 + 8 * v10);
      v9 += 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) + v9;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_232B61ED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_232B61F94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_232B124A8(&qword_27DDC6AB8, &unk_232CF6DF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v100 = (&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v99 = &v94 - v8;
  v9 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  v106 = *(v9 - 8);
  v10 = *(v106 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v94 - v17);
  v19 = type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v23 = 0;
  v23[8] = 1;
  v24 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v25 = sub_232CE9C60();
  v108 = v24;
  *&v2[v24] = v25;
  v95 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  v96 = a1;
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  sub_232B66A58(a1, v22, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
  v26 = v22[1];
  v27 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v27 = *v22;
  *(v27 + 1) = v26;
  v28 = v22[3];
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = v22[2];
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = v28;
  v29 = v22[4];
  v30 = v22[5];
  v97 = v22;
  *v23 = v29;
  v23[8] = 0;
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v98 = (v32 + 63) >> 6;

  v102 = v30;

  v35 = 0;
  v107 = v4;
  v103 = v18;
  v104 = v16;
  v105 = v30 + 64;
  if (v34)
  {
    while (1)
    {
      v36 = v35;
LABEL_9:
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v101;
      v40 = *(*(v102 + 48) + 8 * v38);
      sub_232B66A58(*(v102 + 56) + *(v106 + 72) * v38, v101, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v41 = *(v4 + 48);
      *v16 = v40;
      sub_232B66734(v39, v16 + v41, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v42 = 0;
LABEL_10:
      sub_232B12504(v16, v42, 1, v4);
      sub_232B34574(v16, v18);
      if (sub_232B12480(v18, 1, v4) == 1)
      {
        break;
      }

      v43 = *v18;
      v44 = *(v4 + 48);
      v45 = *(v18 + v44);

      sub_232B66790(v18 + v44, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v46 = v108;
      swift_beginAccess();
      v47 = *&v2[v46];
      swift_isUniquelyReferenced_nonNull_native();
      v109 = *&v2[v46];
      v48 = v109;
      *&v2[v46] = 0x8000000000000000;
      v49 = sub_232B20520(v43);
      if (__OFADD__(v48[2], (v50 & 1) == 0))
      {
        goto LABEL_44;
      }

      v51 = v49;
      v52 = v50;
      sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
      if (sub_232CEA5C0())
      {
        v53 = sub_232B20520(v43);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_52;
        }

        v51 = v53;
      }

      v31 = v105;
      v55 = v109;
      if (v52)
      {
        v56 = v109[7];
        v57 = *(v56 + 8 * v51);
        *(v56 + 8 * v51) = v45;
      }

      else
      {
        v109[(v51 >> 6) + 8] |= 1 << v51;
        *(v55[6] + 8 * v51) = v43;
        *(v55[7] + 8 * v51) = v45;
        v58 = v55[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_51;
        }

        v55[2] = v60;
      }

      *&v2[v108] = v55;
      swift_endAccess();
      v4 = v107;
      v18 = v103;
      v16 = v104;
      if (!v34)
      {
        goto LABEL_5;
      }
    }

    v61 = v97[6];
    v62 = *(v61 + 16);
    v108 = MEMORY[0x277D84F90];
    if (!v62)
    {
LABEL_42:
      v89 = sub_232B63228(v108, &qword_27DDC72E0, &qword_232CF89B8, sub_232B66430);
      sub_232B66790(v97, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
      v90 = *&v2[v95];
      *&v2[v95] = v89;

      v91 = type metadata accessor for DUEncodingModelOutput();
      v111.receiver = v2;
      v111.super_class = v91;
      v92 = objc_msgSendSuper2(&v111, sel_init);
      sub_232B66790(v96, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
      return v92;
    }

    v94 = v2;
    v110 = MEMORY[0x277D84F90];
    sub_232B64B40(0, v62, 0);
    v108 = v110;
    v65 = sub_232B666F4(v61);
    v66 = 0;
    v67 = v61 + 64;
    v101 = v63;
    v102 = v62;
    v98 = v61 + 72;
    v103 = (v61 + 64);
    while ((v65 & 0x8000000000000000) == 0 && v65 < 1 << *(v61 + 32))
    {
      v68 = v65 >> 6;
      if ((*(v67 + 8 * (v65 >> 6)) & (1 << v65)) == 0)
      {
        goto LABEL_46;
      }

      if (*(v61 + 36) != v63)
      {
        goto LABEL_47;
      }

      v105 = v63;
      LODWORD(v104) = v64;
      v69 = *(v4 + 48);
      v70 = *(*(v61 + 48) + 8 * v65);
      v71 = v99;
      sub_232B66A58(*(v61 + 56) + *(v106 + 72) * v65, &v99[v69], type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v72 = v61;
      v73 = v100;
      *v100 = v70;
      v74 = *(v4 + 48);
      sub_232B66734(&v71[v69], v73 + v74, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v75 = *(v73 + v74);

      sub_232B13790(v73, &qword_27DDC6AB8, &unk_232CF6DF0);
      v110 = v108;
      v77 = *(v108 + 16);
      v76 = *(v108 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_232B64B40(v76 > 1, v77 + 1, 1);
        v108 = v110;
      }

      v78 = v108;
      *(v108 + 16) = v77 + 1;
      v79 = v78 + 16 * v77;
      *(v79 + 32) = v70;
      *(v79 + 40) = v75;
      v80 = 1 << *(v72 + 32);
      if (v65 >= v80)
      {
        goto LABEL_48;
      }

      v67 = v103;
      v81 = v103[v68];
      if ((v81 & (1 << v65)) == 0)
      {
        goto LABEL_49;
      }

      v61 = v72;
      if (*(v72 + 36) != v105)
      {
        goto LABEL_50;
      }

      v82 = v81 & (-2 << (v65 & 0x3F));
      if (v82)
      {
        v80 = __clz(__rbit64(v82)) | v65 & 0x7FFFFFFFFFFFFFC0;
        v83 = v102;
      }

      else
      {
        v84 = v68 << 6;
        v85 = v68 + 1;
        v86 = (v98 + 8 * v68);
        v83 = v102;
        while (v85 < (v80 + 63) >> 6)
        {
          v88 = *v86++;
          v87 = v88;
          v84 += 64;
          ++v85;
          if (v88)
          {
            sub_232B48E94(v65, v105, v104 & 1);
            v80 = __clz(__rbit64(v87)) + v84;
            goto LABEL_40;
          }
        }

        sub_232B48E94(v65, v105, v104 & 1);
      }

LABEL_40:
      v64 = 0;
      ++v66;
      v65 = v80;
      v63 = v101;
      v4 = v107;
      if (v66 == v83)
      {
        v2 = v94;
        goto LABEL_42;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v98)
      {
        v34 = 0;
        v42 = 1;
        goto LABEL_10;
      }

      v34 = *(v31 + 8 * v36);
      ++v35;
      if (v34)
      {
        v35 = v36;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t DUEncodingModelOutput.init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v146 = a1;
  v5 = sub_232B124A8(&qword_27DDC6AB8, &unk_232CF6DF0);
  v6 = sub_232B13F24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20714();
  v145 = v9;
  sub_232B20600();
  MEMORY[0x28223BE20](v10);
  v144 = (&v136 - v11);
  v12 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  v153 = *(v12 - 8);
  v13 = *(v153 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_232B20704();
  v148 = v15 - v14;
  v16 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_232B20714();
  v151 = v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  v150 = &v136 - v20;
  v21 = sub_232B124A8(&qword_27DDC7250, &qword_232CF8850);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v136 - v24;
  v26 = *(a2 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B20704();
  v30 = v29 - v28;
  v31 = type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  v32 = sub_232B13F24(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_232B20704();
  v37 = (v36 - v35);
  v38 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v38 = 0;
  i = v38;
  v38[8] = 1;
  v39 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v40 = sub_232CE9C60();
  v152 = v39;
  *&v3[v39] = v40;
  v41 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v42 = v26;
  v43 = *(v26 + 16);
  v44 = v146;
  v43(v30);
  v154 = v25;
  sub_232B2080C();
  if (swift_dynamicCast())
  {
    v141 = v41;
    v142 = v42;
    v143 = a2;
    v45 = 1;
    v46 = v154;
    sub_232B12504(v154, 0, 1, v31);
    sub_232B66734(v46, v37, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
    v47 = v37[1];
    v48 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
    *v48 = *v37;
    *(v48 + 1) = v47;
    v49 = v37[3];
    *&v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = v37[2];
    *&v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = v49;
    v50 = v37[4];
    v51 = v37[5];
    v138 = v37;
    v52 = i;
    *i = v50;
    v52[8] = 0;
    v53 = (v51 + 64);
    v54 = 1 << *(v51 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v51 + 64);
    v140 = (v54 + 63) >> 6;

    v147 = v51;

    v57 = 0;
    v154 = v5;
    v58 = v152;
    for (i = (v51 + 64); ; v53 = i)
    {
      v59 = v151;
      if (!v56)
      {
        while (1)
        {
          v60 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v60 >= v140)
          {
            v56 = 0;
            v71 = 1;
            goto LABEL_12;
          }

          v56 = *&v53[8 * v60];
          ++v57;
          if (v56)
          {
            v57 = v60;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v60 = v57;
LABEL_11:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v62 = v61 | (v60 << 6);
      v63 = v148;
      v64 = *(*(v147 + 48) + 8 * v62);
      v65 = *(v147 + 56) + *(v153 + 72) * v62;
      sub_232B66AF4();
      sub_232B66A58(v66, v63, v67);
      v68 = *(v5 + 48);
      *v59 = v64;
      sub_232B66ADC();
      sub_232B66734(v63, v59 + v69, v70);
      v71 = 0;
LABEL_12:
      sub_232B12504(v59, v71, 1, v5);
      v72 = v150;
      sub_232B34574(v59, v150);
      if (sub_232B12480(v72, 1, v5) == 1)
      {
        break;
      }

      v73 = *v72;
      v74 = *(v5 + 48);
      v75 = *(v72 + v74);

      sub_232B66B3C();
      sub_232B66790(v72 + v74, v76);
      swift_beginAccess();
      v77 = *&v3[v58];
      swift_isUniquelyReferenced_nonNull_native();
      v155 = *&v3[v58];
      v45 = v3;
      *&v3[v58] = 0x8000000000000000;
      sub_232B20520(v73);
      sub_232B66BA0();
      if (__OFADD__(v80, v81))
      {
        goto LABEL_48;
      }

      v82 = v78;
      v83 = v79;
      sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
      if (sub_232CEA5C0())
      {
        v84 = sub_232B20520(v73);
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_56;
        }

        v82 = v84;
      }

      v86 = v155;
      if (v83)
      {
        v87 = v155[7];
        v88 = *(v87 + 8 * v82);
        *(v87 + 8 * v82) = v75;
      }

      else
      {
        sub_232B66BE0(&v155[v82 >> 6]);
        *(v86[6] + 8 * v82) = v73;
        *(v86[7] + 8 * v82) = v75;
        v89 = v86[2];
        v90 = __OFADD__(v89, 1);
        v91 = v89 + 1;
        if (v90)
        {
          goto LABEL_55;
        }

        v86[2] = v91;
      }

      v3 = v45;
      v58 = v152;
      *(v45 + v152) = v86;
      swift_endAccess();
      v5 = v154;
    }

    v96 = v138;
    v97 = v138[6];
    v98 = *(v97 + 16);
    v152 = MEMORY[0x277D84F90];
    if (v98)
    {
      v137 = v3;
      v156 = MEMORY[0x277D84F90];
      v140 = v97;
      sub_232B64B40(0, v98, 0);
      v152 = v156;
      v101 = sub_232B666F4(v140);
      v102 = v140;
      v103 = 0;
      v104 = (v140 + 64);
      v147 = v99;
      v139 = v140 + 72;
      v105 = 1;
      v148 = v98;
      i = (v140 + 64);
      while ((v101 & 0x8000000000000000) == 0 && v101 < v105 << *(v102 + 32))
      {
        v45 = v101 >> 6;
        v106 = v105 << v101;
        if ((*&v104[8 * (v101 >> 6)] & (v105 << v101)) == 0)
        {
          goto LABEL_50;
        }

        if (*(v102 + 36) != v99)
        {
          goto LABEL_51;
        }

        v151 = v99;
        LODWORD(v150) = v100;
        v107 = v154;
        v108 = *(v154 + 12);
        v57 = *(*(v102 + 48) + 8 * v101);
        v109 = v102;
        v110 = *(v102 + 56) + *(v153 + 72) * v101;
        sub_232B66AF4();
        v72 = v144;
        sub_232B66A58(v111, v144 + v108, v112);
        v113 = v145;
        *v145 = v57;
        v114 = *(v107 + 48);
        sub_232B66ADC();
        sub_232B66734(v72 + v108, v113 + v114, v115);
        v116 = *(v113 + v114);

        sub_232B13790(v113, &qword_27DDC6AB8, &unk_232CF6DF0);
        v156 = v152;
        v118 = *(v152 + 16);
        v117 = *(v152 + 24);
        v53 = (v118 + 1);
        if (v118 >= v117 >> 1)
        {
          v72 = &v156;
          sub_232B64B40(v117 > 1, v118 + 1, 1);
          v152 = v156;
        }

        v119 = v152;
        *(v152 + 16) = v53;
        v120 = v119 + 16 * v118;
        *(v120 + 32) = v57;
        *(v120 + 40) = v116;
        v121 = 1 << *(v109 + 32);
        if (v101 >= v121)
        {
          goto LABEL_52;
        }

        v122 = v109;
        v104 = i;
        v123 = *&i[8 * v45];
        if ((v123 & v106) == 0)
        {
          goto LABEL_53;
        }

        if (*(v122 + 36) != v151)
        {
          goto LABEL_54;
        }

        v124 = v123 & (-2 << (v101 & 0x3F));
        if (v124)
        {
          v121 = __clz(__rbit64(v124)) | v101 & 0x7FFFFFFFFFFFFFC0;
          sub_232B66BB0();
        }

        else
        {
          v125 = v45 << 6;
          sub_232B66BB0();
          while (v128 < v127)
          {
            v131 = *v129++;
            v130 = v131;
            v125 += 64;
            ++v128;
            if (v131)
            {
              sub_232B48E94(v101, v126, v150 & 1);
              v105 = 1;
              v102 = v140;
              v121 = __clz(__rbit64(v130)) + v125;
              goto LABEL_42;
            }
          }

          sub_232B48E94(v101, v126, v150 & 1);
          v105 = 1;
          v102 = v140;
        }

LABEL_42:
        v100 = 0;
        ++v103;
        v101 = v121;
        v99 = v147;
        if (v103 == v148)
        {
          v3 = v137;
          v96 = v138;
          goto LABEL_45;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      result = sub_232CEA7A0();
      __break(1u);
      return result;
    }

    sub_232B66BB0();
LABEL_45:
    v132 = sub_232B63228(v152, &qword_27DDC72E0, &qword_232CF89B8, sub_232B66430);
    sub_232B66790(v96, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
    v133 = *&v3[v57];
    *&v3[v57] = v132;

    v134 = type metadata accessor for DUEncodingModelOutput();
    v157.receiver = v3;
    v157.super_class = v134;
    v95 = objc_msgSendSuper2(&v157, sel_init);
    (v72[1])(v53, v45);
  }

  else
  {
    (*(v42 + 8))(v44, a2);
    v92 = v154;
    sub_232B12504(v154, 1, 1, v31);
    sub_232B13790(v92, &qword_27DDC7250, &qword_232CF8850);
    v93 = *&v3[v152];

    v94 = *&v3[v41];

    type metadata accessor for DUEncodingModelOutput();
    sub_232B66C14();
    return 0;
  }

  return v95;
}

uint64_t sub_232B63228(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_232B124A8(a2, a3);
    v5 = sub_232CEA650();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_232B632DC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  v90 = *(v3 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20714();
  v88 = v5;
  sub_232B20600();
  MEMORY[0x28223BE20](v6);
  v87 = (&v83 - v7);
  sub_232B20600();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v83 - v12);
  a1[4] = 0;
  v14 = MEMORY[0x277D84F90];
  a1[5] = sub_232CE9C60();
  v92 = v3;
  a1[6] = sub_232CE9C60();
  v15 = a1 + *(type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0) + 40);
  sub_232CE9330();
  v16 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName);
  a1[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers);
  a1[2] = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize);
  a1[3] = v17;
  if ((*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8) & 1) == 0)
  {
    a1[4] = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize);
  }

  v18 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74();
  v84 = v1;
  v19 = *(v1 + v18);
  v21 = v19 + 64;
  v20 = *(v19 + 64);
  v22 = *(v19 + 32);
  sub_232B34F88();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;

  v89 = v19;

  v28 = 0;
  v91 = a1;
  v85 = v27;
  v86 = v19 + 64;
  if (v25)
  {
LABEL_8:
    while (1)
    {
      sub_232B66C2C();
      v30 = *(v89 + 48);
      v31 = *(v89 + 56);
      sub_232B66BF0(v32);
      sub_232CE9330();
      *v13 = v21;
      sub_232B66AF4();
      sub_232B66A58(v13, v11, v33);
      v34 = a1[5];
      swift_isUniquelyReferenced_nonNull_native();
      v93 = a1[5];
      sub_232B20520(v14);
      sub_232B66BA0();
      if (__OFADD__(v37, v38))
      {
        break;
      }

      v39 = v35;
      v40 = v36;
      sub_232B124A8(&qword_27DDC7258, &qword_232CF8858);
      if (sub_232CEA5C0())
      {
        v41 = sub_232B20520(v14);
        a1 = v91;
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_44;
        }

        v39 = v41;
      }

      else
      {
        a1 = v91;
      }

      v43 = v93;
      if (v40)
      {
        sub_232B66B54();
        sub_232B667E8(v11, v44);
      }

      else
      {
        sub_232B66BE0(v93 + 8 * (v39 >> 6));
        *(*(v43 + 48) + 8 * v39) = v14;
        sub_232B66B54();
        sub_232B66ADC();
        sub_232B66734(v11, v45, v46);
        v47 = *(v43 + 16);
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_42;
        }

        *(v43 + 16) = v49;
      }

      v25 &= v25 - 1;
      a1[5] = v43;
      sub_232B66B3C();
      sub_232B66790(v13, v50);
      v27 = v85;
      v21 = v86;
      if (!v25)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v29 >= v27)
      {
        break;
      }

      v25 = *(v21 + 8 * v29);
      ++v28;
      if (v25)
      {
        v28 = v29;
        goto LABEL_8;
      }
    }

    result = *(v84 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues);
    if (!result)
    {
      return result;
    }

    v53 = result + 64;
    v52 = *(result + 64);
    v54 = *(result + 32);
    sub_232B34F88();
    v57 = v56 & v55;
    v59 = (v58 + 63) >> 6;
    v60 = 0;

    if (v57)
    {
      goto LABEL_25;
    }

LABEL_21:
    while (1)
    {
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v61 >= v59)
      {
      }

      v57 = *(v53 + 8 * v61);
      ++v60;
      if (v57)
      {
        v60 = v61;
LABEL_25:
        while (1)
        {
          sub_232B66C2C();
          v63 = *(v62 + 48);
          v64 = *(v62 + 56);
          sub_232B66BF0(v65);
          v66 = v87;
          sub_232CE9330();
          *v66 = v21;
          sub_232B66AF4();
          sub_232B66A58(v66, v88, v67);
          v68 = a1[6];
          swift_isUniquelyReferenced_nonNull_native();
          v93 = a1[6];
          sub_232B20520(v14);
          sub_232B66BA0();
          if (__OFADD__(v71, v72))
          {
            goto LABEL_41;
          }

          v73 = v69;
          v74 = v70;
          sub_232B124A8(&qword_27DDC7258, &qword_232CF8858);
          if (sub_232CEA5C0())
          {
            v75 = sub_232B20520(v14);
            a1 = v91;
            if ((v74 & 1) != (v76 & 1))
            {
              goto LABEL_44;
            }

            v73 = v75;
          }

          else
          {
            a1 = v91;
          }

          v21 = v93;
          if (v74)
          {
            sub_232B66B54();
            sub_232B667E8(v88, v77);
          }

          else
          {
            sub_232B66BE0(v93 + 8 * (v73 >> 6));
            *(*(v21 + 48) + 8 * v73) = v14;
            sub_232B66B54();
            sub_232B66ADC();
            sub_232B66734(v88, v78, v79);
            v80 = *(v21 + 16);
            v48 = __OFADD__(v80, 1);
            v81 = v80 + 1;
            if (v48)
            {
              goto LABEL_43;
            }

            *(v21 + 16) = v81;
          }

          v57 &= v57 - 1;
          a1[6] = v21;
          sub_232B66B3C();
          sub_232B66790(v87, v82);
          if (!v57)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232B63818@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B632DC((v5 - v4));
  v7 = objc_allocWithZone(type metadata accessor for DUEncodingModelOutput());
  v8 = sub_232B61F94(v6);
  result = sub_232B124A8(&qword_27DDC7260, &unk_232CF8860);
  a1[3] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_232B6391C(uint64_t a1)
{
  sub_232B2036C(a1, v17, &qword_27DDC68C8, &qword_232CF6210);
  if (!v18)
  {
    sub_232B13790(v17, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_21;
  }

  type metadata accessor for DUEncodingModelOutput();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v13 = 0;
    return v13 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName) == *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName] && *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName + 8) == *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName + 8];
  if (!v2 && (sub_232CEA750() & 1) == 0 || *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers) != *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] || *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize) != *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize])
  {
    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8))
  {
    if ((v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8] & 1) == 0)
    {
LABEL_20:

      goto LABEL_21;
    }
  }

  else if ((v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8] & 1) != 0 || *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize) != *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize])
  {
    goto LABEL_20;
  }

  v3 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74();
  v6 = *&v16[v5];

  sub_232B32808(v4, v6);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

  v9 = *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues];
  if (!*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues))
  {
    v15 = *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues];

    if (!v9)
    {
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = *&v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues];

  sub_232B32808(v11, v9);
  v13 = v12;

  return v13 & 1;
}

void sub_232B63BB4(void *a1)
{
  type metadata accessor for DUEncodingModelOutput();
  sub_232B66B80();
  sub_232B66A10(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUEncodingModelOutput.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B66B80();
  sub_232B66A10(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B66C14();
    return 0;
  }

  swift_getObjectType();
  sub_232B66C14();
  return v5;
}

id DUEncodingModelOutput.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUEncodingModelOutput.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUEncodingModelOutput();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232B63F6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232B61F1C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B63F94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_232B124A8(&qword_27DDC7310, &qword_232CF89D8);
  v36 = a2;
  result = sub_232CEA640();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_232C4883C(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 40 * v19);
    if (v36)
    {
      sub_232B0D220(v23, v37);
    }

    else
    {
      sub_232B25E34(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_232CEA820();
    sub_232CE9E40();
    result = sub_232CEA850();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_232B0D220(v37, *(v8 + 56) + 40 * v28);
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_232B64268(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_232B124A8(a3, a4);
  v40 = a2;
  result = sub_232CEA640();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_33:

LABEL_34:
    *v5 = v10;
    return result;
  }

  v38 = v5;
  v39 = v7;
  v11 = 0;
  v12 = (v7 + 64);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = result + 64;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      sub_232C4883C(0, (v37 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = v18 | (v11 << 6);
    v22 = (*(v7 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v7 + 56) + 8 * v21);
    if ((v40 & 1) == 0)
    {
      v26 = v22[1];
    }

    v27 = *(v10 + 40);
    sub_232CEA820();
    sub_232CE9E40();
    result = sub_232CEA850();
    v28 = -1 << *(v10 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = (*(v10 + 48) + 16 * v31);
    *v36 = v23;
    v36[1] = v24;
    *(*(v10 + 56) + 8 * v31) = v25;
    ++*(v10 + 16);
    v7 = v39;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v17 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_232B64504(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_232B124A8(&qword_27DDC72E0, &qword_232CF89B8);
  result = sub_232CEA640();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v34 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_232C4883C(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = *(*(v5 + 48) + 8 * v19);
    v22 = *(v20 + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v23 = *(v20 + 8 * v19);
    }

    v24 = *(v8 + 40);
    result = sub_232CEA810();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v8 + 48) + 8 * v28) = v21;
    *(*(v8 + 56) + 8 * v28) = v22;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_232B64770(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_232B66B0C(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_232B66B98(v6, v11);
  }
}

void sub_232B6479C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_232B66B68(a1, a4 + 8 * (a1 >> 6));
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_232B66BD8(v5, v12);
  }
}

uint64_t sub_232B647E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_232B66B68(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_232B6482C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_232B66B0C(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_232B66B98(v6, v13);
  }
}

void sub_232B6486C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_232B66B68(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_232B66B98(v6, v13);
  }
}

void sub_232B648B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_232B66B68(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_232B66BD8(v5, v10);
  }
}

uint64_t sub_232B648F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_232B66B68(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 24 * result);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}

void *sub_232B64944(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_232B66B0C(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 88 * v6), v8, 0x58uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

_OWORD *sub_232B64990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_232B66B0C(a1, a2, a3, a4, a5);
  result = sub_232B20510(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_232B649D4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_232B64CE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64A9C(void *a1, int64_t a2, char a3)
{
  result = sub_232B64EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64ABC(void *a1, int64_t a2, char a3)
{
  result = sub_232B65000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64ADC(void *a1, int64_t a2, char a3)
{
  result = sub_232B65110(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_232B64B40(uint64_t a1, int64_t a2, char a3)
{
  result = sub_232B65310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_232B64B60(uint64_t a1, int64_t a2, char a3)
{
  result = sub_232B65420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_232B64BC4(size_t a1, int64_t a2, char a3)
{
  result = sub_232B65524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64C28(void *a1, int64_t a2, char a3)
{
  result = sub_232B657C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64C48(void *a1, int64_t a2, char a3)
{
  result = sub_232B658D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64C68(void *a1, int64_t a2, char a3)
{
  result = sub_232B659E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_232B64C88(uint64_t a1, int64_t a2, char a3)
{
  result = sub_232B65AF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64CA8(void *a1, int64_t a2, char a3)
{
  result = sub_232B65C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232B64CC8(void *a1, int64_t a2, char a3)
{
  result = sub_232B65D10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_232B64CE8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC7290, &qword_232CF8930);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_232B377C4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC7298, &qword_232CF8938);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_232B64E00(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_232B37A48();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 16);
      if (a1)
      {
LABEL_12:
        sub_232B377A4((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    sub_232B37A38();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_232B64EF0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC72A0, &unk_232CF8940);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65000(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC72A8, &qword_232CF8950);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC72B0, &qword_232CF8958);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65110(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC6B58, &unk_232CF6EE0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6B60, &qword_232CF8970);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_232B65220(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_232B37A48();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_232B124A8(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 4);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 4 * v13);
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    sub_232B37A38();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_232B65310(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC72E8, &qword_232CF89C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_232B377A4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC72F0, &qword_232CF89C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_232B65420(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC72D0, &unk_232CF8990);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_232B378F8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_232B65524(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_232B124A8(&qword_27DDC72D8, &qword_232CF89A8);
  v10 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_232B37918(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_232B656D8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_232B37A48();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_232B124A8(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    sub_232B37A38();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_232B657C8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC6B38, &qword_232CF6EC0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6B40, &qword_232CF6EC8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B658D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC7270, &qword_232CF88F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC7278, qword_232CF88F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B659E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC6B08, &unk_232CF6E90);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6B10, &unk_232CF8910);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_232B65AF8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC6BC0, &qword_232CF6F50);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_232B379F8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65C00(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC6C50, &unk_232CF6FE0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232B65D10(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232B124A8(&qword_27DDC72C0, &unk_232CF8980);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_232B37A20(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_232B124A8(&qword_27DDC72C8, &qword_232CFF860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_232B65E20(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_232CEA7A0();
      __break(1u);
      goto LABEL_22;
    }

    sub_232B2036C(i, &v31, &qword_27DDC6C48, &qword_232CF89E0);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_232B0D220(v33, v28);
    v9 = *a3;
    v11 = sub_232B1F160(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_232B124A8(&qword_27DDC7318, &qword_232CF89E8);
      sub_232CEA5D0();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_232B0D220(v28, v19[7] + 40 * v11);
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_232B63F94(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_232B1F160(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_232B2040C(v28);

    return;
  }

LABEL_22:
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000001BLL, 0x8000000232D04EB0);
  sub_232CEA5B0();
  MEMORY[0x238391C30](39, 0xE100000000000000);
  sub_232CEA5F0();
  __break(1u);
}

void sub_232B6613C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_232CEA7A0();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_232B1F160(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_232B124A8(&qword_27DDC7288, &unk_232CF8920);
      sub_232CEA5D0();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_232B64268(v14, a2 & 1, &qword_27DDC7280, &unk_232CFAAD0);
  v16 = *a3;
  v17 = sub_232B1F160(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000001BLL, 0x8000000232D04EB0);
  sub_232CEA5B0();
  MEMORY[0x238391C30](39, 0xE100000000000000);
  sub_232CEA5F0();
  __break(1u);
}

void sub_232B66430(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_232CEA7A0();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;
    v10 = sub_232B20520(v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
      sub_232CEA5D0();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v21[6] + 8 * v15) = v8;
    *(v21[7] + 8 * v15) = v7;
    v22 = v21[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v21[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_232B64504(v14, a2 & 1);
  v18 = *a3;
  v19 = sub_232B20520(v8);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000001BLL, 0x8000000232D04EB0);
  sub_232CEA5B0();
  MEMORY[0x238391C30](39, 0xE100000000000000);
  sub_232CEA5F0();
  __break(1u);
}

uint64_t sub_232B666F4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_232CEA450();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_232B66734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 32);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

uint64_t sub_232B66790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232B667E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B66A10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232B66A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 16);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

unint64_t sub_232B66B0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

void sub_232B66BB0()
{
  v1 = *(v0 - 240);
  v2 = *(v0 - 232);
  v3 = *(v0 - 208);
  v4 = *(v0 - 248);
}

uint64_t sub_232B66BF0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + a1);
  v6 = *(v2 + a1);
  v7 = *(*(v3 - 120) + 20);
}

uint64_t sub_232B66C14()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B66C40(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480D2E0);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_232B679D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480D880);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_232B68770(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480DC30);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_232B69508(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480DEA0);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_232B6A2A0()
{
  sub_232B35110();
  v110 = v1;
  v3 = v2;
  v104 = v4;
  v105 = v5;
  v7 = v6;
  v9 = v8;
  v115 = *MEMORY[0x277D85DE8];
  v103 = sub_232CE89D0();
  v10 = sub_232BA64E0(v103);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232BA64CC();
  v102 = v14;
  v15 = *(v3 + 16);
  if (v15)
  {
    v16 = (v3 + 32);
    v100 = (v13 + 8);

    v17 = 0;
    v106 = (v3 + 32);
    v107 = v15;
LABEL_3:
    v18 = v17;
    v112 = v9;
    while (2)
    {
      if (v18 < v15)
      {
        v17 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          goto LABEL_108;
        }

        switch(v16[v18])
        {
          case 1:
            if (!v7)
            {
              goto LABEL_103;
            }

            if (v105)
            {
              v88 = sub_232CE9DD0();
              sub_232BA6C98(v88, v89);
              sub_232BA61E0();
              sub_232CE9DD0();
              LOBYTE(v0) = v90;
              sub_232B48080();
              sub_232BA6444();
              v91 = sub_232CEA3F0();

              if (v91)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_102;
          case 2:
            if (!v7)
            {
              goto LABEL_103;
            }

            if (!v105)
            {
              goto LABEL_102;
            }

            v16 = v102;
            sub_232CE89A0();
            sub_232BA61E0();
            v113 = sub_232CE9DD0();
            v114 = v19;
            sub_232B48080();
            sub_232B45AB0();
            v20 = sub_232CEA380();

            v113 = v20;
            sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
            sub_232BA5560();
            sub_232BA67A4();
            sub_232B48E4C(v21, v22, v23);
            sub_232BA7280();
            v15 = sub_232CE9CD0();
            LOBYTE(v0) = v24;

            v25 = sub_232CE9DD0();
            v27 = v26;
            v113 = v25;
            v114 = v26;
            v28 = sub_232CEA380();

            v113 = v28;
            sub_232BA7280();
            v29 = sub_232CE9CD0();
            sub_232BA5EA0();

            v113 = v29;
            v114 = v27;
            sub_232BA6444();
            LOBYTE(v29) = sub_232BA73F4();
            (*v100)(v102, v103);

            if ((v29 & 1) == 0)
            {
              goto LABEL_102;
            }

            sub_232BA71BC();
            v9 = v112;
            if (!v30)
            {
              continue;
            }

            goto LABEL_103;
          case 3:
            sub_232BA61E0();
            sub_232B714B8();
            if ((v92 & 1) == 0)
            {
              goto LABEL_102;
            }

            goto LABEL_90;
          case 4:
            if (!v7)
            {
              goto LABEL_103;
            }

            v77 = (v18 + 1);
            sub_232BA61E0();
            v78 = sub_232CE9D20();
            if ((v7 & 0x1000000000000000) != 0)
            {
              sub_232BA61E0();
              sub_232CE9F10();
            }

            else
            {
              sub_232CE9F20();
            }

            v79 = objc_opt_self();
            if (qword_27DDC6368 != -1)
            {
              v79 = swift_once();
            }

            v80 = sub_232BA5E44(v79, sel_scanString_range_configuration_);

            sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
            v81 = sub_232BA6E54();

            if (v81 >> 62)
            {
              v82 = sub_232BA6DC4();
              if (!v82)
              {
LABEL_30:

                goto LABEL_102;
              }
            }

            else
            {
              v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v82)
              {
                goto LABEL_30;
              }
            }

            v0 = 0;
            while (1)
            {
              if ((v81 & 0xC000000000000001) != 0)
              {
                v83 = sub_232BA67F4();
                v84 = MEMORY[0x2383922C0](v83);
              }

              else
              {
                if (v0 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_111;
                }

                v84 = *(v81 + 8 * v0 + 32);
              }

              v85 = v84;
              v86 = (v0 + 1);
              if (__OFADD__(v0, 1))
              {
                __break(1u);
LABEL_111:
                __break(1u);
              }

              if ([v84 category] == 2)
              {
                v87 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
                if (v87)
                {
                  break;
                }
              }

              ++v0;
              if (v86 == v82)
              {
                goto LABEL_30;
              }
            }

            v95 = v87;

            v96 = [v95 phoneNumber];
            v9 = sub_232CE9D50();
            v98 = v97;

            v7 = v98;
            v15 = v107;
            v17 = v77;
            v30 = v77 == v107;
            v16 = v106;
            if (!v30)
            {
              goto LABEL_3;
            }

            goto LABEL_103;
          case 5:
            if (!v7)
            {
              goto LABEL_103;
            }

            sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);
            sub_232B26CE8();

            sub_232BA61E0();
            v42 = sub_232B80670();
            v113 = 0;
            if (![v42 scanInteger_])
            {

              goto LABEL_102;
            }

            v0 = v17;
            v43 = [v42 isAtEnd];

            if ((v43 & 1) == 0)
            {
              goto LABEL_102;
            }

            v18 = v0;
            if (v0 == v15)
            {
              goto LABEL_103;
            }

            continue;
          case 6:
            if (!v7)
            {
              goto LABEL_103;
            }

            sub_232B48080();
            sub_232BA6B3C();
            do
            {
              sub_232BA6ADC();
              v113 = v9;
              v114 = v7;
              sub_232BA6444();
              if (sub_232BA73F4())
              {
                goto LABEL_102;
              }
            }

            while ((v0 & 1) == 0);
            v18 = v17;
            if (v17 == v15)
            {
              goto LABEL_103;
            }

            continue;
          case 7:
            if (!v7)
            {
              goto LABEL_103;
            }

            v108 = (v18 + 1);
            sub_232BA61E0();
            v111 = sub_232CE9DD0();
            v101 = v49;
            v50 = objc_opt_self();
            v51 = &unk_28480D3D8;
            v52 = 25;
            sub_232BA69CC(v50);
            do
            {
              v54 = *(v51 - 1);
              v53 = *v51;
              sub_232BA63EC();
              sub_232CE9D20();
              sub_232B26D70();

              v55 = sub_232BA69D8();
              v57 = [v55 v56];

              sub_232CE9D50();
              sub_232BA5EAC();

              v58 = sub_232B41C8C();
              MEMORY[0x238391C30](v58);

              sub_232BA73C4();
              v59 = objc_allocWithZone(MEMORY[0x277CCAC68]);
              v60 = sub_232BA6110();
              v63 = sub_232BA1978(v60, v61, v62);
              if (v63)
              {
                v113 = v111;
                v114 = v101;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232BA5548();
                sub_232BA720C();
                LOBYTE(v0) = sub_232B48E4C(v64, v65, v66);
                sub_232B48080();
                sub_232BA63A8();
                sub_232CEA320();
                sub_232BA5EAC();
                v67 = sub_232CE9D20();
                v36 = sub_232BA6E6C(v63, sel_firstMatchInString_options_range_, v67);

                if (v36)
                {
                  goto LABEL_105;
                }
              }

              v51 += 2;
              --v52;
            }

            while (v52);

            v15 = v107;
            v17 = v108;
LABEL_91:
            v9 = v112;
            if (v17 == v15)
            {
              goto LABEL_103;
            }

            goto LABEL_3;
          case 8:
            if (!v7)
            {
              goto LABEL_103;
            }

            sub_232BA61E0();
            v31 = sub_232CE9D20();
            if ((v7 & 0x1000000000000000) != 0)
            {
              sub_232BA61E0();
              sub_232CE9F10();
            }

            else
            {
              sub_232CE9F20();
            }

            v32 = objc_opt_self();
            LOBYTE(v0) = v32;
            if (qword_27DDC6368 != -1)
            {
              v32 = swift_once();
            }

            v33 = sub_232BA5E44(v32, sel_scanString_range_configuration_);

            sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
            v34 = sub_232BA6E54();

            if (v34 >> 62)
            {
              v35 = sub_232CEA610();
              if (v35)
              {
LABEL_20:
                v36 = 0;
                v15 = v34 & 0xC000000000000001;
                while (1)
                {
                  if (v15)
                  {
                    v37 = MEMORY[0x2383922C0](v36, v34);
                  }

                  else
                  {
                    if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_107;
                    }

                    v37 = *(v34 + 8 * v36 + 32);
                  }

                  v0 = v37;
                  v16 = (v36 + 1);
                  if (__OFADD__(v36, 1))
                  {
                    break;
                  }

                  [v37 urlificationRange];
                  sub_232CEA110();
                  if (v38)
                  {
                  }

                  else
                  {
                    v39 = sub_232CE9FB0();
                    MEMORY[0x238391B80](v39);
                    sub_232BA5EA0();

                    if ([v0 category] == 4)
                    {
                      v40 = sub_232BA67F4();
                      v41 = v110(v40);

                      v9 = v112;
                      if (v41)
                      {
                        goto LABEL_30;
                      }
                    }

                    else
                    {

                      v9 = v112;
                    }
                  }

                  ++v36;
                  if (v16 == v35)
                  {
                    goto LABEL_33;
                  }
                }

                __break(1u);
LABEL_105:

                goto LABEL_102;
              }
            }

            else
            {
              v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v35)
              {
                goto LABEL_20;
              }
            }

LABEL_33:

            sub_232BA71BC();
            if (v30)
            {
              goto LABEL_103;
            }

            continue;
          case 9:
            v93 = sub_232BA61E0();
            if (sub_232B72018(v93, v94, v104, v105))
            {
              goto LABEL_102;
            }

LABEL_90:
            if (v7)
            {
              goto LABEL_91;
            }

            goto LABEL_103;
          case 10:
            if (!v7)
            {
              goto LABEL_103;
            }

            v44 = sub_232BA61E0();
            v9 = sub_232B486F4(v44, v45);
            v47 = v46;

            v48 = HIBYTE(v47) & 0xF;
            if ((v47 & 0x2000000000000000) == 0)
            {
              v48 = v9 & 0xFFFFFFFFFFFFLL;
            }

            if (!v48)
            {
              goto LABEL_102;
            }

            v7 = v47;
            if (v17 == v15)
            {
              goto LABEL_103;
            }

            goto LABEL_3;
          default:
            if (!v7)
            {
              goto LABEL_103;
            }

            v109 = (v18 + 1);
            v113 = v9;
            v114 = v7;
            sub_232CE89B0();
            v68 = sub_232B48080();
            sub_232CEA3A0();
            sub_232BA6210();
            (*v100)(v102, v103);
            sub_232BA57C8();
            sub_232BA6388();
            v69 = sub_232CEA3B0();
            v71 = v70;

            sub_232BA7178();
            if (!v72)
            {
              goto LABEL_30;
            }

            v73 = sub_232C0D410(v68);
            v112 = v69;
            sub_232BA71E8();
            v74 = sub_232CE9DD0();
            LOBYTE(v0) = v75;
            v76 = sub_232BA7F18(v74, v75, v73);

            v7 = v71;
            v17 = v109;
            if (v76)
            {
              goto LABEL_102;
            }

            goto LABEL_91;
        }
      }

      break;
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_102:
  }

  else
  {
  }

LABEL_103:
  v99 = *MEMORY[0x277D85DE8];
  sub_232BA61E0();
  sub_232B20A00();
}

uint64_t sub_232B6ADF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480E578);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_232B6BB90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480E6F8);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_232B6C928(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480E968);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_232B6D6C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480EC00);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_232B6E458(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v122 = sub_232CE89D0();
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = a5 + 32;
    v120[0] = v10 + 8;

    v14 = 0;
    v123 = 0;
    v126 = a4;
    v127 = v12;
    v125 = a5 + 32;
    v15 = a2;
    while (1)
    {
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1;
      }

      v120[1] = (v16 << 16) | 7;
      v17 = v14;
      v130 = v15;
LABEL_6:
      if (v17 >= v12)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_31:

        goto LABEL_109;
      }

      v18 = a1;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_115;
      }

      switch(*(v13 + v17))
      {
        case 1:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (a4)
          {
            v128 = v17 + 1;
            v135 = sub_232CE9DD0();
            v136 = v111;
            v133 = sub_232CE9DD0();
            v134 = v112;
            sub_232B48080();
            v113 = sub_232CEA3F0();

            if (v113)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_109;
        case 2:
          if (!v15)
          {
            goto LABEL_106;
          }

          if (!a4)
          {
            goto LABEL_109;
          }

          v128 = v17 + 1;
          v20 = v121;
          sub_232CE89A0();
          v135 = sub_232CE9DD0();
          v136 = v21;
          sub_232B48080();
          v22 = sub_232CEA380();

          v135 = v22;
          sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
          sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
          v23 = sub_232CE9CD0();
          v25 = v24;

          v135 = sub_232CE9DD0();
          v136 = v26;
          v27 = sub_232CEA380();

          v135 = v27;
          v28 = sub_232CE9CD0();
          v30 = v29;

          v135 = v28;
          v136 = v30;
          v133 = v23;
          v134 = v25;
          LOBYTE(v28) = sub_232CEA3F0();
          (*v120[0])(v20, v122);

          if ((v28 & 1) == 0)
          {
            goto LABEL_109;
          }

          v12 = v127;
          v17 = v128;
          v31 = v128 == v127;
          v13 = v125;
          a4 = v126;
          goto LABEL_39;
        case 3:
          v128 = v17 + 1;
          a1 = v18;
          sub_232B714B8();
          if ((v57 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_96;
        case 4:
          if (!v15)
          {
            goto LABEL_105;
          }

          v96 = v17 + 1;
          v97 = sub_232CE9D20();
          v98 = v15;
          v99 = v97;
          if ((v98 & 0x1000000000000000) != 0)
          {
            v100 = sub_232CE9F10();
          }

          else
          {
            v100 = sub_232CE9F20();
          }

          v101 = v100;
          v102 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v103 = [v102 scanString:v99 range:0 configuration:{v101, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v104 = sub_232CE9FE0();

          if (v104 >> 62)
          {
            v105 = sub_232CEA610();
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v105)
            {
              goto LABEL_31;
            }
          }

          v106 = 0;
          while (1)
          {
            if ((v104 & 0xC000000000000001) != 0)
            {
              v107 = MEMORY[0x2383922C0](v106, v104);
            }

            else
            {
              if (v106 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v107 = *(v104 + 8 * v106 + 32);
            }

            v108 = v107;
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              __break(1u);
LABEL_118:
              __break(1u);
            }

            if ([v107 category] == 2)
            {
              v110 = [objc_allocWithZone(MEMORY[0x277CC5690]) initWithDDScannerResult_];
              if (v110)
              {
                break;
              }
            }

            ++v106;
            if (v109 == v105)
            {
              goto LABEL_31;
            }
          }

          v114 = v110;

          v115 = [v114 phoneNumber];
          a1 = sub_232CE9D50();
          v117 = v116;

          v15 = v117;
          a4 = v126;
          v12 = v127;
          v14 = v96;
          v13 = v125;
          if (v96 == v127)
          {
            goto LABEL_110;
          }

          continue;
        case 5:
          if (!v15)
          {
LABEL_106:
            a1 = 0;
            goto LABEL_110;
          }

          sub_232BA4DEC(0, &qword_27DDC7528, 0x277CCAC80);

          v48 = sub_232B80670();
          v135 = 0;
          if (![v48 scanInteger_])
          {

            goto LABEL_109;
          }

          v49 = [v48 isAtEnd];

          if ((v49 & 1) == 0)
          {
            goto LABEL_109;
          }

          v17 = v19;
          v31 = v19 == v12;
LABEL_39:
          a1 = v18;
LABEL_40:
          v15 = v130;
          if (v31)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 6:
          if (!v15)
          {
            goto LABEL_105;
          }

          v50 = v17 + 1;
          sub_232B48080();
          v51 = 0;
          v52 = 0;
          do
          {
            v55 = (&unk_28480D370 + 16 * v52 + 32);
            v53 = *v55;
            v54 = v55[1];
            v56 = v51;
            v135 = v18;
            v136 = v15;
            v133 = v53;
            v134 = v54;
            if (sub_232CEA3F0())
            {
              goto LABEL_109;
            }

            v51 = 1;
            v52 = 1;
            v15 = v130;
          }

          while ((v56 & 1) == 0);
          v17 = v50;
          a1 = v18;
          if (v50 == v12)
          {
            goto LABEL_110;
          }

          goto LABEL_6;
        case 7:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v129 = sub_232CE9DD0();
          v62 = v61;
          v63 = objc_opt_self();
          v64 = &unk_28480D3D8;
          v65 = 25;
          do
          {
            v67 = *(v64 - 1);
            v66 = *v64;
            v135 = 25180;
            v136 = 0xE200000000000000;

            v68 = sub_232CE9D20();

            v69 = [v63 escapedPatternForString_];

            v70 = sub_232CE9D50();
            v72 = v71;

            MEMORY[0x238391C30](v70, v72);

            MEMORY[0x238391C30](25180, 0xE200000000000000);
            v73 = v135;
            v74 = v136;
            v75 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v76 = v74;
            v77 = v123;
            v78 = sub_232BA1978(v73, v76, 0);
            if (v77)
            {

              v123 = 0;
            }

            else
            {
              v79 = v78;
              v123 = 0;
              if (v78)
              {
                v133 = 15;
                v135 = v129;
                v136 = v62;

                sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0);
                sub_232B48080();
                v80 = sub_232CEA320();
                v82 = v81;
                v83 = sub_232CE9D20();
                v43 = [v79 firstMatchInString:v83 options:0 range:{v80, v82}];

                if (v43)
                {
                  goto LABEL_112;
                }
              }
            }

            v64 += 2;
            --v65;
          }

          while (v65);

          v13 = v125;
          a4 = v126;
LABEL_94:
          a1 = v18;
          goto LABEL_97;
        case 8:
          if (!v15)
          {
            goto LABEL_105;
          }

          v128 = v17 + 1;
          v32 = sub_232CE9D20();
          v33 = v15;
          v34 = v32;
          if ((v33 & 0x1000000000000000) != 0)
          {
            v35 = sub_232CE9F10();
          }

          else
          {
            v35 = sub_232CE9F20();
          }

          v36 = v35;
          v37 = objc_opt_self();
          if (qword_27DDC6368 != -1)
          {
            swift_once();
          }

          v38 = [v37 scanString:v34 range:0 configuration:{v36, qword_27DDC6F80}];

          sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
          v39 = sub_232CE9FE0();

          if (v39 >> 62)
          {
            v40 = sub_232CEA610();
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a1 = v18;
          if (!v40)
          {
            goto LABEL_34;
          }

          v41 = 0;
          v129 = v39 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x2383922C0](v41, v39);
            }

            else
            {
              if (v41 >= *(v129 + 16))
              {
                __break(1u);
                goto LABEL_114;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              [v42 urlificationRange];
              sub_232CEA110();
              if (v45)
              {
              }

              else
              {
                v46 = sub_232CE9FB0();
                MEMORY[0x238391B80](v46);

                if ([v43 category] == 4)
                {
                  v47 = sub_232B756EC(v43);

                  a1 = v18;
                  if (v47)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {

                  a1 = v18;
                }
              }

              ++v41;
              if (v44 == v40)
              {
LABEL_34:

                v12 = v127;
                v17 = v128;
                v31 = v128 == v127;
                v13 = v125;
                a4 = v126;
                goto LABEL_40;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_112:

          goto LABEL_109;
        case 9:
          v128 = v17 + 1;
          a1 = v18;
          if (sub_232B72018(v18, v15, v124, a4))
          {
            goto LABEL_109;
          }

LABEL_96:
          if (v15)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        case 0xA:
          if (!v15)
          {
            goto LABEL_105;
          }

          v58 = sub_232B486F4(v18, v15);
          v15 = v59;

          v60 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {
            goto LABEL_109;
          }

          v14 = v19;
          v31 = v19 == v12;
          a1 = v58;
          if (!v31)
          {
            continue;
          }

          goto LABEL_110;
        default:
          if (!v15)
          {
LABEL_105:
            a1 = v18;
            goto LABEL_110;
          }

          v128 = v17 + 1;
          v135 = v18;
          v136 = v15;
          v84 = v121;
          sub_232CE89B0();
          sub_232B48080();
          v85 = sub_232CEA3A0();
          v87 = v86;
          (*v120[0])(v84, v122);
          v135 = v85;
          v136 = v87;
          v133 = 2847580;
          v134 = 0xE300000000000000;
          v131 = 32;
          v132 = 0xE100000000000000;
          v88 = sub_232CEA3B0();
          v90 = v89;

          v91 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v91 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (!v91)
          {
            goto LABEL_31;
          }

          v92 = sub_232C0D410(&unk_28480EDD0);
          v93 = sub_232CE9DD0();
          v95 = sub_232BA7F18(v93, v94, v92);
          a1 = v88;

          v130 = v90;
          if (v95)
          {
LABEL_109:

            a1 = 0;
            goto LABEL_110;
          }

LABEL_97:
          v12 = v127;
          v14 = v128;
          v15 = v130;
          if (v128 == v127)
          {
            goto LABEL_110;
          }

          break;
      }
    }
  }

LABEL_110:
  v118 = *MEMORY[0x277D85DE8];
  return a1;
}