void sub_1ADDF195C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring * const*,Coherence_namespace::TopoSubstring * const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void CRAttributedString.Runs.next()(void *a1@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  if (*v1 == v4)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_18;
  }

  v13 = 0;
  v14 = 0;
  v5 = [*(v1[2] + 16) attributedString];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = [v6 attributesAtIndex:v3 longestEffectiveRange:&v13 inRange:{v3, v4 - v3}];
  swift_unknownObjectRelease();
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v8 = sub_1AE23CA0C();

  v9 = v13;
  v10 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v10 < v13)
  {
    goto LABEL_21;
  }

  if (v10 >= v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v13 + v14;
  }

  if (v3 < v13)
  {
    v11 = v13;
  }

  if (v4 > v13)
  {
    v9 = v4;
  }

  if (v10 < v4)
  {
    v9 = v13 + v14;
  }

  *a1 = v11;
  a1[1] = v9;
  a1[2] = v8;
  if (v10 >= v1[1])
  {
    v10 = v1[1];
  }

  *v1 = v10;
LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ADDF1C94()
{
  v1 = *v0;
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v2 = sub_1AE23E34C();

  return v2;
}

unint64_t sub_1ADDF1D24(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v4 = sub_1AE23E34C();

  return sub_1ADDF1DB4(a1, v4);
}

unint64_t sub_1ADDF1DB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1AE23CD0C();
      v9 = v8;
      if (v7 == sub_1AE23CD0C() && v9 == v10)
      {
        break;
      }

      v12 = sub_1AE23E00C();

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

uint64_t sub_1ADDF1EB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  swift_beginAccess();
  v5 = *(v3 + 200);
  a1[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v4, v5);
}

uint64_t sub_1ADDF1F8C(uint64_t a1)
{
  v2 = type metadata accessor for Replica();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CRAttributedString.runs.getter(void *a1@<X8>)
{
  v3 = *v1;
  CRAttributedString.count.getter();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *a1 = 0;
  a1[1] = v4;
  a1[2] = v3;
}

void CRAttributedString.count.getter()
{
  if (*v0)
  {
    [objc_msgSend(*(*v0 + 16) attributedString)];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADDF20CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADDF43A0(a1, sub_1ADDF4474);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ADDF210C(int a1, uint64_t a2)
{
  v3 = v2;
  v140 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = &v128 - v7;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  v8 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v10 = &v128 - v9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  v11 = *(*(v164 - 8) + 64);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v128 - v12;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v179 = *(a2 + 32);
  v15 = type metadata accessor for CROrderedSetElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v168 = sub_1AE23D7CC();
  v143 = *(v168 - 8);
  v16 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v166 = &v128 - v19;
  v142 = sub_1AE23C12C();
  v141 = *(v142 - 8);
  v20 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v154 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = *(v14 - 8);
  v22 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v149 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v152 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v162 = &v128 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v165 = &v128 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v128 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v150 = &v128 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v148 = &v128 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v159 = &v128 - v39;
  v40 = type metadata accessor for Timestamp(0);
  v144 = *(v40 - 8);
  v41 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v151 = &v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v157 = (&v128 - v44);
  v177 = *(v15 - 8);
  v45 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v178 = &v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v160 = &v128 - v49;
  v135 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v128 - v52;
  v180[0] = *v2;
  v54 = type metadata accessor for CRSequence();
  result = CRSequence.isEmpty.getter(v54);
  if (result)
  {
    return result;
  }

  v156 = v53;
  v56 = *(a2 + 48);
  v57 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  v58 = sub_1AE23D7CC();
  v59 = *(v58 - 8);
  v60 = *(v59 + 8);
  v130 = v58;
  v129 = v60;
  v128 = v59 + 8;
  (v60)(&v3[v56]);
  v61 = *(v57 - 8);
  v62 = *(v61 + 56);
  v134 = v56;
  v133 = v57;
  v132 = v62;
  v131 = v61 + 56;
  v62(&v3[v56], 1, 1, v57);
  v183 = sub_1AE23C9CC();
  v180[0] = *v3;
  CRSequence.count.getter();
  v174 = v40;
  v147 = sub_1AE23CB1C();
  sub_1AE23CA3C();
  v180[0] = *v3;
  v63 = sub_1ADDEF6DC(v54);
  v64 = sub_1AE23D0AC();
  v137 = v3;
  v176 = v14;
  v153 = v13;
  v136 = v54;
  if (!v64)
  {

    goto LABEL_29;
  }

  v65 = 0;
  v175 = (v177 + 16);
  v66 = *(v3 + 1);
  v171 = (v177 + 32);
  v172 = v66;
  v170 = (v177 + 8);
  v161 = (v144 + 48);
  v146 += 16;
  v145 = (v144 + 56);
  v67 = v160;
  v68 = v156;
  v155 = v63;
  while (1)
  {
    v69 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v69 & 1) == 0)
    {
      break;
    }

    (*(v177 + 16))(v68, v63 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v65, v15);
    v70 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      goto LABEL_26;
    }

LABEL_8:
    (*v171)(v67, v68, v15);
    v180[0] = v172;
    v71 = type metadata accessor for CRSet();

    v72 = CRSet.contains(_:)(v67, v71);

    if (v72)
    {
      v73 = v159;
      v74 = v67;
      v75 = v174;
      sub_1AE23CB7C();
      v76 = *v161;
      if ((*v161)(v73, 1, v75) == 1)
      {
        sub_1ADDCEDE0(v73, &qword_1EB5BA480, &qword_1AE25AAE0);
LABEL_15:
        v86 = v150;
        v87 = v160;
        v88 = v176;
        v89 = v174;
        sub_1AE23CB7C();
        if (v76(v86, 1, v89) == 1)
        {
          sub_1ADDCEDE0(v86, &qword_1EB5BA480, &qword_1AE25AAE0);
          (*v146)(v149, v87, v88);
          v90 = v148;
          sub_1ADDF8030(&v87[*(v15 + 44)], v148, type metadata accessor for Timestamp);
          (*v145)(v90, 0, 1, v89);
          sub_1AE23CB8C();
          (*v170)(v87, v15);
        }

        else
        {
          (*v170)(v87, v15);
          sub_1ADDCEDE0(v86, &qword_1EB5BA480, &qword_1AE25AAE0);
        }

        v67 = v87;
        goto LABEL_22;
      }

      v77 = v157;
      sub_1AE017B14(v73, v157);
      v78 = v74 + *(v15 + 44);
      v79 = *(v75 + 20);
      v80 = *(v77 + v79);
      v81 = *(v78 + v79);
      v82 = v80 < v81;
      if (v80 == v81 && (v83 = *(type metadata accessor for Replica() + 20), v84 = *(v77 + v83), v85 = *(v78 + v83), v82 = v84 < v85, v84 == v85))
      {
        if ((sub_1ADF5EB00() & 1) == 0)
        {
LABEL_14:
          sub_1AE017AB8(v157);
          goto LABEL_15;
        }
      }

      else if (!v82)
      {
        goto LABEL_14;
      }

      v91 = v160;
      (*v146)(v149, v160, v176);
      v92 = v78;
      v93 = v148;
      sub_1ADDF8030(v92, v148, type metadata accessor for Timestamp);
      (*v145)(v93, 0, 1, v174);
      v67 = v91;
      sub_1AE23CB8C();
      sub_1AE017AB8(v157);
      (*v170)(v91, v15);
LABEL_22:
      v68 = v156;
      v63 = v155;
      goto LABEL_5;
    }

    (*v170)(v67, v15);
LABEL_5:
    ++v65;
    if (v70 == sub_1AE23D0AC())
    {
      goto LABEL_27;
    }
  }

  result = sub_1AE23DAAC();
  if (v135 != 8)
  {
    __break(1u);
    return result;
  }

  v180[0] = result;
  (*v175)(v68, v180, v15);
  swift_unknownObjectRelease();
  v70 = v65 + 1;
  if (!__OFADD__(v65, 1))
  {
    goto LABEL_8;
  }

LABEL_26:
  __break(1u);
LABEL_27:

  v3 = v137;
  v54 = v136;
LABEL_29:
  sub_1AE23C11C();
  v180[0] = *v3;
  v181 = sub_1ADDEF6DC(v54);
  v94 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v182, v94, WitnessTable);

  v181 = v182;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v161 = sub_1AE23DC8C();
  v96 = 0;
  v160 = (v143 + 32);
  v97 = TupleTypeMetadata2;
  v159 = (TupleTypeMetadata2 - 8);
  v157 = (v177 + 32);
  v156 = (v144 + 56);
  v172 = (v144 + 48);
  v155 = (v177 + 8);
  v98 = v165;
  v158 = v15;
  while (2)
  {
    v101 = v167;
    sub_1AE23DC7C();
    v102 = v166;
    (*v160)(v166, v101, v168);
    if ((*(*(v97 - 8) + 48))(v102, 1, v97) != 1)
    {
      LODWORD(v177) = v96;
      v175 = *v102;
      v103 = &v102[*(v97 + 48)];
      v104 = v178;
      (*v157)(v178, v103, v15);
      v106 = v173;
      v105 = v174;
      v171 = v183;
      sub_1AE23CB7C();
      sub_1ADDF8030(&v104[*(v15 + 44)], v98, type metadata accessor for Timestamp);
      (*v156)(v98, 0, 1, v105);
      v107 = *(v164 + 48);
      v108 = v163;
      sub_1ADDCEE40(v106, v163, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEE40(v98, v108 + v107, &qword_1EB5BA480, &qword_1AE25AAE0);
      v109 = v98;
      v110 = *v172;
      v111 = (*v172)(v108, 1, v105);
      v170 = v110;
      if (v111 == 1)
      {
        sub_1ADDCEDE0(v109, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDCEDE0(v106, &qword_1EB5BA480, &qword_1AE25AAE0);
        v112 = v110(v108 + v107, 1, v105);
        v98 = v165;
        if (v112 == 1)
        {
          sub_1ADDCEDE0(v108, &qword_1EB5BA480, &qword_1AE25AAE0);
          v15 = v158;
          v113 = v177;
LABEL_44:
          if (v113)
          {
            (*v155)(v178, v15);
            v96 = 1;
          }

          else
          {
            v99 = v152;
            v100 = v178;
            sub_1AE23CB7C();
            (*v155)(v100, v15);
            v96 = (v170)(v99, 1, v105) == 1;
            sub_1ADDCEDE0(v99, &qword_1EB5BA480, &qword_1AE25AAE0);
          }

          v97 = TupleTypeMetadata2;
          continue;
        }

LABEL_37:
        sub_1ADDCEDE0(v108, &qword_1EB5BB7C0, &unk_1AE2514A0);
        v15 = v158;
        v113 = v177;
      }

      else
      {
        sub_1ADDCEE40(v108, v162, &qword_1EB5BA480, &qword_1AE25AAE0);
        if (v110(v108 + v107, 1, v105) == 1)
        {
          v98 = v165;
          sub_1ADDCEDE0(v165, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1ADDCEDE0(v173, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1AE017AB8(v162);
          goto LABEL_37;
        }

        v114 = v151;
        sub_1AE017B14(v108 + v107, v151);
        v115 = v162;
        if (*(v162 + *(v105 + 20)) == *(v114 + *(v105 + 20)) && (v116 = type metadata accessor for Replica(), *(v115 + *(v116 + 20)) == *(v114 + *(v116 + 20))))
        {
          LODWORD(v150) = sub_1AE23BF8C();
          sub_1AE017AB8(v114);
          v98 = v165;
          sub_1ADDCEDE0(v165, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1ADDCEDE0(v173, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1AE017AB8(v115);
          sub_1ADDCEDE0(v108, &qword_1EB5BA480, &qword_1AE25AAE0);
          v15 = v158;
          v113 = v177;
          if (v150)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_1AE017AB8(v114);
          v98 = v165;
          sub_1ADDCEDE0(v165, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1ADDCEDE0(v173, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1AE017AB8(v115);
          sub_1ADDCEDE0(v108, &qword_1EB5BA480, &qword_1AE25AAE0);
          v15 = v158;
          v113 = v177;
        }
      }

      sub_1AE23C08C();
      goto LABEL_44;
    }

    break;
  }

  v117 = v154;
  if (sub_1AE23C0AC())
  {
    goto LABEL_50;
  }

  if ((v140 | v96))
  {
    sub_1AE168474(v117, v136);
LABEL_50:
    (*(v141 + 8))(v117, v142);
  }

  else
  {
    v118 = v137;
    v180[0] = *v137;
    v182 = sub_1ADDEF6DC(v136);
    v119 = v139;
    sub_1AE23C10C();
    v120 = sub_1AE23C0EC();
    v121 = *(v120 - 8);
    (*(v121 + 16))(v10, v119, v120);
    v122 = *(v138 + 36);
    sub_1AE1E9C30(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    sub_1AE23D46C();
    (*(v121 + 8))(v119, v120);
    sub_1AE23D41C();
    if (*&v10[v122] != v180[0])
    {
      sub_1AE1E9C30(&qword_1EB5BB4E0, MEMORY[0x1E6969B30]);
      do
      {
        sub_1AE23CBDC();
        v123 = sub_1AE23D51C();
        v125 = *v124;
        v126 = v124[1];
        v123(v180, 0);
        v180[0] = v125;
        v180[1] = v126;
        swift_getWitnessTable();
        sub_1AE23D54C();
        sub_1AE23D41C();
      }

      while (*&v10[v122] != v180[0]);
    }

    sub_1ADDCEDE0(v10, &qword_1EB5BB4C8, &unk_1AE24C640);
    v127 = v134;
    v129(&v118[v134], v130);
    sub_1AE1DFC70(v182, v154, &v118[v127]);
    v132(&v118[v127], 0, 1, v133);
  }
}

uint64_t sub_1ADDF36A8()
{
  v1 = v0;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1ADDF5234(0, &v8);
  v7 = v8;
  sub_1ADDF8100(&v7);

  v2 = *(v0 + 16);

  v4 = *(v0 + 24);
  v3 = *(v1 + 32);

  v5 = *(v1 + 40);

  return v1;
}

uint64_t sub_1ADDF3768()
{
  sub_1ADDF36A8();

  return swift_deallocClassInstance();
}

uint64_t CRSequence.isEmpty.getter(uint64_t a1)
{
  if (*v1)
  {
    v3 = sub_1ADDEFD10();
    v4 = qword_1EB5BD4A8;
    swift_beginAccess();
    v5 = *&v3[v4];

    v6 = *(a1 + 16);
    sub_1AE23D11C();
    swift_getWitnessTable();
    v7 = sub_1AE23D4CC();
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1ADDF3860(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a6;
  v55 = a5;
  v56 = a2;
  v14 = type metadata accessor for Timestamp(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a9;
  v21 = type metadata accessor for CROrderedSetElement();
  v50 = *(v21 - 8);
  v51 = v21;
  v22 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v47 - v25;
  v58 = a3;
  v59 = v17;
  v26 = a7;
  if (*a3)
  {
    inited = *a3;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a4);

  v28 = a8;
  v29 = *(*(a8 + 8) + 8);
  v30 = *(v29 + 8);

  v32 = v60;
  v30(v31, v26, v29);
  if (v32)
  {

    return a1;
  }

  v60 = v28;
  v33 = a1;
  v34 = v58[2];
  if (v34)
  {
    v35 = v58[2];
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  if (v34)
  {
    v36 = v58[3];
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v34);
  a1 = sub_1ADDF4A24(v35, v36, a4);
  (*(v59 + 16))(v57, v33, v26);
  v38 = v55;
  result = swift_beginAccess();
  if ((v56 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v39 = *(v38 + 200);
    v40 = v54;
    if (*(v39 + 16) > v56)
    {
      v41 = v39 + 16 * v56;
      v43 = *(v41 + 32);
      v42 = *(v41 + 40);

      sub_1ADE017C0(v43, v42, a4, v40);
      v44 = v49;
      sub_1ADE0C8B4(v57, v40, v26, v49);
      v46 = v50;
      v45 = v51;
      (*(v50 + 16))(v48, v44, v51);
      sub_1AE23D11C();
      sub_1AE23D0CC();

      (*(v46 + 8))(v44, v45);
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADDF3CCC(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1AE23DD7C();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Timestamp(0);
        v9 = sub_1AE23D06C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for Timestamp(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1ADF79ACC(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1ADE0BC88(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1ADDF3E08()
{
  result = sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDF3F24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDF3F78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDF3FD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CRValue<>.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = sub_1AE23D7CC();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = *(a4 + 8);

  v38 = v19;
  v22 = v41;
  v41 = AssociatedTypeWitness;
  v20(v21, AssociatedTypeWitness, a4);
  if (v22)
  {
  }

  v24 = v35;
  v33 = a1;
  v25 = v37;
  (*(v37 + 16))(v16, v38, v41);
  sub_1AE23CF7C();
  v26 = *(a2 - 8);
  if ((*(v26 + 48))(v12, 1, a2) == 1)
  {
    (*(v24 + 8))(v12, v9);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE261D60);
    v27 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v27);

    MEMORY[0x1B26FB670](0x206D6F726620, 0xE600000000000000);
    v28 = v38;
    v29 = v41;
    sub_1AE23DFCC();
    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    v30 = v39;
    v31 = v40;
    sub_1ADE42E40();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
    swift_willThrow();

    return (*(v25 + 8))(v28, v29);
  }

  else
  {
    (*(v25 + 8))(v38, v41);

    return (*(v26 + 32))(v34, v12, a2);
  }
}

uint64_t sub_1ADDF43A0(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    v4 = a2();
  }

  else
  {
    v4 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    *v5 = 0xD000000000000017;
    *(v5 + 8) = 0x80000001AE25FB70;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

void sub_1ADDF4474()
{
  v1 = *(*(v0 + 16) + 72);
  if (v1)
  {
    v2 = *(v1 + 16);
    if ((~v2 & 0xF000000000000007) != 0)
    {
      v3 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
      if (!v3)
      {
LABEL_6:
        v4 = *(v2 + 16);
        return;
      }

      if (v3 == 4)
      {
        v2 &= 0xFFFFFFFFFFFFFFBuLL;
        goto LABEL_6;
      }
    }

    sub_1ADE42E40();
    swift_allocError();
    *v5 = 0xD000000000000015;
    *(v5 + 8) = 0x80000001AE260300;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CRAttributeStringKey.loadAttribute(from:)@<X0>(uint64_t *a1@<X8>)
{
  v11 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = &v10 - v3;
  v5 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v6 = *(v5 + 8);

  v8 = v12;
  result = v6(v7, AssociatedTypeWitness, v5);
  if (!v8)
  {
    swift_getAssociatedConformanceWitness();
    return AnyCRValue.init<A>(_:)(v4, AssociatedTypeWitness, v11);
  }

  return result;
}

uint64_t AnyCRValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRValueBoxHelper();
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_1ADDF4784(v9);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t sub_1ADDF4784(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 200) - 8) + 32))(v5 + *(*v5 + 224), a1);
  return v5;
}

_OWORD *sub_1ADDF4818(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1ADDF1D10(a2);
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
      sub_1ADE1B924();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1ADDEBC08(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1ADDF1D10(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1ADDEE390(a1, v20);
  }

  else
  {
    sub_1ADDF4958(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_1ADDF4958(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1ADDEE390(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1ADDF49C0()
{
  v1 = *v0;
  sub_1AE23E31C();
  (*(*v1 + 88))(v3);
  return sub_1AE23E34C();
}

uint64_t sub_1ADDF4A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v46 = type metadata accessor for Replica();
  v5 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v55 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Timestamp(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = sub_1ADE09898(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v14 = *(a1 + 16);

  v44 = v14;
  if (v14)
  {
    v16 = 0;
    v45 = v12 + 32;
    v42 = a2;
    v43 = a2 + 32;
    v41 = v12;
    while (v16 < *(v12 + 16))
    {
      if (v16 >= *(a2 + 16))
      {
        goto LABEL_35;
      }

      v19 = *(v45 + 8 * v16);
      v20 = *(v47 + 24);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v19 >= v21;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        swift_bridgeObjectRelease_n();

        sub_1ADE42E40();
        swift_allocError();
        *v39 = 0xD000000000000013;
        *(v39 + 8) = 0x80000001AE25FD70;
        *(v39 + 16) = 0;
        swift_willThrow();

        goto LABEL_27;
      }

      v48 = v16;
      v23 = *(v43 + 8 * v16);
      v24 = sub_1AE23BFEC();
      v25 = *(v24 - 8);
      v26 = v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
      v27 = v55;
      (*(v25 + 16))(v55, v26, v24);
      *(v27 + *(v46 + 20)) = 0;
      v51 = *(v23 + 16);
      if (v51)
      {
        v28 = v23 + 32;

        v29 = 0;
        v30 = 0;
        v49 = v23 + 32;
        v50 = v23;
        while (1)
        {
          v31 = *(v23 + 16);
          if (v30 >= v31)
          {
            break;
          }

          v32 = *(v28 + 8 * v30);
          v33 = v29 + v32;
          if (__OFADD__(v29, v32))
          {
            goto LABEL_29;
          }

          if ((v30 | 1) >= v31)
          {
            goto LABEL_30;
          }

          v34 = *(v28 + 8 * (v30 | 1));
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_31;
          }

          if (v35 < v33)
          {
            goto LABEL_32;
          }

          v52 = v33 + v34;
          if (v33 != v35)
          {
            if (v33 >= v35)
            {
              goto LABEL_33;
            }

            do
            {
              sub_1ADDF8030(v55, v11, type metadata accessor for Replica);
              *&v11[*(v7 + 20)] = v33;
              v37 = v13[2];
              v36 = v13[3];
              if (v37 >= v36 >> 1)
              {
                v13 = sub_1ADE09898(v36 > 1, v37 + 1, 1, v13);
              }

              v13[2] = v37 + 1;
              result = sub_1ADDE5F9C(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v37, type metadata accessor for Timestamp);
              ++v33;
              --v34;
            }

            while (v34);
          }

          v30 += 2;
          v23 = v50;
          v28 = v49;
          v29 = v52;
          if (v30 >= v51)
          {

            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

LABEL_4:
      v17 = v48 + 1;
      result = sub_1ADDE5300(v55, type metadata accessor for Replica);
      v16 = v17;
      v18 = v17 == v44;
      v12 = v41;
      a2 = v42;
      if (v18)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_25:

    swift_bridgeObjectRelease_n();
    v38 = v13[2];
    v53 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v54 = v38;
    sub_1ADDF3CCC(sub_1ADF7B924, 0);
LABEL_27:

    return v13;
  }

  return result;
}

uint64_t *sub_1ADDF4E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = qword_1ED96F260;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v10 = sub_1ADE0CA18(a1, a3, a2, *(v8 + 80), *(v8 + 88));
  sub_1AE030800(a1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
  type metadata accessor for CRSequenceStorage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = v10;
  v13 = objc_allocWithZone(ObjCClassFromMetadata);
  v14 = sub_1ADE0A808(v12);
  if (v4)
  {

    v15 = sub_1AE23BFEC();
    (*(*(v15 - 8) + 8))(v3 + v9, v15);
    v16 = *(*v3 + 48);
    v17 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v14;

    *(v3 + qword_1ED96F258) = v18;
  }

  return v3;
}

char *sub_1ADDF5128(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1ADDF5234@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-v7];
  if (a1)
  {
    v9 = *(v2 + 16);
    v10 = qword_1ED967EE8;

    if (v10 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v11 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    sub_1ADDCEE40(v9 + v11, v8, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);
  }

  else
  {
    v12 = type metadata accessor for Replica();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  sub_1ADDCEDE0(v8, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_beginAccess();
  v13 = *(v2 + 32);
  *a2 = MEMORY[0x1E69E7CC8];
  a2[1] = v13;
}

void sub_1ADDF5414()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = *(v2 + 16);
    if ((~v3 & 0xF000000000000007) != 0 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 11)
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      swift_beginAccess();
      v7 = *(v6 + 16);
      swift_beginAccess();
      if (*(v6 + 24))
      {
        inited = *(v6 + 24);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      sub_1ADE0262C(inited, v1);
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v5 = 0xD00000000000001ELL;
      *(v5 + 8) = 0x80000001AE25FDF0;
      *(v5 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADDF5580(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v14 = *(*(a2 + 48) + v13);
      v15 = *(*(a2 + 56) + v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v16 = *(a1 + 48);
      v18[2] = *(a1 + 32);
      v18[3] = v16;
      v19 = *(a1 + 64);
      v17 = *(a1 + 16);
      v18[0] = *a1;
      v18[1] = v17;
      MEMORY[0x1B26FCBD0](v14);
      (*(*v15 + 88))(v18);

      result = sub_1AE23E34C();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1B26FCBD0](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDF5700(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC36C4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1ADEC7BC0(MEMORY[0x1E69695A8], &qword_1EB5BA988, &qword_1AE245638);
      goto LABEL_12;
    }

    sub_1ADDFAD90(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8]);
  v16 = sub_1AE23CBBC();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1ADDE5F54(&qword_1ED96A710, MEMORY[0x1E69695A8]);
      v24 = sub_1AE23CCBC();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

int64_t sub_1ADDF59C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = (a2 + 16);
  if ((*(a2 + 20) & *(a2 + 16)) != 0)
  {
    return sub_1AE035B10(v4, a2 + 32, a2, a3);
  }

  else
  {
    return sub_1ADDFB30C(v4, a2 + 32, a3, a1, sub_1ADDFB3E8);
  }
}

uint64_t sub_1ADDF5A40()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *(v1 + 296);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v9, v4);
  v10 = *(v3 - 8);
  result = (*(v10 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = (*(*(*(v2 + 288) + 16) + 56))(v3);
    (*(v10 + 8))(v8, v3);
    return v12 & 1;
  }

  return result;
}

uint64_t Capsule.version.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v5 = *v4;
    v6 = v4[1];
    *a1 = v5;
    a1[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1ADDF5C7C(uint64_t a1)
{
  v89 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v2 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v4 = v75 - v3;
  v5 = sub_1AE23C0EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1AE23BFEC();
  v10 = *(v88 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C12C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = v75 - v19;
  v20 = type metadata accessor for Replica();
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v76 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v94 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v90 = v75 - v28;
  if (!*(v1[1] + 16))
  {
    v29 = *v1;
    v30 = MEMORY[0x1E69E7CC0];
    v98 = sub_1ADDF69D0(0, *(v29 + 16), 0, MEMORY[0x1E69E7CC0]);
    v97 = sub_1ADDF69E4(0, *(v29 + 16), 0, v30);
    v31 = *(v29 + 64);
    v91 = v29 + 64;
    v32 = 1 << *(v29 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v75[0] = (v32 + 63) >> 6;
    v75[1] = v14 + 16;
    v93 = (v14 + 32);
    v85 = (v10 + 8);
    v86 = (v10 + 16);
    v84 = (v6 + 8);
    v80 = (v14 + 8);
    v79 = v29;

    v35 = 0;
    v36 = v94;
    v92 = v9;
    v82 = v13;
    v81 = v14;
    v99 = v18;
    v37 = v91;
    if (v34)
    {
      while (1)
      {
        v95 = v35;
        v38 = v35;
LABEL_14:
        v96 = (v34 - 1) & v34;
        v41 = __clz(__rbit64(v34)) | (v38 << 6);
        v42 = v79;
        v43 = v76;
        sub_1ADDDE3A0(*(v79 + 48) + *(v77 + 72) * v41, v76, type metadata accessor for Replica);
        v44 = v78;
        (*(v14 + 16))(v78, *(v42 + 56) + *(v14 + 72) * v41, v13);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v46 = *(v45 + 48);
        v47 = v43;
        v36 = v94;
        sub_1ADDDE540(v47, v94, type metadata accessor for Replica);
        (*(v14 + 32))(v36 + v46, v44, v13);
        (*(*(v45 - 8) + 56))(v36, 0, 1, v45);
        v9 = v92;
LABEL_15:
        v48 = v90;
        sub_1ADDD2198(v36, v90, &qword_1EB5BA458, &qword_1AE251E00);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
        {

          return v98;
        }

        (*v93)(v99, v48 + *(v49 + 48), v13);
        v50 = v87;
        v51 = v88;
        (*v86)(v87, v48, v88);
        sub_1ADDE4FF8(v48, type metadata accessor for Replica);
        v52 = sub_1ADDF66A8(v50);
        (*v85)(v50, v51);
        v53 = v98;
        v55 = *(v98 + 2);
        v54 = *(v98 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1ADDF69D0((v54 > 1), v55 + 1, 1, v98);
        }

        *(v53 + 2) = v55 + 1;
        v98 = v53;
        *&v53[8 * v55 + 32] = v52;
        sub_1AE23C10C();
        sub_1ADDDF604(&qword_1ED96A708, MEMORY[0x1E6969B30]);
        sub_1AE23D41C();
        sub_1AE23D46C();
        v56 = sub_1AE23D45C();
        v57 = *v84;
        result = (*v84)(v9, v5);
        if (v56 + 0x4000000000000000 < 0)
        {
          goto LABEL_38;
        }

        v58 = sub_1ADDF56EC(0, (2 * v56) & ~((2 * v56) >> 63), 0, MEMORY[0x1E69E7CC0]);
        sub_1AE23C10C();
        sub_1AE23C0DC();
        v57(v9, v5);
        v59 = *(v83 + 36);
        sub_1AE23D46C();
        if (*&v4[v59] != v100[0])
        {
          break;
        }

LABEL_20:
        sub_1ADDCEDE0(v4, &qword_1EB5BA440, &unk_1AE24CCB0);
        v60 = v97;
        v62 = *(v97 + 2);
        v61 = *(v97 + 3);
        if (v62 >= v61 >> 1)
        {
          v60 = sub_1ADDF69E4((v61 > 1), v62 + 1, 1, v97);
        }

        v13 = v82;
        v14 = v81;
        v36 = v94;
        result = (*v80)(v99, v82);
        *(v60 + 2) = v62 + 1;
        v97 = v60;
        *&v60[8 * v62 + 32] = v58;
        v9 = v92;
        v35 = v95;
        v34 = v96;
        v37 = v91;
        if (!v96)
        {
          goto LABEL_6;
        }
      }

      v63 = 0;
      while (1)
      {
        v64 = sub_1AE23D51C();
        v66 = *v65;
        v67 = v65[1];
        v64(v100, 0);
        v68 = v5;
        result = sub_1AE23D47C();
        v69 = v66 - v63;
        if (__OFSUB__(v66, v63))
        {
          break;
        }

        v71 = *(v58 + 2);
        v70 = *(v58 + 3);
        v72 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          result = sub_1ADDF56EC((v70 > 1), v71 + 1, 1, v58);
          v58 = result;
        }

        *(v58 + 2) = v72;
        *&v58[8 * v71 + 32] = v69;
        if (__OFSUB__(v67, v66))
        {
          goto LABEL_36;
        }

        v73 = *(v58 + 3);
        if ((v71 + 2) > (v73 >> 1))
        {
          v58 = sub_1ADDF56EC((v73 > 1), v71 + 2, 1, v58);
        }

        *(v58 + 2) = v71 + 2;
        *&v58[8 * v72 + 32] = v67 - v66;
        v5 = v68;
        sub_1AE23D46C();
        v63 = v67;
        if (*&v4[v59] == v100[0])
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
LABEL_6:
      if (v75[0] <= v35 + 1)
      {
        v39 = v35 + 1;
      }

      else
      {
        v39 = v75[0];
      }

      v40 = v39 - 1;
      while (1)
      {
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v38 >= v75[0])
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          (*(*(v74 - 8) + 56))(v36, 1, 1, v74);
          v95 = v40;
          v96 = 0;
          goto LABEL_15;
        }

        v34 = *(v37 + 8 * v38);
        ++v35;
        if (v34)
        {
          v95 = v38;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADDF66A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 48);
  if (*(v9 + 16))
  {

    v10 = sub_1ADDDF300(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      if ((v12 & 0x8000000000000000) == 0)
      {
        return v12;
      }

      __break(1u);
    }
  }

  v12 = *(*(v2 + 40) + 16);
  swift_beginAccess();
  v13 = *(v2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + 48);
  *(v2 + 48) = 0x8000000000000000;
  sub_1ADDFC5B0(v12, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 48) = v21;
  swift_endAccess();
  (*(v5 + 16))(v8, a1, v4);
  v15 = *(v2 + 40);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v15;
  if ((v16 & 1) == 0)
  {
    v15 = sub_1ADDE4ECC(0, v15[2] + 1, 1, v15);
    *(v2 + 40) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1ADDE4ECC(v17 > 1, v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v8, v4);
  *(v2 + 40) = v15;
  return v12;
}

char *sub_1ADDF68D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1ADDF69E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA240, &qword_1AE241C08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1ADDF6AF0()
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0[5] + 16);
  if (v6)
  {
    if (!(v6 >> 59))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  swift_beginAccess();
  if (!*(v0[10] + 16))
  {
    swift_beginAccess();
    if (!*(v0[7] + 16))
    {
      v8 = 0;
      goto LABEL_12;
    }
  }

LABEL_6:
  v8 = sub_1ADDF6E48(16 * v6);
  v43 = v8;
  v44 = v7;
  v9 = v0[5];
  v10 = *(v9 + 16);
  if (v10)
  {
    v32[1] = v0[5];
    v33 = v0;
    v13 = *(v2 + 16);
    v11 = v2 + 16;
    v12 = v13;
    v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);

    do
    {
      v12(v5, v14, v1);
      v34 = sub_1AE23BFCC();
      v35 = v16;
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v39 = v20;
      v40 = v21;
      v41 = v22;
      v42 = v23;
      sub_1AE23BFCC();
      v24 = sub_1AE23BBCC();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_1AE23BB6C();
      sub_1AE23BEEC();

      (*(v11 - 8))(v5, v1);
      v14 += v15;
      --v10;
    }

    while (v10);

    v8 = v43;
    v27 = v44;
    v0 = v33;
  }

  else
  {
    v27 = v7;
  }

  sub_1ADDCC35C(0, 0xC000000000000000);
  swift_beginAccess();
  v28 = v0[10];

  swift_beginAccess();
  v29 = v0[7];

  sub_1ADDD86D8(v8, v27);

  sub_1ADDCC35C(v8, v27);

LABEL_12:
  v30 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1ADDF6E48(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_1AE23BBCC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1AE23BBBC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AE23BE2C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADDF6EEC()
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1ED96F2F8 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1ADDF7124;
  *(v3 + 24) = v2;
  v9[4] = sub_1ADE43164;
  v9[5] = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1ADDF70CC;
  v9[3] = &block_descriptor_88;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDF707C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADDF70F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1ADDF712C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase);
  v1 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + 40);
  swift_unknownObjectRetain();
  v4(ObjectType, v1);

  return swift_unknownObjectRelease();
}

void sub_1ADDF71B4()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    swift_beginAccess();
    if (*(*(v0 + 128) + 16) || *(v0 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) == 1)
    {

      sub_1ADDF7390(0, v0, v0);
    }
  }
}

const char *sub_1ADDF7390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ADDD1E30();
  if (v3)
  {
  }

  v8 = v7;
  v9 = sqlite3_step(v7);
  if (v9 == 5)
  {
    sub_1ADE47024();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    v18 = 5;
LABEL_11:
    *(v17 + 16) = v18;
    swift_willThrow();
    v22 = v8;
LABEL_12:
    sqlite3_finalize(v22);
  }

  if (v9 != 101)
  {
    result = sqlite3_errmsg(*(a2 + 32));
    if (!result)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v19 = sub_1AE23CDEC();
    v21 = v20;
    sub_1ADE47024();
    swift_allocError();
    *v17 = v19;
    *(v17 + 8) = v21;
    v18 = 2;
    goto LABEL_11;
  }

  sqlite3_finalize(v8);
  if (a1)
  {
    v10 = *(a2 + 32);
    v11 = *(a1 + 16);

    if (sqlite3_snapshot_open(v10, "main", v11))
    {
      result = sqlite3_errmsg(*(a2 + 32));
      if (result)
      {
        v13 = sub_1AE23CDEC();
        v15 = v14;
        sub_1ADE47024();
        swift_allocError();
        *v16 = v13;
        *(v16 + 8) = v15;
        *(v16 + 16) = 4;
        swift_willThrow();
      }

      goto LABEL_28;
    }
  }

  sub_1ADDFA6D8(a3);
  v23 = sub_1ADDD1E30();
  v24 = sqlite3_step(v23);
  if (v24 == 5)
  {
    sub_1ADE47024();
    v26 = swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    v27 = 5;
    goto LABEL_21;
  }

  if (v24 == 101)
  {
    v22 = v23;
    goto LABEL_12;
  }

  result = sqlite3_errmsg(*(a2 + 32));
  if (result)
  {
    v28 = sub_1AE23CDEC();
    v30 = v29;
    sub_1ADE47024();
    v26 = swift_allocError();
    *v25 = v28;
    *(v25 + 8) = v30;
    v27 = 2;
LABEL_21:
    *(v25 + 16) = v27;
    swift_willThrow();
    sqlite3_finalize(v23);
    v31 = sub_1ADDD1E30();
    v32 = sqlite3_step(v31);
    if (v32 == 5)
    {
      sub_1ADE47024();
      swift_allocError();
      *v33 = 0;
      *(v33 + 8) = 0;
      *(v33 + 16) = 5;
      swift_willThrow();
      sqlite3_finalize(v31);
    }

    if (v32 == 101)
    {
      sqlite3_finalize(v31);
      swift_willThrow();
    }

    result = sqlite3_errmsg(*(a2 + 32));
    if (result)
    {
      v34 = sub_1AE23CDEC();
      v36 = v35;
      sub_1ADE47024();
      swift_allocError();
      *v37 = v34;
      *(v37 + 8) = v36;
      *(v37 + 16) = 2;
      swift_willThrow();
      sqlite3_finalize(v31);
    }

    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1ADDF7744(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v58 = a3;
  v56 = a2;
  v67 = a1;
  v65 = a4;
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v60 = a6;
  v61 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = sub_1AE23D7CC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v55 - v19;
  v21 = *(a5 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v27 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v55 - v28;
  v69 = sub_1AE23C9DC();
  (*(v21 + 16))(v25, v67, a5);
  sub_1AE23CE7C();
  v57 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = v29;
  v67 = AssociatedTypeWitness;
  v64 = AssociatedConformanceWitness;
  sub_1AE23D80C();
  v31 = v61;
  v62 = *(v61 + 48);
  v63 = v61 + 48;
  if (v62(v20, 1, v9) != 1)
  {
    v61 = *(v31 + 32);
    v35 = (v31 + 8);
    (v61)(v16, v20, v9);
    while (1)
    {
      v36 = *(v65 + 24);
      v37 = *(v65 + 32);
      v38 = type metadata accessor for CRSet();
      v39 = v7;
      v40 = CRSet.insert(_:)(v13, v16, v38);
      v41 = *v35;
      (*v35)(v13, v9);
      if (v40)
      {
        (*(v31 + 16))(v13, v16, v9);
        sub_1AE23D11C();
        sub_1AE23D0CC();
      }

      v41(v16, v9);
      sub_1AE23D80C();
      v7 = v39;
      if (v62(v20, 1, v9) == 1)
      {
        break;
      }

      (v61)(v16, v20, v9);
    }
  }

  (*(v59 + 8))(v66, v67);
  v32 = v69;
  v68 = v69;
  v33 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  if ((sub_1AE23D4CC() & 1) == 0)
  {
    v42 = v65;
    sub_1ADE10650(v65);
    v43 = *(v42 + 24);
    v44 = *(v42 + 32);
    v45 = type metadata accessor for CROrderedSetElement();
    v67 = type metadata accessor for CRSequence();
    v46 = sub_1ADE108AC(v67);
    v68 = v32;
    MEMORY[0x1EEE9AC00](v46);
    *(&v55 - 6) = v9;
    *(&v55 - 5) = v57;
    *(&v55 - 4) = v43;
    v47 = v60;
    *(&v55 - 3) = v44;
    *(&v55 - 2) = v47;
    *(&v55 - 1) = v7;

    v49 = sub_1ADE08EB0(sub_1ADE1094C, (&v55 - 8), v33, v45, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v48);
    swift_bridgeObjectRelease_n();
    v68 = v49;
    if (v58)
    {
      v50 = sub_1AE23D11C();
      v51 = swift_getWitnessTable();
      CRSequence.append<A>(contentsOf:)(&v68, v67, v50, v51);
    }

    else
    {
      v52 = sub_1AE23D11C();
      v53 = swift_getWitnessTable();
      CRSequence.insert<A>(contentsOf:at:)(&v68, v56, v67, v52, v53);
    }
  }
}

uint64_t sub_1ADDF7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C88C();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23C8CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 8);
  if (*(v18 + 16))
  {
    v19 = *(v4 + 40);
    v23 = result;
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v4;
    aBlock[4] = a3;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = a4;
    v21 = _Block_copy(aBlock);

    sub_1AE23C8AC();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1ADE89268(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v17, v11, v21);
    _Block_release(v21);
    (*(v24 + 8))(v11, v8);
    (*(v13 + 8))(v17, v23);
  }

  return result;
}

uint64_t sub_1ADDF7FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDF8030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDF8098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDF8128()
{
  v1 = v0;
  v2 = *(v0 + 32);
  result = swift_isUniquelyReferenced_native();
  if ((result & 1) == 0)
  {
    v4 = *(v0 + 32);
    if (v4)
    {
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      v5 = v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
      swift_beginAccess();
      v6 = *(v5 + 8);
      v15[0] = MEMORY[0x1E69E7CC8];
      v15[1] = v6;

      sub_1ADDE1CB8(v15);

      v7 = *(v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
      v8 = qword_1ED967EE8;

      if (v8 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1ED96F1F8);
      v9 = sub_1AE1FEFC0(&dword_1ED96F1F8, v7);
      os_unfair_lock_unlock(&dword_1ED96F1F8);

      v10 = type metadata accessor for CapsuleRef();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();

      v14 = sub_1ADDE1CF0(v13, v9);

      *(v1 + 32) = v14;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*Capsule.Ref.root.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1B0uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[49] = v1;
  v6 = *(*v1 + 80);
  v4[50] = v6;
  v7 = *(v6 - 8);
  v4[51] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  *(v5 + 416) = v9;
  v10 = v1[4];
  swift_beginAccess();
  v11 = v1[2];
  v12 = v1[3];
  v13 = v10 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v14 = (v13 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20));
  ++v14[2];
  sub_1AE23E31C();

  sub_1ADDD86D8(v11, v12);
  sub_1AE23BECC();
  v15 = sub_1AE23E34C();
  v16 = *v14;
  swift_beginAccess();
  v17 = *(v16 + 16) != 0;
  *v5 = v11;
  *(v5 + 8) = v12;
  sub_1ADDD86D8(v11, v12);
  sub_1ADDDC21C(0, 0, 0);
  *(v5 + 16) = 0u;
  v18 = (v5 + 16);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = v15;
  *(v5 + 72) = 0;
  *(v5 + 80) = v16;
  *(v5 + 88) = 0;
  *(v5 + 92) = 0;
  *(v5 + 93) = v17;
  *(v5 + 94) = 0;
  result = sub_1ADDDD688(v5);
  if (!*(v5 + 32))
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = *v18;
  if (!*v18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v21 = *v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = (*(*v20 + 168))();

    *v18 = v22;
    v20 = v22;
  }

  v23 = type metadata accessor for CRDTBox();
  *(v5 + 424) = v23;
  *(v5 + 216) = v23;
  *(v5 + 224) = &off_1F23C9908;
  *(v5 + 192) = v20;

  sub_1ADDDD94C(v14, v5);
  v24 = *(v5 + 48);
  *(v5 + 128) = *(v5 + 32);
  *(v5 + 144) = v24;
  *(v5 + 160) = *(v5 + 64);
  *(v5 + 175) = *(v5 + 79);
  v25 = *(v5 + 16);
  *(v5 + 96) = *v5;
  *(v5 + 112) = v25;
  sub_1ADDCEDE0(v5 + 96, &qword_1EB5BA960, &qword_1AE2455E0);
  swift_endAccess();

  v26 = sub_1ADDCC35C(v11, v12);
  (*(*v20 + 248))(v26);
  swift_dynamicCast();
  return sub_1ADDE11A8;
}

uint64_t sub_1ADDF8600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADDF8654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1ADDF86A0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v7 = v6;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1ADDDF300(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  result = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 >= result && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v23 >= result && (a3 & 1) == 0)
  {
    result = v29();
    goto LABEL_9;
  }

  v30();
  v24 = *v7;
  result = sub_1ADDDF300(a2);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v18 = result;
LABEL_9:
  v26 = a1;
  v27 = *v7;
  if (v22)
  {
    *(*(v27 + 56) + 8 * v18) = v26;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    return v31(v18, v15, v26, v27);
  }

  return result;
}

Swift::Bool __swiftcall CRSequence.needToFinalizeTimestamps()()
{
  if (*v0)
  {
    return sub_1AE167078() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADDF8898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v156 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v166 = &v156 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v156 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v170 = &v156 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v177 = &v156 - v18;
  v206 = type metadata accessor for FinalizedTimestamp(0);
  v19 = *(v206 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v195 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v203 = *(v201 - 8);
  v22 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v24 = &v156 - v23;
  v200 = sub_1AE23C12C();
  v25 = *(v200 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v200);
  v159 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v165 = &v156 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v164 = &v156 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v182 = &v156 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v156 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v198 = &v156 - v38;
  v163 = type metadata accessor for Replica();
  v176 = *(v163 - 8);
  v39 = *(v176 + 64);
  v40 = MEMORY[0x1EEE9AC00](v163);
  v42 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v183 = &v156 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v199 = &v156 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v175 = &v156 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v52 = &v156 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v156 - v53;
  v180 = v4;
  v55 = v4[1];
  v194 = v4 + 1;
  v56 = *(v55 + 64);
  v169 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v184 = v58 & v56;
  v158 = (v57 + 63) >> 6;
  v193 = v25 + 16;
  v185 = (v25 + 32);
  v192 = (v19 + 48);
  v197 = (v25 + 8);
  v167 = (v25 + 56);
  v188 = v25;
  v161 = (v25 + 48);
  v59 = v54;
  v191 = (v19 + 56);
  v168 = v55;

  v60 = 0;
  v172 = v52;
  v171 = v59;
  v157 = a3;
  v187 = v37;
  v162 = v42;
  v179 = v24;
LABEL_6:
  v61 = v184;
  if (v184)
  {
    v62 = v60;
    goto LABEL_16;
  }

  if (v158 <= v60 + 1)
  {
    v63 = v60 + 1;
  }

  else
  {
    v63 = v158;
  }

  v64 = v63 - 1;
  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= v158)
    {
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v151 - 8) + 56))(v52, 1, 1, v151);
      v184 = 0;
      v60 = v64;
      goto LABEL_17;
    }

    v61 = *(v169 + 8 * v62);
    ++v60;
    if (v61)
    {
      v60 = v62;
LABEL_16:
      v184 = (v61 - 1) & v61;
      v65 = __clz(__rbit64(v61)) | (v62 << 6);
      v66 = v168;
      v67 = v175;
      sub_1ADDDE3A0(*(v168 + 48) + *(v176 + 72) * v65, v175, type metadata accessor for Replica);
      v68 = v188;
      v69 = v198;
      v70 = v200;
      (*(v188 + 16))(v198, *(v66 + 56) + *(v188 + 72) * v65, v200);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v72 = *(v71 + 48);
      v73 = v67;
      v52 = v172;
      sub_1ADDDE540(v73, v172, type metadata accessor for Replica);
      (*(v68 + 32))(&v52[v72], v69, v70);
      (*(*(v71 - 8) + 56))(v52, 0, 1, v71);
      v59 = v171;
LABEL_17:
      sub_1ADDD2198(v52, v59, &qword_1EB5BA458, &qword_1AE251E00);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      if ((*(*(v74 - 8) + 48))(v59, 1, v74) == 1)
      {
      }

      v75 = *(v74 + 48);
      v76 = v199;
      sub_1ADDDE540(v59, v199, type metadata accessor for Replica);
      if (*(a3 + 16) && (v77 = sub_1ADDD8A6C(v76), (v78 & 1) != 0))
      {
        v160 = v75;
        sub_1ADDE56CC(*(a3 + 56) + 24 * v77, &v207);
        sub_1ADDE5634(&v207, &v208);
        v205 = v208;
        v79 = v170;
        v80 = v177;
        v204 = *(v208 + 16);
        v81 = v179;
        if (v204)
        {
          v82 = 0;
          v202 = v205 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
          while (1)
          {
            if (v82 >= *(v205 + 16))
            {
              goto LABEL_61;
            }

            sub_1ADDCEE40(v202 + *(v203 + 72) * v82, v81, &qword_1EB5BA148, &qword_1AE241B60);
            sub_1ADDCEE40(v81 + *(v201 + 36), v79, &qword_1EB5BA450, &unk_1AE25B3B0);
            v83 = type metadata accessor for RetainedMapRun(0);
            if ((*(*(v83 - 8) + 48))(v79, 1, v83) == 1)
            {
              break;
            }

            sub_1ADDCEE40(v79, v80, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADDE4FF8(v79, type metadata accessor for RetainedMapRun);
            if ((*v192)(v80, 1, v206) == 1)
            {
              sub_1ADDCEDE0(v81, &qword_1EB5BA148, &qword_1AE241B60);
              goto LABEL_23;
            }

            sub_1ADDDE540(v80, v195, type metadata accessor for FinalizedTimestamp);
            v85 = *v81;
            v84 = v81[1];
            v86 = v187;
            sub_1AE23C00C();
            v87 = *v194;
            if (!*(*v194 + 16))
            {
              goto LABEL_62;
            }

            v88 = sub_1ADDD8A6C(v199);
            if ((v89 & 1) == 0)
            {
              goto LABEL_63;
            }

            v186 = v85;
            v90 = *(v87 + 56);
            v91 = v86;
            v92 = v188;
            v196 = *(v188 + 72);
            v93 = *(v188 + 16);
            v94 = v198;
            v95 = v200;
            v93(v198, v90 + v196 * v88, v200);
            sub_1AE23C02C();
            v96 = *(v92 + 8);
            v96(v94, v95);
            if (sub_1AE23C04C() < 1)
            {
              v96(v91, v95);
              sub_1ADDE4FF8(v195, type metadata accessor for FinalizedTimestamp);
              v81 = v179;
              sub_1ADDCEDE0(v179, &qword_1EB5BA148, &qword_1AE241B60);
              v80 = v177;
            }

            else
            {
              v189 = v96;
              v190 = v93;
              v93(v182, v91, v95);
              v97 = v194;
              v98 = *v194;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v100 = v183;
              sub_1ADDDE3A0(v199, v183, type metadata accessor for Replica);
              v101 = *v97;
              v207 = v101;
              v103 = sub_1ADDD8A6C(v100);
              v104 = v101[2];
              v105 = (v102 & 1) == 0;
              v106 = v104 + v105;
              if (__OFADD__(v104, v105))
              {
                goto LABEL_64;
              }

              v107 = v102;
              if (v101[3] >= v106)
              {
                v110 = v190;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1ADDFB81C();
                }
              }

              else
              {
                sub_1ADDDDED0(v106, isUniquelyReferenced_nonNull_native);
                v108 = sub_1ADDD8A6C(v183);
                v110 = v190;
                if ((v107 & 1) != (v109 & 1))
                {
                  goto LABEL_70;
                }

                v103 = v108;
              }

              if ((v107 & 1) == 0)
              {
                goto LABEL_69;
              }

              v178 = v207;
              v111 = v207[7];
              v112 = *v185;
              v173 = v103 * v196;
              v113 = v181;
              v114 = v200;
              v174 = v112;
              v112(v181, v111 + v103 * v196, v200);
              (*v167)(v113, 0, 1, v114);
              v110(v164, v113, v114);
              v115 = v182;
              v110(v165, v182, v114);
              sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50]);
              v116 = v198;
              sub_1AE23D8AC();
              sub_1AE23D89C();
              v117 = v189;
              v189(v116, v114);
              v117(v115, v114);
              v118 = v113;
              v119 = v166;
              sub_1ADDCEE40(v118, v166, &qword_1EB5BB780, &qword_1AE24CD18);
              if ((*v161)(v119, 1, v114) == 1)
              {
                sub_1ADDCEDE0(v119, &qword_1EB5BB780, &qword_1AE24CD18);
                v120 = v178;
                sub_1ADDE4FF8(*(v178 + 48) + *(v176 + 72) * v103, type metadata accessor for Replica);
                sub_1ADDF9CEC(v103, v120);
              }

              else
              {
                v121 = v159;
                v122 = v174;
                v174(v159, v119, v114);
                v120 = v178;
                v122(*(v178 + 56) + v173, v121, v114);
              }

              v123 = v187;
              v124 = v162;
              v81 = v179;
              sub_1ADDE4FF8(v183, type metadata accessor for Replica);
              sub_1ADDCEDE0(v181, &qword_1EB5BB780, &qword_1AE24CD18);
              v125 = v120;
              *v194 = v120;
              v126 = sub_1AE23BFEC();
              v127 = v195;
              (*(*(v126 - 8) + 16))(v124, v195, v126);
              *(v124 + *(v163 + 20)) = 0;
              if (__OFSUB__(*(v127 + *(v206 + 20)), v186))
              {
                goto LABEL_65;
              }

              sub_1AE23C05C();
              v128 = v180;
              v129 = *v180;
              v130 = swift_isUniquelyReferenced_nonNull_native();
              v207 = *v128;
              v131 = v207;
              v133 = sub_1ADDD8A6C(v124);
              v134 = v131[2];
              v135 = (v132 & 1) == 0;
              v136 = v134 + v135;
              if (__OFADD__(v134, v135))
              {
                goto LABEL_66;
              }

              v137 = v132;
              if (v131[3] >= v136)
              {
                if ((v130 & 1) == 0)
                {
                  sub_1ADDFB81C();
                  v131 = v207;
                }
              }

              else
              {
                sub_1ADDDDED0(v136, v130);
                v131 = v207;
                v138 = sub_1ADDD8A6C(v124);
                if ((v137 & 1) != (v139 & 1))
                {
                  goto LABEL_70;
                }

                v133 = v138;
              }

              *v180 = v131;
              v140 = v123;
              if ((v137 & 1) == 0)
              {
                v141 = v198;
                sub_1AE23C11C();
                v142 = v175;
                sub_1ADDDE3A0(v124, v175, type metadata accessor for Replica);
                v143 = v142;
                v123 = v140;
                sub_1ADDDE678(v133, v143, v141, v131);
              }

              v144 = v131[7] + v133 * v196;
              sub_1AE23C0FC();
              if (!*(v125 + 16))
              {
                goto LABEL_67;
              }

              v145 = sub_1ADDD8A6C(v199);
              if ((v146 & 1) == 0)
              {
                goto LABEL_68;
              }

              v147 = v198;
              v148 = v200;
              v190(v198, *(v125 + 56) + v145 * v196, v200);
              v149 = sub_1AE23C04C();
              v150 = v189;
              v189(v147, v148);
              if (!v149)
              {
                v152 = v156;
                v153 = v199;
                sub_1ADDFBB4C(v199, v156);
                sub_1ADDCEDE0(v152, &qword_1EB5BB780, &qword_1AE24CD18);
                sub_1ADDE4FF8(v124, type metadata accessor for Replica);
                v150(v140, v148);
                sub_1ADDE4FF8(v195, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v81, &qword_1EB5BA148, &qword_1AE241B60);
                sub_1ADDE4FF8(v153, type metadata accessor for Replica);
                sub_1ADDE5C20(&v208);
                v154 = v171;
                v150((v171 + v160), v148);
                a3 = v157;
                v59 = v154;
                v52 = v172;
                goto LABEL_6;
              }

              sub_1ADDE4FF8(v124, type metadata accessor for Replica);
              v150(v123, v148);
              sub_1ADDE4FF8(v195, type metadata accessor for FinalizedTimestamp);
              sub_1ADDCEDE0(v81, &qword_1EB5BA148, &qword_1AE241B60);
              v79 = v170;
              v80 = v177;
            }

LABEL_24:
            if (v204 == ++v82)
            {
              goto LABEL_56;
            }
          }

          sub_1ADDCEDE0(v81, &qword_1EB5BA148, &qword_1AE241B60);
          sub_1ADDCEDE0(v79, &qword_1EB5BA450, &unk_1AE25B3B0);
          (*v191)(v80, 1, 1, v206);
LABEL_23:
          sub_1ADDCEDE0(v80, &qword_1EB5BA460, &qword_1AE251020);
          goto LABEL_24;
        }

LABEL_56:
        sub_1ADDE4FF8(v199, type metadata accessor for Replica);
        sub_1ADDE5C20(&v208);
        a3 = v157;
        v52 = v172;
        v59 = v171;
        v75 = v160;
      }

      else
      {
        sub_1ADDE4FF8(v76, type metadata accessor for Replica);
      }

      (*v197)(v59 + v75, v200);
      goto LABEL_6;
    }
  }

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
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  (*v167)(v181, 1, 1, v200);
  __break(1u);
LABEL_70:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

unint64_t sub_1ADDF9CEC(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for Replica();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_1AE23D8FC() + 1) & ~v10;
    v14 = *(v4 + 72);
    while (1)
    {
      v15 = v14 * v11;
      sub_1ADDDE3A0(*(a2 + 48) + v14 * v11, v8, type metadata accessor for Replica);
      v16 = *(a2 + 40);
      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v8[*(v28 + 20)]);
      v17 = sub_1AE23E34C();
      result = sub_1ADDE4FF8(v8, type metadata accessor for Replica);
      v18 = v17 & v12;
      if (a1 >= v13)
      {
        break;
      }

      if (v18 < v13)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v14 * a1 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(a2 + 56);
      v20 = *(*(sub_1AE23C12C() - 8) + 72);
      v21 = v20 * a1;
      result = v19 + v20 * a1;
      v22 = v20 * v11;
      v23 = v19 + v20 * v11 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v11;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v11;
LABEL_5:
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v18 < v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_22:
  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1ADDF9FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int8x8_t *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>, int8x8_t a8@<D0>)
{
  v15 = a5 + 4;
  v16 = sub_1ADDE147C(a1, a2, a3, a4, &a5[2], &a5[4], a8);
  if (v16 == 2)
  {
    *(a7 + 32) = 0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 40) = -256;
  }

  else
  {
    v17 = HIDWORD(v16);
    if (v16)
    {
      v30 = a4 >> a1;
      v18 = &v15[2 * v17];
      v19 = *v18;
      v20 = v18[1];

      sub_1ADDF9FB0(&v34, (a1 + 5), a2, a3, a4, *&v19, *&v20);

      v21 = v34;
      v22 = v36;
      v23 = v37;
      if (HIBYTE(v37) <= 0xFEu)
      {
        v27 = v36;
        v28 = v35;
        v29 = HIBYTE(v37);
        sub_1AE03CA70(v34, *(&v34 + 1), v35, v36, *(&v36 + 1), v37, sub_1ADDD86D8, sub_1ADDFA4B4);
        sub_1ADDD86D8(v21, *(&v21 + 1));
        sub_1ADDFA4B4(v22, *(&v22 + 1), v23, v29);
        sub_1AE037DC4(a1, v30 & 0x1F, v17, v27, *(&v22 + 1), v23, a5, v31, a6);
        sub_1AE03CA70(v21, *(&v21 + 1), v28, v27, *(&v22 + 1), v23, sub_1ADDCC35C, sub_1ADDFC318);
        sub_1ADDCC35C(v21, *(&v21 + 1));
        *a7 = v21;
        v26 = v33;
        *(a7 + 16) = v31[0];
        *(a7 + 24) = v32;
        *(a7 + 40) = v26;
        sub_1ADDFC318(v27, *(&v22 + 1), v23, v29);
      }

      else
      {
        v24 = v35;
        sub_1AE03CA70(v34, *(&v34 + 1), v35, v36, *(&v36 + 1), v37, sub_1ADDCC35C, sub_1ADDFC318);
        *a7 = v21;
        *(a7 + 16) = v24;
        *(a7 + 24) = v22;
        *(a7 + 40) = v23;
      }
    }

    else
    {
      sub_1ADDFC010(a5 + 2, v15, HIDWORD(v16), a1, a5, a6, (a4 >> a1) & 0x1F, &v34);
      *a7 = v34;
      v25 = v37;
      *(a7 + 16) = v35;
      *(a7 + 24) = v36;
      *(a7 + 40) = v25;
    }
  }
}

int64_t sub_1ADDFA270(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = vpaddl_u16(vpaddl_u8(vcnt_s8(*a1)));
  v8 = v7.u32[0];
  v9 = v7.u32[1];
  v10 = 16 * (v7.u32[1] + v7.u32[0]);
  v11 = sub_1ADDDB860(v10 + a4);
  *(v11 + 16) = v6;
  v12 = *(v11 + 24);
  *(v11 + 28) -= v10;
  sub_1ADDFA388(v13, v11 + 32, v9, v11 + 32 - 16 * v8 + v12, v8, a1, a2);
  return v11;
}

int64_t sub_1ADDFA324(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = (a2 + 16);
  if ((*(a2 + 20) & *(a2 + 16)) != 0)
  {
    return sub_1AE035A4C(v4, a2 + 32, a2, a3);
  }

  else
  {
    return sub_1ADDFA270(v4, a2 + 32, a3, a1);
  }
}

uint64_t sub_1ADDFA388(int8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int32 *a6, uint64_t a7)
{
  v8 = *a6;
  v9 = a6[1];
  if (*a6 == v9)
  {
    v9 = *a6;
  }

  else if (v9)
  {
    a1.i32[0] = a6[1];
    v10 = vcnt_s8(a1);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > a3)
    {
      goto LABEL_16;
    }

    v11 = a6;
    v12 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
    result = swift_arrayInitWithCopy();
    a5 = v12;
    a6 = v11;
    v8 = *v11;
    v9 = v11[1];
  }

  a1.i32[0] = v8;
  v14 = vcnt_s8(a1);
  v14.i16[0] = vaddlv_u8(v14);
  if (v8 == v9)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14.u32[0];
  }

  if (v15)
  {
    if (v15 <= a5)
    {
      v16 = a7 + a6[2] - 16 * v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);

      return swift_arrayInitWithCopy();
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDFA4B4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  if (!a4)
  {
    return sub_1ADDD86D8(a1, a2);
  }

  return a1;
}

Swift::Bool __swiftcall CROrderedSet.needToFinalizeTimestamps()()
{
  v2 = v1;
  v9 = v1[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  type metadata accessor for CRSet();

  v6 = CRSet.needToFinalizeTimestamps()();

  if (v6)
  {
    return 1;
  }

  else
  {
    v10 = *v2;
    type metadata accessor for CROrderedSetElement();
    type metadata accessor for CRSequence();

    v7 = CRSequence.needToFinalizeTimestamps()();
  }

  return v7;
}

double sub_1ADDFA5BC@<D0>(char a1@<W0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = BYTE1(a4);
  v12 = *v5;

  if ((v11 - 1) < 2)
  {
    *v5 = a2;
    v5[1] = a3;
    sub_1ADDFA4B4(a2, a3, a4, v11);
LABEL_10:
    result = 0.0;
    *a5 = xmmword_1AE2427C0;
    return result;
  }

  if (v11)
  {
    sub_1ADDFA4B4(a2, a3, a4, 3);
    *v5 = *sub_1AE23C1EC();
    v5[1] = 0;

    goto LABEL_10;
  }

  sub_1ADDFA4B4(a2, a3, a4, 0);
  if (!a1)
  {
    *v5 = sub_1AE038790(a2, a3, a4);
    v5[1] = v14;
    goto LABEL_10;
  }

  *v5 = *sub_1AE23C1EC();
  v5[1] = 0;
  *a5 = a2;
  *(a5 + 8) = a3;

  return result;
}

uint64_t sub_1ADDFA6D8(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v56 - v5;
  v64 = sub_1AE23BFEC();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v56 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v56 - v13;
  swift_beginAccess();
  v14 = *(a1 + 128);
  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v59 = v6 + 32;
  v61 = (v6 + 8);
  v62 = (v6 + 16);
  v63 = v14;

  v20 = 0;
  v58 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      v22 = v64;
      v23 = v60;
      (*(v6 + 16))(v60, *(v63 + 48) + *(v6 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v64);
      (*(v6 + 32))(v12, v23, v22);
      v65 = sub_1AE23BFCC();
      v66 = v24;
      v67 = v25;
      v68 = v26;
      v69 = v27;
      v70 = v28;
      v71 = v29;
      v72 = v30;
      v73 = v31;
      sub_1AE23BFCC();
      v32 = sub_1AE23BBCC();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_1AE23BB6C();
      v35 = sub_1AE23BB7C();
      if (v35)
      {
        v36 = sub_1AE23BBAC();
        if (__OFSUB__(0, v36))
        {
          goto LABEL_26;
        }

        v35 -= v36;
      }

      v37 = sub_1AE23BB9C();
      v38 = 16;
      if (v37 < 16)
      {
        v38 = v37;
      }

      v39 = v38 + v35;
      v40 = v35 ? v39 : 0;
      v41 = v35;
      a1 = v58;
      sub_1ADDFAC20(v41, v40, v58, v12);
      if (v1)
      {
        break;
      }

      v18 &= v18 - 1;

      sqlite3_reset(*(a1 + 96));
      (*v61)(v12, v64);
      v20 = v21;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    result = (*v61)(v12, v64);
    goto LABEL_24;
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v42 = *(a1 + 128);
  *(a1 + 128) = MEMORY[0x1E69E7CD0];

  v44 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated;
  if (*(a1 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) != 1)
  {
    goto LABEL_24;
  }

  v45 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  swift_beginAccess();
  v46 = a1 + v45;
  v47 = v57;
  sub_1ADDCEE40(v46, v57, &qword_1EB5BDC68, &unk_1AE253C20);
  v48 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  result = (*(*(v48 - 8) + 48))(v47, 1, v48);
  if (result != 1)
  {
    v49 = a1;
    v50 = v56;
    v51 = v64;
    (*v62)(v56, v47, v64);
    sub_1ADDE5728(v47);
    v52 = sub_1ADDD8E0C();
    v54 = v53;
    (*v61)(v50, v51);

    sub_1AE1A363C(v52, v54, v49);
    result = sub_1ADDCC35C(v52, v54);
    if (!v1)
    {
      result = sqlite3_reset(*(v49 + 112));
      *(v49 + v44) = 0;
    }

LABEL_24:
    v55 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADDFAC20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sqlite3_bind_blob(*(a3 + 96), 1, a1, 16, *(a3 + 72));
  v6 = *(a3 + 96);
  swift_beginAccess();
  v7 = *(a3 + 120);
  if (!*(v7 + 16) || (v8 = sub_1ADDDF300(a4), (v9 & 1) == 0))
  {
    result = swift_endAccess();
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();
  sqlite3_bind_int64(v6, 2, v10);
  result = sqlite3_step(*(a3 + 96));
  if (result == 101)
  {
    return result;
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v12);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024();
  swift_allocError();
  *v13 = 0xD000000000000010;
  *(v13 + 8) = 0x80000001AE262AE0;
  *(v13 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1ADDFAD90(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AE23BFEC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA988, &qword_1AE245638);
  v10 = sub_1AE23D9DC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8]);
      result = sub_1AE23CBBC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

void (*sub_1ADDFB0EC(uint64_t a1))(_OWORD **a1)
{
  v2 = type metadata accessor for PartiallyOrderedReferenceMap();
  v3 = (v1 + *(v2 + 28));
  v4 = *v3;
  v5 = v3[1];
  sub_1AE23C1FC();
  while (1)
  {
    v6 = v25;
    if (v25 >= DWORD1(v25))
    {
      v7 = sub_1AE23C20C();
      if (!v7)
      {
        v22[6] = v30;
        v23[0] = v31[0];
        *(v23 + 11) = *(v31 + 11);
        v22[2] = v26;
        v22[3] = v27;
        v22[4] = v28;
        v22[5] = v29;
        v22[0] = v24;
        v22[1] = v25;
        return sub_1ADDCEDE0(v22, &qword_1EB5BCD40, &unk_1AE251E50);
      }
    }

    else
    {
      v7 = *(&v24 + 1);
      LODWORD(v25) = v25 + 1;
    }

    v8 = v7 + *(v7 + 24) + 16 * ~v6;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v2 + 20);
    sub_1ADDD86D8(v9, v10);
    result = sub_1ADDDD53C(v22, v9, v10);
    v14 = result;
    if (v13[2])
    {
      break;
    }

LABEL_3:
    v14(v22, 0);
    sub_1ADDCC35C(v9, v10);
  }

  v15 = v13;
  if (*v13)
  {
    v16 = *(**v13 + 152);

    LOBYTE(v16) = v16(v17);

    if (v16)
    {
      v18 = *v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = (*(**v15 + 168))();
        v20 = *v15;
        *v15 = v19;
      }

      (*(**v15 + 160))(a1);
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

int64_t sub_1ADDFB30C(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  v7 = vshl_u32(vpaddl_u16(vpaddl_u8(vcnt_s8(*a1))), 0x400000006);
  v8 = (v7.i32[1] + v7.i32[0]);
  v9 = sub_1ADDDAC74(v8 + a4);
  *(v9 + 16) = v6;
  v10 = *(v9 + 24);
  *(v9 + 28) -= v8;
  a5();
  return v9;
}

uint64_t sub_1ADDFB3E8(int8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int32 *a6, uint64_t a7)
{
  v8 = *a6;
  v9 = a6[1];
  if (*a6 == v9)
  {
    v9 = *a6;
  }

  else if (v9)
  {
    a1.i32[0] = a6[1];
    v10 = vcnt_s8(a1);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > a3)
    {
      goto LABEL_16;
    }

    v11 = a6;
    v12 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
    result = swift_arrayInitWithCopy();
    a5 = v12;
    a6 = v11;
    v8 = *v11;
    v9 = v11[1];
  }

  a1.i32[0] = v8;
  v14 = vcnt_s8(a1);
  v14.i16[0] = vaddlv_u8(v14);
  if (v8 == v9)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14.u32[0];
  }

  if (v15)
  {
    if (v15 <= a5)
    {
      v16 = a7 + a6[2] - (v15 << 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);

      return swift_arrayInitWithCopy();
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall CRStruct_1.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v3 + 32))(v2, v3, v7);

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(v2) = (*(*(AssociatedConformanceWitness + 16) + 56))(AssociatedTypeWitness);

  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v2 & 1;
}

uint64_t sub_1ADDFB6C0()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  if (*(v1[4] + 16))
  {
    v3 = 1;
  }

  else
  {
    v4 = swift_beginAccess();
    v10 = v1[5];
    v5 = *(v2 + 80);
    v6 = *(v2 + 104);
    MEMORY[0x1EEE9AC00](v4);
    v7 = *(v2 + 96);
    v9 = *(v2 + 112);
    sub_1AE23CA9C();

    swift_getWitnessTable();
    v3 = sub_1AE23CF4C();
  }

  return v3 & 1;
}

void *sub_1ADDFB81C()
{
  v1 = v0;
  v2 = sub_1AE23C12C();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Replica();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B8, &qword_1AE241898);
  v9 = *v0;
  v10 = sub_1AE23DCBC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v35 = v1;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v13 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v44 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = v9;
    v21 = v39;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = *(v40 + 72) * v25;
        sub_1ADDDE3A0(*(v9 + 48) + v26, v21, type metadata accessor for Replica);
        v28 = v42;
        v27 = v43;
        v29 = *(v43 + 72) * v25;
        v30 = *(v9 + 56) + v29;
        v31 = v41;
        (*(v43 + 16))(v41, v30, v42);
        v32 = v44;
        sub_1ADDDE540(v21, *(v44 + 48) + v26, type metadata accessor for Replica);
        v33 = v31;
        v9 = v38;
        result = (*(v27 + 32))(*(v32 + 56) + v29, v33, v28);
        v19 = v45;
      }

      while (v45);
    }

    v23 = v15;
    v11 = v44;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v24 = *(v13 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v45 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

uint64_t sub_1ADDFBB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1ADDD8A6C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADDFB81C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for Replica();
    sub_1ADDE4FF8(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for Replica);
    v14 = *(v11 + 56);
    v15 = sub_1AE23C12C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1ADDF9CEC(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1AE23C12C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1ADDFBCE8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v33 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = (v3 + v33[7]);
  v6 = *v5;
  v7 = v5[1];
  sub_1AE23C1FC();
  while (1)
  {
    v8 = v44;
    if (v44 < DWORD1(v44))
    {
      v9 = *(&v43 + 1);
      LODWORD(v44) = v44 + 1;
      goto LABEL_7;
    }

    v9 = sub_1AE23C20C();
    if (!v9)
    {
      break;
    }

LABEL_7:
    v10 = v9 + *(v9 + 24) + 16 * ~v8;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);
    v13 = v4 + v33[5];
    sub_1ADDD86D8(v12, v11);
    v14 = sub_1ADDDD53C(&v35, v12, v11);
    if (*(v15 + 16))
    {
      sub_1ADDF8898(a1, a2 & 1, a3);
    }

    (v14)(&v35, 0);
    v16 = *(v13 + 8);
    v17 = *(v13 + 16);
    sub_1ADDDF7A8(v12, v11, *v13, &v35);
    v18 = v36;
    if (!v36)
    {
      sub_1ADDDC21C(v35, *(&v35 + 1), 0);
      goto LABEL_13;
    }

    v19 = v35;
    v20 = *(&v36 + 1);

    sub_1ADDDC21C(v19, *(&v19 + 1), v18);
    v21 = *(v20 + 16);

    if (v21)
    {
LABEL_3:
      sub_1ADDCC35C(v12, v11);
    }

    else
    {
LABEL_13:
      sub_1AE23E31C();
      sub_1AE23BECC();
      v22 = sub_1AE23E34C();
      sub_1ADDE0898(0, v12, v11, v22, &v35);
      v23 = v35;
      v24 = v36;
      if (*(&v35 + 1) >> 60 == 15)
      {
        sub_1ADECD780(v35, *(&v35 + 1), v36, *(&v36 + 1));
        goto LABEL_3;
      }

      ++v5[2];
      sub_1ADDE1588(v24, *(&v24 + 1));
      sub_1ADDCC35C(v12, v11);
      sub_1ADDCC35C(v23, *(&v23 + 1));
    }
  }

  v41 = v49;
  v42[0] = v50[0];
  *(v42 + 11) = *(v50 + 11);
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v35 = v43;
  v36 = v44;
  result = sub_1ADDCEDE0(&v35, &qword_1EB5BCD40, &unk_1AE251E50);
  v26 = *(*(v4 + v33[6]) + 16);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      v28 = sub_1ADDFC350(&v34, i);
      if (*v29)
      {
        sub_1ADDF8898(a1, a2 & 1, a3);
      }

      result = v28(&v34, 0);
    }
  }

  return result;
}

int8x8_t *sub_1ADDFC010@<X0>(int8x8_t *result@<X0>, void *a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = *result;
  v15 = HIDWORD(*result);
  if ((v15 & v14) != 0)
  {
    if (v14 == 2)
    {
      v16 = 1 - a3;
      v17 = a2 + result[1].u32[0];
      v18 = *&v17[16 * ~a3];
      v19 = (*a2 >> a4) & 0x1FLL;
LABEL_4:
      *a8 = v18;
      v54 = *&v17[16 * ~v16];
      *(a8 + 24) = v54;
      *(a8 + 40) = v19;
      *(a8 + 41) = 0;
      *(a8 + 16) = a4;
      sub_1ADDD86D8(v18, *(&v18 + 1));
      v21 = *(&v54 + 1);
      v20 = v54;
      return sub_1ADDD86D8(v20, v21);
    }

    v29 = sub_1ADDFB3E0();
    v30 = sub_1ADDFA324(v29, a5, a6);
    v31 = v30;
    v33 = v32;
    LODWORD(v34) = v30[4];
    v35 = vcnt_s8(v34);
    v35.i16[0] = vaddlv_u8(v35);
    if (v34 == v30[5])
    {
      v34 = v34;
    }

    else
    {
      v34 = v35.u32[0];
    }

    v36 = v30 + v30[6] + -16 * v34;
    v30[7] += 16;
    v37 = 16 * (v34 + ~a3);
    v55 = *(v36 + 32 + v37);
    result = memmove((v36 + 48), (v36 + 32), v37);
    v38 = v31[4];
    if ((v31[5] & v38) != 0)
    {
      v39 = v38 - 1;
      v31[5] = v39;
    }

    else
    {
      v39 = v38 & ((-1 << a7) - 1);
    }

    v31[4] = v39;
    *a8 = v55;
    *(a8 + 24) = v31;
    *(a8 + 32) = v33 - 1;
    v52 = 512;
    goto LABEL_30;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  v22 = vpaddl_u16(vpaddl_u8(vcnt_s8(*result)));
  v23 = vcgt_u32(0x200000002, v22);
  if (v23.i8[0] & 1) != 0 && v15 && (v23.i8[4])
  {
    v24 = *a2;
    if ((*(*a2 + 20) & *(*a2 + 16)) != 0)
    {
      v25 = a2[1];
      v26 = a2 + result[1].u32[0];
      v27 = *(v26 - 2);
      v28 = *(v26 - 1);
      *a8 = v27;
      *(a8 + 8) = v28;
      *(a8 + 24) = v24;
      *(a8 + 32) = v25;
      *(a8 + 40) = 512;
      *(a8 + 16) = a4;

      v20 = v27;
      v21 = v28;
      return sub_1ADDD86D8(v20, v21);
    }

    goto LABEL_21;
  }

  if (v22.i32[0] != 2 || v15 != 0)
  {
LABEL_21:
    v41 = sub_1ADDFB3E0();
    v42 = sub_1ADDFA324(v41, a5, a6);
    v43 = v42;
    v45 = v44;
    LODWORD(v46) = v42[4];
    v47 = vcnt_s8(v46);
    v47.i16[0] = vaddlv_u8(v47);
    if (v46 == v42[5])
    {
      v46 = v46;
    }

    else
    {
      v46 = v47.u32[0];
    }

    v48 = v42 + v42[6] + -16 * v46;
    v42[7] += 16;
    v49 = 16 * (v46 + ~a3);
    v56 = *(v48 + 32 + v49);
    result = memmove((v48 + 48), (v48 + 32), v49);
    v50 = v43[4];
    if ((v43[5] & v50) != 0)
    {
      v51 = v50 - 1;
      v43[5] = v51;
    }

    else
    {
      v51 = v50 & ((-1 << a7) - 1);
    }

    v43[4] = v51;
    *a8 = v56;
    *(a8 + 24) = v43;
    *(a8 + 32) = v45 - 1;
    v52 = 256;
LABEL_30:
    *(a8 + 40) = v52;
    *(a8 + 16) = a4;
    return result;
  }

  v53 = v14 - 1;
  if (a3 == 1)
  {
    v53 = -1;
  }

  LODWORD(v19) = v53 & v14;
  if (v19)
  {
    v16 = 1 - a3;
    v17 = a2 + result[1].u32[0];
    v18 = *&v17[16 * ~a3];
    LOBYTE(v19) = __clz(__rbit32(v19));
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADDFC318(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  if (!a4)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  return a1;
}

uint64_t sub_1ADDFC350(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1ADDFC33C(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    return sub_1ADDFC51C;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1ADDFC3E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t get_enum_tag_for_layout_string_9Coherence9CRVersionVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ADDFC54C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    return sub_1ADDD9E68(v2 + v4, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDFC604(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v48 = a2;
  result = sub_1AE23DCCC();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v44 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v11 + 16);
    v46 = v11;
    v49 = (v11 + 32);
    v25 = result + 64;
    v47 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v28 = (v23 - 1) & v23;
LABEL_17:
      v31 = v27 | (v19 << 6);
      v50 = v28;
      v32 = *(v11 + 72);
      v33 = *(v15 + 48) + v32 * v31;
      if (v48)
      {
        (*v49)(v51, v33, v10);
      }

      else
      {
        (*v45)(v51, v33, v10);
      }

      v34 = *(*(v15 + 56) + 8 * v31);
      v35 = *(v18 + 40);
      sub_1ADDDF604(&qword_1ED96A718, MEMORY[0x1E69695A8]);
      result = sub_1AE23CBBC();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v49)(*(v18 + 48) + v32 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v34;
      ++*(v18 + 16);
      v11 = v46;
      v15 = v47;
      v23 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v15 + 32);
    v7 = v44;
    if (v43 >= 64)
    {
      bzero(v20, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_1ADDFC9CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AE23BFEC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1ADDFCA84(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 280);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = *(v3 + 296);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v6);
  v12 = *(v5 - 8);
  result = (*(v12 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(*(v4 + 288) + 16) + 8) + 16))(a1, v5);
    return (*(v12 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1ADDFCC74()
{
  if (*(v0 + 112))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v2 = 0xD00000000000003DLL;
    *(v2 + 8) = 0x80000001AE2603A0;
    *(v2 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 120);
    if (!v1)
    {
      type metadata accessor for CREncoder.CRDTContainer();
      v1 = swift_allocObject();
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
      *(v1 + 16) = v0;
      *(v1 + 24) = inited;
      *(v0 + 120) = v1;
    }
  }

  return v1;
}

uint64_t sub_1ADDFCD3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = sub_1ADDFCC74();
  if (!v4)
  {
    v10 = result;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v10;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    a4(inited, a2, a3);
    swift_setDeallocating();
    v12 = *(inited + 16);

    v13 = *(inited + 24);
  }

  return result;
}

uint64_t CRStruct_1.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ADDFCD3C(a1, a2, a3, CRStruct_1.encode(to:));
}

{
  return sub_1ADDFCFF0(a1, a2, a3, CRStruct_1.encodeFields(to:), sub_1AE162BA0);
}

uint64_t sub_1ADDFCE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v10 = swift_allocObject();
    v11 = *(v9 + 16);
    *(v10 + 16) = v11;
    sub_1ADE5215C(v11);

    *v3 = v10;
    v9 = v10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  v13 = v12 | 0x3000000000000000;
  v14 = *(v9 + 16);
  *(v9 + 16) = v13;

  return sub_1ADE52174(v14);
}

uint64_t sub_1ADDFCF44()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADDFCFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v11 = *(*(a3 + 8) + 8);
  (*(v11 + 56))(a2, v11);
  result = a4(a1, a2, a3);
  v13 = v5;
  if (!v5)
  {
    v50 = a5;
    v51 = a1;
    result = (*(v11 + 24))(a2, v11);
    v14 = 0;
    v16 = result + 64;
    v15 = *(result + 64);
    v52 = result;
    v17 = 1 << *(result + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v20 = (v17 + 63) >> 6;
    v48 = v20;
    for (i = result + 64; ; v16 = i)
    {
      v24 = v51;
      if (!v19)
      {
        break;
      }

LABEL_11:
      v26 = __clz(__rbit64(v19)) | (v14 << 6);
      v27 = (*(v52 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      v56 = *(*(v52 + 56) + 8 * v26);
      v30 = *(v51 + 24);
      MEMORY[0x1EEE9AC00](result);
      v47[2] = &v56;
      v47[3] = v24;

      sub_1ADE6B9FC(v50, v47);
      v54 = v13;
      if (v13)
      {
      }

      v31 = *(v24 + 16);
      v53 = sub_1ADE66494(v29, v28);

      swift_beginAccess();
      v32 = *(*(v31 + 24) + 16);
      v33 = (~v32 & 0xF000000000000007) != 0 && (v32 & 0xF000000000000000) == 0x3000000000000000;
      v34 = MEMORY[0x1E69E7CC0];
      v35 = MEMORY[0x1E69E7CC0];
      v36 = MEMORY[0x1E69E7CC0];
      if (v33)
      {
        v37 = (v32 & 0xFFFFFFFFFFFFFFFLL);
        v35 = v37[2];
        v36 = v37[3];
        v34 = v37[4];
      }

      v55 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1ADDF69D0(0, *(v35 + 2) + 1, 1, v35);
      }

      v39 = *(v35 + 2);
      v38 = *(v35 + 3);
      if (v39 >= v38 >> 1)
      {
        v35 = sub_1ADDF69D0((v38 > 1), v39 + 1, 1, v35);
      }

      *(v35 + 2) = v39 + 1;
      *&v35[8 * v39 + 32] = v53;

      MEMORY[0x1B26FB860](v40);
      if (*(v55 + 16) >= *(v55 + 24) >> 1)
      {
        v46 = *(v55 + 16);
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      v41 = v55;
      v42 = *(v31 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v31 + 24);
        type metadata accessor for Proto_CRDT._StorageClass();
        v44 = swift_allocObject();
        *(v44 + 16) = 0xF000000000000007;
        v45 = *(v43 + 16);
        *(v44 + 16) = v45;
        *(v31 + 24) = v44;
        sub_1ADE5215C(v45);
      }

      v19 &= v19 - 1;
      v21 = *(v31 + 24);
      v22 = swift_allocObject();
      *(v22 + 16) = v35;
      *(v22 + 24) = v41;
      *(v22 + 32) = v34;
      v23 = *(v21 + 16);
      *(v21 + 16) = v22 | 0x3000000000000000;
      swift_endAccess();
      sub_1ADE52174(v23);

      v13 = v54;
      v20 = v48;
    }

    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
      }

      v19 = *(v16 + 8 * v25);
      ++v14;
      if (v19)
      {
        v14 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDFD3C0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t CRStruct_1.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v16 - v9;
  v11 = (*(v4 + 32))(a2, v4, v8);
  v13 = v12;

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ADDFD59C(v10, v11, v13, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 16) + 8));

  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1ADDFD59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  result = (*(a5 + 48))(a4, a5);
  if ((result & 1) == 0)
  {
    v14 = *(v5 + 24);
    MEMORY[0x1EEE9AC00](result);
    v24[2] = a4;
    v24[3] = a5;
    v24[4] = a1;
    v24[5] = v7;
    result = sub_1ADE6B9FC(sub_1ADE744C8, v24);
    if (!v6)
    {
      v15 = result;
      v16 = *(v7 + 16);
      v17 = sub_1ADE66494(a2, a3);
      swift_beginAccess();
      v18 = *(*(v16 + 24) + 16);
      if ((~v18 & 0xF000000000000007) != 0 && (v18 & 0xF000000000000000) == 0x3000000000000000)
      {
        v23 = (v18 & 0xFFFFFFFFFFFFFFFLL);
        v20 = v23[2];
        v21 = v23[3];
        v22 = v23[4];
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        v21 = MEMORY[0x1E69E7CC0];
        v22 = MEMORY[0x1E69E7CC0];
      }

      v25 = v20;
      v26 = v21;
      v27 = v22;
      sub_1ADE6C448(v15, v17);
      sub_1ADDFCE90(v25, v26, v27);
      swift_endAccess();
    }
  }

  return result;
}

BOOL CROrderedSet.isDefaultState.getter()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t sub_1ADDFD7A0(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 16));
  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

uint64_t Capsule.rootID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t (*sub_1ADDFD8B4(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(type metadata accessor for Replica() - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1ADDDE3A0(a2, v10, type metadata accessor for Replica);
  v7[9] = sub_1ADDFDB68(v7);
  v7[10] = sub_1ADDFD9B0(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_1ADDFDE3C;
}

void (*sub_1ADDFD9B0(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0xD8uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 168) = a2;
  *(v9 + 176) = v4;
  v11 = *(type metadata accessor for Replica() - 8);
  *(v10 + 184) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 192) = v12;
  v13 = *v4;
  v14 = sub_1ADDD8A6C(a2);
  *(v10 + 208) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1ADF6E86C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1ADDE4890(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_1ADDD8A6C(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 200) = v14;
  if (v20)
  {
    sub_1ADDE5634(*(*v4 + 56) + 24 * v14, v10);
  }

  else
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
  }

  return sub_1ADDFDED0;
}

uint64_t (*sub_1ADDFDB68(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ADDE5788;
}

unint64_t sub_1ADDFDB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
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
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1ADDFDCDC(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_1ADDFDB90(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

void sub_1ADDFDDC8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1ADDE4FF8(v2, type metadata accessor for Replica);
  free(v2);

  free(v1);
}

void sub_1ADDFDE40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1ADDE4FF8(v3, type metadata accessor for Replica);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void sub_1ADDFDED0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_1ADDCEE40(*a1, v2 + 120, &qword_1EB5BA468, &unk_1AE259210);
    v7 = *(v2 + 208);
    if (*(v2 + 120))
    {
      v8 = *(v2 + 176);
      sub_1ADDE5634(v2 + 120, v2 + 96);
      v5 = *v8;
      v6 = *(v2 + 200);
      if (v7)
      {
        sub_1ADDE5634(v2 + 96, v5[7] + 24 * v6);
        goto LABEL_15;
      }

      v11 = *(v2 + 192);
      sub_1ADDDE3A0(*(v2 + 168), v11, type metadata accessor for Replica);
      sub_1ADDE5634(v2 + 96, v2 + 144);
      v12 = v2 + 144;
      goto LABEL_14;
    }

    sub_1ADDCEDE0(v2 + 120, &qword_1EB5BA468, &unk_1AE259210);
    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    v9 = *(v2 + 200);
    v10 = **(v2 + 176);
    sub_1ADDE4FF8(*(v10 + 48) + *(*(v2 + 184) + 72) * v9, type metadata accessor for Replica);
    sub_1ADF6CF18(v9, v10);
    goto LABEL_15;
  }

  sub_1ADDCEE40(*a1, v2 + 48, &qword_1EB5BA468, &unk_1AE259210);
  v3 = *(v2 + 208);
  if (*(v2 + 48))
  {
    v4 = *(v2 + 176);
    sub_1ADDE5634(v2 + 48, v2 + 24);
    v5 = *v4;
    v6 = *(v2 + 200);
    if (v3)
    {
      sub_1ADDE5634(v2 + 24, v5[7] + 24 * v6);
      goto LABEL_15;
    }

    v11 = *(v2 + 192);
    sub_1ADDDE3A0(*(v2 + 168), v11, type metadata accessor for Replica);
    sub_1ADDE5634(v2 + 24, v2 + 72);
    v12 = v2 + 72;
LABEL_14:
    sub_1ADDE21EC(v6, v11, v12, v5);
    goto LABEL_15;
  }

  sub_1ADDCEDE0(v2 + 48, &qword_1EB5BA468, &unk_1AE259210);
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_15:
  v13 = *(v2 + 192);
  sub_1ADDCEDE0(v2, &qword_1EB5BA468, &unk_1AE259210);
  free(v13);

  free(v2);
}

uint64_t sub_1ADDFE0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 56) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  v11 = type metadata accessor for Replica();
  v12 = *(*(v11 - 8) + 48);
  if (!v12(&v0[v4], 1, v11))
  {
    v13 = sub_1AE23BFEC();
    (*(*(v13 - 8) + 8))(&v0[v4], v13);
  }

  if (!v12(&v0[v5], 1, v11))
  {
    v14 = sub_1AE23BFEC();
    (*(*(v14 - 8) + 8))(&v0[v5], v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v3, v2 | 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADDFE348(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      sub_1ADE42E40();
      swift_allocError();
      *v13 = xmmword_1AE241D20;
      *(v13 + 16) = 0;
      swift_willThrow();
      return sub_1ADDCC35C(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_22;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_25;
      }

      v9 = sub_1AE23BB7C();
      if (!v9)
      {
        goto LABEL_30;
      }

      v10 = v9;
      v11 = sub_1AE23BBAC();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_27;
      }

      v12 = (a1 - v11 + v10);
      sub_1AE23BB9C();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_24;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_1AE23BB7C();
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16;
    v18 = sub_1AE23BBAC();
    if (!__OFSUB__(v15, v18))
    {
      v12 = (v15 - v18 + v17);
      sub_1AE23BB9C();
      if (!v12)
      {
        goto LABEL_29;
      }

LABEL_21:
      v19 = *v12;
      v20 = v12[1];
      v21 = v12[2];
      v22 = v12[3];
      v23 = v12[4];
      v24 = v12[5];
      v25 = v12[6];
      v26 = v12[7];
      v27 = v12[8];
      v28 = v12[9];
      v29 = v12[10];
      v30 = v12[11];
      v31 = v12[12];
      v32 = v12[13];
      v33 = v12[14];
      v34 = v12[15];
LABEL_22:
      sub_1AE23BFBC();
      return sub_1ADDCC35C(a1, a2);
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1AE23BB9C();
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1AE23BB9C();
  __break(1u);
  return result;
}

void sub_1ADDFE5A4(char *a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v15 = sub_1AE23BDDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v58 = a3;
  sub_1ADDCEE40(a3, v14, &qword_1EB5B9DC0, &qword_1AE240B90);
  v24 = *(v16 + 48);
  v25 = v24(v14, 1, v15);
  v60 = v23;
  v61 = a1;
  if (v25 == 1)
  {
    sub_1ADE3E4E8(v23);
    if (v24(v14, 1, v15) != 1)
    {
      sub_1ADDCEDE0(v14, &qword_1EB5B9DC0, &qword_1AE240B90);
    }
  }

  else
  {
    (*(v16 + 32))(v23, v14, v15);
  }

  v26 = *(v16 + 16);
  v27 = (v16 + 56);
  if (!*(v66 + 24))
  {
    v26(v8, v61, v15);
    (*v27)(v8, 0, 1, v15);
    v43 = v59;
    v44 = sub_1ADDCFD3C(v8);
    if (!v43)
    {
      v59 = v44;
      v47 = v56;
      v48 = v60;
      v49 = (v26)(v56, v60, v15);
      if (qword_1ED969C40 != -1)
      {
        v49 = swift_once();
      }

      v50 = qword_1ED969C50;
      MEMORY[0x1EEE9AC00](v49);
      *(&v56 - 2) = v47;
      *(&v56 - 1) = v48;
      os_unfair_lock_lock((v50 + 24));
      sub_1ADDFEC7C((v50 + 16), v64);
      os_unfair_lock_unlock((v50 + 24));
      v51 = *&v64[0];
      v52 = *(v16 + 8);
      v52(v47, v15);
      v53 = type metadata accessor for CRContext();
      memset(v64, 0, sizeof(v64));
      v65 = 0;
      v54 = objc_allocWithZone(v53);
      *&v54[OBJC_IVAR___CRContext_assetManager] = v51;
      sub_1ADDCEE40(v64, &v54[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
      v55 = &v54[OBJC_IVAR___CRContext_crdtDatabase];
      *v55 = v59;
      v55[1] = &off_1F23C69F0;
      v63.receiver = v54;
      v63.super_class = v53;
      objc_msgSendSuper2(&v63, sel_init);
      sub_1ADDCEDE0(v64, &qword_1EB5B9DB0, &qword_1AE240B80);
      sub_1ADDCEDE0(v58, &qword_1EB5B9DC0, &qword_1AE240B90);
      v52(v61, v15);
      v52(v48, v15);
      v42 = v66;
      goto LABEL_14;
    }

    v28 = v61;
LABEL_10:
    v45 = v60;
    sub_1ADDCEDE0(v58, &qword_1EB5B9DC0, &qword_1AE240B90);
    v46 = *(v16 + 8);
    v46(v28, v15);
    v46(v45, v15);
    sub_1ADDCEDE0(v66, &qword_1EB5B9DB0, &qword_1AE240B80);
    return;
  }

  v28 = v61;
  v26(v11, v61, v15);
  (*v27)(v11, 0, 1, v15);
  v29 = v59;
  v30 = sub_1ADDCFD3C(v11);
  if (v29)
  {
    goto LABEL_10;
  }

  v31 = v30;
  v32 = v57;
  v26(v57, v60, v15);
  v33 = v66;
  sub_1ADDCEE40(v66, v64, &qword_1EB5B9DB0, &qword_1AE240B80);
  v34 = type metadata accessor for CRAssetManager(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_1ADDCD880(v32, v64);
  sub_1ADDCEE40(v33, v64, &qword_1EB5B9DB0, &qword_1AE240B80);
  v38 = type metadata accessor for CRContext();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR___CRContext_assetManager] = v37;
  sub_1ADDCEE40(v64, &v39[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
  v40 = &v39[OBJC_IVAR___CRContext_crdtDatabase];
  *v40 = v31;
  v40[1] = &off_1F23C69F0;
  v62.receiver = v39;
  v62.super_class = v38;
  objc_msgSendSuper2(&v62, sel_init);
  sub_1ADDCEDE0(v64, &qword_1EB5B9DB0, &qword_1AE240B80);
  sub_1ADDCEDE0(v58, &qword_1EB5B9DC0, &qword_1AE240B90);
  v41 = *(v16 + 8);
  v41(v61, v15);
  v41(v60, v15);
  v42 = v66;
LABEL_14:
  sub_1ADDCEDE0(v42, &qword_1EB5B9DB0, &qword_1AE240B80);
}

uint64_t sub_1ADDFEC30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD38, &unk_1AE254570);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1ED969C50 = result;
  return result;
}

uint64_t sub_1ADDFEC98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*(*a1 + 16) && (v15 = sub_1ADDFF050(a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    (*(v9 + 16))(v13, a3, v8, v11);
    v19 = type metadata accessor for CRAssetManager(0);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v17 = swift_allocObject();
    sub_1ADDCD880(v13, v24);

    v22 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v24[0] = *a1;
    result = sub_1ADDFEE20(v17, a2, isUniquelyReferenced_nonNull_native);
    *a1 = *&v24[0];
  }

  *a4 = v17;
  return result;
}

uint64_t sub_1ADDFEE60(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v7 = v6;
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1ADDFF050(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v33();
      goto LABEL_9;
    }

    v34();
    v24 = *v7;
    v25 = sub_1ADDFF050(a2);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a1;
  v28 = *v7;
  if (v22)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v18);
    *(v29 + 8 * v18) = v27;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    return v35(v18, v15, v27, v28);
  }
}

unint64_t sub_1ADDFF050(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1AE23BDDC();
  v5 = MEMORY[0x1E6968FB0];
  sub_1ADDDF574(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
  v6 = sub_1AE23CBBC();
  return sub_1ADDDF3D4(a1, v6, MEMORY[0x1E6968FB0], &qword_1ED969648, v5, MEMORY[0x1E6968FC8]);
}

uint64_t sub_1ADDFF138(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_1AE23DCCC();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_1ADDDF604(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
      result = sub_1AE23CBBC();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_1ADDFF51C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AE23BDDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1ADDFF5D4()
{
  sub_1ADDFF738();
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[15];

  v5 = v0[16];

  sub_1ADDCEDE0(v0 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica, &qword_1EB5BDC68, &unk_1AE253C20);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADDFF690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void sub_1ADDFF738()
{
  sub_1ADDF71B4();
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    sqlite3_finalize(*(v0 + 88));
    sqlite3_finalize(*(v0 + 96));
    sqlite3_finalize(*(v0 + 104));
    sqlite3_finalize(*(v0 + 112));
    if (sqlite3_close(*(v0 + 32)))
    {
      sub_1AE23DA2C();

      v1 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v1);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1AE23DC5C();
      __break(1u);
    }
  }
}

uint64_t sub_1ADDFF86C(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = sub_1ADDEF390(a1);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = type metadata accessor for CROrderedSetElement();
  v9 = a2(v4, v8);

  return v9;
}

void (*sub_1ADDFF8D0(void *a1, uint64_t *a2, void *a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADDFF980(v6, *a2, a3);
  return sub_1ADDF195C;
}

uint64_t sub_1ADDFF958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = CROrderedSet.startIndex.getter(a1);
  *a2 = 0;
  return result;
}

void (*sub_1ADDFF980(void *a1, uint64_t a2, void *a3))(void *a1)
{
  v6 = a3[2];
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  CROrderedSet.subscript.getter(a2, a3, v9);
  return sub_1ADE022F8;
}

uint64_t CRSet.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  CRSet.index(of:)(a1, a2, v14);
  if (v15 == 255)
  {
    v10 = *(*(*(a2 + 16) - 8) + 56);
    v11 = a3;
    v12 = 1;
  }

  else
  {
    v8 = v14[0];
    v7 = v14[1];
    v15 &= 1u;
    v9 = v15;
    CRSet.subscript.getter(v14, a2);
    sub_1ADDFFBC8(v8, v7, v9);
    v10 = *(*(*(a2 + 16) - 8) + 56);
    v11 = a3;
    v12 = 0;
  }

  return v10(v11, v12, 1);
}

unint64_t sub_1ADDFFB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1AE23CBBC();

  return sub_1ADDF0104(a1, v9, a2, a3);
}

uint64_t sub_1ADDFFBC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

Swift::Int __swiftcall CROrderedSet.index(after:)(Swift::Int after)
{
  sub_1ADDEF390(v1);

  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1ADDFFC0C(Swift::Int *a1)
{
  result = CROrderedSet.index(after:)(*a1);
  *a1 = result;
  return result;
}

void sub_1ADDFFC38(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = v1;
  *(a1 + 32) = 1;
}

uint64_t sub_1ADDFFC94()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE23C4BC();
      }

      else if (result == 2)
      {
        sub_1AE1CB7C4();
        sub_1AE23C4FC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t CRAttributedString.init(defaultState:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v2 = swift_allocObject();
  result = sub_1ADDEBF04();
  *a1 = v2;
  return result;
}

Coherence_namespace::TopoReplica *Coherence_namespace::TopoReplica::TopoReplica(Coherence_namespace::TopoReplica *this, NSUUID *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  *(this + 4) = a3;
  if (v5)
  {
    [(NSUUID *)v5 getUUIDBytes:this];
  }

  else
  {
    uuid_clear(this);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, a2);
  }

  std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
}

uint64_t CRAttributedString.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE02344(a2, a3, &v13);
    swift_setDeallocating();
    v10 = *(inited + 16);

    if (!v4)
    {
      *a4 = v13;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD000000000000014;
    *(v12 + 8) = 0x80000001AE25FB50;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADE0009C(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = *(*(v3 + 56) + 8 * v13);
    v16 = v15 == 0;

    if (!v15)
    {
      return v16;
    }

    v17 = sub_1ADF4A3F0(v14);
    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v19 = *(**(*(a2 + 56) + 8 * v17) + 96);

    LOBYTE(v19) = v19(v15);

    if ((v19 & 1) == 0)
    {
      return v16;
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
      return 1;
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

uint64_t sub_1ADE00238()
{

  return swift_deallocClassInstance();
}

void sub_1ADE002EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _TtC9Coherence19CRTTMergeableString;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1ADE003BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = (v1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  if (a1)
  {
    v10 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v11 = sub_1AE23BFEC();
    (*(*(v11 - 8) + 16))(v6, a1 + v10, v11);
    v12 = *(a1 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
    v13 = type metadata accessor for Replica();
    *&v6[*(v13 + 20)] = v12;
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for Replica();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_1ADDCEDE0(v6, &unk_1EB5B9E70, &unk_1AE240EC0);

  v15 = type metadata accessor for ObjCVersion();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
  v18 = MEMORY[0x1E69E7CC8];
  *v17 = MEMORY[0x1E69E7CC8];
  *(v17 + 1) = v18;
  swift_beginAccess();
  v20 = *v17;
  v19 = *(v17 + 1);
  *v17 = v18;
  *(v17 + 1) = v8;

  v23.receiver = v16;
  v23.super_class = v15;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_1ADE00714(uint64_t a1)
{
  v138 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v115 = &v109 - v4;
  v5 = sub_1AE23C12C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v109 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v109 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v109 - v23;
  v111 = type metadata accessor for Replica();
  v127 = *(v111 - 8);
  v24 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v119 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v109 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v126 = &v109 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v140 = &v109 - v36;
  v120 = v1;
  v37 = *v1 + 64;
  v38 = 1 << *(*v1 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(*v1 + 64);
  v41 = (v38 + 63) >> 6;
  v131 = v6 + 16;
  v139 = (v6 + 32);
  v137 = (v6 + 8);
  v114 = (v6 + 56);
  v133 = v6;
  v113 = (v6 + 40);
  v42 = 0;

  v121 = v132;
  v128 = v28;
  v129 = v21;
  v134 = v5;
  v135 = v41;
  v125 = v34;
  v136 = v37;
  while (1)
  {
    v43 = v140;
    if (!v40)
    {
      break;
    }

    v44 = v42;
LABEL_15:
    v47 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v48 = v47 | (v44 << 6);
    v49 = v132;
    v50 = v126;
    sub_1ADDDE3A0(*(v132 + 48) + *(v127 + 72) * v48, v126, type metadata accessor for Replica);
    v51 = *(v49 + 56);
    v52 = v133;
    v5 = v134;
    v53 = v130;
    (*(v133 + 16))(v130, v51 + *(v133 + 72) * v48, v134);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v55 = *(v54 + 48);
    v56 = v50;
    v34 = v125;
    sub_1ADDDE540(v56, v125, type metadata accessor for Replica);
    (*(v52 + 32))(&v34[v55], v53, v5);
    (*(*(v54 - 8) + 56))(v34, 0, 1, v54);
    v28 = v128;
    v21 = v129;
    v43 = v140;
LABEL_16:
    sub_1ADDD2198(v34, v43, &qword_1EB5BA458, &qword_1AE251E00);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v57 - 8) + 48))(v43, 1, v57) == 1)
    {
    }

    v58 = *(v57 + 48);
    sub_1ADDDE540(v43, v28, type metadata accessor for Replica);
    v59 = v43;
    v60 = *v139;
    (*v139)(v21, v59 + v58, v5);
    if (*(v138 + 16) && (v61 = sub_1ADDD8A6C(v28), (v62 & 1) != 0))
    {
      v63 = *(v138 + 56);
      v110 = *(v133 + 72);
      v64 = *(v133 + 16);
      v65 = v21;
      v66 = v122;
      (v64)(v122, v63 + v110 * v61, v5);
      (v64)(v130, v65, v134);
      (v64)(v123, v65, v134);
      v109 = v64;
      (v64)(v117, v66, v134);
      sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50]);
      v67 = v116;
      sub_1AE23D8AC();
      v5 = v134;
      sub_1AE23D88C();
      v112 = *(v133 + 8);
      v112(v67, v5);
      v68 = sub_1AE23C04C();
      v41 = v135;
      v37 = v136;
      if (v68 < 1)
      {
        v85 = sub_1ADDD8A6C(v28);
        if (v86)
        {
          v87 = v85;
          v88 = v120;
          v89 = *v120;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = *v88;
          v141 = v91;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1ADDFB81C();
            v91 = v141;
          }

          v92 = *(v91 + 48) + *(v127 + 72) * v87;
          v109 = type metadata accessor for Replica;
          sub_1ADDE4FF8(v92, type metadata accessor for Replica);
          v93 = *(v91 + 56) + v87 * v110;
          v121 = v91;
          v60(v115, v93, v5);
          sub_1ADDF9CEC(v87, v91);
          v94 = v112;
          v112(v124, v5);
          v94(v122, v5);
          v21 = v129;
          v94(v129, v5);
          v95 = v115;
          sub_1ADDE4FF8(v28, v109);
          v96 = 0;
          *v120 = v121;
        }

        else
        {
          v107 = v112;
          v112(v124, v5);
          v107(v122, v5);
          v21 = v129;
          v107(v129, v5);
          sub_1ADDE4FF8(v28, type metadata accessor for Replica);
          v96 = 1;
          v95 = v115;
        }

        (*v114)(v95, v96, 1, v5);
        sub_1ADDCEDE0(v95, &qword_1EB5BB780, &qword_1AE24CD18);
      }

      else
      {
        v69 = v28;
        v70 = v119;
        sub_1ADDDE3A0(v69, v119, type metadata accessor for Replica);
        (v109)(v118, v124, v5);
        v71 = v120;
        v72 = *v120;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v74 = *v71;
        v141 = v74;
        v76 = sub_1ADDD8A6C(v70);
        v77 = *(v74 + 16);
        v78 = (v75 & 1) == 0;
        v79 = v77 + v78;
        if (__OFADD__(v77, v78))
        {
          goto LABEL_40;
        }

        if (*(v74 + 24) >= v79)
        {
          if (v73)
          {
            goto LABEL_31;
          }

          v81 = v75;
          sub_1ADDFB81C();
        }

        else
        {
          v80 = v73;
          v81 = v75;
          sub_1ADDDDED0(v79, v80);
          v82 = sub_1ADDD8A6C(v119);
          if ((v81 & 1) != (v83 & 1))
          {
            goto LABEL_42;
          }

          v76 = v82;
        }

        v75 = v81;
LABEL_31:
        v97 = v141;
        v121 = v141;
        if (v75)
        {
          (*v113)(*(v141 + 56) + v76 * v110, v118, v5);
          sub_1ADDE4FF8(v119, type metadata accessor for Replica);
          v98 = v112;
          v112(v124, v5);
          v98(v122, v5);
          v21 = v129;
          v98(v129, v5);
          v28 = v128;
          sub_1ADDE4FF8(v128, type metadata accessor for Replica);
          *v120 = v121;
        }

        else
        {
          *(v141 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          v99 = *(v97 + 48) + *(v127 + 72) * v76;
          v100 = v76;
          v101 = v119;
          sub_1ADDDE3A0(v119, v99, type metadata accessor for Replica);
          v60((*(v97 + 56) + v100 * v110), v118, v5);
          sub_1ADDE4FF8(v101, type metadata accessor for Replica);
          v102 = v112;
          v112(v124, v5);
          v102(v122, v5);
          v21 = v129;
          v102(v129, v5);
          v28 = v128;
          v103 = v121;
          sub_1ADDE4FF8(v128, type metadata accessor for Replica);
          v104 = *(v103 + 16);
          v105 = __OFADD__(v104, 1);
          v106 = v104 + 1;
          if (v105)
          {
            goto LABEL_41;
          }

          *(v103 + 16) = v106;
          *v120 = v103;
        }
      }
    }

    else
    {
      (*v137)(v21, v5);
      sub_1ADDE4FF8(v28, type metadata accessor for Replica);
      v41 = v135;
      v37 = v136;
    }
  }

  if (v41 <= v42 + 1)
  {
    v45 = v42 + 1;
  }

  else
  {
    v45 = v41;
  }

  v46 = v45 - 1;
  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v41)
    {
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v84 - 8) + 56))(v34, 1, 1, v84);
      v40 = 0;
      v42 = v46;
      goto LABEL_16;
    }

    v40 = *(v37 + 8 * v44);
    ++v42;
    if (v40)
    {
      v42 = v44;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADE01604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v6 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1ADE016F8()
{
  v1 = qword_1ED96F260;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1ADE01768()
{
  sub_1ADE016F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE017C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Replica();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 24);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v17 > a1;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    (*(v8 + 16))(v11, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v7);

    (*(v8 + 32))(v15, v11, v7);
    *&v15[*(v12 + 20)] = 0;
    sub_1ADDE5F9C(v15, a4, type metadata accessor for Replica);
    result = type metadata accessor for Timestamp(0);
    *(a4 + *(result + 20)) = v22;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v19 = 0xD000000000000013;
    *(v19 + 8) = 0x80000001AE25FD70;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

void sub_1ADE01A24(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void std::vector<Coherence_namespace::TopoSubstring *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void traverseUnordered(uint64_t a1, void *a2)
{
  v22 = a1;
  v3 = a2;
  if (a1)
  {
    memset(v20, 0, sizeof(v20));
    v21 = 1065353216;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    v17 = 0;
    std::deque<Coherence_namespace::TopoSubstring *>::push_back(v18, &v22);
    std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(v20, &v22);
    for (i = *(&v19 + 1); *(&v19 + 1); i = *(&v19 + 1))
    {
      v5 = i - 1;
      v6 = *(*(*(&v18[0] + 1) + (((v19 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v19 + v5) & 0x1FF));
      *(&v19 + 1) = v5;
      std::deque<Coherence_namespace::TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v18, 1);
      v3[2](v3, v6, &v17);
      if (v17)
      {
        break;
      }

      v7 = (v6 + 56);
      v8 = *(v6 + 56);
      v9 = (v6 + 64);
      if (*(v6 + 64) - v8 == 8)
      {
        v10 = 0;
        do
        {
          v11 = *v8;
          if (*(*v8 + 80) != 1)
          {
            break;
          }

          v3[2](v3, v11, &v17);
          v10 = v17;
          if ((v17 & 1) != 0 || v11 == v6)
          {
            goto LABEL_21;
          }

          v13 = *(v11 + 56);
          v12 = (v11 + 56);
          v8 = v13;
          v9 = v12 + 1;
          v7 = v12;
        }

        while (v12[1] - v13 == 8);
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        break;
      }

      v14 = *v7;
      v15 = *v9;
      while (v14 != v15)
      {
        v16 = *v14;
        if (*(v16 + 80) > 1u)
        {
          if (!std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(v20, &v16))
          {
            std::deque<Coherence_namespace::TopoSubstring *>::push_back(v18, &v16);
            std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(v20, &v16);
          }
        }

        else
        {
          std::deque<Coherence_namespace::TopoSubstring *>::push_back(v18, &v16);
        }

        ++v14;
      }
    }

LABEL_21:
    std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](v18);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v20);
  }
}

void sub_1ADE01DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va1);

  _Unwind_Resume(a1);
}

void *std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1ADE022F8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t *sub_1ADE02344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(sub_1ADDE78C8() + 16);
  if ((~v7 & 0xF000000000000007) != 0 && (v7 & 0xF000000000000000) == 0x4000000000000000)
  {
    v17 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v18 = *(v17 + 80);
    *&v25[16] = *(v17 + 64);
    *&v25[32] = v18;
    *&v25[48] = *(v17 + 96);
    *&v25[64] = *(v17 + 112);
    v19 = *(v17 + 32);
    v23 = *(v17 + 16);
    v24 = v19;
    *v25 = *(v17 + 48);
    sub_1ADE51B64(&v23, v22);

    v16 = *&v25[56];
    v15 = *&v25[40];
    v14 = *&v25[24];
    v12 = *&v25[8];
    v10 = *v25;
    v11 = v24;
    v13 = *(&v23 + 1);
    v9 = v23;
  }

  else
  {

    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v12 = 0uLL;
    v13 = 0xE000000000000000;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *&v23 = v9;
  *(&v23 + 1) = v13;
  v24 = v11;
  *v25 = v10;
  *&v25[8] = v12;
  *&v25[24] = v14;
  *&v25[40] = v15;
  *&v25[56] = v16;
  v20 = *(v3 + 16);

  return sub_1ADE02488(&v23, v20, a1, a2, a3);
}

uint64_t *sub_1ADE02488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for CRAttributedStringRef();
  v11 = swift_allocObject();
  result = sub_1ADDF1750(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v11;
  }

  return result;
}

uint64_t sub_1ADE0262C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v5;
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 32) = v5;
  *(v2 + 40) = v5;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 32) = *(a2 + 32);

  swift_beginAccess();
  v6 = *(a2 + 48);
  swift_beginAccess();
  v7 = *(v2 + 48);
  *(v2 + 48) = v6;

  *(v2 + 56) = *(a2 + 56);
  v8 = *(v2 + 72);
  *(v2 + 72) = a1;

  *(v2 + 57) = *(a2 + 57);
  return v2;
}

void sub_1ADE02740(uint64_t a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v11 = *(a1 + 24);
    type metadata accessor for CRGroupedRegisterRef();
    if (swift_dynamicCastClass())
    {
      v12 = type metadata accessor for CRRegisterRef();
      v13 = a1;
      v14 = v1;
      CRRegister.value.getter(v13);
      v19[1] = *v1;
      CRRegister.timestamp.getter(v6);
      v15 = *(v12 + 48);
      v16 = *(v12 + 52);
      v17 = swift_allocObject();
      sub_1ADDD25B8(v10, v6);
      v18 = *v14;

      *v14 = v17;
    }
  }
}

uint64_t sub_1ADE02898(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for CRRegisterRefBase();
  result = sub_1AE23DFAC();
  if ((result & 1) == 0)
  {
    v6 = *v1;
    if (*v2)
    {
      v6 = (*(*v6 + 176))();
      v7 = *v2;
    }

    *v2 = v6;
  }

  return result;
}

void UUID.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - v7;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE02BFC(v13);
    if (!v2)
    {

      (*(v10 + 32))(a2, v13, v9);
      return;
    }

    v14 = v2;
  }

  else
  {
    sub_1ADE42E40();
    v14 = swift_allocError();
    *v15 = 0xD000000000000017;
    *(v15 + 8) = 0x80000001AE25FB70;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  CRKeyPath.init(from:)(v16, &v21);
  v23 = a2;
  v17 = v21;
  v18 = v22;
  v20[4] = v21;
  v20[5] = v22;
  CRKeyPath.uuid.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1ADDD11C8(v8);
    sub_1ADDCC35C(v17, v18);
    sub_1ADE42E40();
    swift_allocError();
    *v19 = 0xD000000000000016;
    *(v19 + 8) = 0x80000001AE25FD50;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  else
  {

    (*(v10 + 32))(v23, v8, v9);
    sub_1ADDCC35C(v17, v18);
  }
}

void sub_1ADE02BFC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = 0xD000000000000016;
    v5 = *(v3 + 16);
    v6 = "Wrong format for Data.";
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v7 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
      if (v7 == 5)
      {
        v10 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v11 = *(v2 + 24);
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = v10 >= v12;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v17 = sub_1AE23BFEC();
          (*(*(v17 - 8) + 16))(a1, v11 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v10, v17);
          return;
        }

        v6 = "Wrong format for UUID.";
        v4 = 0xD000000000000013;
      }

      else if (v7 == 3)
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v9 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADDD86D8(v8, v9);
        sub_1ADDFE348(v8, v9);
        return;
      }
    }

    v14 = v6 | 0x8000000000000000;
    sub_1ADE42E40();
    swift_allocError();
    *v15 = v4;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1ADE02D74()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

uint64_t CRRegister.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1ADE031A0(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t CRRegister.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - v6;
  v8 = *v1;
  if (v8)
  {
    (*(*v8 + 120))(v5);
    v9 = type metadata accessor for FinalizedTimestamp(0);
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    return sub_1ADE172E4(v7, a1);
  }

  else
  {
    v11 = type metadata accessor for FinalizedTimestamp(0);
    v12 = *(v11 - 8);
    (*(v12 + 56))(v7, 1, 1, v11);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v11, qword_1EB5D74D0);
    sub_1ADED0548(v13, a1);
    result = (*(v12 + 48))(v7, 1, v11);
    if (result != 1)
    {
      return sub_1ADE1727C(v7);
    }
  }

  return result;
}

uint64_t sub_1ADE02FDC()
{
  v0 = type metadata accessor for FinalizedTimestamp(0);
  __swift_allocate_value_buffer(v0, qword_1EB5D74D0);
  v1 = __swift_project_value_buffer(v0, qword_1EB5D74D0);
  if (qword_1ED966C88 != -1)
  {
    swift_once();
  }

  v2 = sub_1AE23BFEC();
  v3 = __swift_project_value_buffer(v2, qword_1EB5D74E8);
  result = (*(*(v2 - 8) + 16))(v1, v3, v2);
  *(v1 + *(v0 + 20)) = 0;
  return result;
}

uint64_t sub_1ADE030B0()
{
  v0 = sub_1AE23BFEC();
  __swift_allocate_value_buffer(v0, qword_1EB5D74E8);
  __swift_project_value_buffer(v0, qword_1EB5D74E8);
  return sub_1AE23BFBC();
}

uint64_t sub_1ADE031A0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return CRRegister.value.setter(v6, a2);
}

uint64_t CRRegister.value.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = type metadata accessor for FinalizedTimestamp(0);
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = *(a2 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADE02740(a2);
  sub_1ADE02898(a2);
  v18 = *v2;
  if (*v2)
  {
    v19 = *(v13 + 16);
    v31 = a1;
    v19(v17, a1, v12);
    v20 = *(*v18 + 104);

    v20(v17);
    v33 = *v2;
    CRRegister.timestamp.getter(v8);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    a1 = v32;
    v21 = *&v8[*(v32 + 20)];
    sub_1ADE173B8(v8);
    if (!__OFADD__(v21, 1))
    {
      *&v11[*(a1 + 20)] = v21 + 1;
      (*(*v18 + 128))(v11);

      return (*(v13 + 8))(v31, v12);
    }

    __break(1u);
  }

  else
  {
    v23 = *(a2 + 24);
    v18 = type metadata accessor for CRRegisterRef();
    (*(v13 + 16))(v17, a1, v12);
    v33 = *v2;
    CRRegister.timestamp.getter(v8);
    if (qword_1ED96AC50 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v24 = v32;
  v25 = *&v8[*(v32 + 20)];
  result = sub_1ADE173B8(v8);
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    *&v11[*(v24 + 20)] = v25 + 1;
    v26 = *(v18 + 48);
    v27 = *(v18 + 52);
    v28 = swift_allocObject();
    sub_1ADDD25B8(v17, v11);
    (*(v13 + 8))(a1, v12);
    v29 = *v3;

    *v3 = v28;
  }

  return result;
}

uint64_t static CRStruct_6.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 112))(v20);
  v6 = v20[0];
  v16 = v20[4];
  v17 = v20[1];
  v8 = v20[3];
  v9 = v20[6];
  v15 = v20[7];
  v14 = v20[10];
  v10 = v20[9];
  v11 = v20[12];
  v12 = v20[15];
  v18 = v20[16];
  v13 = v20[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AE252420;
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v19[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = *(TupleTypeMetadata - 8);
  v5 = *(v7 + 16);
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 32) = v6;
  *(v2 + 40) = v17;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 48) = v8;
  *(v2 + 56) = v16;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 64) = v9;
  *(v2 + 72) = v15;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 80) = v10;
  *(v2 + 88) = v14;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 96) = v11;
  *(v2 + 104) = v13;
  v5(v19, v20, TupleTypeMetadata);

  *(v2 + 112) = v12;
  *(v2 + 120) = v18;
  (*(v7 + 8))(v20, TupleTypeMetadata);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_6.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90[1] = v90 - v6;
  v105 = swift_getAssociatedTypeWitness();
  v7 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v90[2] = v90 - v8;
  v106 = swift_getAssociatedTypeWitness();
  v9 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v90[3] = v90 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v92 = v90 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v95 = v90 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v98 = v90 - v20;
  v21 = *(v4 + 112);
  v107 = v4;
  v21(&TupleTypeMetadata2, v3, v4, v19);
  v111 = v127;
  v113 = v129;
  v143[20] = v130;
  v122 = v132;
  v114 = v135;
  v115 = v133;
  v124 = v136;
  v22 = v138;
  v23 = v139;
  v25 = v141;
  v24 = v142;
  v101 = v128;
  v102 = TupleTypeMetadata2;
  v143[0] = TupleTypeMetadata2;
  v143[1] = v126;
  v112 = v126;
  v143[2] = v127;
  v143[3] = v128;
  v143[4] = v129;
  v143[5] = v130;
  v99 = v134;
  v100 = v131;
  v143[6] = v131;
  v143[7] = v132;
  v143[8] = v133;
  v143[9] = v134;
  v143[10] = v135;
  v143[11] = v136;
  v96 = v137;
  v97 = v17;
  v143[12] = v137;
  v143[13] = v138;
  v143[14] = v139;
  v143[15] = v140;
  v93 = v140;
  v143[16] = v141;
  v143[17] = v142;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = v14;
  sub_1AE23DB8C();
  v126 = swift_getTupleTypeMetadata2();
  v91 = v11;
  sub_1AE23DB8C();
  v127 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v128 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v129 = swift_getTupleTypeMetadata2();
  v109 = v3;
  v26 = v113;
  sub_1AE23DB8C();
  v27 = rawValue;
  v130 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v103 = *(TupleTypeMetadata - 8);
  v29 = *(v103 + 16);
  v123 = TupleTypeMetadata;
  v119 = v29;
  v120 = v103 + 16;
  (v29)(&TupleTypeMetadata2, v143);

  v121 = v24;

  v118 = v25;

  v110 = v23;

  v116 = v22;

  v30 = v27;
  if (v27[2])
  {
    v31 = sub_1ADDD7A10(v102, v112);
    v33 = v32;

    if (v33)
    {
      v34 = *(v27[7] + 8 * v31);
      v119(&TupleTypeMetadata2, v143, v123);

      v35 = v113;

      v36 = v97;
      v37 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v38 = *(v37 + 8);

      v40 = v117;
      v38(v39, v36, v37);
      v117 = v40;
      if (v40)
      {
        v41 = v123;
LABEL_42:

        (*(v103 + 8))(v143, v41);
        return;
      }

      swift_setAtWritableKeyPath();

      v30 = rawValue;
      v26 = v35;
    }

    else
    {
      v26 = v113;
    }
  }

  else
  {
  }

  v119(&TupleTypeMetadata2, v143, v123);

  if (!v30[2])
  {

    goto LABEL_12;
  }

  v42 = sub_1ADDD7A10(v101, v26);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_12:
    v119(&TupleTypeMetadata2, v143, v123);
    goto LABEL_13;
  }

  v45 = *(v30[7] + 8 * v42);
  v119(&TupleTypeMetadata2, v143, v123);

  v46 = v94;
  v47 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v48 = *(v47 + 8);

  v50 = v117;
  v48(v49, v46, v47);
  v117 = v50;
  if (v50)
  {
    goto LABEL_41;
  }

  swift_setAtWritableKeyPath();

  v30 = rawValue;
  v119(&TupleTypeMetadata2, v143, v123);
LABEL_13:

  if (v30[2])
  {
    v51 = sub_1ADDD7A10(v100, v122);
    v53 = v52;

    if (v53)
    {
      v54 = *(v30[7] + 8 * v51);
      v119(&TupleTypeMetadata2, v143, v123);

      v55 = v91;
      v56 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v57 = *(v56 + 8);

      v59 = v117;
      v57(v58, v55, v56);
      v117 = v59;
      if (v59)
      {
        goto LABEL_41;
      }

      swift_setAtWritableKeyPath();

      v30 = rawValue;
      v60 = v116;
      v119(&TupleTypeMetadata2, v143, v123);
    }

    else
    {
      v60 = v116;
      v119(&TupleTypeMetadata2, v143, v123);
    }
  }

  else
  {

    v60 = v116;
    v119(&TupleTypeMetadata2, v143, v123);
  }

  if (v30[2])
  {
    v61 = sub_1ADDD7A10(v99, v114);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      v60 = v116;
      v119(&TupleTypeMetadata2, v143, v123);
      goto LABEL_30;
    }

    v64 = *(v30[7] + 8 * v61);
    v119(&TupleTypeMetadata2, v143, v123);

    v65 = v106;
    v66 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v67 = *(v66 + 8);

    v69 = v117;
    v67(v68, v65, v66);
    v117 = v69;
    if (v69)
    {
      goto LABEL_41;
    }

    swift_setAtWritableKeyPath();

    v30 = rawValue;
    v60 = v116;
  }

  else
  {
  }

  v119(&TupleTypeMetadata2, v143, v123);
LABEL_30:

  if (v30[2])
  {
    v70 = sub_1ADDD7A10(v96, v60);
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      v79 = v119;
      goto LABEL_38;
    }

    v73 = *(v30[7] + 8 * v70);
    v119(&TupleTypeMetadata2, v143, v123);

    v74 = v105;
    v75 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v76 = *(v75 + 8);

    v78 = v117;
    v76(v77, v74, v75);
    v117 = v78;
    if (v78)
    {
      goto LABEL_41;
    }

    swift_setAtWritableKeyPath();

    v30 = rawValue;
  }

  else
  {
  }

  v79 = v119;
LABEL_38:
  v80 = v123;
  v79(&TupleTypeMetadata2, v143, v123);

  if (v30[2])
  {
    v81 = sub_1ADDD7A10(v93, v118);
    v83 = v82;

    if (v83)
    {
      v84 = *(v30[7] + 8 * v81);
      v119(&TupleTypeMetadata2, v143, v123);

      v85 = AssociatedTypeWitness;
      v86 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v87 = *(v86 + 8);

      v89 = v117;
      v87(v88, v85, v86);
      v117 = v89;
      if (v89)
      {
LABEL_41:
        v41 = v123;
        goto LABEL_42;
      }

      swift_setAtWritableKeyPath();
      (*(v103 + 8))(v143, v123);
    }

    else
    {
      (*(v103 + 8))(v143, v123);
    }
  }

  else
  {
    (*(v103 + 8))(v143, v80);
  }
}

uint64_t CRRegister.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE04F58(a2, a3, &v13);
    swift_setDeallocating();
    v10 = *(inited + 16);

    if (!v4)
    {
      *a4 = v13;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD000000000000014;
    *(v12 + 8) = 0x80000001AE25FB50;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

void sub_1ADE04F58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1ADDE78C8();
  v8 = *(v3 + 16);

  sub_1ADE04FC4(v7, v8, a1, a2, a3);
}

void sub_1ADE04FC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v81 = a2;
  v77 = a5;
  v78 = *(a3 - 8);
  v9 = *(v78 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v69 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - v17;
  v19 = type metadata accessor for FinalizedTimestamp(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v69 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v76 = &v69 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v74 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v69 - v30;
  v79 = a1;
  v32 = *(a1 + 16);
  if (v32 >> 60 || (v32 & 0xF000000000000007) == 0xF000000000000007 || (v33 = *(v32 + 16), swift_beginAccess(), (v34 = *(v33 + 40)) == 0) && (swift_beginAccess(), !*(v33 + 48)) || (swift_beginAccess(), (*(v33 + 32) & 1) != 0))
  {
    (*(*(*(a4 + 8) + 8) + 40))(a3);
    if (v5)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v35 = 0xD00000000000001CLL;
      *(v35 + 8) = 0x80000001AE262080;
      *(v35 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      (*(v78 + 8))(v12, a3);

      *v77 = 0;
    }

    return;
  }

  v71 = a4;
  v36 = *(v33 + 16);
  v37 = *(v33 + 24);
  if (v34)
  {

    v38 = v81;

    sub_1ADE058D4(v36, v37, v38, v31);
    if (!v5)
    {
      if (*(v33 + 40))
      {
        inited = *(v33 + 40);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v43 = sub_1ADE0262C(inited, v38);

      (*(*(*(v71 + 8) + 8) + 8))(v43, a3);
      v44 = v75;
      (*(v78 + 16))(v75, v18, a3);
      v45 = v74;
      sub_1ADED0548(v31, v74);
      sub_1ADDD22FC(v44, v45, a3, v80);

      (*(v78 + 8))(v18, a3);
      sub_1ADE173B8(v31);
      *v77 = v80[0];
      return;
    }

    goto LABEL_34;
  }

  swift_beginAccess();
  if (!*(v33 + 48))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v42 = 0xD00000000000001CLL;
    *(v42 + 8) = 0x80000001AE262080;
    *(v42 + 16) = 0;
    swift_willThrow();

LABEL_35:

    return;
  }

  v40 = v81;

  sub_1ADE058D4(v36, v37, v40, v76);
  if (v5)
  {
LABEL_34:

    goto LABEL_35;
  }

  if (*(v33 + 48))
  {
    v41 = *(v33 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v41 = swift_initStaticObject();
  }

  v46 = *(v41 + 16);
  if (v46 >> 60)
  {
    v47 = 1;
  }

  else
  {
    v47 = (v46 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v47)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v48 = swift_initStaticObject();
  }

  else
  {
    v48 = *(v46 + 16);
  }

  swift_beginAccess();
  v49 = *(v48 + 16);
  v50 = *(v48 + 24);
  v51 = *(v48 + 32);

  if (v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v49;
  }

  if (v51)
  {
    v50 = 0;
  }

  v53 = v81;

  sub_1ADE058D4(v52, v50, v53, v25);
  if (*(v33 + 48))
  {
    v54 = *(v33 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v54 = swift_initStaticObject();
  }

  v55 = *(v54 + 16);
  if (v55 >> 60 || (v55 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v56 = swift_initStaticObject();
  }

  else
  {
    v56 = *(v55 + 16);
  }

  swift_beginAccess();
  v57 = *(v56 + 40);
  if (v57)
  {
    v58 = *(v56 + 40);
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v57 = swift_initStaticObject();
  }

  v59 = v73;

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v60 = v81;

  v61 = sub_1ADE0262C(v57, v60);

  (*(*(*(v71 + 8) + 8) + 8))(v61, a3);
  type metadata accessor for CRGroupedRegisterRef();
  v62 = v78;
  v63 = v59;
  v64 = v75;
  (*(v78 + 16))(v75, v63, a3);
  v70 = v25;
  v65 = v74;
  sub_1ADED0548(v76, v74);
  v66 = v25;
  v67 = v72;
  sub_1ADED0548(v66, v72);
  v68 = sub_1AE004DBC(v64, v65, v67);

  (*(v62 + 8))(v73, a3);
  sub_1ADE173B8(v70);
  sub_1ADE173B8(v76);
  *v77 = v68;
}

uint64_t sub_1ADE058D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 24);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v14 > a1;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    (*(v9 + 16))(v12, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v8);

    (*(v9 + 32))(a4, v12, v8);
    result = type metadata accessor for FinalizedTimestamp(0);
    *(a4 + *(result + 20)) = a2;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000013;
    *(v16 + 8) = 0x80000001AE25FD70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADE05A84(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE05AE0()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1ADE173B8(v0 + *(*v0 + 216));
  return v0;
}

unint64_t sub_1ADE05B6C(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    v3 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    *v5 = 0xD000000000000017;
    *(v5 + 8) = 0x80000001AE25FB70;
    *(v5 + 16) = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = v1;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  sub_1ADE05C74();
  if (v1)
  {
LABEL_5:

    return v3;
  }

  v3 = v4;

  return v3;
}

unint64_t sub_1ADE05C48@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1ADE05B6C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_1ADE05C74()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = 0xD000000000000018;
    v4 = *(v2 + 16);
    v5 = "Wrong format for Double.";
    if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 2)
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v7 = *(v1 + 32);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v6 >= v8;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v12 = v7 + 16 * v6;
        v13 = *(v12 + 32);
        v14 = *(v12 + 40);
        return;
      }

      v5 = "omposite CRValue.";
      v3 = 0xD000000000000015;
    }

    v10 = v5 | 0x8000000000000000;
    sub_1ADE42E40();
    swift_allocError();
    *v11 = v3;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CRStruct_7.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 128))(v22);
  v4 = v22[0];
  v5 = v22[3];
  v19 = v22[4];
  v20 = v22[1];
  v7 = v22[6];
  v8 = v22[9];
  v18 = v22[7];
  v9 = v22[12];
  v10 = v22[15];
  v17 = v22[16];
  v11 = v22[18];
  v15 = v22[13];
  v16 = v22[10];
  v14 = v22[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AE252430;
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[5] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v21[6] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v6 = *(TupleTypeMetadata - 8);
  v12 = *(v6 + 16);
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 32) = v4;
  *(v13 + 40) = v20;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 48) = v5;
  *(v13 + 56) = v19;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 64) = v7;
  *(v13 + 72) = v18;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 80) = v8;
  *(v13 + 88) = v16;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 96) = v9;
  *(v13 + 104) = v15;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 112) = v10;
  *(v13 + 120) = v17;
  v12(v21, v22, TupleTypeMetadata);

  *(v13 + 128) = v11;
  *(v13 + 136) = v14;
  (*(v6 + 8))(v22, TupleTypeMetadata);
  return v13;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_7.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101[0] = v101 - v6;
  v117 = swift_getAssociatedTypeWitness();
  v7 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v101[1] = v101 - v8;
  v118 = swift_getAssociatedTypeWitness();
  v9 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v101[2] = v101 - v10;
  v119 = swift_getAssociatedTypeWitness();
  v11 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v101[3] = v101 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v104 = v101 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v107 = v101 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v110 = v101 - v22;
  v23 = *(v4 + 128);
  v121 = v4;
  v23(&TupleTypeMetadata2, v3, v4, v21);
  v161[23] = v142;
  v137 = v145;
  v138 = v144;
  v132 = v147;
  v135 = v141;
  v136 = v148;
  v124 = v150;
  v126 = v151;
  v24 = v153;
  v134 = v156;
  v128 = v157;
  v129 = v154;
  v139 = v159;
  v25 = v160;
  v113 = v143;
  v114 = TupleTypeMetadata2;
  v161[0] = TupleTypeMetadata2;
  v161[1] = v141;
  v161[2] = v142;
  v161[3] = v143;
  v161[4] = v144;
  v161[5] = v145;
  v111 = v149;
  v112 = v146;
  v161[6] = v146;
  v161[7] = v147;
  v161[8] = v148;
  v161[9] = v149;
  v161[10] = v150;
  v161[11] = v151;
  v108 = v152;
  v109 = v19;
  v161[12] = v152;
  v161[13] = v153;
  v161[14] = v154;
  v161[15] = v155;
  v105 = v155;
  v161[16] = v156;
  v161[17] = v157;
  v102 = v158;
  v161[18] = v158;
  v161[19] = v159;
  v161[20] = v160;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = v16;
  sub_1AE23DB8C();
  v141 = swift_getTupleTypeMetadata2();
  v103 = v13;
  sub_1AE23DB8C();
  v142 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v143 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v144 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v145 = swift_getTupleTypeMetadata2();
  v120 = v3;
  sub_1AE23DB8C();
  v26 = rawValue;
  v146 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v115 = *(TupleTypeMetadata - 8);
  v28 = *(v115 + 16);
  v133 = TupleTypeMetadata;
  v130 = v28;
  v131 = v115 + 16;
  (v28)(&TupleTypeMetadata2, v161);

  v125 = v25;

  v29 = v26[2];
  v122 = v24;
  if (v29)
  {
    v30 = v26;
    v31 = sub_1ADDD7A10(v114, v135);
    v33 = v32;

    if (v33)
    {
      v34 = *(v30[7] + 8 * v31);
      v130(&TupleTypeMetadata2, v161, v133);

      v35 = v109;
      v36 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v37 = *(v36 + 8);

      v39 = v127;
      v37(v38, v35, v36);
      v127 = v39;
      if (v39)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v130(&TupleTypeMetadata2, v161, v133);

  v40 = rawValue;
  if (rawValue[2])
  {
    v41 = sub_1ADDD7A10(v113, v138);
    v43 = v42;

    if (v43)
    {
      v44 = *(v40[7] + 8 * v41);
      v130(&TupleTypeMetadata2, v161, v133);

      v45 = v106;
      v46 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v47 = *(v46 + 8);

      v48 = v127;
      v47(v44, v45, v46);
      v127 = v48;
      if (v48)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v40 = rawValue;
    }
  }

  else
  {
  }

  v49 = v133;
  v130(&TupleTypeMetadata2, v161, v133);

  v50 = v124;

  if (v40[2])
  {
    v51 = sub_1ADDD7A10(v112, v132);
    v53 = v52;

    if (v53)
    {
      v54 = *(v40[7] + 8 * v51);
      v130(&TupleTypeMetadata2, v161, v133);

      v55 = v103;
      v56 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v57 = *(v56 + 8);

      v59 = v127;
      v57(v58, v55, v56);
      v127 = v59;
      if (v59)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v60 = v133;
      v40 = rawValue;
      v50 = v124;
    }

    else
    {
      v60 = v133;
    }
  }

  else
  {

    v60 = v49;
  }

  v130(&TupleTypeMetadata2, v161, v60);

  v61 = v122;

  if (v40[2])
  {
    v62 = sub_1ADDD7A10(v111, v50);
    v64 = v63;

    if (v64)
    {
      v65 = *(v40[7] + 8 * v62);
      v130(&TupleTypeMetadata2, v161, v133);

      v66 = v119;
      v67 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v68 = *(v67 + 8);

      v70 = v127;
      v68(v69, v66, v67);
      v127 = v70;
      if (v70)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v40 = rawValue;
      v60 = v133;
    }

    else
    {
      v60 = v133;
    }
  }

  else
  {
  }

  v130(&TupleTypeMetadata2, v161, v60);

  if (v40[2])
  {
    v71 = sub_1ADDD7A10(v108, v61);
    v73 = v72;

    if (v73)
    {
      v74 = *(v40[7] + 8 * v71);
      v130(&TupleTypeMetadata2, v161, v133);

      v75 = v118;
      v76 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v77 = *(v76 + 8);

      v79 = v127;
      v77(v78, v75, v76);
      v127 = v79;
      if (v79)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v60 = v133;
    }

    else
    {
      v60 = v133;
    }
  }

  else
  {
  }

  v130(&TupleTypeMetadata2, v161, v60);

  if (v40[2])
  {
    v80 = sub_1ADDD7A10(v105, v134);
    v82 = v81;

    if (v82)
    {
      v83 = *(v40[7] + 8 * v80);
      v130(&TupleTypeMetadata2, v161, v133);

      v84 = v117;
      v85 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v86 = *(v85 + 8);

      v88 = v127;
      v86(v87, v84, v85);
      v127 = v88;
      if (v88)
      {
        goto LABEL_45;
      }

      swift_setAtWritableKeyPath();

      v89 = v133;
    }

    else
    {
      v89 = v133;
    }
  }

  else
  {

    v89 = v60;
  }

  v130(&TupleTypeMetadata2, v161, v89);

  v90 = rawValue;
  if (rawValue[2])
  {
    v91 = sub_1ADDD7A10(v102, v139);
    v93 = v92;

    if ((v93 & 1) == 0)
    {
LABEL_46:
      (*(v115 + 8))(v161, v133);
      return;
    }

    v94 = *(v90[7] + 8 * v91);
    v95 = v133;
    v130(&TupleTypeMetadata2, v161, v133);

    v96 = AssociatedTypeWitness;
    v97 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v98 = *(v97 + 8);

    v100 = v127;
    v98(v99, v96, v97);
    v127 = v100;
    if (v100)
    {
LABEL_45:

      goto LABEL_46;
    }

    swift_setAtWritableKeyPath();
    (*(v115 + 8))(v161, v95);
  }

  else
  {
    (*(v115 + 8))(v161, v89);
  }
}

uint64_t Optional<A>.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE07B38(a2, a3, a4);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v8 = 0xD000000000000017;
    *(v8 + 8) = 0x80000001AE25FB70;
    *(v8 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ADE07B38@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 16);
  v8 = *(v7 + 72);
  if (*(v7 + 57) < 3u)
  {
    if (v8)
    {
      v9 = *(v8 + 16);
      if ((~v9 & 0xF000000000000007) == 0 || ((v9 >> 59) & 0x1E | (v9 >> 2) & 1) != 8)
      {
        sub_1ADE42E40();
        swift_allocError();
        *v11 = 0xD00000000000001ALL;
        *(v11 + 8) = 0x80000001AE25FDD0;
        *(v11 + 16) = 0;
        return swift_willThrow();
      }

      v17 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      swift_beginAccess();
      if (*(v17 + 16))
      {
        type metadata accessor for CRDecoder();
        swift_allocObject();

        v19 = sub_1ADE0262C(v18, v7);

        (*(*(*(a2 + 8) + 8) + 8))(v19, v5);
        if (!v4)
        {
          (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
        }
      }

      return (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  if ((~*(v8 + 16) & 0xF000000000000007) == 0)
  {
    return (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  }

  v12 = *(*(a2 + 8) + 8);
  v13 = *(v12 + 8);
  v14 = *(v3 + 16);

  result = v13(v15, v5, v12);
  if (!v4)
  {
    return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
  }

  return result;
}