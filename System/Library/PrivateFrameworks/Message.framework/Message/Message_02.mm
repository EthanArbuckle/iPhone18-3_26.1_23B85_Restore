uint64_t sub_1B03AD728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(type metadata accessor for RunningTask() - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_1B0450F38(v10, a2, a3);
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1B03AD844(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_1B03AD91C(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1B03AD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B03ADA68(uint64_t a1)
{
  v2 = type metadata accessor for RunningTask();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1B03ADCA0(0, v7, 0);
  v8 = v25;
  v23 = a1;
  if (v7)
  {
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    v11 = v7;
    do
    {
      sub_1B0390720(v9, v6, type metadata accessor for RunningTask);
      sub_1B03D0A20((v6 + 64), v24);
      sub_1B0390574(v6, type metadata accessor for RunningTask);
      v25 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B03ADCA0((v12 > 1), v13 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v13 + 1;
      v14 = (v8 + 48 * v13);
      v15 = v24[0];
      v16 = v24[2];
      v14[3] = v24[1];
      v14[4] = v16;
      v14[2] = v15;
      v9 += v10;
      --v11;
    }

    while (v11);
  }

  v17 = sub_1B03ADCC0(v8);

  v18 = 0;
  *&v24[0] = MEMORY[0x1E69E7CC8];
  v19 = v23;
  while (v7 != v18)
  {
    v20 = v18 + 1;
    sub_1B0B7CAB8(v24, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
    v18 = v20;
  }

  sub_1B03ADEC0(v19);
  return v17;
}

char *sub_1B03ADCA0(char *a1, int64_t a2, char a3)
{
  result = sub_1B03ADD4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03ADCC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B03ADE6C();
  result = MEMORY[0x1B2727570](v2, &type metadata for TaskID, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_1B03D0A20(v5, v6);
      sub_1B0451498(v7, v6);
      sub_1B03B04BC(v7);
      v5 += 48;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

char *sub_1B03ADD4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B03ADE6C()
{
  result = qword_1EB6DD1E0;
  if (!qword_1EB6DD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1E0);
  }

  return result;
}

void *sub_1B03ADEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E51B0, &qword_1B0ECC598);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4598, &unk_1B0EC5908);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v48 - v19;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v58 = v11;
  v21 = *(type metadata accessor for RunningTask() - 8);
  v22 = (v17 + 56);
  v51 = (v3 + 16);
  v23 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v24 = *(v21 + 72);
  v59 = MEMORY[0x1E69E7CC8];
  v25 = v56;
  v52 = v22;
  v53 = v15;
  v57 = v24;
  v50 = v16;
  while (1)
  {
    sub_1B0450DB0(v23, v60);
    if (v61 != 1)
    {
      sub_1B0B7ABB4(v60);
      goto LABEL_4;
    }

    sub_1B0450C74(v60, v62);
    sub_1B03D2CA8(v62, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4720, "̨\t");
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      (*v22)(v15, 1, 1, v16);
      sub_1B0398EFC(v15, &qword_1EB6E51B0, &qword_1B0ECC598);
      goto LABEL_4;
    }

    (*v22)(v15, 0, 1, v16);
    sub_1B03C60A4(v15, v25, &qword_1EB6E4598, &unk_1B0EC5908);
    v26 = *(v25 + 104);
    v27 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = v58;
    sub_1B0B24198(v27);
    if (sub_1B0E46E98())
    {
      sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      sub_1B0398EFC(v25, &qword_1EB6E4598, &unk_1B0EC5908);
      v24 = v57;
      goto LABEL_4;
    }

    v29 = v2;
    v30 = *(v25 + 88);
    v31 = *(v25 + 96);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v32 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60[0] = v32;
    v35 = sub_1B03AB888(v30, v31);
    v36 = v32[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B8F434();
      }
    }

    else
    {
      sub_1B0B33EF4(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_1B03AB888(v30, v31);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_23;
      }

      v35 = v40;
    }

    v2 = v29;
    v42 = *&v60[0];
    v59 = *&v60[0];
    if (v39)
    {
    }

    else
    {
      sub_1B03D06F8();
      v43 = v49;
      sub_1B0E46EE8();
      v44 = v43;
      v42 = v59;
      sub_1B0A9BE10(v35, v30, v31, v44, v59);
    }

    v45 = v42[7] + *(v54 + 72) * v35;
    v22 = v52;
    v46 = v58;
    (*v51)(v55, v58, v29);
    sub_1B0E46ED8();
    sub_1B0398EFC(v46, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    v25 = v56;
    sub_1B0398EFC(v56, &qword_1EB6E4598, &unk_1B0EC5908);
    v15 = v53;
    v24 = v57;
    v16 = v50;
LABEL_4:
    v23 += v24;
    if (!--v20)
    {
      return v59;
    }
  }

  __break(1u);
LABEL_23:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B03AE4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v149 = a6;
  sub_1B03AF23C(a1, &v167);
  if (v168[24] != 255)
  {
    v182 = v167;
    v183[0] = *v168;
    *(v183 + 9) = *&v168[9];
    sub_1B0B7ABE4(&v182, a8);
    sub_1B0B7AC40(&v182);

    *(a8 + 48) = MEMORY[0x1E69E7CD0];
    return result;
  }

  v144 = a1;
  v145 = a3;
  v150 = a2;
  v133 = a5;
  v134 = a4;
  v139 = a8;
  sub_1B0398EFC(&v167, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
  v17 = *(a7 + 72);
  v18 = *(a7 + 72);
  v19 = a9;
  if (v17 == 2)
  {
    goto LABEL_4;
  }

  v21 = a7;
  v22 = *(a7 + 88);
  v23 = *(a7 + 104);
  v24 = *(a7 + 114);
  v25 = *(a7 + 112);
  v140 = *(a7 + 120);
  v26 = *(a7 + 137);
  v146 = a9;
  v143 = a7;
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v155 = v22;
  v156 = v17;
  v27 = *(a7 + 24);
  v28 = *(a7 + 25);
  v29 = *(a7 + 32);
  v30 = *(a7 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = sub_1B0397D14();
  v32 = v31;
  if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    v19 = v146;
    v21 = v143;
    v22 = v155;
    v17 = v156;
    if ((v18 & 0xFF0000) == 0x20000)
    {
      goto LABEL_19;
    }

LABEL_4:
    v20 = v139;
    *(v139 + 32) = 0;
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 40) = -1;

    *(v20 + 48) = MEMORY[0x1E69E7CD0];
    return result;
  }

  v33 = sub_1B0BAE1A4(v31);
  LODWORD(v154) = v28;
  if (v28)
  {
    goto LABEL_14;
  }

  if (v29 != 1)
  {
    if (!v29 && (v27 - 1) < 2)
    {
      v33 = 1;
      v19 = v146;
      goto LABEL_15;
    }

LABEL_14:
    v19 = v146;
    goto LABEL_15;
  }

  v19 = v146;
  if (v27)
  {
    v33 = v27 != 1;
  }

LABEL_15:
  v34 = v33;
  sub_1B0397E04(&unk_1F2710548, v30);
  sub_1B0BAE1A4(v32);
  v35 = sub_1B039109C(v30);

  if (v35 & 1) == 0 && (v154)
  {
    sub_1B0BAE1A4(v32);
  }

  v21 = v143;
  v22 = v155;
  v17 = v156;
  if (!(((v18 & 0xFF0000) == 0x20000) | v34 & 1))
  {
    goto LABEL_4;
  }

LABEL_19:
  v36 = MEMORY[0x1E69E7CD0];
  v177 = MEMORY[0x1E69E7CD0];
  v142 = *(v149 + 16);
  if (!v142)
  {
    goto LABEL_135;
  }

  v178[0] = v17;
  v178[1] = v22;
  v179 = v23;
  v180 = v25;
  v181 = (v25 | (v24 << 16)) >> 16;
  v37 = v133 + 32;
  v38 = v149 + 32;
  v39 = *(v21 + 168);
  v153 = *(v21 + 192);
  v154 = *(v133 + 16);
  v148 = v39;
  v147 = v39 + 32;

  v40 = 0;
  v41 = v142;
  v135 = v149 + 32;
  v136 = v133 + 32;
  while (2)
  {
    if (v40 == v154)
    {
      __break(1u);
      return result;
    }

    v42 = v37 + 16 * v40;
    v43 = *v42;
    v44 = v19;
    v45 = *(v42 + 8);
    LODWORD(v155) = *(v38 + 2 * v40);
    v46 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *&v156 = v45;
    v47 = v45;
    v19 = v44;
    v48 = sub_1B03BBFB8(v46, v47, v44);
    if ((v153 & 1) == 0 || (v49 = *(v148 + 16)) == 0)
    {
LABEL_21:

      goto LABEL_22;
    }

    v50 = 0;
    while (1)
    {
      v51 = (v147 + 176 * v50);
      v52 = *v51;
      v53 = v51[2];
      v183[0] = v51[1];
      v183[1] = v53;
      v182 = v52;
      v54 = v51[3];
      v55 = v51[4];
      v56 = v51[6];
      v186 = v51[5];
      v187 = v56;
      v184 = v54;
      v185 = v55;
      v57 = v51[7];
      v58 = v51[8];
      v59 = v51[10];
      v190 = v51[9];
      v191 = v59;
      v188 = v57;
      v189 = v58;
      if ((DWORD2(v183[0]) | (DWORD2(v183[0]) << 32)) == (v156 | (v156 << 32)))
      {
        v60 = *(*&v183[0] + 16);
        if (v60 == *(v43 + 16))
        {
          break;
        }
      }

LABEL_27:
      if (++v50 == v49)
      {
        goto LABEL_21;
      }
    }

    if (v60 && *&v183[0] != v43)
    {
      v61 = (*&v183[0] + 32);
      v62 = (v43 + 32);
      while (*v61 == *v62)
      {
        ++v61;
        ++v62;
        if (!--v60)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_27;
    }

LABEL_35:
    v63 = v140;
    v152 = v48;
    v151 = v43;
    if (v140 && *(v140 + 16) && (v64 = sub_1B03AB888(v43, v156), (v65 & 1) != 0))
    {
      v66 = *(v63 + 56) + 72 * v64;
      v161[0] = *v66;
      v68 = *(v66 + 32);
      v67 = *(v66 + 48);
      v69 = *(v66 + 64);
      v161[1] = *(v66 + 16);
      v161[2] = v68;
      v162 = v69;
      v161[3] = v67;
      *v168 = *(v66 + 16);
      *&v168[16] = *(v66 + 32);
      v169 = *(v66 + 48);
      v170 = *(v66 + 64);
      v167 = *v66;
      sub_1B03BB0B4(v161, &v157);
      v173 = *&v168[16];
      v174 = v169;
      v175 = v170;
      v171 = v167;
      v172 = *v168;
    }

    else
    {
      v175 = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
    }

    v192[2] = v173;
    v192[3] = v174;
    v193 = v175;
    v192[0] = v171;
    v192[1] = v172;
    v70 = v143;
    v72 = *v143;
    v71 = *(v143 + 8);
    v73 = *(v143 + 16);
    sub_1B03A35B8(&v182, &v167);
    v138 = WindowOfInterestSizes.subscript.getter(v192, v72, v71);
    v137 = v74;
    sub_1B0398EFC(&v171, &qword_1EB6E4568, &qword_1B0EC55C0);
    v75 = *(v70 + 24);
    v76 = *(v70 + 25);
    v77 = *(v70 + 32);
    LODWORD(v141) = *(v70 + 40);
    LOBYTE(v72) = *(v70 + 18);
    v79 = *(v70 + 48);
    v78 = *(v70 + 56);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v80 = sub_1B0397D14();
    v81 = v80;
    v163 = v72;
    if (v77 == 3)
    {

      v83 = 0;
      v84 = 0;
      v85 = 0x100000000000000;
      v86 = 0x100000000;
      v87 = 1;
      v88 = 512;
      v89 = 0x1000000;
      v19 = v146;
      v91 = v150;
      v90 = v151;
      v92 = v144;
      v82 = v155;
    }

    else
    {
      v132 = v79;
      v19 = v146;
      v82 = v155;
      if (v77 == 2)
      {

        v83 = 0;
        v84 = 0;
        v85 = 0x100000000000000;
        v86 = 0x100000000;
        v87 = 1;
        v88 = 512;
        v89 = 0x1000000;
        v91 = v150;
        v90 = v151;
        v92 = v144;
        goto LABEL_112;
      }

      v93 = sub_1B0BAE1A4(v80);
      v94 = v76;
      if (v76)
      {
        goto LABEL_53;
      }

      v95 = v75;
      if (v77 == 1)
      {
        if (!v75)
        {
          goto LABEL_53;
        }

        if (v75 != 1)
        {
          goto LABEL_132;
        }

        v96 = 0;
        v131 = 0x100000000;
        v97 = 512;
LABEL_133:
        v128 = v97;
      }

      else
      {
        if (!v77 && v75)
        {
          if (v75 != 1)
          {
            v95 = 0;
            v128 = 0;
            v96 = 0;
            v131 = 0;
            goto LABEL_58;
          }

LABEL_132:
          v96 = 0;
          v131 = 0;
          v95 = 1;
          v97 = 256;
          goto LABEL_133;
        }

LABEL_53:
        v95 = (v93 & 1) == 0;
        v98 = 0x100000000;
        if (v93)
        {
          v98 = 0;
        }

        v131 = v98;
        v99 = 512;
        if (v93)
        {
          v99 = 0;
        }

        v128 = v99;
        v96 = (v93 & 1) == 0;
      }

LABEL_58:
      v90 = v151;
      v100 = sub_1B0397E04(&unk_1F2710548, v78);
      v101 = (v100 & 1) == 0 || v95;
      LODWORD(v129) = v101;
      v102 = (v100 & 1) == 0 || v96;
      v127 = v102;
      LODWORD(v130) = sub_1B0BAE1A4(v81);
      v103 = sub_1B039109C(v78);

      v104 = v103 ^ 1;
      if (v103)
      {
        v91 = v150;
      }

      else
      {
        v91 = v150;
        if (v94)
        {
          v104 = sub_1B0BAE1A4(v81);
          v103 = v104 ^ 1;
        }
      }

      v105 = *(v81 + 16);

      v106 = (v105 == 0) & v94;
      if (v141 > 1)
      {
        v19 = v146;
        v82 = v155;
        if (v141 == 2)
        {
          v83 = 0x10000;
          if ((v104 & 1) == 0)
          {
            v83 = 0;
          }

          if ((v103 & 1) == 0)
          {
            v83 = 0x20000;
          }

          v88 = v128;
          if (v132 >= 3989)
          {
            v88 = 512;
          }

          v107 = v106 == 0;
          v85 = 0x100000000000000;
          if (v107)
          {
            v85 = 0;
          }

          v84 = 0x10000000000;
          if ((v130 & 1) == 0)
          {
            v84 = 0;
          }

          if (v127)
          {
            v92 = v144;
            v86 = v131;
            LODWORD(v87) = v129;
            goto LABEL_110;
          }

          v89 = 0;
          v92 = v144;
          v86 = v131;
          LODWORD(v87) = v129;
        }

        else
        {
          v83 = 0x10000;
          if ((v104 & 1) == 0)
          {
            v83 = 0;
          }

          v86 = v131;
          v88 = v128;
          if (v132 >= 3989)
          {
            v88 = 512;
          }

          v107 = v106 == 0;
          v85 = 0x100000000000000;
          if (v107)
          {
            v85 = 0;
          }

          v84 = 0x10000000000;
          if ((v130 & 1) == 0)
          {
            v84 = 0;
          }

          LODWORD(v87) = v129;
          if (v127)
          {
            v92 = v144;
            goto LABEL_110;
          }

          v89 = 0;
          v92 = v144;
        }
      }

      else
      {
        v19 = v146;
        v82 = v155;
        if (!v141)
        {
          v83 = 0;
          v107 = v106 == 0;
          v85 = 0x100000000000000;
          if (v107)
          {
            v85 = 0;
          }

          v84 = 0x10000000000;
          if ((v130 & 1) == 0)
          {
            v84 = 0;
          }

          LODWORD(v87) = 1;
          v88 = 512;
          v92 = v144;
          v86 = v131;
          goto LABEL_110;
        }

        v83 = 0;
        v89 = 0;
        v86 = v131;
        v88 = v128;
        if (v132 >= 3989)
        {
          v88 = 512;
        }

        v107 = v106 == 0;
        v85 = 0x100000000000000;
        if (v107)
        {
          v85 = 0;
        }

        v84 = 0x10000000000;
        if ((v130 & 1) == 0)
        {
          v84 = 0;
        }

        v92 = v144;
        LODWORD(v87) = v129;
        if (v127)
        {
LABEL_110:
          v89 = 0x1000000;
        }
      }

      v87 = v87;
    }

LABEL_112:
    v108 = 0x1000000000000;
    if ((v163 & 1) == 0)
    {
      v108 = 0;
    }

    v109 = v83 | v88 | v87 | v89 | v86 | v84 | v85 | v108;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v110 = v145;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BC640(v82, v109, &v182, v92, v91, v110, v152 & 1, v161);
    sub_1B03B5C80(v161, &v157, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
    if (v160 == 255)
    {
      sub_1B0398EFC(v161, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
LABEL_118:
      sub_1B03A3614(&v182);
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      v38 = v135;
      v37 = v136;
      goto LABEL_123;
    }

    if (v160)
    {
      sub_1B0398EFC(v161, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
      sub_1B03A3614(&v182);
      sub_1B0450C74(&v157, &v164);
      goto LABEL_122;
    }

    if (v82 >> 14 > 2)
    {
LABEL_120:
      v132 = v159;
      v141 = v158;
      *&v155 = *(&v157 + 1);
      v111 = v157;
      v130 = sub_1B03C3BF4;
      goto LABEL_121;
    }

    if (v82 > 1u)
    {
      if (v82 == 2)
      {
        v132 = v159;
        v141 = v158;
        *&v155 = *(&v157 + 1);
        v111 = v157;
        v130 = sub_1B0B94D74;
        goto LABEL_121;
      }

      sub_1B0398EFC(v161, &qword_1EB6E4CF8, &qword_1B0EC9BD8);

      goto LABEL_118;
    }

    if (!v82)
    {
      goto LABEL_120;
    }

    v132 = v159;
    v141 = v158;
    *&v155 = *(&v157 + 1);
    v111 = v157;
    v130 = sub_1B0B94DCC;
LABEL_121:
    v112 = swift_allocObject();
    v131 = &v126;
    v113 = v190;
    v112[9] = v189;
    v112[10] = v113;
    v112[11] = v191;
    v114 = v186;
    v112[5] = v185;
    v112[6] = v114;
    v115 = v188;
    v112[7] = v187;
    v112[8] = v115;
    v116 = v183[0];
    v112[1] = v182;
    v112[2] = v116;
    v117 = v184;
    v112[3] = v183[1];
    v112[4] = v117;
    v118 = MEMORY[0x1EEE9AC00](v112);
    v129 = v124;
    v119 = MEMORY[0x1EEE9AC00](v118);
    MEMORY[0x1EEE9AC00](v119);
    v125 = v120;
    sub_1B03A35B8(&v182, &v167);
    v121 = v137 & 1;

    LOBYTE(v125) = v121;
    v124[3] = v109;
    v124[4] = v138;
    v124[1] = v124;
    v124[2] = v178;
    v124[0] = sub_1B03D9800;
    (v130)(&v164, v111, v155, v141, v132, sub_1B0B94D58, v129, sub_1B0B94D68, v124);

    sub_1B03A3614(&v182);

    sub_1B0398EFC(v161, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
    v19 = v146;
    v90 = v151;
LABEL_122:
    v38 = v135;
    v37 = v136;
    if (*(&v165 + 1))
    {
      sub_1B0450C74(&v164, v176);

      v123 = v139;
      sub_1B0450C74(v176, v139);
      *(v123 + 40) = 1;

      *(v123 + 48) = v177;
    }

    else
    {
LABEL_123:
      sub_1B0398EFC(&v164, &qword_1EB6E45A8, &unk_1B0EC5920);
      sub_1B03AB2E0(&v167, v90, v156);

      v41 = v142;
LABEL_22:
      if (++v40 != v41)
      {
        continue;
      }

      v36 = v177;
LABEL_135:
      v122 = v139;
      *(v139 + 32) = 0;
      *v122 = 0u;
      *(v122 + 16) = 0u;
      *(v122 + 40) = -1;

      *(v122 + 48) = v36;
    }

    return result;
  }
}

uint64_t sub_1B03AF23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1B03AD0B0(v2, &v33);
  sub_1B03AFCC0(v2, &v42);
  if (v42)
  {
    v49 = v44;
    *v50 = v45;
    *&v50[16] = v46;
    v47 = v42;
    v48 = v43;
    if ((sub_1B03D0AD8(&v47, a1) & 1) == 0)
    {
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D60, &qword_1B0EC9C28);
      *(a2 + 32) = sub_1B039E3F8(&qword_1EB6DD2D0, &qword_1EB6E4D60, &qword_1B0EC9C28);
      v13 = swift_allocObject();
      *a2 = v13;
      sub_1B0B6351C(&v47, v13 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      *(v13 + 88) = MEMORY[0x1E69E7CC0];
      *(v13 + 96) = v14;
      result = sub_1B0B63554(&v47);
      goto LABEL_19;
    }

    result = sub_1B0B63554(&v47);
  }

  else
  {
    result = sub_1B0398EFC(&v42, &qword_1EB6E4A18, &unk_1B0EC7400);
  }

  v7 = *(v2 + 72);
  if (v7 == 2)
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_7:
    *(a2 + 40) = -1;
    return result;
  }

  v8 = *(v2 + 80);
  if (*(v2 + 120))
  {
    if ((*(v2 + 137) & 1) == 0)
    {
LABEL_14:
      v10 = *(v3 + 184);
      v11 = *(v3 + 216);
      v49 = *(v3 + 200);
      *v50 = v11;
      *&v50[12] = *(v3 + 228);
      v47 = *(v3 + 168);
      v48 = v10;
      sub_1B03BB844();
      sub_1B03BB96C(v12, &v42);
      if (!v42)
      {
        result = sub_1B0398EFC(&v42, &qword_1EB6E4D20, &qword_1B0EC9C00);
        if ((BYTE8(v48) & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_26;
      }

      v34[1] = v44;
      v35 = v45;
      v36[0] = v46;
      v33 = v42;
      v34[0] = v43;
      if (sub_1B03D0AD8(&v33 + 1, a1))
      {
        result = sub_1B0B94E80(&v33);
        if ((BYTE8(v48) & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_26:
        v16 = sub_1B03BBCEC()[2];

        if (v16)
        {
          v36[0] = sub_1B03BBCEC();
          v36[1] = MEMORY[0x1E69E7CD0];
          *(&v35 + 1) = 0x80000001B0F2B630;
          LOBYTE(v42) = 1;
          *&v35 = 0xD000000000000010;
          *&v33 = &type metadata for CreateMailboxes;
          sub_1B0E461E8();
          if (sub_1B03D0AD8(&v33, a1))
          {
            result = sub_1B0A98DBC(&v33);
            goto LABEL_40;
          }

          *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D28, &qword_1B0EC9C08);
          *(a2 + 32) = sub_1B039E3F8(&qword_1EB6E4D30, &qword_1EB6E4D28, &qword_1B0EC9C08);
          v26 = swift_allocObject();
          *a2 = v26;
          sub_1B0A98D84(&v33, v26 + 16);
          v27 = MEMORY[0x1E69E7CC0];
          *(v26 + 96) = MEMORY[0x1E69E7CC0];
          *(v26 + 104) = v27;
          result = sub_1B0A98DBC(&v33);
        }

        else
        {
          v19 = sub_1B03BBCF4()[2];

          if (v19)
          {
            v20 = *(v3 + 248);
            v21 = *(v20 + 16);
            v22 = (v20 + 32);
            while (v21)
            {
              v23 = *v22++;
              --v21;
              if (v23 == 3)
              {
                goto LABEL_34;
              }
            }

            v28 = sub_1B03BBCF4();
            sub_1B0A9A08C(v28, &v33);
            if (sub_1B03D0AD8(&v33, a1))
            {
              result = sub_1B0AA00C0(&v33);
              goto LABEL_40;
            }

            *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D38, &qword_1B0EC9C10);
            *(a2 + 32) = sub_1B039E3F8(&qword_1EB6E4D40, &qword_1EB6E4D38, &qword_1B0EC9C10);
            v31 = swift_allocObject();
            *a2 = v31;
            sub_1B0AA0088(&v33, v31 + 16);
            v32 = MEMORY[0x1E69E7CC0];
            *(v31 + 96) = MEMORY[0x1E69E7CC0];
            *(v31 + 104) = v32;
            result = sub_1B0AA00C0(&v33);
          }

          else
          {
LABEL_34:
            v24 = sub_1B03BBCFC()[2];

            if (!v24)
            {
              goto LABEL_6;
            }

            v25 = sub_1B03BBCFC();
            *(&v35 + 1) = MEMORY[0x1E69E7CD0];
            v36[0] = MEMORY[0x1E69E7CD0];
            LOBYTE(v42) = 1;
            *&v35 = v25;
            *&v33 = &type metadata for RenameMailboxes;
            sub_1B0E461E8();
            if (sub_1B03D0AD8(&v33, a1))
            {
              result = sub_1B0B70830(&v33);
              goto LABEL_40;
            }

            *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D48, &qword_1B0EC9C18);
            *(a2 + 32) = sub_1B039E3F8(&qword_1EB6E4D50, &qword_1EB6E4D48, &qword_1B0EC9C18);
            v29 = swift_allocObject();
            *a2 = v29;
            sub_1B0B707F8(&v33, v29 + 16);
            v30 = MEMORY[0x1E69E7CC0];
            *(v29 + 88) = MEMORY[0x1E69E7CC0];
            *(v29 + 96) = v30;
            result = sub_1B0B70830(&v33);
          }
        }

        goto LABEL_19;
      }

      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D58, &qword_1B0EC9C20);
      *(a2 + 32) = sub_1B039E3F8(&qword_1EB6DD2D8, &qword_1EB6E4D58, &qword_1B0EC9C20);
      v17 = swift_allocObject();
      *a2 = v17;
      sub_1B0B94E24(&v33, v17 + 16);
      v18 = MEMORY[0x1E69E7CC0];
      *(v17 + 88) = MEMORY[0x1E69E7CC0];
      *(v17 + 96) = v18;
      result = sub_1B0B94E80(&v33);
LABEL_19:
      *(a2 + 40) = 0;
      return result;
    }

    v51 = *(v2 + 144);
    v52 = *(v2 + 160);
    v9 = MEMORY[0x1E69E7CC0];
    *&v33 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
    *(&v33 + 1) = sub_1B03C8E00(v9);
    sub_1B03B5C80(&v51, &v47, &qword_1EB6E3470, &qword_1B0E9BF70);
    if (qword_1EB6DD1F8 != -1)
    {
      swift_once();
    }

    sub_1B03D0A20(&qword_1EB737CF0, v34);
    strcpy(v36, "ListMailboxes");
    HIWORD(v36[1]) = -4864;
    v37 = BYTE6(v7) & 1;
    v38 = v51;
    v39 = v52;
    v40 = HIBYTE(v7);
    v41 = v8;
    if (sub_1B03D0AD8(v34, a1))
    {
      sub_1B0B11C28(&v33);
      goto LABEL_14;
    }
  }

  else
  {
    v47 = *(v2 + 144);
    *&v48 = *(v2 + 160);
    v9 = MEMORY[0x1E69E7CC0];
    *&v33 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
    *(&v33 + 1) = sub_1B03C8E00(v9);
    sub_1B03B5C80(&v47, &v42, &qword_1EB6E3470, &qword_1B0E9BF70);
    if (qword_1EB6DD1F8 != -1)
    {
      swift_once();
    }

    sub_1B03D0A20(&qword_1EB737CF0, v34);
    strcpy(v36, "ListMailboxes");
    HIWORD(v36[1]) = -4864;
    v37 = BYTE6(v7) & 1;
    v38 = v47;
    v39 = v48;
    v40 = HIBYTE(v7);
    v41 = v8;
    if (sub_1B03D0AD8(v34, a1))
    {
      result = sub_1B0B11C28(&v33);
LABEL_40:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      goto LABEL_7;
    }
  }

  *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D18, &qword_1B0EC9BF8);
  *(a2 + 32) = sub_1B039E3F8(qword_1EB6DD2E0, &qword_1EB6E4D18, &qword_1B0EC9BF8);
  v15 = swift_allocObject();
  *a2 = v15;
  sub_1B0B11BF0(&v33, v15 + 16);
  *(v15 + 136) = v9;
  *(v15 + 144) = v9;
  *(a2 + 40) = 0;
  return sub_1B0B11C28(&v33);
}

uint64_t sub_1B03AFA74()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  v3 = v0[11];

  if (v0[13])
  {

    v4 = v0[15];
  }

  v5 = v0[17];

  v6 = v0[18];

  return swift_deallocObject();
}

uint64_t sub_1B03AFAE8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1B03AFB48()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1B03AFBB0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1B03AFC10()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1B03AFC68()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  return swift_deallocObject();
}

void sub_1B03AFCC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 184);
  v4 = *(a1 + 216);
  v38 = *(a1 + 200);
  v39[0] = v4;
  *(v39 + 12) = *(a1 + 228);
  v36 = *(a1 + 168);
  v37 = v3;
  v5 = sub_1B03AFF44();
  v6 = v5;
  v29 = a1;
  v7 = *(a1 + 64);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v31 = v6;
  v32 = v7;
  while (1)
  {
    v16 = v14;
    if (!v11)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(*(v7 + 48) + ((v14 << 8) | (4 * v17)));
    if (*(v6 + 16) && (v19 = *(v6 + 40), sub_1B0E46C28(), sub_1B0E46C88(), v20 = sub_1B0E46CB8(), v21 = -1 << *(v6 + 32), v22 = v20 & ~v21, ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      while (*(*(v6 + 48) + 4 * v22) != v18)
      {
        v22 = (v22 + 1) & v23;
        if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v35 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B0B0A384(0, *(v15 + 16) + 1, 1);
        v15 = v35;
      }

      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B0B0A384((v24 > 1), v25 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v25 + 1;
      *(v15 + 4 * v25 + 32) = v18;
      v6 = v31;
      v7 = v32;
    }
  }

  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v16;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  sub_1B03B02F4(v29);

  v26 = sub_1B03B03C8(v15);

  sub_1B03B03FC(v26, v33);
  if (*&v33[0])
  {
    v27 = v33[3];
    *(a2 + 32) = v33[2];
    *(a2 + 48) = v27;
    *(a2 + 64) = v34;
    v28 = v33[1];
    *a2 = v33[0];
    *(a2 + 16) = v28;
  }

  else
  {
    sub_1B03B0510(v33);
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_1B03AFF44()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = MEMORY[0x1E69E7CD0];
    v20 = MEMORY[0x1E69E7CD0];
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 168);
      do
      {
        v5 = *v4;
        v4 += 22;
        v6 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B00C8(v6);
        --v3;
      }

      while (v3);
      v7 = v20;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CD0];
    }

    v10 = v0[4];
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_18:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = *(*(v10 + 56) + ((v16 << 9) | (8 * v17)));
        v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B03B00C8(v19);
        if (!v13)
        {
          goto LABEL_14;
        }
      }
    }

    while (1)
    {
LABEL_14:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_18;
      }
    }

    return sub_1B03B01EC(v2, v7);
  }

  else
  {
    v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return sub_1B0B37DA8(v8);
  }
}

uint64_t sub_1B03B00E4(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v6;
LABEL_9:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      result = sub_1B03FF4C0(&v14, *(*(v5 + 48) + ((v12 << 8) | (4 * v13))), a2, a3);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B03B0204(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(v13, *(*(v4 + 48) + ((v11 << 8) | (4 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B0348(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1B2727570](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

double sub_1B03B03FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = &type metadata for NotifySyncRequestCompletion;
  sub_1B0E461E8();
  v5[6] = 0xD00000000000001BLL;
  v5[7] = 0x80000001B0EC73F0;
  if (*(a1 + 16))
  {
    v5[8] = a1;
    sub_1B0B6351C(v5, a2);
    sub_1B0B63554(v5);
  }

  else
  {

    sub_1B03B04BC(v5);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B03B0510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A18, &unk_1B0EC7400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B03B0578(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B03B05C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1B03B0648(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1B0E466C8();
    __break(1u);
  }

  result = sub_1B0E466C8();
  __break(1u);
  return result;
}

uint64_t OpaqueMailboxID.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v4 = sub_1B03B207C(a1, a2);
  sub_1B0E46CC8();
  v5 = *(v4 + 16);
  sub_1B0E46C38();
  sub_1B0E46CA8();
  sub_1B0391D50(a1, a2);
  return v4;
}

unint64_t sub_1B03B08D4()
{
  v2 = qword_1EB6DB380;
  if (!qword_1EB6DB380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03B095C()
{
  v2 = qword_1EB6DB390;
  if (!qword_1EB6DB390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B09E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B03B0A20(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v16 = a1;
  v21 = 0;
  v15 = 0;
  v19 = a1;
  v20 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E452A8();

  if (v17 == 8)
  {
    v2 = v15;
    v21 = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v6[2] = v16;
    v6[3] = v3;
    sub_1B03B0BBC(&v21, sub_1B03B0D84, v6, MEMORY[0x1E69E7360], MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v4, v18);
    v13 = v2;

    v8 = v21;

    v9 = v8;
    v10 = 0;
    v11 = v13;
  }

  else
  {

    v9 = 0;
    v10 = 1;
    v11 = v15;
  }

  return v9;
}

uint64_t sub_1B03B0BBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeMutableRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1B03B0DBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B03B0E24(uint64_t a1)
{
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  v1 = sub_1B039D36C();
  v6[0] = sub_1B039CA88(sub_1B03B0F60, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v5);
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(v6);
  return v3;
}

uint64_t sub_1B03B0F60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B03B1E80();
  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t MailboxRowID.description.getter()
{
  v6[2] = 0;
  v5 = *v0;
  v6[0] = sub_1B0E46A28();
  v6[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E469F8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v6);
  return sub_1B0E44C88();
}

uint64_t sub_1B03B1198(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t sub_1B03B11C4()
{
  v2 = qword_1EB6DB070;
  if (!qword_1EB6DB070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03B1258()
{
  v2 = qword_1EB6DCC08;
  if (!qword_1EB6DCC08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B12D0(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] == a2[1])
  {
    return sub_1B04520BC(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B03B12F4()
{
  v1 = *(v0 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_1B03B1374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B03B1738(MEMORY[0x1E69E7CC0]);
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
LABEL_2:
  v8 = (v7 + 16 * v5);
  v9 = v5;
  while (v6 != v9)
  {
    v10 = v9;
    if (v9 >= v6)
    {
      goto LABEL_45;
    }

    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_46;
    }

    v11 = *(v8 - 1);
    v12 = *v8;
    if (v4[2])
    {
      sub_1B03B8A9C(*(v8 - 1), *v8);
      v9 = v10 + 1;
      v8 += 2;
      if (v13)
      {
        continue;
      }
    }

    v14 = v10;
    if (v10 >= 0x3FFFu)
    {
      v14 = 0x3FFF;
    }

    v15 = v14 | 0x8000;
    if (v10 < 0x10000)
    {
      v16 = v15;
    }

    else
    {
      v16 = -16385;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1B03B8A9C(v11, v12);
    v20 = v4[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_49;
    }

    v24 = v19;
    if (v4[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v27 = v18;
      sub_1B0B8DFD0();
      v18 = v27;
      if (v24)
      {
LABEL_19:
        v26 = v18;

        *(v4[7] + 2 * v26) = v16;
        goto LABEL_2;
      }
    }

    else
    {
      sub_1B03B1854(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1B03B8A9C(v11, v12);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_51;
      }

LABEL_18:
      if (v24)
      {
        goto LABEL_19;
      }
    }

    v4[(v18 >> 6) + 8] |= 1 << v18;
    v28 = (v4[6] + 16 * v18);
    *v28 = v11;
    v28[1] = v12;
    *(v4[7] + 2 * v18) = v16;
    v29 = v4[2];
    v22 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v22)
    {
      goto LABEL_50;
    }

    v4[2] = v30;
    goto LABEL_2;
  }

  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = 0;
  v36 = 0;
  while (v33)
  {
LABEL_33:
    v40 = (*(a1 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v33)))));
    v41 = *v40;
    v42 = v40[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1AF0(v35);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v38 = sub_1B03B8A9C(v41, v42);
    v45 = v4[2];
    v46 = (v44 & 1) == 0;
    v22 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v22)
    {
      goto LABEL_47;
    }

    v48 = v44;
    if (v4[3] < v47)
    {
      sub_1B03B1854(v47, v43);
      v38 = sub_1B03B8A9C(v41, v42);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      if (v48)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    if (v43)
    {
      goto LABEL_38;
    }

    v53 = v38;
    sub_1B0B8DFD0();
    v38 = v53;
    if (v48)
    {
LABEL_26:
      v37 = v38;

      v38 = v37;
      goto LABEL_27;
    }

LABEL_39:
    v4[(v38 >> 6) + 8] |= 1 << v38;
    v50 = (v4[6] + 16 * v38);
    *v50 = v41;
    v50[1] = v42;
    *(v4[7] + 2 * v38) = -16385;
    v51 = v4[2];
    v22 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v22)
    {
      goto LABEL_48;
    }

    v4[2] = v52;
LABEL_27:
    v33 &= v33 - 1;
    *(v4[7] + 2 * v38) &= ~0x8000u;
    v35 = sub_1B0B245AC;
  }

  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v34)
    {

      sub_1B03B1AF0(v35);
      return v4;
    }

    v33 = *(a1 + 56 + 8 * v39);
    ++v36;
    if (v33)
    {
      v36 = v39;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_45:
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
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void *sub_1B03B1738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47D0, &qword_1B0EC5EB0);
  v3 = sub_1B0E466A8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1B03B8A9C(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 2 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 12;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v6 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B03B8A9C(v17, v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B1854(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47D0, &qword_1B0EC5EB0);
  v38 = a2;
  result = sub_1B0E46698();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 2 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = *v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      v27 = *(v8 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v24);
      result = sub_1B0E46CB8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 2 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B03B1AF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B03B1B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B03B1E80()
{
  v2 = qword_1EB6DBFF0;
  if (!qword_1EB6DBFF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B1F2C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

uint64_t sub_1B03B1F98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0E43008();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B03B2000(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1B03B207C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B0E42FC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1B0391D50(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1B03B7A3C(v11, 0);
      v15 = sub_1B0E42EB8();
      sub_1B0391D50(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t *sub_1B03B21F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v428 = a1;
  v427 = a2;
  v425 = a3;
  v426 = a4;
  v354 = sub_1B03B59F8;
  v355 = sub_1B039BBE8;
  v356 = sub_1B0394C30;
  v357 = sub_1B0394C24;
  v358 = sub_1B039BA2C;
  v359 = sub_1B039BA88;
  v360 = sub_1B039BB94;
  v361 = sub_1B0394C24;
  v362 = sub_1B039BBA0;
  v363 = sub_1B039BC08;
  v364 = sub_1B03B0DB4;
  v365 = sub_1B03B0DF8;
  v366 = sub_1B03B0F58;
  v367 = sub_1B039BCF8;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0399178;
  v371 = sub_1B0398F5C;
  v372 = sub_1B0398F5C;
  v373 = sub_1B039BA94;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0399178;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B03991EC;
  v380 = sub_1B0398F5C;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0399260;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0398F5C;
  v385 = sub_1B039BCEC;
  v386 = sub_1B03B59F8;
  v387 = sub_1B039BBE8;
  v388 = sub_1B0394C24;
  v389 = sub_1B039BA2C;
  v390 = sub_1B039BA88;
  v391 = sub_1B0394C24;
  v392 = sub_1B039BBA0;
  v393 = sub_1B039BC08;
  v394 = sub_1B03B0DB4;
  v395 = sub_1B03B0DF8;
  v396 = sub_1B03B0F58;
  v397 = sub_1B039BCF8;
  v398 = sub_1B0398F5C;
  v399 = sub_1B0398F5C;
  v400 = sub_1B0399178;
  v401 = sub_1B0398F5C;
  v402 = sub_1B0398F5C;
  v403 = sub_1B039BA94;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0399178;
  v407 = sub_1B0398F5C;
  v408 = sub_1B0398F5C;
  v409 = sub_1B03991EC;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0398F5C;
  v412 = sub_1B0399260;
  v413 = sub_1B0398F5C;
  v414 = sub_1B0398F5C;
  v415 = sub_1B039BCEC;
  v469 = 0;
  v468 = 0;
  v466 = 0;
  v467 = 0;
  v465 = 0;
  v416 = 0;
  v461 = 0;
  v460 = 0;
  v455 = 0;
  v456 = 0;
  v442 = 0;
  v417 = 0;
  v418 = sub_1B0E439A8();
  v419 = *(v418 - 8);
  v420 = v418 - 8;
  v421 = (*(v419 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v422 = &v165 - v421;
  v423 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v424 = &v165 - v423;
  v429 = _s6LoggerVMa();
  v430 = (*(*(v429 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v428);
  v431 = &v165 - v430;
  v432 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v433 = &v165 - v432;
  v434 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v435 = &v165 - v434;
  v469 = v11;
  v468 = v12;
  v466 = v13;
  v467 = v14;
  v465 = v4;
  v464 = v11;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
  sub_1B03B08D4();
  if (sub_1B0E45748())
  {
    v86 = v416;
    v269 = (v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
    v270 = &v463;
    v272 = 0;
    swift_beginAccess();
    v271 = *v269;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v462 = v271;
    sub_1B03B095C();
    result = sub_1B0E44F58();
    v273 = v86;
    v274 = result;
    if (!v86)
    {
      v87 = v422;
      v229 = v274;
      sub_1B039E440(&v462);
      v461 = v229;
      v224 = &unk_1EB737000;
      sub_1B0394784(v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v431);
      (*(v419 + 16))(v87, v431, v418);
      sub_1B039480C(v431);

      sub_1B0394784(v353 + v224[314], v433);
      v88 = (v433 + *(v429 + 20));
      v225 = *v88;
      v226 = *(v88 + 1);
      sub_1B039480C(v433);

      v228 = 24;
      v243 = 7;
      v89 = swift_allocObject();
      v90 = v226;
      v231 = v89;
      *(v89 + 16) = v225;
      *(v89 + 20) = v90;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v91 = swift_allocObject();
      v92 = v226;
      v227 = v91;
      *(v91 + 16) = v225;
      *(v91 + 20) = v92;

      v242 = 32;
      v93 = swift_allocObject();
      v94 = v227;
      v236 = v93;
      *(v93 + 16) = v355;
      *(v93 + 24) = v94;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v238 = swift_allocObject();
      *(v238 + 16) = v229;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v244 = swift_allocObject();
      *(v244 + 16) = v229;
      v267 = sub_1B0E43988();
      v268 = sub_1B0E45908();
      v240 = 17;
      v246 = swift_allocObject();
      v233 = 16;
      *(v246 + 16) = 16;
      v247 = swift_allocObject();
      v235 = 4;
      *(v247 + 16) = 4;
      v95 = swift_allocObject();
      v230 = v95;
      *(v95 + 16) = v356;
      *(v95 + 24) = 0;
      v96 = swift_allocObject();
      v97 = v230;
      v248 = v96;
      *(v96 + 16) = v357;
      *(v96 + 24) = v97;
      v249 = swift_allocObject();
      *(v249 + 16) = 0;
      v250 = swift_allocObject();
      *(v250 + 16) = 1;
      v98 = swift_allocObject();
      v99 = v231;
      v232 = v98;
      *(v98 + 16) = v358;
      *(v98 + 24) = v99;
      v100 = swift_allocObject();
      v101 = v232;
      v251 = v100;
      *(v100 + 16) = v359;
      *(v100 + 24) = v101;
      v252 = swift_allocObject();
      *(v252 + 16) = v233;
      v253 = swift_allocObject();
      *(v253 + 16) = v235;
      v102 = swift_allocObject();
      v234 = v102;
      *(v102 + 16) = v360;
      *(v102 + 24) = 0;
      v103 = swift_allocObject();
      v104 = v234;
      v254 = v103;
      *(v103 + 16) = v361;
      *(v103 + 24) = v104;
      v255 = swift_allocObject();
      *(v255 + 16) = 0;
      v256 = swift_allocObject();
      *(v256 + 16) = v235;
      v105 = swift_allocObject();
      v106 = v236;
      v237 = v105;
      *(v105 + 16) = v362;
      *(v105 + 24) = v106;
      v107 = swift_allocObject();
      v108 = v237;
      v257 = v107;
      *(v107 + 16) = v363;
      *(v107 + 24) = v108;
      v258 = swift_allocObject();
      *(v258 + 16) = 0;
      v259 = swift_allocObject();
      v241 = 8;
      *(v259 + 16) = 8;
      v109 = swift_allocObject();
      v110 = v238;
      v239 = v109;
      *(v109 + 16) = v364;
      *(v109 + 24) = v110;
      v111 = swift_allocObject();
      v112 = v239;
      v260 = v111;
      *(v111 + 16) = v365;
      *(v111 + 24) = v112;
      v261 = swift_allocObject();
      *(v261 + 16) = 32;
      v262 = swift_allocObject();
      *(v262 + 16) = v241;
      v113 = swift_allocObject();
      v114 = v244;
      v245 = v113;
      *(v113 + 16) = v366;
      *(v113 + 24) = v114;
      v115 = swift_allocObject();
      v116 = v245;
      v264 = v115;
      *(v115 + 16) = v367;
      *(v115 + 24) = v116;
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v263 = sub_1B0E46A48();
      v265 = v117;

      v118 = v246;
      v119 = v265;
      *v265 = v368;
      v119[1] = v118;

      v120 = v247;
      v121 = v265;
      v265[2] = v369;
      v121[3] = v120;

      v122 = v248;
      v123 = v265;
      v265[4] = v370;
      v123[5] = v122;

      v124 = v249;
      v125 = v265;
      v265[6] = v371;
      v125[7] = v124;

      v126 = v250;
      v127 = v265;
      v265[8] = v372;
      v127[9] = v126;

      v128 = v251;
      v129 = v265;
      v265[10] = v373;
      v129[11] = v128;

      v130 = v252;
      v131 = v265;
      v265[12] = v374;
      v131[13] = v130;

      v132 = v253;
      v133 = v265;
      v265[14] = v375;
      v133[15] = v132;

      v134 = v254;
      v135 = v265;
      v265[16] = v376;
      v135[17] = v134;

      v136 = v255;
      v137 = v265;
      v265[18] = v377;
      v137[19] = v136;

      v138 = v256;
      v139 = v265;
      v265[20] = v378;
      v139[21] = v138;

      v140 = v257;
      v141 = v265;
      v265[22] = v379;
      v141[23] = v140;

      v142 = v258;
      v143 = v265;
      v265[24] = v380;
      v143[25] = v142;

      v144 = v259;
      v145 = v265;
      v265[26] = v381;
      v145[27] = v144;

      v146 = v260;
      v147 = v265;
      v265[28] = v382;
      v147[29] = v146;

      v148 = v261;
      v149 = v265;
      v265[30] = v383;
      v149[31] = v148;

      v150 = v262;
      v151 = v265;
      v265[32] = v384;
      v151[33] = v150;

      v152 = v264;
      v153 = v265;
      v265[34] = v385;
      v153[35] = v152;
      sub_1B0394964();

      if (os_log_type_enabled(v267, v268))
      {
        v154 = v273;
        v217 = sub_1B0E45D78();
        v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v218 = sub_1B03949A8(0);
        v219 = sub_1B03949A8(1);
        v220 = &v450;
        v450 = v217;
        v221 = &v449;
        v449 = v218;
        v222 = &v448;
        v448 = v219;
        sub_1B0394A48(2, &v450);
        sub_1B0394A48(6, v220);
        v446 = v368;
        v447 = v246;
        sub_1B03949FC(&v446, v220, v221, v222);
        v223 = v154;
        if (v154)
        {

          __break(1u);
        }

        else
        {
          v446 = v369;
          v447 = v247;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v215 = 0;
          v446 = v370;
          v447 = v248;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v214 = 0;
          v446 = v371;
          v447 = v249;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v213 = 0;
          v446 = v372;
          v447 = v250;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v212 = 0;
          v446 = v373;
          v447 = v251;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v211 = 0;
          v446 = v374;
          v447 = v252;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v210 = 0;
          v446 = v375;
          v447 = v253;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v209 = 0;
          v446 = v376;
          v447 = v254;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v208 = 0;
          v446 = v377;
          v447 = v255;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v207 = 0;
          v446 = v378;
          v447 = v256;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v206 = 0;
          v446 = v379;
          v447 = v257;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v205 = 0;
          v446 = v380;
          v447 = v258;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v204 = 0;
          v446 = v381;
          v447 = v259;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v203 = 0;
          v446 = v382;
          v447 = v260;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v202 = 0;
          v446 = v383;
          v447 = v261;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v201 = 0;
          v446 = v384;
          v447 = v262;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          v200 = 0;
          v446 = v385;
          v447 = v264;
          sub_1B03949FC(&v446, &v450, &v449, &v448);
          _os_log_impl(&dword_1B0389000, v267, v268, "[%.*hhx-%.*X] Got an empty list of user-visible mailbox row IDs. Keeping previous (%ld): [%s]", v217, 0x2Bu);
          sub_1B03998A8(v218);
          sub_1B03998A8(v219);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v267);
      (*(v419 + 8))(v422, v418);

LABEL_16:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v425)
      {
        v198 = v425;
        v199 = v426;
        v193 = v426;
        v194 = v425;
        v455 = v425;
        v456 = v426;
        v454[2] = v427;
        v196 = v454;
        v454[0] = v425;
        v454[1] = v426;
        v195 = sub_1B03B095C();
        v197 = sub_1B03B1258();
        v155 = sub_1B0E450A8();
        if ((v155 & 1) == 0)
        {
          v188 = (v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
          v189 = &v453;
          swift_beginAccess();
          v190 = *v188;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          swift_endAccess();
          v191 = &v452;
          v452 = v190;
          v451[3] = v194;
          v451[4] = v193;
          v192 = sub_1B0E450A8();
          sub_1B039E440(v191);
          if ((v192 & 1) == 0)
          {
            v178 = (v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
            v179 = v451;
            swift_beginAccess();
            v180 = *v178;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            swift_endAccess();
            v183 = &type metadata for OpaqueMailboxID;
            v185 = sub_1B0E45238();

            v181 = sub_1B0E46A48();
            v182 = v156;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v157 = v181;
            v158 = v182;
            v159 = v193;
            *v182 = v194;
            v158[1] = v159;
            sub_1B0394964();
            v184 = v157;
            v186 = sub_1B0E45238();

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v460 = v186;

            v187 = v186;
LABEL_24:
            v160 = v353;
            v171 = v187;
            v165 = 32;
            v172 = swift_allocObject();
            v166 = (v160 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
            v167 = &v458;
            swift_beginAccess();
            v168 = *v166;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            swift_endAccess();
            v170 = &v457;
            v457 = v168;
            v169 = sub_1B03B8BD8();
            sub_1B03B095C();
            v161 = sub_1B0E45598();
            v162 = MailboxPriorityInfo.init(userVisibleMailboxes:mailboxPriorityOrder:)(v161, v171);
            v163 = v172;
            *(v172 + 16) = v162;
            *(v163 + 24) = v164;
            v173 = v163 | 0x2000000000000004;
            sub_1B039C1F8(v163 | 0x2000000000000004);

            return sub_1B039E440(&v460);
          }
        }
      }

      v174 = (v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
      v175 = &v459;
      swift_beginAccess();
      v176 = *v174;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v177 = sub_1B0E45238();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v460 = v177;
      v187 = v177;
      goto LABEL_24;
    }
  }

  else
  {
    v15 = v416;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v346 = &unk_1EB737000;
    v344 = (v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
    v345 = &v445;
    v350 = 0;
    swift_beginAccess();
    v16 = *v344;
    *v344 = v428;

    swift_endAccess();
    v347 = (v353 + v346[318]);
    v348 = &v444;
    swift_beginAccess();
    v349 = *v347;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v443 = v349;
    sub_1B03B095C();
    result = sub_1B0E44F58();
    v351 = v15;
    v352 = result;
    if (!v15)
    {
      v18 = v424;
      v304 = v352;
      sub_1B039E440(&v443);
      v442 = v304;
      v299 = &unk_1EB737000;
      sub_1B0394784(v353 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v435);
      (*(v419 + 16))(v18, v435, v418);
      sub_1B039480C(v435);

      sub_1B0394784(v353 + v299[314], v433);
      v19 = (v433 + *(v429 + 20));
      v300 = *v19;
      v301 = *(v19 + 1);
      sub_1B039480C(v433);

      v303 = 24;
      v318 = 7;
      v20 = swift_allocObject();
      v21 = v301;
      v306 = v20;
      *(v20 + 16) = v300;
      *(v20 + 20) = v21;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v22 = swift_allocObject();
      v23 = v301;
      v302 = v22;
      *(v22 + 16) = v300;
      *(v22 + 20) = v23;

      v317 = 32;
      v24 = swift_allocObject();
      v25 = v302;
      v311 = v24;
      *(v24 + 16) = v387;
      *(v24 + 24) = v25;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v313 = swift_allocObject();
      *(v313 + 16) = v304;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v319 = swift_allocObject();
      *(v319 + 16) = v304;
      v342 = sub_1B0E43988();
      v343 = sub_1B0E45908();
      v315 = 17;
      v321 = swift_allocObject();
      v308 = 16;
      *(v321 + 16) = 16;
      v322 = swift_allocObject();
      v310 = 4;
      *(v322 + 16) = 4;
      v26 = swift_allocObject();
      v305 = v26;
      *(v26 + 16) = v356;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      v28 = v305;
      v323 = v27;
      *(v27 + 16) = v388;
      *(v27 + 24) = v28;
      v324 = swift_allocObject();
      *(v324 + 16) = 0;
      v325 = swift_allocObject();
      *(v325 + 16) = 1;
      v29 = swift_allocObject();
      v30 = v306;
      v307 = v29;
      *(v29 + 16) = v389;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v307;
      v326 = v31;
      *(v31 + 16) = v390;
      *(v31 + 24) = v32;
      v327 = swift_allocObject();
      *(v327 + 16) = v308;
      v328 = swift_allocObject();
      *(v328 + 16) = v310;
      v33 = swift_allocObject();
      v309 = v33;
      *(v33 + 16) = v360;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v309;
      v329 = v34;
      *(v34 + 16) = v391;
      *(v34 + 24) = v35;
      v330 = swift_allocObject();
      *(v330 + 16) = 0;
      v331 = swift_allocObject();
      *(v331 + 16) = v310;
      v36 = swift_allocObject();
      v37 = v311;
      v312 = v36;
      *(v36 + 16) = v392;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v312;
      v332 = v38;
      *(v38 + 16) = v393;
      *(v38 + 24) = v39;
      v333 = swift_allocObject();
      *(v333 + 16) = 0;
      v334 = swift_allocObject();
      v316 = 8;
      *(v334 + 16) = 8;
      v40 = swift_allocObject();
      v41 = v313;
      v314 = v40;
      *(v40 + 16) = v394;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v314;
      v335 = v42;
      *(v42 + 16) = v395;
      *(v42 + 24) = v43;
      v336 = swift_allocObject();
      *(v336 + 16) = 32;
      v337 = swift_allocObject();
      *(v337 + 16) = v316;
      v44 = swift_allocObject();
      v45 = v319;
      v320 = v44;
      *(v44 + 16) = v396;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v320;
      v339 = v46;
      *(v46 + 16) = v397;
      *(v46 + 24) = v47;
      v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v338 = sub_1B0E46A48();
      v340 = v48;

      v49 = v321;
      v50 = v340;
      *v340 = v398;
      v50[1] = v49;

      v51 = v322;
      v52 = v340;
      v340[2] = v399;
      v52[3] = v51;

      v53 = v323;
      v54 = v340;
      v340[4] = v400;
      v54[5] = v53;

      v55 = v324;
      v56 = v340;
      v340[6] = v401;
      v56[7] = v55;

      v57 = v325;
      v58 = v340;
      v340[8] = v402;
      v58[9] = v57;

      v59 = v326;
      v60 = v340;
      v340[10] = v403;
      v60[11] = v59;

      v61 = v327;
      v62 = v340;
      v340[12] = v404;
      v62[13] = v61;

      v63 = v328;
      v64 = v340;
      v340[14] = v405;
      v64[15] = v63;

      v65 = v329;
      v66 = v340;
      v340[16] = v406;
      v66[17] = v65;

      v67 = v330;
      v68 = v340;
      v340[18] = v407;
      v68[19] = v67;

      v69 = v331;
      v70 = v340;
      v340[20] = v408;
      v70[21] = v69;

      v71 = v332;
      v72 = v340;
      v340[22] = v409;
      v72[23] = v71;

      v73 = v333;
      v74 = v340;
      v340[24] = v410;
      v74[25] = v73;

      v75 = v334;
      v76 = v340;
      v340[26] = v411;
      v76[27] = v75;

      v77 = v335;
      v78 = v340;
      v340[28] = v412;
      v78[29] = v77;

      v79 = v336;
      v80 = v340;
      v340[30] = v413;
      v80[31] = v79;

      v81 = v337;
      v82 = v340;
      v340[32] = v414;
      v82[33] = v81;

      v83 = v339;
      v84 = v340;
      v340[34] = v415;
      v84[35] = v83;
      sub_1B0394964();

      if (os_log_type_enabled(v342, v343))
      {
        v85 = v351;
        v292 = sub_1B0E45D78();
        v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v293 = sub_1B03949A8(0);
        v294 = sub_1B03949A8(1);
        v295 = &v441;
        v441 = v292;
        v296 = &v440;
        v440 = v293;
        v297 = &v439;
        v439 = v294;
        sub_1B0394A48(2, &v441);
        sub_1B0394A48(6, v295);
        v437 = v398;
        v438 = v321;
        sub_1B03949FC(&v437, v295, v296, v297);
        v298 = v85;
        if (v85)
        {

          __break(1u);
        }

        else
        {
          v437 = v399;
          v438 = v322;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v290 = 0;
          v437 = v400;
          v438 = v323;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v289 = 0;
          v437 = v401;
          v438 = v324;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v288 = 0;
          v437 = v402;
          v438 = v325;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v287 = 0;
          v437 = v403;
          v438 = v326;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v286 = 0;
          v437 = v404;
          v438 = v327;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v285 = 0;
          v437 = v405;
          v438 = v328;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v284 = 0;
          v437 = v406;
          v438 = v329;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v283 = 0;
          v437 = v407;
          v438 = v330;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v282 = 0;
          v437 = v408;
          v438 = v331;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v281 = 0;
          v437 = v409;
          v438 = v332;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v280 = 0;
          v437 = v410;
          v438 = v333;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v279 = 0;
          v437 = v411;
          v438 = v334;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v278 = 0;
          v437 = v412;
          v438 = v335;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v277 = 0;
          v437 = v413;
          v438 = v336;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v276 = 0;
          v437 = v414;
          v438 = v337;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          v275 = 0;
          v437 = v415;
          v438 = v339;
          sub_1B03949FC(&v437, &v441, &v440, &v439);
          _os_log_impl(&dword_1B0389000, v342, v343, "[%.*hhx-%.*X] User-visible mailbox row IDs (%ld): [%s]", v292, 0x2Bu);
          sub_1B03998A8(v293);
          sub_1B03998A8(v294);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v342);
      (*(v419 + 8))(v424, v418);

      goto LABEL_16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B4D64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B4DA4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03B4DE4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03B4E7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B4EBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B4F54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B4F94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B502C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B506C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5104()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B51DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B521C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B52B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B52F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5334()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B53D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5414()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03B5454()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B03B54EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B552C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B55C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B569C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B56DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B57B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B584C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B588C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5924()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B5964()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03B59A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B03B59F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return sub_1B03B5A58(v3, v5, a2);
}

uint64_t sub_1B03B5A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = 0;
  v11 = 0;
  v12 = a1;
  v13 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B03B0A20(a1, a2);
  if (v3 & 1) != 0 || (v11 = v8, MailboxRowID.init(_:)(v8, &v9), (v10))
  {

    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    v14 = v9;
    *a3 = v9;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B03B5B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9[3] = a1;
  v9[4] = a2;
  v9[1] = a3;
  v9[2] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B03B78F8();
  v8 = sub_1B0E429B8();
  sub_1B039E440(v9);
  result = v8;
  *a5 = v8;
  return result;
}

uint64_t MailboxRowID.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B03B5C80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B03B5CE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = a2 + 32 + 16 * v3;
    if ((*(v6 + 2) | (*(v6 + 2) << 32)) != (*(v7 + 8) | (*(v7 + 8) << 32)))
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B5DDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *(a3 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2 | (a2 << 32));
    v7 = sub_1B0E46CB8();
    v8 = -1 << *(a3 + 32);
    v9 = v7 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      do
      {
        v11 = (*(a3 + 48) + 16 * v9);
        if ((v11[2] | (v11[2] << 32)) == (a2 | (a2 << 32)))
        {
          v12 = *v11;
          v13 = *(*v11 + 16);
          if (v13 == *(a1 + 16))
          {
            if (!v13 || v12 == a1)
            {
              return 1;
            }

            v14 = (v12 + 32);
            for (i = (a1 + 32); *v14 == *i; ++i)
            {
              ++v14;
              if (!--v13)
              {
                return 1;
              }
            }
          }
        }

        v9 = (v9 + 1) & v10;
      }

      while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }
  }

  return 0;
}

uint64_t type metadata accessor for MailboxSyncState()
{
  result = qword_1EB6DDB08;
  if (!qword_1EB6DDB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1B03B5F54(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31[-v9];
  v11 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v11;
  v35[0] = *(a1 + 64);
  *(v35 + 9) = *(a1 + 73);
  v12 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v12;
  v13 = *(a2 + 48);
  v32[2] = *(a2 + 32);
  v32[3] = v13;
  v33[0] = *(a2 + 64);
  *(v33 + 9) = *(a2 + 73);
  v14 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v14;
  if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(v34, v32) & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 96);
  v16 = *(a2 + 96);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_1B03D0E68(v15 + v17, v10, _s13SelectedStateV7WrappedVMa);
    v18 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_1B03D0E68(v16 + v18, v8, _s13SelectedStateV7WrappedVMa);
    if (*v10 != *v8 || (sub_1B03D0ED0(v10 + *(v4 + 20), v8 + *(v4 + 20)) & 1) == 0)
    {
LABEL_8:
      sub_1B03D44D0(v8, _s13SelectedStateV7WrappedVMa);
      sub_1B03D44D0(v10, _s13SelectedStateV7WrappedVMa);
      return 0;
    }

    v19 = *(v4 + 24);
    v20 = (v10 + v19);
    v21 = *(v10 + v19 + 4);
    v22 = (v8 + v19);
    v23 = *(v8 + v19 + 4);
    if (v21)
    {
      if (!v23)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (*v20 != *v22)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        goto LABEL_8;
      }
    }

    sub_1B03D44D0(v8, _s13SelectedStateV7WrappedVMa);
    sub_1B03D44D0(v10, _s13SelectedStateV7WrappedVMa);
  }

  else if (v16)
  {
    return 0;
  }

  v25 = *(a1 + 120);
  v26 = *(a2 + 108);
  v27 = *(a2 + 120);
  v28 = *(a2 + 128);
  if (*(a1 + 108))
  {
    if ((*(a2 + 108) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 108) & 1) != 0 || *(a1 + 104) != *(a2 + 104))
    {
      return result;
    }
  }

  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 128) & 1) != 0 || *(a1 + 112) != *(a2 + 112))
    {
      return result;
    }

    if ((v27 | v25) < 0)
    {
      __break(1u);
      return result;
    }

    if (v27 != v25)
    {
      return 0;
    }
  }

  if ((sub_1B03B6298(*(a1 + 136), *(a2 + 136)) & 1) == 0 || (sub_1B03B6CB4(*(a1 + 144), *(a2 + 144)) & 1) == 0 || (sub_1B03B6408(*(a1 + 152), *(a2 + 152)) & 1) == 0)
  {
    return 0;
  }

  v29 = *(a2 + 160);
  v30 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    result = 0;
    if (*(a2 + 168))
    {
      return result;
    }

    goto LABEL_36;
  }

  if (*(a1 + 168) == 1)
  {
    result = 0;
    if (v30 != 1)
    {
      return result;
    }

LABEL_36:
    if (*(a1 + 160) != v29)
    {
      return result;
    }

    return *(a1 + 172) == *(a2 + 172);
  }

  result = 0;
  if (v30 == 2 && !v29)
  {
    return *(a1 + 172) == *(a2 + 172);
  }

  return result;
}

uint64_t sub_1B03B6298(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 4 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B6408(uint64_t a1, uint64_t a2)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v74 = *(v69 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v58 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v58 - v11;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v12 = *(*(MessagesVMa - 8) + 64);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s19UserInitiatedSearchV5StateOMa(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v58 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A38, &unk_1B0ECDE10);
  v21 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v23 = &v58 - v22;
  v71 = _s19UserInitiatedSearchVMa(0);
  v24 = *(*(v71 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v71);
  v27 = (&v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v30 = (&v58 - v29);
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
    return 0;
  }

  if (!v31 || a1 == a2)
  {
    return 1;
  }

  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = a1 + v32;
  v75 = a2 + v32;
  v58 = (v74 + 48);
  v59 = v23;
  v62 = *(v28 + 72);
  v63 = v19;
  v34 = v68;
  v60 = &v58 - v29;
  v61 = v27;
  v65 = v14;
  while (1)
  {
    result = sub_1B0B66A7C(v33, v30, _s19UserInitiatedSearchVMa);
    if (!v31)
    {
      break;
    }

    sub_1B0B66A7C(v75, v27, _s19UserInitiatedSearchVMa);
    if (*v30 != *v27)
    {
      goto LABEL_32;
    }

    v73 = v33;
    v74 = v31;
    v36 = v15;
    v37 = *(v71 + 20);
    v38 = &v23[*(v72 + 48)];
    sub_1B0B66A7C(v30 + v37, v23, _s19UserInitiatedSearchV5StateOMa);
    sub_1B0B66A7C(v27 + v37, v38, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0B66A7C(v23, v19, _s19UserInitiatedSearchV5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B0B66AE4(v19, _s19UserInitiatedSearchV13FetchMessagesVMa);
        goto LABEL_26;
      }

      v39 = v65;
      sub_1B0423B48(v38, v65, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0)
      {
        goto LABEL_30;
      }

      v40 = *(MessagesVMa + 20);
      if ((sub_1B0E46E08() & 1) == 0)
      {
        goto LABEL_30;
      }

      v41 = *(MessagesVMa + 24);
      v42 = v19;
      v43 = *(v66 + 48);
      sub_1B0B66738(&v42[v41], v34);
      sub_1B0B66738(v39 + v41, v34 + v43);
      v44 = *v58;
      if ((*v58)(v34, 1, v69) == 1)
      {
        if (v44(v34 + v43, 1, v69) != 1)
        {
          goto LABEL_29;
        }

        sub_1B0398EFC(v34, &qword_1EB6E3920, &qword_1B0E9B070);
        v39 = v65;
        v19 = v63;
        v15 = v36;
      }

      else
      {
        sub_1B0B66738(v34, v9);
        if (v44(v34 + v43, 1, v69) == 1)
        {
          sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_29:
          sub_1B0398EFC(v34, &qword_1EB6E41F8, &unk_1B0EC4440);
          v39 = v65;
          v19 = v63;
LABEL_30:
          sub_1B0B66AE4(v39, _s19UserInitiatedSearchV13FetchMessagesVMa);
          sub_1B0B66AE4(v19, _s19UserInitiatedSearchV13FetchMessagesVMa);
LABEL_31:
          sub_1B0B66AE4(v23, _s19UserInitiatedSearchV5StateOMa);
LABEL_32:
          sub_1B0B66AE4(v27, _s19UserInitiatedSearchVMa);
          sub_1B0B66AE4(v30, _s19UserInitiatedSearchVMa);
          return 0;
        }

        v56 = v64;
        sub_1B074BA2C(v34 + v43, v64);
        v57 = sub_1B0E46E08();
        sub_1B0398EFC(v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v34, &qword_1EB6E3920, &qword_1B0E9B070);
        v39 = v65;
        v19 = v63;
        v15 = v36;
        if ((v57 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_1B0B66AE4(v39, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_1B0B66AE4(v19, _s19UserInitiatedSearchV13FetchMessagesVMa);
    }

    else
    {
      v45 = v67;
      sub_1B0B66A7C(v23, v67, _s19UserInitiatedSearchV5StateOMa);
      v47 = *v45;
      v46 = *(v45 + 8);
      v48 = *(v45 + 16);
      v49 = *(v45 + 24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B0B239C8(v47);

        v30 = v60;
        v27 = v61;
LABEL_26:
        sub_1B0398EFC(v23, &qword_1EB6E4A38, &unk_1B0ECDE10);
        goto LABEL_32;
      }

      v50 = v9;
      v51 = *v38;
      v52 = *(v38 + 8);
      v53 = *(v38 + 16);
      v54 = *(v38 + 24);
      if ((static SearchKey.__derived_enum_equals(_:_:)(v47, v51) & 1) == 0)
      {
        sub_1B0B239C8(v51);

        sub_1B0B239C8(v47);

        v23 = v59;
        v30 = v60;
        v27 = v61;
        goto LABEL_31;
      }

      v55 = static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v46, v48, v49, v52, v53, v54);
      sub_1B0B239C8(v51);

      sub_1B0B239C8(v47);

      v9 = v50;
      v23 = v59;
      v30 = v60;
      v27 = v61;
      v34 = v68;
      v19 = v63;
      v15 = v36;
      if (!v55)
      {
        goto LABEL_31;
      }
    }

    sub_1B0B66AE4(v23, _s19UserInitiatedSearchV5StateOMa);
    sub_1B0B66AE4(v27, _s19UserInitiatedSearchVMa);
    sub_1B0B66AE4(v30, _s19UserInitiatedSearchVMa);
    v75 += v62;
    v33 = v73 + v62;
    v31 = v74 - 1;
    if (v74 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B6CB4(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2)
    {
      v3 = a2;
      v4 = a1;
      if (a1 != a2)
      {
        v5 = 0;
        while (1)
        {
          v6 = v4 + v5;
          v7 = v3 + v5;
          if (*(v4 + v5 + 32) != *(v3 + v5 + 32))
          {
            goto LABEL_149;
          }

          v9 = *(v6 + 40);
          v8 = *(v6 + 48);
          v11 = *(v7 + 40);
          v10 = *(v7 + 48);
          v78 = *(v6 + 56);
          v79 = *(v7 + 56);
          v12 = *(v7 + 64);
          v13 = v8 >> 62;
          v14 = v10 >> 62;
          v76 = v12;
          v77 = *(v6 + 64);
          if (v8 >> 62 == 3)
          {
            break;
          }

          if (v13 > 1)
          {
            if (v13 == 2)
            {
              v25 = *(v9 + 16);
              v24 = *(v9 + 24);
              v22 = __OFSUB__(v24, v25);
              v16 = v24 - v25;
              if (v22)
              {
                goto LABEL_152;
              }

              goto LABEL_27;
            }

            v16 = 0;
            if (v14 <= 1)
            {
              goto LABEL_28;
            }
          }

          else if (v13)
          {
            LODWORD(v16) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              goto LABEL_153;
            }

            v16 = v16;
            if (v14 <= 1)
            {
LABEL_28:
              if (v14)
              {
                LODWORD(v23) = HIDWORD(v11) - v11;
                if (__OFSUB__(HIDWORD(v11), v11))
                {
                  goto LABEL_151;
                }

                v23 = v23;
              }

              else
              {
                v23 = BYTE6(v10);
              }

              goto LABEL_34;
            }
          }

          else
          {
            v16 = BYTE6(v8);
            if (v14 <= 1)
            {
              goto LABEL_28;
            }
          }

LABEL_21:
          if (v14 != 2)
          {
            if (v16)
            {
              goto LABEL_149;
            }

LABEL_45:
            sub_1B03B2000(v9, v8);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v18 = v11;
            v19 = v10;
LABEL_46:
            sub_1B03B2000(v18, v19);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            goto LABEL_140;
          }

          v21 = *(v11 + 16);
          v20 = *(v11 + 24);
          v22 = __OFSUB__(v20, v21);
          v23 = v20 - v21;
          if (v22)
          {
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
          }

LABEL_34:
          if (v16 != v23)
          {
            goto LABEL_149;
          }

          if (v16 < 1)
          {
            goto LABEL_45;
          }

          if (v13 > 1)
          {
            if (v13 != 2)
            {
              memset(__s1, 0, 14);
              if (v14)
              {
                if (v14 == 2)
                {
                  v38 = *(v11 + 16);
                  v72 = *(v11 + 24);
                  sub_1B03B2000(v9, v8);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B03B2000(v11, v10);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v39 = sub_1B0E42A98();
                  if (v39)
                  {
                    v40 = sub_1B0E42AC8();
                    if (__OFSUB__(v38, v40))
                    {
                      goto LABEL_168;
                    }

                    v39 += v38 - v40;
                  }

                  v41 = &v72[-v38];
                  if (__OFSUB__(v72, v38))
                  {
                    goto LABEL_161;
                  }

                  result = sub_1B0E42AB8();
                  if (!v39)
                  {
                    goto LABEL_185;
                  }

                  goto LABEL_100;
                }

                v69 = ((v11 >> 32) - v11);
                if (v11 >> 32 < v11)
                {
                  goto LABEL_157;
                }

                sub_1B03B2000(v9, v8);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v11, v10);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v54 = sub_1B0E42A98();
                if (!v54)
                {
                  goto LABEL_183;
                }

                v55 = v54;
                v56 = sub_1B0E42AC8();
                if (__OFSUB__(v11, v56))
                {
                  goto LABEL_162;
                }

                v29 = (v11 - v56 + v55);
                result = sub_1B0E42AB8();
                if (!v29)
                {
                  goto LABEL_184;
                }

LABEL_108:
                if (result >= v69)
                {
                  v57 = v69;
                }

                else
                {
                  v57 = result;
                }

                v53 = memcmp(__s1, v29, v57);
                goto LABEL_112;
              }

              goto LABEL_68;
            }

            v31 = *(v9 + 16);
            sub_1B03B2000(v9, v8);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B2000(v11, v10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v32 = sub_1B0E42A98();
            if (v32)
            {
              v33 = v32;
              v34 = sub_1B0E42AC8();
              if (__OFSUB__(v31, v34))
              {
                goto LABEL_155;
              }

              v70 = (v31 - v34 + v33);
            }

            else
            {
              v70 = 0;
            }

            sub_1B0E42AB8();
            if (v14 == 2)
            {
              v58 = *(v11 + 16);
              v59 = *(v11 + 24);
              v44 = sub_1B0E42A98();
              if (v44)
              {
                v60 = sub_1B0E42AC8();
                if (__OFSUB__(v58, v60))
                {
                  goto LABEL_169;
                }

                v44 += v58 - v60;
              }

              v22 = __OFSUB__(v59, v58);
              v61 = v59 - v58;
              if (v22)
              {
                goto LABEL_164;
              }

              v62 = sub_1B0E42AB8();
              if (v62 >= v61)
              {
                v47 = v61;
              }

              else
              {
                v47 = v62;
              }

              result = v70;
              if (!v70)
              {
                goto LABEL_177;
              }

              v3 = a2;
              v4 = a1;
              if (!v44)
              {
                goto LABEL_176;
              }

              goto LABEL_135;
            }

            if (v14 == 1)
            {
              if (v11 >> 32 < v11)
              {
                goto LABEL_159;
              }

              v44 = sub_1B0E42A98();
              if (v44)
              {
                v45 = sub_1B0E42AC8();
                if (__OFSUB__(v11, v45))
                {
                  goto LABEL_171;
                }

                v44 += v11 - v45;
              }

              v3 = a2;
              v46 = sub_1B0E42AB8();
              if (v46 >= (v11 >> 32) - v11)
              {
                v47 = (v11 >> 32) - v11;
              }

              else
              {
                v47 = v46;
              }

              result = v70;
              if (!v70)
              {
                goto LABEL_173;
              }

              v4 = a1;
              if (!v44)
              {
                __break(1u);
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                sub_1B0E42AB8();
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                result = sub_1B0E42AB8();
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
                return result;
              }

              goto LABEL_135;
            }

            v3 = a2;
            v4 = a1;
            result = v70;
            __s1[0] = v11;
            LOWORD(__s1[1]) = v10;
            BYTE2(__s1[1]) = BYTE2(v10);
            BYTE3(__s1[1]) = BYTE3(v10);
            BYTE4(__s1[1]) = BYTE4(v10);
            BYTE5(__s1[1]) = BYTE5(v10);
            if (!v70)
            {
              goto LABEL_186;
            }
          }

          else
          {
            if (!v13)
            {
              __s1[0] = v9;
              LOWORD(__s1[1]) = v8;
              BYTE2(__s1[1]) = BYTE2(v8);
              BYTE3(__s1[1]) = BYTE3(v8);
              BYTE4(__s1[1]) = BYTE4(v8);
              BYTE5(__s1[1]) = BYTE5(v8);
              if (v14)
              {
                if (v14 == 1)
                {
                  v69 = ((v11 >> 32) - v11);
                  if (v11 >> 32 < v11)
                  {
                    goto LABEL_158;
                  }

                  sub_1B03B2000(v9, v8);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B03B2000(v11, v10);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v26 = sub_1B0E42A98();
                  if (!v26)
                  {
                    goto LABEL_175;
                  }

                  v27 = v26;
                  v28 = sub_1B0E42AC8();
                  if (__OFSUB__(v11, v28))
                  {
                    goto LABEL_163;
                  }

                  v29 = (v11 - v28 + v27);
                  result = sub_1B0E42AB8();
                  if (!v29)
                  {
                    goto LABEL_174;
                  }

                  goto LABEL_108;
                }

                v50 = *(v11 + 16);
                v73 = *(v11 + 24);
                sub_1B03B2000(v9, v8);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v11, v10);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v39 = sub_1B0E42A98();
                if (v39)
                {
                  v51 = sub_1B0E42AC8();
                  if (__OFSUB__(v50, v51))
                  {
                    goto LABEL_167;
                  }

                  v39 += v50 - v51;
                }

                v41 = &v73[-v50];
                if (__OFSUB__(v73, v50))
                {
                  goto LABEL_160;
                }

                result = sub_1B0E42AB8();
                if (!v39)
                {
                  goto LABEL_187;
                }

LABEL_100:
                if (result >= v41)
                {
                  v52 = v41;
                }

                else
                {
                  v52 = result;
                }

                v53 = memcmp(__s1, v39, v52);
                v3 = a2;
LABEL_112:
                v4 = a1;
                if (v53)
                {
                  goto LABEL_148;
                }

                goto LABEL_140;
              }

LABEL_68:
              v80 = v11;
              v81 = v10;
              v82 = BYTE2(v10);
              v83 = BYTE3(v10);
              v84 = BYTE4(v10);
              v85 = BYTE5(v10);
              sub_1B03B2000(v9, v8);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B2000(v11, v10);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              result = __s1;
              v42 = &v80;
              v43 = BYTE6(v10);
              v4 = a1;
              goto LABEL_139;
            }

            if (v9 > v9 >> 32)
            {
              goto LABEL_154;
            }

            sub_1B03B2000(v9, v8);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B2000(v11, v10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v35 = sub_1B0E42A98();
            if (v35)
            {
              v36 = v35;
              v37 = sub_1B0E42AC8();
              if (__OFSUB__(v9, v37))
              {
                goto LABEL_156;
              }

              v71 = (v9 - v37 + v36);
            }

            else
            {
              v71 = 0;
            }

            sub_1B0E42AB8();
            if (v14 == 2)
            {
              v63 = *(v11 + 16);
              v64 = *(v11 + 24);
              v44 = sub_1B0E42A98();
              if (v44)
              {
                v65 = sub_1B0E42AC8();
                if (__OFSUB__(v63, v65))
                {
                  goto LABEL_170;
                }

                v44 += v63 - v65;
              }

              v22 = __OFSUB__(v64, v63);
              v66 = v64 - v63;
              if (v22)
              {
                goto LABEL_166;
              }

              v67 = sub_1B0E42AB8();
              if (v67 >= v66)
              {
                v47 = v66;
              }

              else
              {
                v47 = v67;
              }

              result = v71;
              if (!v71)
              {
                goto LABEL_182;
              }

              v3 = a2;
              v4 = a1;
              if (!v44)
              {
                goto LABEL_181;
              }

              goto LABEL_135;
            }

            if (v14 == 1)
            {
              if (v11 >> 32 < v11)
              {
                goto LABEL_165;
              }

              v44 = sub_1B0E42A98();
              if (v44)
              {
                v48 = sub_1B0E42AC8();
                if (__OFSUB__(v11, v48))
                {
                  goto LABEL_172;
                }

                v44 += v11 - v48;
              }

              v3 = a2;
              v49 = sub_1B0E42AB8();
              if (v49 >= (v11 >> 32) - v11)
              {
                v47 = (v11 >> 32) - v11;
              }

              else
              {
                v47 = v49;
              }

              result = v71;
              if (!v71)
              {
                goto LABEL_180;
              }

              v4 = a1;
              if (!v44)
              {
                goto LABEL_179;
              }

LABEL_135:
              if (result == v44)
              {
                goto LABEL_140;
              }

              v43 = v47;
              v42 = v44;
              goto LABEL_139;
            }

            v3 = a2;
            v4 = a1;
            result = v71;
            __s1[0] = v11;
            LOWORD(__s1[1]) = v10;
            BYTE2(__s1[1]) = BYTE2(v10);
            BYTE3(__s1[1]) = BYTE3(v10);
            BYTE4(__s1[1]) = BYTE4(v10);
            BYTE5(__s1[1]) = BYTE5(v10);
            if (!v71)
            {
              goto LABEL_178;
            }
          }

          v43 = BYTE6(v10);
          v42 = __s1;
LABEL_139:
          if (memcmp(result, v42, v43))
          {
            goto LABEL_148;
          }

LABEL_140:
          if (v78)
          {
            if (!v79 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v78) & 1) == 0)
            {
LABEL_148:
              sub_1B0391D50(v11, v10);

              sub_1B0391D50(v9, v8);

              goto LABEL_149;
            }
          }

          else if (v79)
          {
            goto LABEL_148;
          }

          sub_1B0391D50(v11, v10);

          sub_1B0391D50(v9, v8);

          if (v77 != v76)
          {
            goto LABEL_149;
          }

          v5 += 40;
          if (!--v2)
          {
            goto LABEL_147;
          }
        }

        if (v9)
        {
          v15 = 0;
        }

        else
        {
          v15 = v8 == 0xC000000000000000;
        }

        v16 = 0;
        v17 = v15 && v10 >> 62 == 3;
        if (v17 && !v11 && v10 == 0xC000000000000000)
        {
          sub_1B03B2000(0, 0xC000000000000000);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v18 = 0;
          v19 = 0xC000000000000000;
          goto LABEL_46;
        }

LABEL_27:
        if (v14 <= 1)
        {
          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

LABEL_147:
    result = 1;
  }

  else
  {
LABEL_149:
    result = 0;
  }

  v68 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t StateWithTasks.connectionLimitsAndUsage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = sub_1B0398D1C();
  v5 = v4;
  v7 = v6;
  memcpy(__dst, v1, sizeof(__dst));
  v8 = sub_1B03A7A88();
  v9 = LOBYTE(__dst[3]);
  v10 = BYTE1(__dst[3]);
  v11 = __dst[4];
  v12 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = sub_1B0397D14();
  v14 = v13;
  if (v11 == 3 || v11 == 2)
  {

    v15 = 1;
    goto LABEL_4;
  }

  v23 = sub_1B0BAE1A4(v13);
  if (v10)
  {
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    if (v9)
    {
      v15 = v9 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v15 = v23 ^ 1;
    goto LABEL_13;
  }

  if (v11 || (v9 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:
  sub_1B0397E04(&unk_1F2710548, v12);
  sub_1B0BAE1A4(v14);
  v24 = sub_1B039109C(v12);

  if (v24 & 1) == 0 && (v10)
  {
    sub_1B0BAE1A4(v14);
  }

LABEL_4:

  sub_1B03A8380(__dst[21], __dst[22], __dst[23], __dst[24] & 1, __dst[15], v8, v15 & 1, __dst[26]);
  v17 = v16;
  v19 = v18;

  rawValue = sub_1B03AC81C(v17, v19).elements._rawValue;

  v21 = *(v2 + 70);
  result = sub_1B03C8B98(*(v2 + 264), v2[34]);
  *a1 = v25;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = rawValue;
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1B03B78F8()
{
  v2 = qword_1EB6DAE10;
  if (!qword_1EB6DAE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B7980(uint64_t a1, uint64_t a2)
{
  v7 = sub_1B03B7B80(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
  inited = swift_initStackObject();
  v3 = sub_1B03B1F2C(inited, 1);
  *v4 = 0;
  sub_1B03B1EF8();
  sub_1B03B8390(v3);

  v8 = sub_1B03B1F78(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1B03B7A3C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

uint64_t sub_1B03B7B80(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B0E44DC8();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1B0A188BC();
  }

  v10 = sub_1B03B7A3C(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1B0E466C8();
    __break(1u);
    return sub_1B0A188BC();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1B03B0648(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1B0E46368();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1B03B0648(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1B0E46248();
  if (v2)
  {
LABEL_29:
    sub_1B0E465A8();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B03B1198(v17);
  return v10;
}

void sub_1B03B8390(uint64_t a1)
{
  v20 = sub_1B03B1F78(a1);
  v2 = sub_1B03B1F78(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = sub_1B0425174(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_1B0E466C8();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1B03B1F90(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_1B0E465A8();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_1B0E465A8();
    __break(1u);
    goto LABEL_21;
  }

  sub_1B03B0648((a1 + 32), v20, v12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_1B0394A5C();
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1B03B8738(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B03B8788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State.Logger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B03B87EC(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 | (a2 << 32);
  while (1)
  {
    v6 = *a3 + 32 + 176 * v4;
    if ((*(v6 + 24) | (*(v6 + 24) << 32)) == v5)
    {
      v7 = *(v6 + 16);
      v8 = *(v7 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *(v6 + 172);
    v13 = *(v6 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v12;
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03B88DC(uint64_t a1)
{
  v2 = type metadata accessor for State.Logger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B03B8944()
{
  v1 = *v0;
  v2 = 0x6E776F4472657375;
  v3 = 1668184435;
  v4 = 0x6E7953736465656ELL;
  v5 = 0x797469726F697270;
  if (v1 != 10)
  {
    v5 = 0x6E776F4472657375;
  }

  if (v1 != 9)
  {
    v4 = v5;
  }

  if (v1 != 8)
  {
    v3 = v4;
  }

  if (v1 == 7)
  {
    v2 = 1802723700;
  }

  if (v1 == 6)
  {
    v2 = 0x656C6269736976;
  }

  if (v1 == 5)
  {
    v2 = 0x7261655372657375;
  }

  if (*v0 <= 7u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B03B8A2C()
{
  v1 = 1668184435;
  v2 = 0x686372616573;
  if (*v0 != 2)
  {
    v2 = 45;
  }

  if (*v0)
  {
    v1 = 0x64616F6C6E776F64;
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

unint64_t sub_1B03B8A9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v6 = sub_1B0E46CB8();

  return sub_1B03B8B10(a1, a2, v6);
}

unint64_t sub_1B03B8B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (v8[1] == a2)
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B03B8BD8()
{
  v2 = qword_1EB6DCC10;
  if (!qword_1EB6DCC10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B8C50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for StateWithTasks();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Activity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1B0E44468();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 2);
  *v20 = v21;
  (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v15, v18);
  v22 = v21;
  LOBYTE(v21) = sub_1B0E44488();
  result = (*(v16 + 8))(v20, v15);
  if (v21)
  {
    v24 = *&v1[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections];
    if (v24)
    {
      v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v7 + 16))(v10, &v1[v25], v6);
      swift_retain_n();
      sub_1B03B90E0(v5);
      StateWithTasks.makeActivity(makeStatus:accountError:)(sub_1B03C5F9C, v24, v5, v14);

      sub_1B0398EFC(v5, &qword_1EB6E35A0, &qword_1B0E99850);
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v26 = type metadata accessor for ConnectionStatus.Error(0);
      (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
      Activity.init(mailboxesWithPendingWork:accountError:)(MEMORY[0x1E69E7CD0], v5, v14);
    }

    v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v7 + 16))(v10, &v1[v27], v6);
    v28 = StateWithTasks.selectedMailboxes.getter();
    (*(v7 + 8))(v10, v6);
    swift_beginAccess();
    v29 = sub_1B03DE5E0(v14, v28);
    swift_endAccess();

    result = sub_1B03C74B8(v14, type metadata accessor for Activity);
    v30 = *(v29 + 2);
    if (v30)
    {
      v32 = *(v1 + 4);
      v31 = *(v1 + 5);
      v33 = (v29 + 32);
      do
      {
        v34 = *v33++;
        sub_1B03E14B4(v34);
        v32(v34);
        result = sub_1B03E1BE8(v34);
        --v30;
      }

      while (v30);
    }

    if (*&v1[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer])
    {
      v35 = *&v1[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer];

      RestartableTimer.stop()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B90E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  v10 = sub_1B0E44468();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v15 = v16;
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8020], v10, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1B0E44488();
  result = (*(v11 + 8))(v15, v10);
  if (v16)
  {
    v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v19, v6, &qword_1EB6E35A0, &qword_1B0E99850);
    v20 = type metadata accessor for ConnectionStatus.Error(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v6, 1, v20) == 1)
    {
      sub_1B03C3DEC(v9);
      if (v22(v6, 1, v20) != 1)
      {
        sub_1B0398EFC(v6, &qword_1EB6E35A0, &qword_1B0E99850);
      }
    }

    else
    {
      sub_1B038CBB4(v6, v9, type metadata accessor for ConnectionStatus.Error);
      (*(v21 + 56))(v9, 0, 1, v20);
    }

    if (v22(v9, 1, v20) == 1)
    {
      sub_1B0398EFC(v9, &qword_1EB6E35A0, &qword_1B0E99850);
      v23 = 1;
    }

    else
    {
      v24 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff);
      swift_beginAccess();
      v25 = *v24;
      sub_1B0C50218(v24[1], *(v24 + 16), a1);
      sub_1B038C824(v9, type metadata accessor for ConnectionStatus.Error);
      v23 = 0;
    }

    return (*(v21 + 56))(a1, v23, 1, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B03B9450(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4460, &qword_1B0EC51D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4468, &qword_1B0EC51E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t MailboxesSelectionUsage.subscript.getter(int a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = a2 + 16;
  v4 = v3 + 1;
  while (--v4)
  {
    v5 = (v2 + 40);
    v6 = *(v2 + 16);
    v2 += 40;
    if (v6 == a1)
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 2);
      v9 = *v5;
      v10 = *(v5 + 8);
      return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }
  }

  return 0;
}

uint64_t MailboxesSelectionUsage.subscript.setter(uint64_t result, int a2, uint64_t a3, char a4, int a5)
{
  v10 = result;
  v11 = *v5;
  v12 = *(*v5 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    while (*&v11[v13 + 32] != a5)
    {
      ++v14;
      v13 += 40;
      if (v12 == v14)
      {
        goto LABEL_5;
      }
    }

    if (result)
    {
      v19 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1B0C0E03C(v11);
      }

      if (v14 >= *(v11 + 2))
      {
        __break(1u);
      }

      else
      {
        v20 = &v11[v13];
        *(v20 + 7) = a3;
        v20[64] = a4 & 1;
        *v5 = v11;
      }
    }

    else
    {
      sub_1B0C0B618(v14, v21);
      return sub_1B0C0E158(v21);
    }
  }

  else
  {
LABEL_5:
    if (result)
    {
      v15 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1B03B979C(0, v12 + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1B03B979C((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[40 * v17];
      *(v18 + 8) = a5;
      *(v18 + 5) = v10;
      *(v18 + 12) = a2;
      *(v18 + 7) = a3;
      v18[64] = a4 & 1;
      *v5 = v11;
      return sub_1B03B98B8(v5);
    }
  }

  return result;
}

char *sub_1B03B979C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5620, &qword_1B0ED3858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B03B98B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E03C(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 6))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = *(v12 + 5);
          result = v12[48];
          v18 = *(v12 - 8);
          *v13 = *(v12 - 24);
          *(v12 + 2) = v18;
          v19 = *(v12 + 1);
          *(v12 - 6) = v14;
          *(v12 - 2) = v15;
          *(v12 - 2) = v16;
          *v12 = v17;
          v12[8] = result;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v21[0] = v7 + 32;
    v21[1] = v6;
    sub_1B0C0D358(v21, v22, v23, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B03B9A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = vars8;
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B03B9A74()
{
  v1 = *(v0 + 64);
  v12 = MEMORY[0x1E69E7CD0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v7 << 6);
    if (*(*(v1 + 56) + 32 * v10) == 3)
    {
      result = sub_1B03FF318(&v11, *(*(v1 + 48) + 4 * v10));
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v12;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B9B68()
{
  if ((v0[4] & 1) == 0)
  {
    v35 = *v0;
    v36 = v0[1];
    v76 = *(v0 + 16);
    v73 = v0;
    v37 = v0[3];
    v98 = MEMORY[0x1E69E7CD0];
    v99 = v37;
    v100 = v36;
    v101[0] = v35;
    v75 = v37;
    sub_1B03B5C80(v101, v80, &qword_1EB6E4858, &qword_1B0EC5FE0);
    sub_1B03B5C80(&v100, v80, &qword_1EB6E4860, &qword_1B0EC5FE8);
    result = sub_1B03B5C80(&v99, v80, &qword_1EB6E4868, &unk_1B0EC5FF0);
    v38 = *(v35 + 16);
    if (!v38)
    {
      goto LABEL_81;
    }

    v39 = 0;
    v78 = v35 + 32;
LABEL_35:
    if (v39 >= v38)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    while (1)
    {
      v40 = (v78 + 176 * v39);
      v41 = *v40;
      v42 = v40[2];
      v88 = v40[1];
      v89 = v42;
      v43 = v40[3];
      v44 = v40[4];
      v45 = v40[6];
      v92 = v40[5];
      v93 = v45;
      v90 = v43;
      v91 = v44;
      v46 = v40[7];
      v47 = v40[8];
      v48 = v40[10];
      v96 = v40[9];
      v97 = v48;
      v94 = v46;
      v95 = v47;
      v87 = v41;
      if (!*(v36 + 16))
      {
        goto LABEL_45;
      }

      v50 = *(&v87 + 1);
      v49 = v87;
      v51 = v88;
      v52 = DWORD2(v88);
      v53 = DWORD1(v92);
      v54 = BYTE8(v92);
      result = sub_1B03AB888(v88, DWORD2(v88));
      if ((v55 & 1) == 0)
      {
        goto LABEL_45;
      }

      v56 = *(v36 + 56) + 72 * result;
      v82 = *v56;
      v58 = *(v56 + 32);
      v57 = *(v56 + 48);
      v59 = *(v56 + 64);
      v83 = *(v56 + 16);
      v84 = v58;
      v86 = v59;
      v85 = v57;
      sub_1B03A35B8(&v87, v80);
      sub_1B03BB0B4(&v82, v80);
      v60 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v61 = *result;
      if (!v60)
      {
        break;
      }

      if ((v61 & ~v60) != 0)
      {
        goto LABEL_42;
      }

LABEL_43:
      if ((HIWORD(v82) & v60) != 0)
      {
        sub_1B039E440(&v82);
        result = sub_1B03A3614(&v87);
LABEL_45:
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_87;
        }

        goto LABEL_46;
      }

LABEL_49:
      v80[8] = v95;
      v80[9] = v96;
      v80[10] = v97;
      v80[4] = v91;
      v80[5] = v92;
      v80[6] = v93;
      v80[7] = v94;
      v80[0] = v87;
      v80[1] = v88;
      v80[2] = v89;
      v80[3] = v90;
      v80[13] = v84;
      v80[14] = v85;
      v81 = v86;
      v80[11] = v82;
      v80[12] = v83;
      if ((v76 & 1) == 0)
      {
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_94;
        }

        goto LABEL_72;
      }

      sub_1B03A35B8(&v87, v79);
      sub_1B03BB0B4(&v82, v79);
      v63 = MailboxName.isInbox.getter(v51, v52);
      sub_1B039E440(&v82);
      if ((v63 & 1) != 0 || v83 > 7u || ((1 << v83) & 0xDB) == 0 || (v54 & 1) == 0 && ((BYTE12(v93) & 1) != 0 || DWORD2(v93) < v53))
      {
        result = sub_1B03A3614(&v87);
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_93;
        }

        goto LABEL_72;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A3614(&v87);
      if (*(v75 + 16))
      {
        v64 = sub_1B03B8A9C(v49, v50);
        v66 = v65;

        if ((v66 & 1) != 0 && (~*(*(v75 + 56) + 2 * v64) & 0x3FFF) != 0)
        {
          v62 = __OFADD__(v39++, 1);
          if (v62)
          {
            goto LABEL_95;
          }

LABEL_72:
          v67 = *(&v95 + 1);
          if (sub_1B0B8715C(*(&v95 + 1), v73[8]) & 1) == 0 || (*(v67 + 16) || (BYTE8(v92) & 1) == 0 && ((BYTE12(v93) & 1) != 0 || DWORD2(v93) < DWORD1(v92))) && (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v91 + 1), v92, 0, 0))
          {
            v68 = v88;
            v69 = DWORD2(v88);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03AB2E0(v79, v68, v69);
            sub_1B03BB144(v80);

            if (v39 == v38)
            {
LABEL_81:
              sub_1B0398EFC(v101, &qword_1EB6E4858, &qword_1B0EC5FE0);
              sub_1B0398EFC(&v100, &qword_1EB6E4860, &qword_1B0EC5FE8);
              sub_1B0398EFC(&v99, &qword_1EB6E4868, &unk_1B0EC5FF0);
              return v98;
            }
          }

          else
          {
            result = sub_1B03BB144(v80);
            if (v39 == v38)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_35;
        }

        result = sub_1B03BB144(v80);
        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_91;
        }
      }

      else
      {
        sub_1B03BB144(v80);

        v62 = __OFADD__(v39++, 1);
        if (v62)
        {
          goto LABEL_91;
        }
      }

LABEL_46:
      if (v39 == v38)
      {
        goto LABEL_81;
      }

      if (v39 >= v38)
      {
        goto LABEL_86;
      }
    }

    if (!*result)
    {
      goto LABEL_49;
    }

LABEL_42:
    LOWORD(v60) = v61 | v60;
    goto LABEL_43;
  }

  v1 = sub_1B03BA2CC();
  if (!v1)
  {
    v1 = sub_1B03BB174();
  }

  v2 = v1;
  v3 = v0[7];
  if (*(v1 + 16) < v3)
  {
    return v2;
  }

  v4 = v0[5];
  v5 = v0[6];
  result = v4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v9 = v7;
    v10 = v8;
    *&v87 = MEMORY[0x1E69E7CC0];

    v77 = v9;
    sub_1B03A8208(0, 0, 0);
    v11 = v87;

    if (!v3)
    {
LABEL_84:

      v70 = sub_1B0B38604(v11);

      return v70;
    }

    v12 = 0;
    v71 = v9 + 32;
    result = v10 + 32;
    v13 = v2 + 56;
    v14 = 0;
LABEL_8:
    v72 = v3;
    v74 = v11;
    v15 = *(v10 + 16);
    if (v12 >= v15)
    {
LABEL_83:
      v11 = v74;
      goto LABEL_84;
    }

    while ((v12 & 0x8000000000000000) == 0)
    {
      v16 = v14;
      if (v14 >= *(v9 + 16))
      {
        goto LABEL_89;
      }

      if (v14 >= *(v10 + 16))
      {
        goto LABEL_90;
      }

      v17 = *(result + 4 * v14++);
      if ((~v17 & 0x6FFFC000) != 0)
      {
        if (*(v2 + 16))
        {
          v18 = (v71 + 16 * v16);
          v19 = *v18;
          v20 = *(v18 + 2);
          v21 = *(v2 + 40);
          sub_1B0E46C28();
          MEMORY[0x1B2728D70](v20 | (v20 << 32));
          v22 = sub_1B0E46CB8();
          v23 = -1 << *(v2 + 32);
          v24 = v22 & ~v23;
          result = v10 + 32;
          v9 = v77;
          if ((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v25 = ~v23;
            while (1)
            {
              v26 = (*(v2 + 48) + 16 * v24);
              if ((v26[2] | (v26[2] << 32)) == (v20 | (v20 << 32)))
              {
                v27 = *v26;
                v28 = *(*v26 + 16);
                if (v28 == *(v19 + 16))
                {
                  break;
                }
              }

LABEL_18:
              v24 = (v24 + 1) & v25;
              if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_10;
              }
            }

            if (v28)
            {
              v29 = v27 == v19;
            }

            else
            {
              v29 = 1;
            }

            if (!v29)
            {
              v30 = (v27 + 32);
              v31 = (v19 + 32);
              while (v28)
              {
                if (*v30 != *v31)
                {
                  goto LABEL_18;
                }

                ++v30;
                ++v31;
                if (!--v28)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_86;
            }

LABEL_29:
            v11 = v74;
            *&v87 = v74;
            v33 = *(v74 + 16);
            v32 = *(v74 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v33 >= v32 >> 1)
            {
              sub_1B03A8208((v32 > 1), v33 + 1, 1);
              v11 = v87;
            }

            *(v11 + 16) = v33 + 1;
            v34 = v11 + 16 * v33;
            *(v34 + 32) = v19;
            *(v34 + 40) = v20;
            v12 = v14;
            v3 = v72 - 1;
            result = v10 + 32;
            v9 = v77;
            if (v72 != 1)
            {
              goto LABEL_8;
            }

            goto LABEL_84;
          }
        }
      }

LABEL_10:
      if (v14 == v15)
      {
        goto LABEL_83;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_1B03BA2CC()
{
  v1 = type metadata accessor for MessagesPendingDownload();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v117 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v106 - v14;
  v15 = type metadata accessor for NewestMessages();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v118 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v123 = &v106 - v20;
  v122 = type metadata accessor for MailboxSyncState();
  v21 = *(*(v122 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v122);
  v121 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v124 = &v106 - v24;
  v26 = *v0;
  v25 = v0[1];
  v128 = *(v0 + 16);
  v27 = v0[3];
  v151 = MEMORY[0x1E69E7CD0];
  v152 = v27;
  v153 = v25;
  v154[0] = v26;
  v129 = v25;
  v127 = v27;
  sub_1B03B5C80(v154, v133, &qword_1EB6E4858, &qword_1B0EC5FE0);
  sub_1B03B5C80(&v153, v133, &qword_1EB6E4860, &qword_1B0EC5FE8);
  result = sub_1B03B5C80(&v152, v133, &qword_1EB6E4868, &unk_1B0EC5FF0);
  v131 = *(v26 + 16);
  if (!v131)
  {
    v126 = 0;
    goto LABEL_88;
  }

  v113 = 0;
  v114 = v4;
  v116 = v0;
  v29 = 0;
  v126 = 0;
  v130 = v26 + 32;
  v30 = v129;
  v115 = (v16 + 48);
  while (2)
  {
    if (v29 >= v131)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    while (1)
    {
      v31 = v15;
      v32 = (v130 + 176 * v29);
      v33 = *v32;
      v34 = v32[2];
      v141 = v32[1];
      v142 = v34;
      v35 = v32[3];
      v36 = v32[4];
      v37 = v32[6];
      v145 = v32[5];
      v146 = v37;
      v143 = v35;
      v144 = v36;
      v38 = v32[7];
      v39 = v32[8];
      v40 = v32[10];
      v149 = v32[9];
      v150 = v40;
      v147 = v38;
      v148 = v39;
      v140 = v33;
      if (!*(v30 + 16))
      {
        goto LABEL_13;
      }

      v42 = *(&v140 + 1);
      v41 = v140;
      v43 = v141;
      v44 = DWORD2(v141);
      v45 = DWORD1(v145);
      v46 = BYTE8(v145);
      result = sub_1B03AB888(v141, DWORD2(v141));
      v30 = v129;
      if ((v47 & 1) == 0)
      {
        goto LABEL_13;
      }

      v48 = *(v129 + 56) + 72 * result;
      v135 = *v48;
      v50 = *(v48 + 32);
      v49 = *(v48 + 48);
      v51 = *(v48 + 64);
      v136 = *(v48 + 16);
      v137 = v50;
      v139 = v51;
      v138 = v49;
      sub_1B03A35B8(&v140, v133);
      sub_1B03BB0B4(&v135, v133);
      v52 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v53 = *result;
      if (!v52)
      {
        if (!*result)
        {
          break;
        }

LABEL_10:
        LOWORD(v52) = v53 | v52;
        goto LABEL_11;
      }

      if ((v53 & ~v52) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((HIWORD(v135) & v52) == 0)
      {
        break;
      }

      sub_1B039E440(&v135);
      result = sub_1B03A3614(&v140);
      v30 = v129;
LABEL_13:
      v54 = __OFADD__(v29++, 1);
      if (v54)
      {
        goto LABEL_92;
      }

      v15 = v31;
LABEL_15:
      if (v29 == v131)
      {
        goto LABEL_88;
      }

      if (v29 >= v131)
      {
        goto LABEL_91;
      }
    }

    v133[8] = v148;
    v133[9] = v149;
    v133[10] = v150;
    v133[4] = v144;
    v133[5] = v145;
    v133[6] = v146;
    v133[7] = v147;
    v133[0] = v140;
    v133[1] = v141;
    v133[2] = v142;
    v133[3] = v143;
    v133[13] = v137;
    v133[14] = v138;
    v134 = v139;
    v133[11] = v135;
    v133[12] = v136;
    if ((v128 & 1) == 0)
    {
      v54 = __OFADD__(v29++, 1);
      if (v54)
      {
        goto LABEL_95;
      }

      goto LABEL_39;
    }

    sub_1B03A35B8(&v140, v132);
    sub_1B03BB0B4(&v135, v132);
    v55 = MailboxName.isInbox.getter(v43, v44);
    sub_1B039E440(&v135);
    if ((v55 & 1) != 0 || v136 > 7u || ((1 << v136) & 0xDB) == 0 || (v46 & 1) == 0 && ((BYTE12(v146) & 1) != 0 || DWORD2(v146) < v45))
    {
      result = sub_1B03A3614(&v140);
      v54 = __OFADD__(v29++, 1);
      if (v54)
      {
        goto LABEL_94;
      }

LABEL_39:
      v15 = v31;
      goto LABEL_40;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v140);
    v56 = v127;
    if (!*(v127 + 16))
    {
      sub_1B03BB144(v133);

LABEL_31:
      v15 = v31;
LABEL_32:
      v54 = __OFADD__(v29++, 1);
      v30 = v129;
      if (v54)
      {
        goto LABEL_93;
      }

      goto LABEL_15;
    }

    v57 = sub_1B03B8A9C(v41, v42);
    v59 = v58;

    if ((v59 & 1) == 0)
    {
      result = sub_1B03BB144(v133);
      goto LABEL_31;
    }

    v15 = v31;
    if ((~*(*(v56 + 56) + 2 * v57) & 0x3FFF) == 0)
    {
      result = sub_1B03BB144(v133);
      goto LABEL_32;
    }

    v54 = __OFADD__(v29++, 1);
    if (v54)
    {
      goto LABEL_96;
    }

LABEL_40:
    v60 = *(&v148 + 1);
    if (*(*(&v148 + 1) + 16) && (v139 & 0x100) == 0 && (v139 & 1) == 0)
    {
      v61 = *(&v138 + 1);
      v62 = DWORD1(v137);
      if (sub_1B0B8715C(*(&v148 + 1), v116[8]))
      {
        if ((v144 & 1) == 0)
        {
          v63 = DWORD1(v145);
          v64 = BYTE8(v145);
          v65 = v125;
          if (*(v60 + 16) || (BYTE8(v145) & 1) == 0 && ((BYTE12(v146) & 1) != 0 || DWORD2(v146) < DWORD1(v145)))
          {
            v126 = *(v116 + 33);
            if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v144 + 1), v145, 0, 0))
            {
              v112 = v64;
              if (v146)
              {
                v109 = v63;
                v66 = v146 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v67 = v66 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
                v68 = v121;
                sub_1B041C914(v67, v121, type metadata accessor for MailboxSyncState);
                v69 = v68;
                v70 = v124;
                sub_1B041CEFC(v69, v124, type metadata accessor for MailboxSyncState);
                v111 = *(v122 + 52);
                v71 = *(v122 + 64);
                v110 = *(type metadata accessor for PendingPersistenceUpdates() + 28);
                v108 = v71;
                sub_1B03B5C80(v70 + v71, v65, &qword_1EB6E4068, &unk_1B0EC2D20);
                v72 = *v115;
                if ((*v115)(v65, 1, v15) == 1)
                {
                  sub_1B03D06F8();
                  v73 = v119;
                  sub_1B0E46EE8();
                  v106 = *(v15 + 20);
                  v107 = v72;
                  v74 = *(v15 + 24);
                  v75 = v73;
                  v76 = v125;
                  v77 = v123;
                  sub_1B074BA2C(v75, v123);
                  *(v77 + v106) = 0;
                  *(v77 + v74) = 0;
                  v72 = v107;
                  v78 = v77;
                  v70 = v124;
                  sub_1B03BD59C(v78, type metadata accessor for NewestMessages);
                  if (v72(v76, 1, v15) != 1)
                  {
                    sub_1B0398EFC(v76, &qword_1EB6E4068, &unk_1B0EC2D20);
                  }
                }

                else
                {
                  v79 = v65;
                  v80 = v123;
                  sub_1B041CEFC(v79, v123, type metadata accessor for NewestMessages);
                  sub_1B03BD59C(v80, type metadata accessor for NewestMessages);
                }

                v81 = v70 + v111 + v110;
                v82 = v114;
                sub_1B041C914(v81, v114, type metadata accessor for MessagesPendingDownload);
                v83 = *(*v82 + 16);
                sub_1B03BD59C(v82, type metadata accessor for MessagesPendingDownload);
                if (v83)
                {
                  sub_1B03BD59C(v70, type metadata accessor for MailboxSyncState);
                  v15 = v31;
                  goto LABEL_64;
                }

                v111 = v81;
                v86 = v120;
                sub_1B03B5C80(v70 + v108, v120, &qword_1EB6E4068, &unk_1B0EC2D20);
                v15 = v31;
                if (v72(v86, 1, v31) == 1)
                {
                  sub_1B03D06F8();
                  v107 = v72;
                  v87 = v117;
                  sub_1B0E46EE8();
                  v110 = *(v31 + 20);
                  v88 = *(v31 + 24);
                  v89 = v87;
                  v90 = v120;
                  v91 = v118;
                  sub_1B074BA2C(v89, v118);
                  *(v91 + v110) = 0;
                  *(v91 + v88) = 0;
                  v15 = v31;
                  v92 = v107(v90, 1, v31);
                  v93 = v91;
                  v63 = v109;
                  if (v92 != 1)
                  {
                    sub_1B0398EFC(v90, &qword_1EB6E4068, &unk_1B0EC2D20);
                  }
                }

                else
                {
                  v93 = v118;
                  sub_1B041CEFC(v86, v118, type metadata accessor for NewestMessages);
                  v63 = v109;
                }

                if (v126)
                {
                  if (v126 == 1)
                  {
                    v94 = type metadata accessor for MessagesPendingDownloadPerPass();
                    v95 = v114;
                    sub_1B041C914(v111 + *(v94 + 20), v114, type metadata accessor for MessagesPendingDownload);
                    sub_1B03BD59C(v70, type metadata accessor for MailboxSyncState);
                    v96 = *(*v95 + 16);
                    sub_1B03BD59C(v95, type metadata accessor for MessagesPendingDownload);
                    sub_1B03BD59C(v93, type metadata accessor for NewestMessages);
                    if (v96)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
                    v97 = sub_1B0E46E98();
                    v98 = type metadata accessor for MessagesPendingDownloadPerPass();
                    v99 = *(v98 + 20);
                    if (v97)
                    {
                      v100 = v114;
                      sub_1B041C914(v111 + v99, v114, type metadata accessor for MessagesPendingDownload);
                      sub_1B03BD59C(v124, type metadata accessor for MailboxSyncState);
                      v101 = *v100;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      sub_1B03BD59C(v100, type metadata accessor for MessagesPendingDownload);
                      v102 = *(v101 + 16);

                      sub_1B03BD59C(v93, type metadata accessor for NewestMessages);
                      if (v102)
                      {
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      v103 = *(v111 + v99);
                      MEMORY[0x1EEE9AC00](v98);
                      *(&v106 - 2) = v93;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v104 = v113;
                      v105 = sub_1B03D0BFC(sub_1B0B23A0C, (&v106 - 4), v103);
                      v113 = v104;

                      v63 = v109;
                      sub_1B03BD59C(v124, type metadata accessor for MailboxSyncState);
                      sub_1B03BD59C(v93, type metadata accessor for NewestMessages);
                      if (v105)
                      {
                        goto LABEL_64;
                      }
                    }
                  }
                }

                else
                {
                  sub_1B03BD59C(v70, type metadata accessor for MailboxSyncState);
                  sub_1B03BD59C(v93, type metadata accessor for NewestMessages);
                }
              }

              if ((v112 & 1) == 0 && ((BYTE12(v146) & 1) != 0 || DWORD2(v146) < v63) || (v148 & 1) != 0 || v147 != v62 || *(&v147 + 1) < v61)
              {
                goto LABEL_64;
              }
            }
          }
        }

        result = sub_1B03BB144(v133);
        goto LABEL_81;
      }

LABEL_64:
      v84 = v141;
      v85 = DWORD2(v141);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(v132, v84, v85);
      sub_1B03BB144(v133);

LABEL_81:
      v126 = 1;
      goto LABEL_44;
    }

    result = sub_1B03BB144(v133);
LABEL_44:
    v30 = v129;
    if (v29 != v131)
    {
      continue;
    }

    break;
  }

LABEL_88:
  sub_1B0398EFC(v154, &qword_1EB6E4858, &qword_1B0EC5FE0);
  sub_1B0398EFC(&v153, &qword_1EB6E4860, &qword_1B0EC5FE8);
  sub_1B0398EFC(&v152, &qword_1EB6E4868, &unk_1B0EC5FF0);
  result = v151;
  if ((v126 & 1) == 0)
  {

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MessagesPendingDownload()
{
  result = qword_1EB6DD730;
  if (!qword_1EB6DD730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NewestMessages()
{
  result = qword_1EB6DDEA8;
  if (!qword_1EB6DDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03BB0B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 14) = *(a1 + 7);
  *(a2 + 16) = *(a1 + 16);
  memcpy((a2 + 24), a1 + 3, 0x2AuLL);
  return a2;
}

unint64_t sub_1B03BB174()
{
  v2 = *v0;
  v1 = v0[1];
  v38 = *(v0 + 16);
  v3 = v0[3];
  v59 = MEMORY[0x1E69E7CD0];
  v60 = v3;
  v61 = v1;
  v62[0] = v2;
  v37 = v3;
  sub_1B03B5C80(v62, v41, &qword_1EB6E4858, &qword_1B0EC5FE0);
  sub_1B03B5C80(&v61, v41, &qword_1EB6E4860, &qword_1B0EC5FE8);
  result = sub_1B03B5C80(&v60, v41, &qword_1EB6E4868, &unk_1B0EC5FF0);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = 0;
  v39 = v2 + 32;
  while (v6 < v5)
  {
    while (1)
    {
      v7 = (v39 + 176 * v6);
      v8 = *v7;
      v9 = v7[2];
      v49 = v7[1];
      v50 = v9;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      v53 = v7[5];
      v54 = v12;
      v51 = v10;
      v52 = v11;
      v13 = v7[7];
      v14 = v7[8];
      v15 = v7[10];
      v57 = v7[9];
      v58 = v15;
      v55 = v13;
      v56 = v14;
      v48 = v8;
      if (*(v1 + 16))
      {
        v17 = *(&v48 + 1);
        v16 = v48;
        v18 = v49;
        v19 = DWORD2(v49);
        v20 = DWORD1(v53);
        v21 = BYTE8(v53);
        result = sub_1B03AB888(v49, DWORD2(v49));
        if (v22)
        {
          break;
        }
      }

LABEL_13:
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_57;
      }

LABEL_14:
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      if (v6 >= v5)
      {
        goto LABEL_56;
      }
    }

    v23 = *(v1 + 56) + 72 * result;
    v43 = *v23;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    v26 = *(v23 + 64);
    v44 = *(v23 + 16);
    v45 = v25;
    v47 = v26;
    v46 = v24;
    sub_1B03A35B8(&v48, v41);
    sub_1B03BB0B4(&v43, v41);
    v27 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
    result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
    v28 = *result;
    if (!v27)
    {
      if (!*result)
      {
        goto LABEL_17;
      }

LABEL_10:
      LOWORD(v27) = v28 | v27;
      goto LABEL_11;
    }

    if ((v28 & ~v27) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    if ((HIWORD(v43) & v27) != 0)
    {
      sub_1B039E440(&v43);
      result = sub_1B03A3614(&v48);
      goto LABEL_13;
    }

LABEL_17:
    v41[8] = v56;
    v41[9] = v57;
    v41[10] = v58;
    v41[4] = v52;
    v41[5] = v53;
    v41[6] = v54;
    v41[7] = v55;
    v41[0] = v48;
    v41[1] = v49;
    v41[2] = v50;
    v41[3] = v51;
    v41[13] = v45;
    v41[14] = v46;
    v42 = v47;
    v41[11] = v43;
    v41[12] = v44;
    if ((v38 & 1) == 0)
    {
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_40;
    }

    sub_1B03A35B8(&v48, v40);
    sub_1B03BB0B4(&v43, v40);
    v30 = MailboxName.isInbox.getter(v18, v19);
    sub_1B039E440(&v43);
    if ((v30 & 1) != 0 || v44 > 7u || ((1 << v44) & 0xDB) == 0 || (v21 & 1) == 0 && ((BYTE12(v54) & 1) != 0 || DWORD2(v54) < v20))
    {
      result = sub_1B03A3614(&v48);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v48);
    if (!*(v37 + 16))
    {
      sub_1B03BB144(v41);

      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v31 = sub_1B03B8A9C(v16, v17);
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v37 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      result = sub_1B03BB144(v41);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v29 = __OFADD__(v6++, 1);
    if (v29)
    {
      goto LABEL_61;
    }

LABEL_40:
    if (!*(*(&v56 + 1) + 16))
    {
      goto LABEL_54;
    }

    v34 = v49;
    v35 = DWORD2(v49);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v52 + 1), v53, 0, 0) & 1) == 0)
    {
      goto LABEL_54;
    }

    swift_bridgeObjectRetain_n();
    v36 = MailboxName.isInbox.getter(v34, v35);

    if (v36)
    {
      goto LABEL_43;
    }

    if (v44 > 3u)
    {
      if (v44 <= 5u && v44 != 4)
      {
        goto LABEL_43;
      }

LABEL_53:

LABEL_54:
      result = sub_1B03BB144(v41);
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      continue;
    }

    if (v44 > 1u)
    {
      if (v44 != 2)
      {
        goto LABEL_53;
      }
    }

    else if (v44)
    {
      goto LABEL_53;
    }

LABEL_43:
    sub_1B03AB2E0(v40, v34, v35);
    sub_1B03BB144(v41);

    if (v6 == v5)
    {
LABEL_55:
      sub_1B0398EFC(v62, &qword_1EB6E4858, &qword_1B0EC5FE0);
      sub_1B0398EFC(&v61, &qword_1EB6E4860, &qword_1B0EC5FE8);
      sub_1B0398EFC(&v60, &qword_1EB6E4868, &unk_1B0EC5FF0);
      return v59;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1B03BB638(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B03BB69C(unsigned __int16 a1, uint64_t a2, unsigned int a3)
{
  v6 = a1;
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_1B0BA7CA4(a2, a3, v9, v8, (*v3 + 16));
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_1B03A912C(a2, a3, v9, v8);
    v12 = 0;
    if (v15)
    {
LABEL_3:
      if ((~v6 & 0xF8FC) != 0)
      {
        sub_1B03A5284(a2, a3);

        v19 = v3[2];
        v18 = v3 + 2;
        v17 = v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v18 = v19;
        if ((result & 1) == 0)
        {
          result = sub_1B03A4FB4(0, *(v17 + 16) + 1, 1);
          v17 = *v18;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1B03A4FB4((v20 > 1), v21 + 1, 1);
          v17 = *v18;
        }

        *(v17 + 16) = v21 + 1;
        *(v17 + 2 * v21 + 32) = v6;
        *v18 = v17;
      }

      else
      {
      }

      return result;
    }
  }

  v16 = v10;

  if ((~v6 & 0xF8FC) == 0)
  {
    sub_1B0BCAE88(v16, v12);

    return sub_1B0BCB3A0(v16);
  }

  v22 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B94750(v22);
    v22 = result;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v22 + 16))
  {
    *(v22 + 2 * v16 + 32) = v6;
    v3[2] = v22;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B03BB844()
{
  if (v0[24])
  {
    v1 = 0;
    v2 = *(*v0 + 16);
    v3 = *v0 - 144;
    v4 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v5 = v3 + 176 * v1;
    while (v2 != v1)
    {
      if (v1 >= v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_15;
      }

      v7 = *(v5 + 344);
      ++v1;
      v5 += 176;
      if (!v7)
      {
        v8 = *v5;
        v9 = *(v5 + 8);
        v10 = *(v5 + 160);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B0B00800(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_1B0B00800((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v13 = &v4[24 * v12];
        *(v13 + 4) = v8;
        *(v13 + 5) = v9;
        *(v13 + 6) = v10;
        v1 = v6;
        goto LABEL_3;
      }
    }
  }
}

double sub_1B03BB96C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[0] = &type metadata for UpdateServerUnreadCount;
  sub_1B0E461E8();
  v6[6] = 0xD000000000000017;
  v6[7] = 0x80000001B0ECD440;
  if (*(a1 + 16))
  {
    v5 = a1;
    sub_1B0B94E24(&v5, a2);
    sub_1B0B94E80(&v5);
  }

  else
  {

    sub_1B03B04BC(v6);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_1B03BBA34(uint64_t a1)
{
  if ((v1[24] & 1) == 0)
  {
    v39 = MEMORY[0x1E69E7CC0];

    return sub_1B0BAC648(v39);
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = 0;
  v5 = v2 + 32;
  v6 = MEMORY[0x1E69E7CC8];
  v41 = v2 + 32;
  while (2)
  {
    v42 = v6;
    v7 = (v5 + 176 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 = *v7;
      v10 = v7[2];
      v46 = v7[1];
      v47 = v10;
      v45 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v50 = v7[5];
      v51 = v13;
      v48 = v11;
      v49 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v54 = v7[9];
      v55 = v16;
      v52 = v14;
      v53 = v15;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v17 = DWORD2(v46);
      v19 = *(&v45 + 1);
      v18 = v46;
      v20 = v45;
      v21 = v50;
      v22 = *(&v49 + 1);
      sub_1B03A35B8(&v45, &v44);
      if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v22, v21, a1, 0))
      {
        break;
      }

      sub_1B03A3614(&v45);
      v7 += 11;
      if (v4 == v3)
      {
        return v42;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v42;
    v24 = sub_1B03B8A9C(v20, v19);
    v26 = v42[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = v25;
    if (v42[3] < v29)
    {
      sub_1B0B2F13C(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1B03B8A9C(v20, v19);
      v5 = v41;
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_31;
      }

LABEL_15:
      v6 = v44;
      if (v30)
      {
        goto LABEL_16;
      }

LABEL_18:
      v6[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v6[6] + 16 * v24);
      *v35 = v20;
      v35[1] = v19;
      v36 = v6[7] + 16 * v24;
      *v36 = v18;
      *(v36 + 8) = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A3614(&v45);
      v37 = v6[2];
      v28 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (!v28)
      {
        v6[2] = v38;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    v5 = v41;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v34 = v24;
    sub_1B0B8D048();
    v24 = v34;
    v6 = v44;
    if ((v30 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v32 = v6[7] + 16 * v24;
    v33 = *v32;
    *v32 = v18;
    *(v32 + 8) = v17;

    sub_1B03A3614(&v45);
LABEL_20:
    if (v4 != v3)
    {
      continue;
    }

    return v6;
  }
}

void *sub_1B03BBCFC()
{
  if ((v0[24] & 1) == 0)
  {
    v39 = MEMORY[0x1E69E7CC0];

    return sub_1B0BAC794(v39);
  }

  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = *v0 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v5 = (v3 + 176 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = *v5;
      v8 = v5[2];
      v45 = v5[1];
      v46 = v8;
      v44 = v7;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v49 = v5[5];
      v50 = v11;
      v47 = v9;
      v48 = v10;
      v12 = v5[7];
      v13 = v5[8];
      v14 = v5[10];
      v53 = v5[9];
      v54 = v14;
      v51 = v12;
      v52 = v13;
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v15 = *(&v48 + 1);
      if (*(&v48 + 1) >= 3uLL)
      {
        break;
      }

      v5 += 11;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v41 = v3;
    v16 = v49;
    v42 = DWORD2(v45);
    v17 = *(&v44 + 1);
    v18 = v45;
    v19 = v44;
    sub_1B03A35B8(&v44, &v43);
    v20 = v16;
    sub_1B07C9330(v15);
    v21 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v4;
    v23 = sub_1B03B8A9C(v19, v17);
    v25 = v4[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v29 = v24;
    if (v4[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = v23;
        sub_1B0B8E2AC();
        v23 = v38;
      }
    }

    else
    {
      sub_1B0B31374(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1B03B8A9C(v19, v17);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_31;
      }
    }

    v4 = v43;
    if ((v29 & 1) == 0)
    {
      v43[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v4[6] + 16 * v23);
      *v34 = v19;
      v34[1] = v17;
      v35 = v4[7] + 32 * v23;
      *v35 = v15;
      *(v35 + 8) = v20;
      *(v35 + 16) = v21;
      *(v35 + 24) = v42;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A3614(&v44);
      v36 = v4[2];
      v27 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v27)
      {
        v4[2] = v37;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    v31 = v43[7] + 32 * v23;
    v32 = *v31;
    v33 = *(v31 + 16);
    *v31 = v15;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    *(v31 + 24) = v42;

    sub_1B03A3614(&v44);
LABEL_20:
    v3 = v41;
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

uint64_t sub_1B03BBFB8(uint64_t a1, int a2, uint64_t a3)
{
  v48 = a2;
  v46 = a1;
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v54);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = type metadata accessor for RunningTask();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a3 + 16);
  if (v49)
  {
    v23 = 0;
    v24 = *(v20 + 80);
    v51 = *(v20 + 72);
    v52 = a3 + ((v24 + 32) & ~v24);
    v45 = v8 + 1;
    v47 = v4;
    v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v53 = v23;
      sub_1B0390720(v52 + v51 * v23, v22, type metadata accessor for RunningTask);
      v25 = *(v22 + 6);
      v26 = *(v25 + 16);
      if (v26)
      {
        for (i = 0; i != v26; ++i)
        {
          if (i >= *(v25 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            JUMPOUT(0x1B03BC5C8);
          }

          sub_1B0390720(v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i, v17, type metadata accessor for TaskHistory.Running);
          sub_1B0390720(v17, v15, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v28 = type metadata accessor for TaskHistory.Running;
            v29 = v15;
          }

          else
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0423C80(&v15[*(v30 + 64)], v10, type metadata accessor for ClientCommand);
            sub_1B0390720(v10, v8, type metadata accessor for ClientCommand);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0xAu:
                sub_1B0390574(v10, type metadata accessor for ClientCommand);
                v37 = *v8;

                v38 = v8[2];

                v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
                v40 = *(v39 + 64);
                sub_1B0391D50(*(v8 + *(v39 + 80)), *(v8 + *(v39 + 80) + 8));
                sub_1B0398EFC(v8 + v40, &unk_1EB6E2990, &qword_1B0E9B060);
                goto LABEL_25;
              case 0xFu:
                sub_1B0390574(v10, type metadata accessor for ClientCommand);
                v41 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));
                goto LABEL_30;
              case 0x10u:
                sub_1B0390574(v10, type metadata accessor for ClientCommand);
                v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770);
                v43 = *(v45 + *(v42 + 48));
LABEL_30:

                sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                goto LABEL_25;
              case 0x11u:
              case 0x12u:
                v31 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48);
                v32 = *v31;
                v33 = *(v31 + 2);
                sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                if (v33 != v48)
                {
                  goto LABEL_22;
                }

                v34 = *(v32 + 16);
                if (v34 != *(v46 + 16))
                {
                  goto LABEL_22;
                }

                if (v34)
                {
                  v35 = v32 == v46;
                }

                else
                {
                  v35 = 1;
                }

                if (v35)
                {
                  goto LABEL_33;
                }

                v36 = 32;
                break;
              case 0x13u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
              case 0x1Cu:
              case 0x1Du:
                goto LABEL_23;
              default:
                sub_1B0390574(v10, type metadata accessor for ClientCommand);
                v29 = v8;
                v28 = type metadata accessor for ClientCommand;
                goto LABEL_24;
            }

            while (1)
            {
              if (!v34)
              {
                goto LABEL_35;
              }

              if (*(v32 + v36) != *(v46 + v36))
              {
                break;
              }

              ++v36;
              if (!--v34)
              {
LABEL_33:

                sub_1B0390574(v10, type metadata accessor for ClientCommand);
                sub_1B0390574(v17, type metadata accessor for TaskHistory.Running);
                sub_1B0390574(v50, type metadata accessor for RunningTask);
                return 0;
              }
            }

LABEL_22:

LABEL_23:
            v28 = type metadata accessor for ClientCommand;
            v29 = v10;
          }

LABEL_24:
          sub_1B0390574(v29, v28);
LABEL_25:
          sub_1B0390574(v17, type metadata accessor for TaskHistory.Running);
        }
      }

      v23 = v53 + 1;
      v22 = v50;
      sub_1B0390574(v50, type metadata accessor for RunningTask);
    }

    while (v23 != v49);
  }

  return 1;
}

uint64_t sub_1B03BC640@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X8>)
{
  v66 = a7;
  v68 = a8;
  v69 = a5;
  v13 = type metadata accessor for MailboxSyncState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[12];
  if (v17)
  {
    HIDWORD(v64) = a1;
    v18 = v17 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v19 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B03BCDD0(v18 + *(v19 + 20), v16, type metadata accessor for MailboxSyncState);
    v65 = v17;

    v20 = sub_1B03BD1FC(a2 & 0x101010101FFFF01);
    v22 = v21;
    v24 = v23;
    sub_1B0B238BC(v16, type metadata accessor for MailboxSyncState);
    if ((sub_1B0A94670(0, v20) & 1) != 0 && (sub_1B0A94670(0, v22) & 1) == 0 && ((sub_1B03BE324(v20, v22) & 1) == 0 || (sub_1B0A94670(0, v24) & 1) == 0))
    {
      v63 = v68;
      *v68 = v65;
      v63[1] = v20;
      v63[2] = v22;
      v63[3] = v24;
      *(v63 + 40) = 0;
      goto LABEL_22;
    }

    v67 = a6;

    v25 = *(a3 + 43);
    v26 = *a3;
    v27 = a3[1];
    v28 = a3[2];
    v29 = a4;
    v30 = *(a3 + 6);
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(&v76 + 1) = sub_1B0451E64(&unk_1F2710EF8);
    LOBYTE(v77) = 1;
    v81 = 0u;
    v82 = 0u;
    v83 = 256;
    *&v74 = v26;
    *(&v74 + 1) = v27;
    LOWORD(v75) = v25;
    *(&v75 + 1) = v28;
    LODWORD(v76) = v30;
    v70 = v28;
    v71 = v30;
    *(&v77 + 1) = &type metadata for ReSyncMailbox;
    sub_1B0451F2C();
    sub_1B0E461E8();
    DWORD2(v80) = *(a3 + 8);
    BYTE12(v80) = *(a3 + 36);
    *(&v80 + 13) = WORD2(v64);
    LOWORD(v93) = v83;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v89 = v79;
    v84 = v74;
    v85 = v75;
    v91 = v81;
    v92 = v82;
    v90 = v80;
    *(&v93 + 1) = MEMORY[0x1E69E7CC0];
    v94 = MEMORY[0x1E69E7CC0];
    sub_1B03B5C80(&v84, &v74, &qword_1EB6E4708, &qword_1B0EC5A88);
    if ((sub_1B03D0AD8(&v77 + 1, v29) & 1) == 0)
    {
      if (!*(v69 + 16) || (v37 = sub_1B03AB888(*(&v75 + 1), v76), (v38 & 1) == 0) || (v39 = *(*(v69 + 56) + 8 * v37), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v40 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v41 = sub_1B0B872CC(v40, v39), , , (v41 & 1) != 0))
      {
        if ((v66 & 1) != 0 || (v77 & 1) == 0)
        {
          sub_1B0398EFC(&v74, &qword_1EB6E4708, &qword_1B0EC5A88);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4708, &qword_1B0EC5A88);
          v43 = v68;
          v68[3] = v42;
          v43[4] = sub_1B0B23F6C(qword_1EB6DD408, &qword_1EB6E4708, &qword_1B0EC5A88);
          v44 = swift_allocObject();
          *v43 = v44;
          v45 = v93;
          *(v44 + 144) = v92;
          *(v44 + 160) = v45;
          *(v44 + 176) = v94;
          v46 = v89;
          *(v44 + 80) = v88;
          *(v44 + 96) = v46;
          v47 = v91;
          *(v44 + 112) = v90;
          *(v44 + 128) = v47;
          v48 = v85;
          *(v44 + 16) = v84;
          *(v44 + 32) = v48;
          v49 = v87;
          *(v44 + 48) = v86;
          *(v44 + 64) = v49;

LABEL_21:
          *(v43 + 40) = 1;
          goto LABEL_22;
        }
      }
    }

    sub_1B0398EFC(&v74, &qword_1EB6E4708, &qword_1B0EC5A88);
    sub_1B0398EFC(&v84, &qword_1EB6E4708, &qword_1B0EC5A88);

    v31 = v68;
    v68[4] = 0;
    *v31 = 0u;
    *(v31 + 1) = 0u;
  }

  else
  {
    v67 = a6;
    v32 = *(a3 + 43);
    v33 = *a3;
    v34 = a3[1];
    v35 = a3[2];
    v36 = *(a3 + 6);
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(&v76 + 1) = sub_1B0451E64(&unk_1F2710F20);
    LOBYTE(v77) = 1;
    v81 = 0u;
    v82 = 0u;
    v83 = 256;
    *&v74 = v33;
    *(&v74 + 1) = v34;
    LOWORD(v75) = v32;
    *(&v75 + 1) = v35;
    LODWORD(v76) = v36;
    v72 = v35;
    v73 = v36;
    *(&v77 + 1) = &type metadata for ReSyncMailbox;
    sub_1B0451F2C();
    sub_1B0E461E8();
    DWORD2(v80) = *(a3 + 8);
    BYTE12(v80) = *(a3 + 36);
    *(&v80 + 13) = a1;
    LOWORD(v93) = v83;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v89 = v79;
    v84 = v74;
    v85 = v75;
    v91 = v81;
    v92 = v82;
    v90 = v80;
    *(&v93 + 1) = MEMORY[0x1E69E7CC0];
    v94 = MEMORY[0x1E69E7CC0];
    sub_1B03B5C80(&v84, &v74, &qword_1EB6E4708, &qword_1B0EC5A88);
    if ((sub_1B03D0AD8(&v77 + 1, a4) & 1) == 0)
    {
      if (!*(v69 + 16) || (v50 = sub_1B03AB888(*(&v75 + 1), v76), (v51 & 1) == 0) || (v52 = *(*(v69 + 56) + 8 * v50), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v53 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v54 = sub_1B0B872CC(v53, v52), , , (v54 & 1) != 0))
      {
        if ((v66 & 1) != 0 || (v77 & 1) == 0)
        {
          sub_1B0398EFC(&v74, &qword_1EB6E4708, &qword_1B0EC5A88);
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4708, &qword_1B0EC5A88);
          v43 = v68;
          v68[3] = v55;
          v43[4] = sub_1B0B23F6C(qword_1EB6DD408, &qword_1EB6E4708, &qword_1B0EC5A88);
          v56 = swift_allocObject();
          *v43 = v56;
          v57 = v93;
          *(v56 + 144) = v92;
          *(v56 + 160) = v57;
          *(v56 + 176) = v94;
          v58 = v89;
          *(v56 + 80) = v88;
          *(v56 + 96) = v58;
          v59 = v91;
          *(v56 + 112) = v90;
          *(v56 + 128) = v59;
          v60 = v85;
          *(v56 + 16) = v84;
          *(v56 + 32) = v60;
          v61 = v87;
          *(v56 + 48) = v86;
          *(v56 + 64) = v61;
          goto LABEL_21;
        }
      }
    }

    sub_1B0398EFC(&v74, &qword_1EB6E4708, &qword_1B0EC5A88);
    sub_1B0398EFC(&v84, &qword_1EB6E4708, &qword_1B0EC5A88);
    v31 = v68;
    *v68 = 0u;
    *(v31 + 1) = 0u;
    v31[4] = 0;
  }

  *(v31 + 40) = -1;
LABEL_22:
}

uint64_t sub_1B03BCD08()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v4 = v0[21];

  v5 = v0[22];

  return swift_deallocObject();
}

uint64_t sub_1B03BCD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03BCDD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03BCE58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B03BCF14(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B03BCF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for MessageIdentifierSet();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_1B03BD030(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B03BD0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B03BD180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B03BD1FC(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v27 - v5);
  v7 = type metadata accessor for PendingServerResponses();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[19];
  v11 = v2[20];
  v13 = v2[21];
  v14 = type metadata accessor for MailboxSyncState();
  sub_1B03BD4C8(v2 + v14[12], v10, type metadata accessor for PendingServerResponses);
  v15 = *v2;
  sub_1B03B5C80(v2 + v14[15], v6, &qword_1EB6E4010, &unk_1B0EC6220);
  v16 = type metadata accessor for MessageBatches(0);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_1B0398EFC(v6, &qword_1EB6E4010, &unk_1B0EC6220);
    v17 = 4507;
  }

  else
  {
    v17 = *v6;
    sub_1B03BD5FC(v6, type metadata accessor for MessageBatches);
  }

  v18 = v28;
  v19 = sub_1B03BD65C(v15, v17, HIBYTE(v28) & 1);
  sub_1B03BD5FC(v10, type metadata accessor for PendingServerResponses);
  *&v29 = v12;
  *(&v29 + 1) = v11;
  v30 = v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03BD8F4(v19);

  v20 = v30;
  v27 = v29;
  v21 = v2 + v14[13];
  v22 = sub_1B03BD9F0();
  v29 = v27;
  v30 = v20;
  sub_1B03BD8F4(v22);

  v23 = v29;
  v24 = v30;
  sub_1B03BDA90(v18 & 0x101010101FFFF01, &v29);
  v25 = sub_1B03BDBF8(v29, v23, *(&v23 + 1), v24);

  return v25;
}

uint64_t sub_1B03BD4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for PendingServerResponses()
{
  result = qword_1EB6DD7C0;
  if (!qword_1EB6DD7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03BD59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BD5FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BD65C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v35 = MEMORY[0x1E69E7CD0];
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v8);
  v10 = *((*(v9 + 24))(v8, v9) + 16);

  if (v10 && (a3 ^ 1) & 1 | (v10 > 0x52))
  {
    v11 = v4[3];
    v12 = v4[4];
    __swift_project_boxed_opaque_existential_0(v4, v11);
    v13 = (*(v12 + 24))(v11, v12);
    LOBYTE(v11) = sub_1B0AA5A24(a1, a2, v13);

    if (v11)
    {
      v14 = &v30;
      v15 = 5;
    }

    else
    {
      v14 = &v31;
      v15 = 4;
    }

    sub_1B03BDD7C(v14, v15);
  }

  v16 = v4[3];
  v17 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v16);
  (*(v17 + 40))(v16, v17);
  v19 = *(v18 + 16);

  if (v19 || (v25 = v4[3], v26 = v4[4], __swift_project_boxed_opaque_existential_0(v4, v25), v27 = (*(v26 + 72))(v25, v26), (v28 & 1) == 0) || v27)
  {
    sub_1B03BDD7C(&v34, 11);
  }

  v20 = v4[5];
  v21 = v20;
  if ((v4[6] & 1) == 0)
  {
    v21 = *(v20 + 16);
  }

  v22 = 82;
  if ((a3 & 1) == 0)
  {
    v22 = 0;
  }

  if (v21 > v22)
  {
    if (sub_1B0AA59AC(a1, a2, v20, *(v4 + 48)))
    {
      v23 = &v32;
      v24 = 3;
    }

    else
    {
      v23 = &v33;
      v24 = 2;
    }

    sub_1B03BDD7C(v23, v24);
  }

  return v35;
}

uint64_t sub_1B03BD880()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];

  return v1;
}

uint64_t sub_1B03BD8D0()
{
  if ((*(*(v0 + 32) + 16) != 0) | *(v0 + 48) & 1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t sub_1B03BD8F4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v5; result = sub_1B03BDD7C(&v14, v13))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(a1 + 48);
    v13 = *(v12 + v11);
    sub_1B03BDE74(*(v12 + v11));
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03BD9F0()
{
  v5 = MEMORY[0x1E69E7CD0];
  if (*v0 == 1)
  {
    sub_1B03BDD7C(&v2, 6);
  }

  if (v0[1] == 1)
  {
    sub_1B03BDD7C(&v3, 7);
  }

  if (v0[2] == 1)
  {
    sub_1B03BDD7C(&v4, 8);
  }

  return v5;
}

uint64_t sub_1B03BDA90@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  if ((result & 0x1000000) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((result & 0xFF0000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  result = sub_1B03BDA7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = result;
  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    result = sub_1B03BDA7C((v5 > 1), v6 + 1, 1, result);
    v4 = result;
    v5 = *(result + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + v6 + 32) = 2;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    result = sub_1B03BDA7C((v5 > 1), v9, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v9;
  *(v4 + v8 + 32) = 4;
  if ((*&v2 & 0xFF0000) == 0)
  {
LABEL_9:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B03BDA7C(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1B03BDA7C((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v11 + 1;
    *(v4 + v11 + 32) = 10;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t sub_1B03BDBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v4;
  }

  v6 = (a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  do
  {
    v8 = *v6++;
    v7 = v8;
    v9 = v13;
    if (sub_1B0A94670(v8, v13))
    {
      sub_1B03BDE74(v7);
      sub_1B03BDE74(v7);
      v9 = v13;
    }

    else if (sub_1B0A94670(v7, v14) & 1) != 0 && (sub_1B0A94670(v7, v12))
    {
      sub_1B03BDE74(v7);
    }

    else
    {
      sub_1B03BDD7C(&v11, v7);
    }

    if (sub_1B0A94670(v7, v9))
    {
      sub_1B03BDE74(v7);
    }

    else if ((sub_1B0A94670(v7, v14) & 1) == 0 || (sub_1B0A94670(v7, v12) & 1) == 0)
    {
      sub_1B03BDD7C(&v11, v7);
      goto LABEL_4;
    }

    sub_1B03BDE74(v7);
LABEL_4:
    --v5;
  }

  while (v5);
  return v14;
}

uint64_t sub_1B03BDD7C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v7 = sub_1B0E46CB8();
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
    sub_1B0B05C0C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B03BDE74(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  v5 = sub_1B0E46CB8();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 15;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 15;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B03BDF7C();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v7);
  sub_1B03BE0BC(v7);
  result = v13;
  *v1 = v14;
  return result;
}

void *sub_1B03BDF7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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

unint64_t sub_1B03BE0BC(unint64_t result)
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

    v9 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v12);
        v13 = sub_1B0E46CB8() & v7;
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

uint64_t sub_1B03BE264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BE2C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BE324(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 56;
  v6 = a2 + 56;
  while (*(a1 + 16))
  {
    v7 = byte_1F2710570[v4 + 32];
    v8 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v7);
    v9 = sub_1B0E46CB8();
    v10 = -1 << *(a1 + 32);
    v11 = v9 & ~v10;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      break;
    }

    ++v4;
    v12 = ~v10;
    while (*(*(a1 + 48) + v11) != v7)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a2 + 16))
    {
      v13 = *(a2 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v7);
      v14 = sub_1B0E46CB8();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if ((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(a2 + 48) + v16) != v7)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }

LABEL_13:
    if (v4 == 15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B03BE4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}