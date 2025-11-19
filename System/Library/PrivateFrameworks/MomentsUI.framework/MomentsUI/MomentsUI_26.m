void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v130 = MEMORY[0x277D84F90];
LABEL_109:
    v27 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v118 = *(v130 + 2);
      if (v118 >= 2)
      {
        do
        {
          v119 = *v8;
          if (!*v8)
          {
            goto LABEL_145;
          }

          v8 = (v118 - 1);
          v120 = *&v130[16 * v118];
          v121 = *&v130[16 * v118 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((v119 + 8 * v120), (v119 + 8 * *&v130[16 * v118 + 16]), (v119 + 8 * v121), v27, v6);
          if (v7)
          {
            break;
          }

          if (v121 < v120)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
          }

          if (v118 - 2 >= *(v130 + 2))
          {
            goto LABEL_135;
          }

          v122 = &v130[16 * v118];
          *v122 = v120;
          *(v122 + 1) = v121;
          specialized Array.remove(at:)(v118 - 1);
          v118 = *(v130 + 2);
          v8 = a3;
        }

        while (v118 > 1);
      }

LABEL_119:

      return;
    }

LABEL_141:
    v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
    goto LABEL_111;
  }

  v10 = 0;
  v130 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v10 + 1;
    v128 = v10;
    if (v10 + 1 >= v9)
    {
      v27 = v130;
      goto LABEL_35;
    }

    v124 = v7;
    v12 = *v8;
    v13 = *(*v8 + 8 * v11);
    v14 = *(*v8 + 8 * v10);
    v15 = *(*v13 + 256);

    v17 = v15(v16);
    if (!v17 || (v18 = &v17[*a5], v19 = *v18, v20 = *(v18 + 8), v17, (v20 & 1) != 0) || (v21 = (*(*v14 + 256))()) == 0)
    {

LABEL_12:
      v26 = 0;
      goto LABEL_13;
    }

    v22 = v21 + *a5;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = v21;

    if (v24)
    {
      goto LABEL_12;
    }

    v26 = v23 < v19;
LABEL_13:
    v11 = v128 + 2;
    if (v128 + 2 < v9)
    {
      v28 = v12 + 8 * v128 + 16;
      while (1)
      {
        v29 = v11;
        v30 = *(v28 - 8);
        v31 = *(**v28 + 256);

        v33 = v31(v32);
        if (v33 && (v34 = &v33[*a5], v35 = *v34, v36 = *(v34 + 8), v33, (v36 & 1) == 0) && (v37 = (*(*v30 + 256))()) != 0)
        {
          v38 = v37 + *a5;
          v39 = *v38;
          v40 = *(v38 + 8);
          v41 = v37;

          if (v40 != 1)
          {
            v11 = v29;
            if ((v26 ^ (v39 < v35)))
            {
              break;
            }

            goto LABEL_23;
          }
        }

        else
        {
        }

        v11 = v29;
        if (v26)
        {
          v7 = v124;
          v6 = a5;
          v27 = v130;
          goto LABEL_28;
        }

LABEL_23:
        ++v11;
        v28 += 8;
        if (v9 == v11)
        {
          v11 = v9;
          break;
        }
      }
    }

    v7 = v124;
    v6 = a5;
    v27 = v130;
    if (v26)
    {
LABEL_28:
      v42 = v128;
      if (v11 < v128)
      {
        goto LABEL_138;
      }

      if (v128 < v11)
      {
        v43 = 8 * v11 - 8;
        v44 = 8 * v128;
        v45 = v11;
        do
        {
          if (v42 != --v45)
          {
            v46 = *v8;
            if (!*v8)
            {
              goto LABEL_144;
            }

            v47 = *(v46 + v44);
            *(v46 + v44) = *(v46 + v43);
            *(v46 + v43) = v47;
          }

          ++v42;
          v43 -= 8;
          v44 += 8;
        }

        while (v42 < v45);
      }
    }

LABEL_35:
    v48 = v8[1];
    if (v11 >= v48)
    {
      goto LABEL_57;
    }

    v49 = v128;
    if (__OFSUB__(v11, v128))
    {
      goto LABEL_137;
    }

    if (v11 - v128 < a4)
    {
      break;
    }

LABEL_58:
    if (v11 < v49)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    }

    v72 = *(v27 + 2);
    v71 = *(v27 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v27);
    }

    *(v27 + 2) = v73;
    v74 = &v27[16 * v72];
    *(v74 + 4) = v128;
    *(v74 + 5) = v11;
    v132 = v11;
    v75 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v72)
    {
      while (1)
      {
        v76 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v77 = *(v27 + 4);
          v78 = *(v27 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_78:
          if (v80)
          {
            goto LABEL_125;
          }

          v93 = &v27[16 * v73];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_128;
          }

          v99 = &v27[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_132;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v73 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v103 = &v27[16 * v73];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_92:
        if (v98)
        {
          goto LABEL_127;
        }

        v106 = &v27[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_130;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_99:
        v114 = v76 - 1;
        if (v76 - 1 >= v73)
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
          goto LABEL_140;
        }

        if (!*v8)
        {
          goto LABEL_143;
        }

        v115 = *&v27[16 * v114 + 32];
        v116 = *&v27[16 * v76 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v8 + 8 * v115), (*v8 + 8 * *&v27[16 * v76 + 32]), (*v8 + 8 * v116), v75, v6);
        if (v7)
        {
          goto LABEL_119;
        }

        if (v116 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
        }

        if (v114 >= *(v27 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v27[16 * v114];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        specialized Array.remove(at:)(v76);
        v73 = *(v27 + 2);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v27[16 * v73 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_123;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_124;
      }

      v88 = &v27[16 * v73];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_126;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_129;
      }

      if (v92 >= v84)
      {
        v110 = &v27[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_133;
        }

        if (v79 < v113)
        {
          v76 = v73 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v130 = v27;
    v9 = v8[1];
    v10 = v132;
    if (v132 >= v9)
    {
      goto LABEL_109;
    }
  }

  v50 = v128 + a4;
  if (__OFADD__(v128, a4))
  {
    goto LABEL_139;
  }

  if (v50 >= v48)
  {
    v50 = v8[1];
  }

  if (v50 < v128)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v11 == v50)
  {
    goto LABEL_58;
  }

  v125 = v7;
  v51 = *v8;
  v52 = *v8 + 8 * v11 - 8;
  v53 = v128 - v11;
  v129 = v50;
LABEL_46:
  v131 = v11;
  v54 = *(v51 + 8 * v11);
  v55 = v53;
  v56 = v52;
  while (1)
  {
    v57 = *v56;
    v58 = *(*v54 + 256);

    v60 = v58(v59);
    if (!v60 || (v61 = &v60[*a5], v62 = *v61, v63 = *(v61 + 8), v60, (v63 & 1) != 0) || (v64 = (*(*v57 + 256))()) == 0)
    {

LABEL_45:
      v11 = v131 + 1;
      v52 += 8;
      --v53;
      if (v131 + 1 == v129)
      {
        v11 = v129;
        v7 = v125;
        v6 = a5;
        v8 = a3;
        v27 = v130;
LABEL_57:
        v49 = v128;
        goto LABEL_58;
      }

      goto LABEL_46;
    }

    v65 = v64;
    v66 = v64 + *a5;
    v67 = *v66;
    v68 = *(v66 + 8);

    if ((v68 & 1) != 0 || v67 >= v62)
    {
      goto LABEL_45;
    }

    if (!v51)
    {
      break;
    }

    v69 = *v56;
    v54 = v56[1];
    *v56 = v54;
    v56[1] = v69;
    --v56;
    if (__CFADD__(v55++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, void (**a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t (*a6)(char *, char *))
{
  v148 = a6;
  v142 = a5;
  v133 = a4;
  v134 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v153 = &v131 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v131 - v14;
  MEMORY[0x28223BE20](v13);
  v137 = &v131 - v16;
  v17 = type metadata accessor for Date();
  v18 = MEMORY[0x28223BE20](v17);
  v146 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v132 = &v131 - v22;
  result = MEMORY[0x28223BE20](v21);
  v143 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_108:
    v30 = *v134;
    if (!*v134)
    {
      goto LABEL_148;
    }

    v36 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v36;
    }

    else
    {
LABEL_142:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
    }

    v160 = result;
    v36 = *(result + 16);
    if (v36 >= 2)
    {
      while (*v143)
      {
        v126 = *(result + 16 * v36);
        v127 = result;
        v128 = *(result + 16 * (v36 - 1) + 40);
        v129 = v145;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v143 + 8 * v126, *v143 + 8 * *(result + 16 * (v36 - 1) + 32), *v143 + 8 * v128, v30, v142);
        v145 = v129;
        if (v129)
        {
        }

        if (v128 < v126)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = specialized _ArrayBuffer._consumeAndCreateNew()(v127);
        }

        if (v36 - 2 >= *(v127 + 2))
        {
          goto LABEL_136;
        }

        v130 = &v127[16 * v36];
        *v130 = v126;
        *(v130 + 1) = v128;
        v160 = v127;
        specialized Array.remove(at:)(v36 - 1);
        result = v160;
        v36 = *(v160 + 16);
        if (v36 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v139 = &v131 - v25;
  v28 = 0;
  v151 = (v24 + 32);
  v152 = (v24 + 48);
  v150 = (v24 + 8);
  v29 = MEMORY[0x277D84F90];
  v30 = &_s10Foundation4DateVSgMR;
  v147 = v10;
  v31 = v153;
  v135 = v15;
  v156 = v26;
  while (1)
  {
    v32 = v28 + 1;
    v136 = v28;
    if (v28 + 1 >= v27)
    {
      v49 = v133;
      v36 = &_s10Foundation4DateVSgMd;
      goto LABEL_30;
    }

    v154 = v27;
    v131 = v29;
    v33 = *v143;
    v34 = *(*v143 + v32);
    v158 = *(*v143 + v28);
    v159 = v34;

    v35 = v145;
    LODWORD(v155) = closure #1 in SuggestionCollectionViewModel.createRecentsSuggestionGroupForCompactWidth(viewModels:)(&v159, &v158, v142);
    v145 = v35;
    v36 = &_s10Foundation4DateVSgMd;
    if (v35)
    {
    }

    v32 = v28 + 2;
    if (v28 + 2 < v154)
    {
      v37 = (v33 + 8 * v28 + 16);
      v38 = v137;
      v31 = v153;
      while (1)
      {
        v144 = v32;
        v39 = *(v37 - 1);
        v157 = *v37;
        outlined init with copy of DateInterval?(v157 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v38, v36);
        v40 = v38;
        v41 = *v152;
        if ((*v152)(v40, 1, v17) == 1)
        {
          result = outlined destroy of UTType?(v40, v36);
          v38 = v40;
          if (v155)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v149 = *v151;
          v149(v139, v40, v17);
          v42 = v39;
          v43 = v36;
          v44 = v135;
          outlined init with copy of DateInterval?(v42 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v135, v36);
          if (v41(v44, 1, v17) == 1)
          {
            v45 = *v150;

            v45(v139, v17);
            outlined destroy of UTType?(v44, v36);

            v31 = v153;
            v38 = v137;
            if (v155)
            {
LABEL_22:
              v29 = v131;
              v49 = v133;
              v30 = &_s10Foundation4DateVSgMR;
              v32 = v144;
              v28 = v136;
              if (v144 < v136)
              {
                goto LABEL_139;
              }

LABEL_23:
              if (v28 < v32)
              {
                v50 = 8 * v32 - 8;
                v51 = 8 * v28;
                v52 = v32;
                v53 = v28;
                do
                {
                  if (v53 != --v52)
                  {
                    v55 = *v143;
                    if (!*v143)
                    {
                      goto LABEL_145;
                    }

                    v54 = *(v55 + v51);
                    *(v55 + v51) = *(v55 + v50);
                    *(v55 + v50) = v54;
                  }

                  ++v53;
                  v50 -= 8;
                  v51 += 8;
                }

                while (v53 < v52);
              }

              goto LABEL_30;
            }
          }

          else
          {
            v46 = v132;
            v149(v132, v44, v17);

            v47 = v139;
            LODWORD(v149) = v148(v139, v46);
            v48 = *v150;
            (*v150)(v46, v17);
            v48(v47, v17);

            v31 = v153;
            v38 = v137;
            v36 = v43;
            if ((v155 ^ v149))
            {
              v29 = v131;
              v32 = v144;
LABEL_18:
              v28 = v136;
              goto LABEL_19;
            }
          }
        }

        v32 = v144 + 1;
        ++v37;
        if (v154 == v144 + 1)
        {
          v32 = v154;
          v29 = v131;
          goto LABEL_18;
        }
      }
    }

    v29 = v131;
    v31 = v153;
LABEL_19:
    v49 = v133;
    v30 = &_s10Foundation4DateVSgMR;
    if (v155)
    {
      if (v32 < v28)
      {
        goto LABEL_139;
      }

      goto LABEL_23;
    }

LABEL_30:
    v56 = v143[1];
    if (v32 < v56)
    {
      if (__OFSUB__(v32, v28))
      {
        goto LABEL_138;
      }

      if (v32 - v28 < v49)
      {
        v57 = v28 + v49;
        if (__OFADD__(v28, v49))
        {
          goto LABEL_140;
        }

        if (v57 >= v56)
        {
          v57 = v143[1];
        }

        if (v57 < v28)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v32 != v57)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v32 < v28)
    {
      goto LABEL_137;
    }

    v78 = v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = v32;
    if (result)
    {
      v29 = v78;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 16) + 1, 1, v78);
      v29 = result;
    }

    v36 = *(v29 + 16);
    v79 = *(v29 + 24);
    v80 = v36 + 1;
    if (v36 >= v79 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v36 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v80;
    v81 = v29 + 16 * v36;
    *(v81 + 32) = v136;
    *(v81 + 40) = v32;
    v30 = *v134;
    if (!*v134)
    {
      goto LABEL_147;
    }

    if (v36)
    {
      v31 = v153;
      while (1)
      {
        v82 = v31;
        v83 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v84 = *(v29 + 32);
          v85 = *(v29 + 40);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_73:
          if (v87)
          {
            goto LABEL_126;
          }

          v100 = (v29 + 16 * v80);
          v102 = *v100;
          v101 = v100[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_129;
          }

          v106 = (v29 + 32 + 16 * v83);
          v108 = *v106;
          v107 = v106[1];
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_133;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v80 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v110 = (v29 + 16 * v80);
        v112 = *v110;
        v111 = v110[1];
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_87:
        if (v105)
        {
          goto LABEL_128;
        }

        v113 = v29 + 16 * v83;
        v115 = *(v113 + 32);
        v114 = *(v113 + 40);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_131;
        }

        if (v116 < v104)
        {
          v31 = v82;
          goto LABEL_104;
        }

LABEL_94:
        v36 = v83 - 1;
        if (v83 - 1 >= v80)
        {
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
          goto LABEL_141;
        }

        if (!*v143)
        {
          goto LABEL_144;
        }

        v121 = v29;
        v122 = *(v29 + 32 + 16 * v36);
        v123 = *(v29 + 32 + 16 * v83 + 8);
        v124 = v145;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v143 + 8 * v122, *v143 + 8 * *(v29 + 32 + 16 * v83), *v143 + 8 * v123, v30, v142);
        v145 = v124;
        if (v124)
        {
        }

        if (v123 < v122)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
        }

        if (v36 >= *(v121 + 2))
        {
          goto LABEL_123;
        }

        v125 = &v121[16 * v36];
        *(v125 + 4) = v122;
        *(v125 + 5) = v123;
        v160 = v121;
        v36 = &v160;
        result = specialized Array.remove(at:)(v83);
        v29 = v160;
        v80 = *(v160 + 16);
        v31 = v153;
        if (v80 <= 1)
        {
          goto LABEL_104;
        }
      }

      v88 = v29 + 32 + 16 * v80;
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_124;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_125;
      }

      v95 = (v29 + 16 * v80);
      v97 = *v95;
      v96 = v95[1];
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_127;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_130;
      }

      if (v99 >= v91)
      {
        v117 = (v29 + 32 + 16 * v83);
        v119 = *v117;
        v118 = v117[1];
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_134;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

    v31 = v153;
LABEL_104:
    v27 = v143[1];
    v30 = &_s10Foundation4DateVSgMR;
    if (v28 >= v27)
    {
      goto LABEL_108;
    }
  }

  v131 = v29;
  v149 = *v143;
  v58 = (v149 + 8 * v32 - 8);
  v59 = v28 - v32;
  v60 = v152;
  v138 = v57;
LABEL_41:
  v144 = v32;
  v61 = *(v149 + v32);
  v140 = v59;
  v141 = v58;
  v62 = v59;
  while (1)
  {
    v154 = v62;
    v157 = *v58;
    outlined init with copy of DateInterval?(v61 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v31, v36);
    v63 = *v60;
    if ((*v60)(v31, 1, v17) == 1)
    {
      outlined destroy of UTType?(v31, v36);
LABEL_40:
      v32 = v144 + 1;
      v58 = v141 + 1;
      v59 = v140 - 1;
      if (v144 + 1 != v138)
      {
        goto LABEL_41;
      }

      v32 = v138;
      v29 = v131;
      v28 = v136;
      goto LABEL_52;
    }

    v155 = v61;
    v64 = v36;
    v65 = *v151;
    v66 = v31;
    v67 = v156;
    (*v151)(v156, v66, v17);
    v68 = v147;
    v69 = v64;
    v30 = &_s10Foundation4DateVSgMR;
    outlined init with copy of DateInterval?(v157 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v147, v69);
    if (v63(v68, 1, v17) == 1)
    {
      v76 = *v150;

      v76(v67, v17);
      v77 = v68;
      v36 = &_s10Foundation4DateVSgMd;
      outlined destroy of UTType?(v77, &_s10Foundation4DateVSgMd);

      v60 = v152;
      v31 = v153;
      goto LABEL_40;
    }

    v70 = v146;
    v65(v146, v68, v17);

    v71 = v148(v156, v70);
    v72 = *v150;
    (*v150)(v70, v17);
    v72(v156, v17);

    if ((v71 & 1) == 0)
    {
      v60 = v152;
      v31 = v153;
      v36 = &_s10Foundation4DateVSgMd;
      goto LABEL_40;
    }

    v60 = v152;
    v31 = v153;
    v36 = &_s10Foundation4DateVSgMd;
    v73 = v154;
    if (!v149)
    {
      break;
    }

    v74 = *v58;
    v61 = v58[1];
    *v58 = v61;
    v58[1] = v74;
    --v58;
    v75 = __CFADD__(v73, 1);
    v62 = v73 + 1;
    if (v75)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, char *))
{
  v70 = a5;
  v80 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v69 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v74 = (&v63 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = (&v63 - v14);
  MEMORY[0x28223BE20](v13);
  v71 = &v63 - v15;
  v79 = type metadata accessor for Date();
  v16 = *(v79 - 8);
  v17 = MEMORY[0x28223BE20](v79);
  v65 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v67 = &v63 - v21;
  MEMORY[0x28223BE20](v20);
  v75 = &v63 - v23;
  v24 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 3;
  v26 = a3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  if (v25 >= v27 >> 3)
  {
    v73 = v22;
    if (v80 != a2 || &a2[8 * v28] <= v80)
    {
      memmove(v80, a2, 8 * v28);
    }

    if (a3 - a2 < 8)
    {
      v43 = a2;
    }

    else
    {
      v43 = a2;
      if (a2 > a1)
      {
        v44 = (v16 + 48);
        v66 = (v16 + 8);
        v35 = &v80[8 * v28];
        v64 = a1;
        v67 = (v16 + 32);
        v68 = (v16 + 48);
LABEL_30:
        v77 = v43;
        v45 = v43 - 8;
        v26 -= 8;
        v46 = v35;
        v72 = v43 - 8;
        do
        {
          v47 = *(v46 - 1);
          v46 -= 8;
          v48 = *v45;
          v75 = v47;
          v76 = v48;
          v49 = v74;
          outlined init with copy of DateInterval?(&v47[OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate], v74, &_s10Foundation4DateVSgMd);
          v50 = *v44;
          v51 = v79;
          if ((*v44)(v49, 1, v79) == 1)
          {
            outlined destroy of UTType?(v49, &_s10Foundation4DateVSgMd);
          }

          else
          {
            v71 = v26;
            v78 = v35;
            v52 = *v67;
            (*v67)(v73, v49, v51);
            v53 = v69;
            outlined init with copy of DateInterval?(v76 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v69, &_s10Foundation4DateVSgMd);
            if (v50(v53, 1, v51) == 1)
            {
              v54 = *v66;

              v54(v73, v79);
              outlined destroy of UTType?(v53, &_s10Foundation4DateVSgMd);

              v35 = v78;
              v26 = v71;
              v44 = v68;
            }

            else
            {
              v55 = v65;
              v56 = v79;
              v52(v65, v53, v79);

              v57 = v73;
              v58 = v70(v73, v55);
              v59 = *v66;
              (*v66)(v55, v56);
              v59(v57, v56);

              v35 = v78;
              v60 = v64;
              v26 = v71;
              v44 = v68;
              if (v58)
              {
                v61 = v72;
                if (v71 + 8 != v77)
                {
                  *v71 = *v72;
                }

                if (v35 <= v80 || (v43 = v61, v61 <= v60))
                {
                  v43 = v61;
                  goto LABEL_48;
                }

                goto LABEL_30;
              }
            }
          }

          v45 = v72;
          if (v26 + 8 != v35)
          {
            *v26 = *v46;
          }

          v26 -= 8;
          v35 = v46;
        }

        while (v46 > v80);
        v35 = v46;
        v43 = v77;
        goto LABEL_48;
      }
    }

    v35 = &v80[8 * v28];
    goto LABEL_48;
  }

  if (v80 != a1 || &a1[8 * v25] <= v80)
  {
    memmove(v80, a1, 8 * v25);
  }

  v78 = &v80[8 * v25];
  if (a2 - a1 >= 8)
  {
    v29 = a2;
    if (a2 < a3)
    {
      v30 = (v16 + 48);
      v31 = (v16 + 32);
      v69 = (v16 + 8);
      v32 = v71;
      v73 = (v16 + 32);
      v74 = (v16 + 48);
      while (1)
      {
        v33 = *v29;
        v76 = *v80;
        v77 = v29;
        outlined init with copy of DateInterval?(v33 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v32, &_s10Foundation4DateVSgMd);
        v34 = *v30;
        if ((*v30)(v32, 1, v79) == 1)
        {
          break;
        }

        v36 = v32;
        v37 = v79;
        v72 = *v31;
        (v72)(v75, v36, v79);
        v38 = v68;
        outlined init with copy of DateInterval?(v76 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v68, &_s10Foundation4DateVSgMd);
        if (v34(v38, 1, v37) == 1)
        {
          v39 = *v69;

          v39(v75, v37);
          outlined destroy of UTType?(v38, &_s10Foundation4DateVSgMd);

          v29 = v77;
          v35 = v78;
          v32 = v71;
LABEL_19:
          v42 = v80;
          v80 += 8;
          if (a1 == v42)
          {
            goto LABEL_21;
          }

LABEL_20:
          *a1 = *v42;
          goto LABEL_21;
        }

        v40 = v67;
        (v72)(v67, v38, v37);

        LODWORD(v72) = v70(v75, v40);
        v41 = *v69;
        (*v69)(v40, v37);
        v41(v75, v37);

        v29 = v77;
        v35 = v78;
        v32 = v71;
        if ((v72 & 1) == 0)
        {
          goto LABEL_19;
        }

        v42 = v77;
        v29 = v77 + 8;
        if (a1 != v77)
        {
          goto LABEL_20;
        }

LABEL_21:
        a1 += 8;
        v30 = v74;
        if (v80 >= v35)
        {
          v43 = a1;
          goto LABEL_48;
        }

        v31 = v73;
        if (v29 >= v26)
        {
          goto LABEL_23;
        }
      }

      outlined destroy of UTType?(v32, &_s10Foundation4DateVSgMd);
      v29 = v77;
      v35 = v78;
      goto LABEL_19;
    }
  }

LABEL_23:
  v43 = a1;
  v35 = v78;
LABEL_48:
  if (v43 != v80 || v43 >= &v80[(v35 - v80 + (v35 - v80 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v43, v80, 8 * ((v35 - v80) / 8));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, void *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[8 * v11];
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_48;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v16 = *v5;
      v17 = *(**v7 + 256);

      v19 = v17(v18);
      if (v19 && (v20 = &v19[*a5], v21 = *v20, v22 = *(v20 + 8), v19, (v22 & 1) == 0) && (v23 = (*(*v16 + 256))()) != 0)
      {
        v24 = v23 + *a5;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v23;

        if ((v26 & 1) == 0 && v25 < v21)
        {
          v28 = v7;
          v29 = v8 == v7;
          v7 += 8;
          if (v29)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }

      v28 = v5;
      v29 = v8 == v5;
      v5 += 8;
      if (v29)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v8 = *v28;
LABEL_12:
      v8 += 8;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v14] <= a4)
  {
    memmove(a4, __src, 8 * v14);
  }

  v15 = &v5[8 * v14];
  if (v12 >= 8 && v7 > v8)
  {
LABEL_31:
    v30 = (v7 - 8);
    v6 -= 8;
    v31 = v15;
    v47 = v7 - 8;
    do
    {
      v49 = v15;
      v32 = v7;
      v33 = *(v31 - 1);
      v31 -= 8;
      v34 = *v30;
      v35 = *(*v33 + 256);

      v37 = v35(v36);
      if (v37 && (v38 = &v37[*a5], v39 = *v38, v40 = *(v38 + 8), v37, (v40 & 1) == 0) && (v41 = (*(*v34 + 256))()) != 0)
      {
        v42 = v41 + *a5;
        v43 = *v42;
        v44 = *(v42 + 8);
        v45 = v41;

        if ((v44 & 1) == 0 && v43 < v39)
        {
          if (v6 + 8 != v32)
          {
            *v6 = *v47;
          }

          v15 = v49;
          if (v49 <= v5 || (v7 = v47, v47 <= v8))
          {
            v7 = v47;
            goto LABEL_48;
          }

          goto LABEL_31;
        }
      }

      else
      {
      }

      v7 = v32;
      if (v6 + 8 != v49)
      {
        *v6 = *v31;
      }

      v6 -= 8;
      v15 = v31;
      v30 = v47;
    }

    while (v31 > v5);
    v15 = v31;
  }

LABEL_48:
  if (v7 != v5 || v7 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v7, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for SuggestionViewModel();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq59MomentsUI19SuggestionViewModelC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_9i4UI19klM7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return a2(AssociatedObject + 4, v4);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for Asset();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for Suggestion);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for SuggestionViewModel);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SuggestionViewModel();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SuggestionViewModel();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq59MomentsUI19SuggestionViewModelC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_9i4UI19klM7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

LABEL_25:
  v20 = __CocoaSet.count.getter();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = MEMORY[0x28223BE20](result);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq59MomentsUI19SuggestionViewModelC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_9i4UI19klM7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError()
{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError);
  }

  return result;
}

uint64_t partial apply for closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout()
{
  result = lazy protocol witness table cache variable for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout;
  if (!lazy protocol witness table cache variable for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionGroupType and conformance SuggestionGroupType()
{
  result = lazy protocol witness table cache variable for type SuggestionGroupType and conformance SuggestionGroupType;
  if (!lazy protocol witness table cache variable for type SuggestionGroupType and conformance SuggestionGroupType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionGroupType and conformance SuggestionGroupType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle()
{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SegmentType and conformance SegmentType()
{
  result = lazy protocol witness table cache variable for type SegmentType and conformance SegmentType;
  if (!lazy protocol witness table cache variable for type SegmentType and conformance SegmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentType and conformance SegmentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InterstitialEntryType and conformance InterstitialEntryType()
{
  result = lazy protocol witness table cache variable for type InterstitialEntryType and conformance InterstitialEntryType;
  if (!lazy protocol witness table cache variable for type InterstitialEntryType and conformance InterstitialEntryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterstitialEntryType and conformance InterstitialEntryType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState()
{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionSubgroup(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 18))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionSubgroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void type metadata completion function for SuggestionCollectionViewModel()
{
  type metadata accessor for Client();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for IndexSet();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<SuggestionCollectionViewModel.ContentState>);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.shouldShowMessage()()
{
  v4 = (*(*v0 + 656) + **(*v0 + 656));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v4();
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:)(uint64_t a1)
{
  v6 = (*(*v1 + 1088) + **(*v1 + 1088));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterImage(imageSource:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:)(uint64_t a1)
{
  v6 = (*(*v1 + 1104) + **(*v1 + 1104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.runComputeAndWait()()
{
  v4 = (*(*v0 + 1112) + **(*v0 + 1112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(uint64_t a1)
{
  v6 = (*(*v1 + 1120) + **(*v1 + 1120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v6(a1);
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.makeCurrentDevicePrimary()()
{
  v4 = (*(*v0 + 1160) + **(*v0 + 1160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.displayMessage()()
{
  v4 = (*(*v0 + 1176) + **(*v0 + 1176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t _s9MomentsUI6ClientVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id MosaicSquareGridLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MosaicSquareGridLayout.cachedAttributes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double MosaicSquareGridLayout.contentBounds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds;
  swift_beginAccess();
  return *v1;
}

uint64_t MosaicSquareGridLayout.contentBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

Swift::Void __swiftcall MosaicSquareGridLayout.prepare()()
{
  v98 = *MEMORY[0x277D85DE8];
  v94 = type metadata accessor for IndexPath();
  v1 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &size - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MosaicSquareGridLayout();
  v96.receiver = v0;
  v96.super_class = v3;
  objc_msgSendSuper2(&v96, sel_prepareLayout);
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    if ([v4 numberOfSections] < 1)
    {

      return;
    }

    v6 = MEMORY[0x277D85000];
    v7 = (*MEMORY[0x277D85000] & *v0) + 112;
    v92 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
    v91 = v7;
    v8 = v92(&slice);
    *v9 = MEMORY[0x277D84F90];

    v8(&slice, 0);
    v10 = v5;
    v11 = [v10 bounds];
    v12 = (*v6 & *v0) + 128;
    v13 = v0;
    v90 = *((*v6 & *v0) + 0x80);
    v89 = v12;
    (v90)(v11, 0.0, 0.0);
    v14 = [v10 numberOfItemsInSection_];
    [v10 bounds];
    v16 = v15;

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        *&v87.width = v10;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v103.origin.x = 0.0;
        v103.origin.y = 0.0;
        v103.size.width = v16;
        v103.size.height = v16;
        CGRectDivide(v103, &slice, &remainder, ceil(v16 * 0.5), CGRectMinYEdge);
        v104.origin.x = remainder.origin.x;
        v104.size.width = remainder.size.width;
        v104.origin.y = remainder.origin.y + 1.0;
        v104.size.height = remainder.size.height + -1.0;
        v56 = ceil(remainder.size.width * 0.5);
        v88 = slice;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v104, &slice, &remainder, v56, CGRectMinXEdge);
        y = remainder.origin.y;
        height = remainder.size.height;
        v59 = remainder.origin.x + 1.0;
        v60 = remainder.size.width + -1.0;
        origin = slice.origin;
        size = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v21 = swift_allocObject();
        v61 = v88.origin;
        *(v21 + 16) = xmmword_21658E190;
        *(v21 + 32) = v61;
        v62 = size;
        *(v21 + 48) = v88.size;
        *(v21 + 64) = origin;
        *(v21 + 80) = v62;
        *(v21 + 96) = v59;
        *(v21 + 104) = y;
        *(v21 + 112) = v60;
        *(v21 + 120) = height;
        v23 = 3;
        goto LABEL_23;
      }

      if (v14 == 4)
      {
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v100.origin.x = 0.0;
        v100.origin.y = 0.0;
        v100.size.width = v16;
        v100.size.height = v16;
        CGRectDivide(v100, &slice, &remainder, ceil(v16 * 0.5), CGRectMinXEdge);
        v101 = slice;
        v24 = remainder.origin.y;
        v25 = remainder.size.height;
        v26 = remainder.origin.x + 1.0;
        v27 = remainder.size.width + -1.0;
        v28 = ceil(slice.size.height * 0.5);
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v101, &slice, &remainder, v28, CGRectMinYEdge);
        v87 = slice.size;
        v88.origin = slice.origin;
        v29 = remainder.origin.y;
        v88.size.width = remainder.origin.x;
        width = remainder.size.width;
        v30 = remainder.size.height;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v102.origin.x = v26;
        v102.origin.y = v24;
        v102.size.width = v27;
        v102.size.height = v25;
        CGRectDivide(v102, &slice, &remainder, ceil(v25 * 0.5), CGRectMinYEdge);
        size = slice.size;
        origin = slice.origin;
        x = remainder.origin.x;
        v33 = remainder.origin.y;
        v34 = remainder.size.width;
        v35 = remainder.size.height;
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v37 = *(v21 + 16);
        v36 = *(v21 + 24);
        v38 = v36 >> 1;
        v39 = v37 + 1;
        if (v36 >> 1 <= v37)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v21);
          v36 = *(v21 + 24);
          v38 = v36 >> 1;
        }

        *(v21 + 16) = v39;
        v40 = v21 + 32 * v37;
        v41 = v87;
        *(v40 + 32) = v88.origin;
        *(v40 + 48) = v41;
        v42 = v37 + 2;
        v43 = 1.0;
        v44 = -1.0;
        if (v38 < (v37 + 2))
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 2, 1, v21);
          v44 = -1.0;
          v43 = 1.0;
          v21 = v83;
        }

        v45 = v29 + v43;
        v46 = v30 + v44;
        *(v21 + 16) = v42;
        v47 = v21 + 32 * v39;
        v48 = size;
        *(v47 + 32) = origin;
        *(v47 + 48) = v48;
        v49 = *(v21 + 24);
        v50 = v37 + 3;
        if ((v37 + 3) > (v49 >> 1))
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v37 + 3, 1, v21);
          v44 = -1.0;
          v43 = 1.0;
          v21 = v84;
        }

        v51 = v33 + v43;
        v52 = v35 + v44;
        *(v21 + 16) = v50;
        v53 = (v21 + 32 * v42);
        v53[4] = v88.size.width;
        v53[5] = v45;
        v53[6] = width;
        v53[7] = v46;
        v54 = *(v21 + 24);
        if ((v37 + 4) > (v54 >> 1))
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v37 + 4, 1, v21);
        }

        *(v21 + 16) = v37 + 4;
        v55 = (v21 + 32 * v50);
        v55[4] = x;
        v55[5] = v51;
        v55[6] = v34;
        v55[7] = v52;
        v88.size.width = *(v21 + 16);
        if (!*&v88.size.width)
        {

LABEL_29:

          return;
        }

        *&v87.width = v10;
LABEL_24:
        *&v88.origin.x = objc_opt_self();
        v63 = 0;
        v64 = *((*v6 & *v13) + 0x78);
        v65 = (v1 + 8);
        *&origin.x = v21;
        v66 = (v21 + 56);
        v67 = 0.0;
        v68 = 0.0;
        v69 = 0.0;
        v70 = 0.0;
        do
        {
          v71 = *(v66 - 3);
          v72 = *(v66 - 2);
          v73 = *(v66 - 1);
          v74 = *v66;
          v75 = v93;
          MEMORY[0x21CE90B80](v63, 0);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v77 = [*&v88.origin.x layoutAttributesForCellWithIndexPath_];

          (*v65)(v75, v94);
          [v77 setFrame_];
          v78 = v77;
          v79 = v92(&slice);
          v81 = v80;
          MEMORY[0x21CE92260]();
          if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v63;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v82 = v79(&slice, 0);
          v105.origin.x = v64(v82);
          v107.origin.x = v67;
          v107.origin.y = v68;
          v107.size.width = v69;
          v107.size.height = v70;
          v106 = CGRectUnion(v105, v107);
          v90(v106.origin, *&v106.origin.y, v106.size, *&v106.size.height);

          v66 += 4;
          v67 = v71;
          v68 = v72;
          v69 = v73;
          v70 = v74;
        }

        while (*&v88.size.width != v63);

        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 1)
      {
        *&v87.width = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_21658CA50;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = v16;
        *(v21 + 56) = v16;
        v23 = 1;
        goto LABEL_23;
      }

      if (v14 == 2)
      {
        *&v87.width = v10;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v99.origin.x = 0.0;
        v99.origin.y = 0.0;
        v99.size.width = v16;
        v99.size.height = v16;
        CGRectDivide(v99, &slice, &remainder, ceil(v16 * 0.5), CGRectMinYEdge);
        v17 = remainder.origin.x;
        v18 = remainder.size.width;
        v19 = remainder.origin.y + 1.0;
        v20 = remainder.size.height + -1.0;
        v88.size = slice.origin;
        v88.origin = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
        v21 = swift_allocObject();
        v22 = v88.origin;
        *(v21 + 16) = xmmword_21658CA60;
        *(v21 + 32) = v88.size;
        *(v21 + 48) = v22;
        *(v21 + 64) = v17;
        *(v21 + 72) = v19;
        *(v21 + 80) = v18;
        *(v21 + 88) = v20;
        v23 = 2;
LABEL_23:
        *&v88.size.width = v23;
        goto LABEL_24;
      }
    }
  }
}

uint64_t MosaicSquareGridLayout.quarterRects(of:)(double a1, double a2, double a3, double a4)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, ceil(a3 * 0.5), CGRectMinXEdge);
  v24 = slice;
  y = remainder.origin.y;
  height = remainder.size.height;
  v6 = remainder.origin.x + 1.0;
  v7 = remainder.size.width + -1.0;
  v8 = ceil(slice.size.height * 0.5);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v24, &slice, &remainder, v8, CGRectMinYEdge);
  width = remainder.size.width;
  x = remainder.origin.x;
  v9 = remainder.origin.y + 1.0;
  v10 = remainder.size.height + -1.0;
  v18 = slice;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v25.origin.x = v6;
  v25.origin.y = y;
  v25.size.width = v7;
  v25.size.height = height;
  CGRectDivide(v25, &slice, &remainder, ceil(height * 0.5), CGRectMinYEdge);
  v11 = remainder.origin.x;
  v12 = remainder.size.width;
  v13 = remainder.origin.y + 1.0;
  v14 = remainder.size.height + -1.0;
  size = slice.size;
  origin = slice.origin;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_2165965F0;
  *(result + 32) = v18;
  *(result + 64) = origin;
  *(result + 80) = size;
  *(result + 96) = x;
  *(result + 104) = v9;
  *(result + 112) = width;
  *(result + 120) = v10;
  *(result + 128) = v11;
  *(result + 136) = v13;
  *(result + 144) = v12;
  *(result + 152) = v14;
  return result;
}

Swift::Bool __swiftcall MosaicSquareGridLayout.shouldInvalidateLayout(forBoundsChange:)(__C::CGRect forBoundsChange)
{
  height = forBoundsChange.size.height;
  width = forBoundsChange.size.width;
  v4 = [v1 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v8.width = width;
    v8.height = height;
    v6 = CGSizeEqualToSize(v8, v9);

    LOBYTE(v4) = !v6;
  }

  return v4;
}

uint64_t MosaicSquareGridLayout.layoutAttributesForItem(at:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v3)
  {
    return 0;
  }

  v4 = IndexPath.item.getter();
  result = v1();
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CE93180](v4, result);
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v4 + 32);
LABEL_8:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall MosaicSquareGridLayout.layoutAttributesForElements(in:)(__C::CGRect in)
{
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v49 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v11 = (*MEMORY[0x277D85000] & *v1) + 96;
  v12 = v10();
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_3;
  }

  while (1)
  {
    v16 = v12;
    v13 = __CocoaSet.count.getter();

    if (v13 < 0)
    {
      break;
    }

LABEL_3:
    if (!v13 || (v15 = (*((*v9 & *v4) + 0x90))(0, v13 - 1, x, y, width, height), v14))
    {
      v9 = MEMORY[0x277D84F90];
      goto LABEL_55;
    }

    v3 = v15;
    v16 = v4;
    v17 = v10();
    if (v3 < 0)
    {
      goto LABEL_61;
    }

    v16 = v17;
    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    v13 = v17 >> 62;
    if (v17 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < v3)
    {
      goto LABEL_67;
    }

LABEL_9:
    if ((v16 & 0xC000000000000001) == 0 || v3 == 0)
    {
    }

    else
    {
      type metadata accessor for UICollectionViewLayoutAttributes();

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v20);
        v20 = v21;
      }

      while (v3 != v21);
    }

    v48 = v10;
    if (v13)
    {
      _CocoaArrayWrapper.subscript.getter();
      v10 = v24;
      v22 = v25;
      v27 = v26;

      v23 = v27 >> 1;
    }

    else
    {
      v22 = 0;
      v10 = ((v16 & 0xFFFFFFFFFFFFFF8) + 32);
      v23 = v3;
    }

    v2 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v9 = MEMORY[0x277D84F90];
    if (v23 == v22)
    {
LABEL_30:
      v33 = swift_unknownObjectRelease();
      v34 = (v48)(v33);
      v11 = v34;
      v13 = v34 >> 62;
      if (v34 >> 62)
      {
        goto LABEL_68;
      }

      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35 < v3)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    v28 = v23;
    while (!__OFSUB__(v28--, 1))
    {
      if (v28 < v22 || v28 >= v23)
      {
        goto LABEL_57;
      }

      v30 = *(v10 + v28);
      [v30 frame];
      MaxY = CGRectGetMaxY(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      if (CGRectGetMinY(v52) > MaxY)
      {

        goto LABEL_30;
      }

      v32 = v30;
      MEMORY[0x21CE92260]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v9 = v49;
      if (v28 == v22)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (v16 < 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = v18;
  }

  v34 = __CocoaSet.count.getter();
  if (v34 < 0)
  {
    goto LABEL_74;
  }

  if (__CocoaSet.count.getter() >= v3)
  {
    goto LABEL_9;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  v34 = __CocoaSet.count.getter();
  if (v34 < v3)
  {
    goto LABEL_75;
  }

  v35 = v34;
  v34 = __CocoaSet.count.getter();
  if (v34 < v3)
  {
    goto LABEL_76;
  }

  v34 = __CocoaSet.count.getter();
  if (v34 >= v35)
  {
LABEL_32:
    if ((v11 & 0xC000000000000001) == 0 || v3 == v35)
    {
    }

    else
    {
      if (v3 >= v35)
      {
        goto LABEL_73;
      }

      type metadata accessor for UICollectionViewLayoutAttributes();

      v36 = v3;
      do
      {
        v37 = v36 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v36);
        v36 = v37;
      }

      while (v35 != v37);
    }

    if (v13)
    {
      v4 = _CocoaArrayWrapper.subscript.getter();
      v38 = v39;
      v3 = v40;
      v42 = v41;

      v35 = v42 >> 1;
    }

    else
    {
      v4 = (v11 & 0xFFFFFFFFFFFFFF8);
      v38 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v12 = swift_unknownObjectRetain();
    v11 = v35 - v3;
    if (v35 != v3)
    {
      if (v3 <= v35)
      {
        v43 = v35;
      }

      else
      {
        v43 = v3;
      }

      v10 = (v43 - v3);
      v44 = (v38 + 8 * v3);
      while (v10)
      {
        v45 = *v44;
        [v45 v2[29]];
        MinY = CGRectGetMinY(v53);
        v54.origin.x = x;
        v54.origin.y = y;
        v54.size.width = width;
        v54.size.height = height;
        if (MinY > CGRectGetMaxY(v54))
        {

          goto LABEL_54;
        }

        v47 = v45;
        MEMORY[0x21CE92260]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v49;
        v10 = (v10 - 1);
        ++v44;
        if (!--v11)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease_n();
LABEL_55:
    v34 = v9;
    goto LABEL_77;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result.value._rawValue = v34;
  result.is_nil = v14;
  return result;
}

Swift::Int_optional __swiftcall MosaicSquareGridLayout.binSearch(_:start:end:)(__C::CGRect _, Swift::Int start, Swift::Int end)
{
  if (end >= start)
  {
    v14 = start + end;
    if (__OFADD__(start, end))
    {
      __break(1u);
    }

    else
    {
      height = _.size.height;
      width = _.size.width;
      y = _.origin.y;
      x = _.origin.x;
      v6 = start;
      v5 = end;
      v3 = v14 / 2;
      v8 = MEMORY[0x277D85000];
      v15 = (*((*MEMORY[0x277D85000] & *v4) + 0x60))();
      v7 = v15;
      if ((v15 & 0xC000000000000001) == 0)
      {
        if (v14 < -1)
        {
          __break(1u);
        }

        else if (v3 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v17 = *(v15 + 8 * v3 + 32);
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    v17 = MEMORY[0x21CE93180](v3, v7, _.origin, *&_.origin.y, _.size, *&_.size.height);
LABEL_8:
    v18 = v17;

    [v18 frame];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (CGRectIntersectsRect(v28, v31))
    {

      v13 = 0;
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      if (MaxY >= CGRectGetMinY(v30))
      {
        v25 = v3 - 1;
        v20.n128_f64[0] = x;
        v21.n128_f64[0] = y;
        v22.n128_f64[0] = width;
        v23.n128_f64[0] = height;
        v24 = v6;
      }

      else
      {
        v24 = v3 + 1;
        v20.n128_f64[0] = x;
        v21.n128_f64[0] = y;
        v22.n128_f64[0] = width;
        v25 = v5;
        v23.n128_f64[0] = height;
      }

      v3 = (*((*v8 & *v4) + 0x90))(v24, v25, v20, v21, v22, v23);
      v13 = v26;
    }

    goto LABEL_14;
  }

  v3 = 0;
  v13 = 1;
LABEL_14:
  v16 = v13 & 1;
  v15 = v3;
LABEL_19:
  result.value = v15;
  result.is_nil = v16;
  return result;
}

id MosaicSquareGridLayout.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes] = MEMORY[0x277D84F90];
  v1 = &v0[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds];
  v2 = type metadata accessor for MosaicSquareGridLayout();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MosaicSquareGridLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MosaicSquareGridLayout.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes] = MEMORY[0x277D84F90];
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds];
  v4 = type metadata accessor for MosaicSquareGridLayout();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MosaicSquareGridLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MosaicSquareGridLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIImage_optional __swiftcall UIImage.composedOf(with:rects:targetSize:backgroundColor:)(Swift::OpaquePointer with, Swift::OpaquePointer rects, CGSize targetSize, UIColor backgroundColor)
{
  v5 = v4;
  height = targetSize.height;
  width = targetSize.width;
  UIGraphicsBeginImageContext(targetSize);
  [(objc_class *)backgroundColor.super.isa set];
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = width;
  v40.size.height = height;
  UIRectFill(v40);
  v10 = [v5 drawInRect_];
  v36 = *(rects._rawValue + 2);
  if (v36)
  {
    if (one-time initialization token for views != -1)
    {
      v10 = swift_once();
    }

    if ((with._rawValue & 0xC000000000000001) == 0 && v36 > *((with._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v35 = type metadata accessor for Logger();
    v12 = 0;
    v13 = (rects._rawValue + 56);
    *&v14 = 136315394;
    v33 = v14;
    v34 = v5;
    __swift_project_value_buffer(v35, static CommonLogger.views);
    while (1)
    {
      v17 = v5;

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      v20 = v19;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38 = v22;
        *v21 = v33;
        v23 = v17;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v38);

        *(v21 + 4) = v28;
        *(v21 + 12) = 2080;
        v29 = CGRect.debugDescription.getter();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v38);
        v5 = v34;

        *(v21 + 14) = v31;
        _os_log_impl(&dword_21607C000, v18, v20, "[%s] snowglobe: %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v22, -1, -1);
        MEMORY[0x21CE94770](v21, -1, -1);
      }

      v15 = (with._rawValue & 0xC000000000000001) != 0 ? MEMORY[0x21CE93180](v12, with._rawValue) : *(with._rawValue + v12 + 4);
      v16 = v15;
      ++v12;
      [v15 drawInRect_];

      v13 += 4;
      if (v36 == v12)
      {
        break;
      }

      __swift_project_value_buffer(v35, static CommonLogger.views);
    }
  }

  v32 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v10 = v32;
LABEL_16:
  result.value.super.isa = v10;
  result.is_nil = v11;
  return result;
}

uint64_t specialized static SnowGlobeEffect.layoutRects(for:count:)(uint64_t result, float64_t a2, float64_t a3)
{
  v3 = 7;
  if (result < 7)
  {
    v3 = result;
  }

  _VF = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (_VF)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  if (v5 <= 6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = outlined read-only object #7 of one-time initialization function for avatarLayout[v5 + 4];

      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_7:
  v8 = *(v7 + 16);
  if (v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9.f64[0] = a2;
    v9.f64[1] = a3;
    v10 = vdivq_f64(v9, vdupq_n_s64(0x4056000000000000uLL));
    v11 = v10.f64[1] < 100.0 && v10.f64[0] < 100.0;
    v12 = (v7 + 48);
    __asm { FMOV            V4.2D, #0.5 }

    do
    {
      v17 = 0uLL;
      v18 = 0uLL;
      if (v11)
      {
        v18 = vmulq_f64(v10, *v12);
        v17 = vaddq_f64(vmulq_f64(vsubq_f64(v9, v18), _Q4), vmulq_f64(v10, v12[-1]));
      }

      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        v26 = v10;
        v28 = v9;
        v23 = v18;
        v24 = _Q4;
        v22 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v17 = v22;
        v18 = v23;
        _Q4 = v24;
        v10 = v26;
        v9 = v28;
      }

      *(v6 + 16) = v20 + 1;
      v21 = (v6 + 32 * v20);
      v21[2] = v17;
      v21[3] = v18;
      v12 += 2;
      --v8;
    }

    while (v8);
  }

  return v6;
}

uint64_t specialized static SnowGlobeEffect.image(for:targetSize:)(unint64_t a1, float64_t a2, float64_t a3)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() <= 7)
    {
      goto LABEL_3;
    }

    result = __CocoaSet.count.getter();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (__CocoaSet.count.getter() < 7)
    {
      __break(1u);
    }

LABEL_8:
    if ((v5 & 0xC000000000000001) != 0)
    {
      type metadata accessor for UIImage();

      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      _ArrayBuffer._typeCheckSlowPath(_:)(2);
      _ArrayBuffer._typeCheckSlowPath(_:)(3);
      _ArrayBuffer._typeCheckSlowPath(_:)(4);
      _ArrayBuffer._typeCheckSlowPath(_:)(5);
      _ArrayBuffer._typeCheckSlowPath(_:)(6);
      if (!v6)
      {
LABEL_10:
        v8 = v5 & 0xFFFFFFFFFFFFFF8;
        v9 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v10 = 15;
        goto LABEL_14;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_10;
      }
    }

    v8 = _CocoaArrayWrapper.subscript.getter();
    v9 = v11;
    v6 = v12;
    v10 = v13;
    if ((v13 & 1) == 0)
    {
LABEL_13:
      specialized _copyCollectionToContiguousArray<A>(_:)(v8, v9, v6, v10);
      v5 = v14;
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

LABEL_14:
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);

    if (__OFSUB__(v10 >> 1, v6))
    {
      __break(1u);
    }

    else if (v16 == (v10 >> 1) - v6)
    {
      v5 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v5)
      {
        swift_unknownObjectRelease();
        v5 = MEMORY[0x277D84F90];
      }

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 8uLL)
  {
    goto LABEL_8;
  }

LABEL_3:

LABEL_20:
  if (v5 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = specialized static SnowGlobeEffect.layoutRects(for:count:)(v17, a2, a3);
  v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v20 = [objc_opt_self() clearColor];
  v21 = UIImage.composedOf(with:rects:targetSize:backgroundColor:)(v5, v18, __PAIR128__(*&a3, *&a2), v20);

  return v21;
}

double AssetViewModel.Style.horizontalMargin.getter()
{
  result = 6.0;
  if ((*v0 - 3) <= 3u)
  {
    return dbl_21659F7C0[(*v0 - 3)];
  }

  return result;
}

double AssetViewModel.Style.iconToLabelDistance.getter()
{
  result = 8.0;
  if (*v0 - 3 <= 5)
  {
    return dbl_21659F7E0[(*v0 - 3)];
  }

  return result;
}

void AssetViewModel.Style.symbolFont.getter()
{
  v1 = 1 << *v0;
  if ((v1 & 0x87) != 0)
  {
    v3 = objc_opt_self();
    v4 = [v3 preferredFontForTextStyle_];
    v5 = [v4 fontDescriptor];
    v6 = [v5 fontDescriptorWithSymbolicTraits_];

    if (v6)
    {
LABEL_5:
      [v3 fontWithDescriptor:v6 size:0.0];

      return;
    }

    __break(1u);
  }

  else
  {
    if ((v1 & 0x158) != 0)
    {
      v2 = [objc_opt_self() systemFontOfSize:48.0 weight:*MEMORY[0x277D74420]];
      return;
    }

    v3 = objc_opt_self();
    v4 = [v3 preferredFontForTextStyle_];
    v7 = [v4 fontDescriptor];
    v6 = [v7 fontDescriptorWithSymbolicTraits_];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void *TransferVideoViewModel.urlBasedVideo.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferVideoViewModel.urlBasedVideo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL TransferVideoViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferVideoViewModel.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL TransferVideoViewModel.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferVideoViewModel.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferVideoViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferVideoViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferVideoViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TransferVideoViewModel.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferVideoViewModel.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TransferVideoViewModel.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferVideoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferVideoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferVideoViewModel.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  *&v3[OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo] = 0;
  type metadata accessor for URLBasedVideo();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = v5;

  return TransferPhotoFamilyViewModel.init(coder:)(a1);
}

id TransferVideoViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  *(v2 + OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo) = 0;
  type metadata accessor for URLBasedVideo();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v6 = *(v2 + v4);
  *(v2 + v4) = v5;

  return TransferPhotoFamilyViewModel.init(coder:)(a1);
}

Swift::Void __swiftcall TransferVideoViewModel.encode(with:)(NSCoder with)
{
  TransferPhotoFamilyViewModel.encode(with:)(with);
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x298))();
  v4 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006F65646956);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

void TransferVideoViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferVideoViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferVideoViewModel.__allocating_init(videoViewModel:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized TransferVideoViewModel.init(videoViewModel:)(a1, a2);

  return v6;
}

id TransferVideoViewModel.init(videoViewModel:)(void *a1, uint64_t a2)
{
  v3 = specialized TransferVideoViewModel.init(videoViewModel:)(a1, a2);

  return v3;
}

id TransferVideoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferVideoViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized TransferVideoViewModel.init(videoViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v88 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  *&v3[OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo] = 0;
  v14 = swift_getObjectType();
  v15 = (*(a2 + 24))(v14, a2);
  if (v15)
  {
    v16 = v15;
    v89 = type metadata accessor for URLBasedVideo();
    v17 = objc_allocWithZone(v89);
    v92 = a2;
    v18 = v17;
    v90 = v13;
    v19 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
    v91 = a1;
    v21 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
    v22 = type metadata accessor for UUID();
    v23 = *(*(v22 - 8) + 56);
    v23(&v18[v21], 1, 1, v22);
    *&v18[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__video] = v16;
    v18[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__filterExif] = 1;
    v24 = v16;
    UUID.init()();
    v23(v12, 0, 1, v22);
    swift_beginAccess();
    a1 = v91;
    outlined assign with take of UUID?(v12, &v18[v21]);
    swift_endAccess();
    v96.receiver = v18;
    a2 = v92;
    v96.super_class = v89;
    v25 = objc_msgSendSuper2(&v96, sel_init);

    v26 = v90;
    swift_beginAccess();
    v27 = *&v3[v26];
    *&v3[v26] = v25;
  }

  v28 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v29 = a1;
  v30 = v28();
  v91 = v31;
  v92 = v30;

  v32 = *(a2 + 8);
  (*(*(v32 + 8) + 24))(v14);
  (*(v32 + 24))(&v102, v14, v32);
  (*(v32 + 16))(&v104, v14, v32);
  (*(v32 + 32))(&v106, v14, v32);
  v33 = (*(v32 + 40))(v14, v32);
  v35 = v34;
  LODWORD(v90) = *(v29 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v36 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect] = 0;
  v37 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect] = 0;
  v38 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect] = 0;
  v39 = &v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier];
  *v39 = 0;
  v39[1] = 0;
  if ((v103 & 1) == 0)
  {
    width = v102.size.width;
    height = v102.size.height;
    x = v102.origin.x;
    y = v102.origin.y;
    v46 = CGRectGetWidth(v102);
    v108.origin.x = x;
    v108.origin.y = y;
    v108.size.width = width;
    v108.size.height = height;
    *&height = CGRectGetHeight(v108);
    v47 = type metadata accessor for ScreenRect();
    v48 = objc_allocWithZone(v47);
    v44 = x;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v44;
    v45 = y;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v45;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v46;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(height);
    v97.receiver = v48;
    v97.super_class = v47;
    v49 = objc_msgSendSuper2(&v97, sel_init);
    swift_beginAccess();
    v50 = *&v3[v36];
    *&v3[v36] = v49;
  }

  if ((v105 & 1) == 0)
  {
    v52 = v104.size.width;
    v51 = v104.size.height;
    v54 = v104.origin.x;
    v53 = v104.origin.y;
    v57 = CGRectGetWidth(v104);
    v109.origin.x = v54;
    v109.origin.y = v53;
    v109.size.width = v52;
    v109.size.height = v51;
    *&v51 = CGRectGetHeight(v109);
    v58 = type metadata accessor for ScreenRect();
    v59 = objc_allocWithZone(v58);
    v55 = v54;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v55;
    v56 = v53;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v56;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v57;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v51);
    v98.receiver = v59;
    v98.super_class = v58;
    v60 = objc_msgSendSuper2(&v98, sel_init);
    swift_beginAccess();
    v61 = *&v3[v37];
    *&v3[v37] = v60;
  }

  if ((v107 & 1) == 0)
  {
    v63 = v106.size.width;
    v62 = v106.size.height;
    v65 = v106.origin.x;
    v64 = v106.origin.y;
    v68 = CGRectGetWidth(v106);
    v110.origin.x = v65;
    v110.origin.y = v64;
    v110.size.width = v63;
    v110.size.height = v62;
    *&v62 = CGRectGetHeight(v110);
    v69 = type metadata accessor for ScreenRect();
    v70 = objc_allocWithZone(v69);
    v66 = v65;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v66;
    v67 = v64;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v67;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v68;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v62);
    v99.receiver = v70;
    v99.super_class = v69;
    v71 = objc_msgSendSuper2(&v99, sel_init);
    swift_beginAccess();
    v72 = *&v3[v38];
    *&v3[v38] = v71;
  }

  swift_beginAccess();
  *v39 = v33;
  v39[1] = v35;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v73 = static ScreenSize.zero;
  v74 = v94;
  v75 = v95;
  outlined init with copy of DateInterval?(v95, v94);
  v76 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v77 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v77 = 0;
  v77[1] = 0;
  v78 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v79 = type metadata accessor for DateInterval();
  (*(*(v79 - 8) + 56))(&v3[v78], 1, 1, v79);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v73;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v80 = *&v3[v76];
  *&v3[v76] = 0;
  v81 = v73;

  swift_beginAccess();
  v82 = v91;
  *v77 = v92;
  v77[1] = v82;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v74, &v3[v78]);
  v83 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v90;
  (*(ObjectType + 328))(v101, v83);
  LOBYTE(v78) = v101[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v84 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v84 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v84 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v84 + 112) = v78;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v84;
  v85 = type metadata accessor for AssetViewModel();
  v100.receiver = v3;
  v100.super_class = v85;
  v86 = objc_msgSendSuper2(&v100, sel_init);
  outlined destroy of DateInterval?(v74);
  outlined destroy of DateInterval?(v75);
  return v86;
}

uint64_t type metadata accessor for TransferVideoViewModel()
{
  result = type metadata singleton initialization cache for TransferVideoViewModel;
  if (!type metadata singleton initialization cache for TransferVideoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

uint64_t MutableLivePhotoViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for DateInterval();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v17)
  {
    return 0;
  }

  v56 = v5;
  v57 = v17;
  v18 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v18, v12);
  v19 = v59;
  if ((*(v59 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v12);
    return 0;
  }

  (*(v19 + 32))(v15, v12, v13);
  (*(v2 + 16))(v58, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
  v21 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v22 = v21[1];
  v54 = *v21;
  v55 = v22;
  (*(v19 + 16))(v10, v15, v13);
  (*(v19 + 56))(v10, 0, 1, v13);
  v23 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
  swift_beginAccess();
  v24 = *(v0 + v23);
  v25 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  swift_beginAccess();
  v26 = *(v25 + 16);
  v61[0] = *v25;
  v61[1] = v26;
  v62 = *(v25 + 32);
  v27 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  swift_beginAccess();
  v28 = *(v27 + 16);
  v63[0] = *v27;
  v63[1] = v28;
  v64 = *(v27 + 32);
  v29 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  swift_beginAccess();
  v30 = *(v29 + 16);
  v65[0] = *v29;
  v65[1] = v30;
  v66 = *(v29 + 32);
  v31 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
  swift_beginAccess();
  v32 = v31[1];
  v53 = *v31;
  v33 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
  swift_beginAccess();
  v34 = v33[1];
  v52 = *v33;
  if (v24)
  {
    v35 = v32;
    v36 = *(*v24 + 96);
    v37 = v34;

    v38 = v16;

    v50 = v35;

    v40 = v36(v39);
    if (v40)
    {
      v41 = v40;
      v42 = v24;
      v43 = Image.uiImage.getter();

      v44 = v56;
      if (v43)
      {

        v45 = 1;
      }

      else
      {
        v45 = 0;
      }

      v47 = v42;
      v51 = v42;
    }

    else
    {
      v45 = 0;
      v51 = v24;
      v47 = v24;
      v44 = v56;
    }

    v32 = v50;
  }

  else
  {
    v37 = v34;

    v46 = v16;

    v51 = 0;
    v45 = 0;
    v47 = 0;
    v44 = v56;
  }

  v60[0] = v45;
  UUID.init()();
  type metadata accessor for DBLivePhotoModel();
  swift_allocObject();
  v48 = specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(v44, v58, v16, v57, v54, v55, v10, v47, v61, v63, v65, v53, v32, v52, v37, v60);

  (*(v59 + 8))(v15, v13);
  return v48;
}

uint64_t type metadata accessor for StateOfMind()
{
  result = type metadata singleton initialization cache for StateOfMind;
  if (!type metadata singleton initialization cache for StateOfMind)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StateOfMind.labelsRawValues.getter()
{
  type metadata accessor for StateOfMind();
}

uint64_t StateOfMind.associationsRawValues.getter()
{
  type metadata accessor for StateOfMind();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StateOfMind.CodingKeys()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x65636E656C6176;
  v4 = 0x6152736C6562616CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x56776152646E696BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StateOfMind.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized StateOfMind.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StateOfMind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StateOfMind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StateOfMind.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI11StateOfMindV10CodingKeys33_943851A03D1A3928EFDA8A64FA1FACB5LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for StateOfMind();
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + *(v9 + 32));
    v12 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

int *StateOfMind.init(date:kindRawValue:valence:labelsRawValues:associationsRawValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  outlined init with take of Date?(a1, a8);
  result = type metadata accessor for StateOfMind();
  v16 = a8 + result[5];
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  v17 = a8 + result[6];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  *(a8 + result[7]) = a6;
  *(a8 + result[8]) = a7;
  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of StateOfMind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for StateOfMind()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [Int]?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [Int]?()
{
  if (!lazy cache variable for type metadata for [Int]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Int]?);
    }
  }
}

uint64_t specialized StateOfMind.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56776152646E696BLL && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6152736C6562616CLL && a2 == 0xEF7365756C615677 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002165825D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void specialized Sequence.forEach(_:)(unint64_t a1, double *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CE93180](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      closure #1 in NotificationHandlingManager.fetchEligibleSuggestions(with:)(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ9MomentsUI12DBAssetModelC5StyleO_Tt1g5(Swift::Int result, uint64_t a2)
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
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x21CE937C0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

uint64_t _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = MEMORY[0x21CE937A0](*(a2 + 40), v13);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

uint64_t NotificationHandlingManager.handleEngagementEvent(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.handleEngagementEvent(with:), 0, 0);
}

uint64_t NotificationHandlingManager.handleEngagementEvent(with:)()
{
  v1 = v0[4];
  v2 = specialized static DefaultsManager.Notifications.lastNotificationClientBundleID.getter();
  v0[5] = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = specialized static DefaultsManager.Notifications.lastNotificationClientURL.getter();
  v0[6] = v7;
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = NotificationHandlingManager.handleEngagementEvent(with:);
  v12 = v0[4];
  v13 = v0[2];

  return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(v12, v4, v5, v8, v9, 0, v13);
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(*v1 + 64) = v0;

  outlined destroy of UTType?(v2, &_s10Foundation4UUIDVSgMd);

  if (v0)
  {

    return MEMORY[0x2822009F8](NotificationHandlingManager.handleEngagementEvent(with:), 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for DateComponents();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v2 = v5;
  return result;
}

id NotificationHandlingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static NotificationHandlingManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NotificationHandlingManager.shared;

  return v1;
}

id NotificationHandlingManager.notificationCenter.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void NotificationHandlingManager.notificationCenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id NotificationHandlingManager.journalNotificationCenter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216578900);
  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

id NotificationHandlingManager.init()()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v3 = &v0[OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static CommonLogger.notification);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21607C000, v5, v6, "Initializing NotificationHandlingManager", v7, 2u);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v9 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  v10 = [v8 initWithBundleIdentifier_];

  v11 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter;
  *&v1[OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter] = v10;
  v12 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UNNotificationAction);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = Array._bridgeToObjectiveC()().super.isa;
  v15 = [objc_opt_self() categoryWithIdentifier:v12 actions:isa intentIdentifiers:v14 options:1];

  swift_beginAccess();
  v16 = *&v1[v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658E210;
  *(inited + 32) = v15;
  v18 = v16;
  v19 = v15;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo22UNNotificationCategoryC_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UNNotificationCategory);
  lazy protocol witness table accessor for type UNNotificationCategory and conformance NSObject();
  v20 = Set._bridgeToObjectiveC()().super.isa;

  [v18 setNotificationCategories_];

  v23.receiver = v1;
  v23.super_class = type metadata accessor for NotificationHandlingManager();
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id NotificationHandlingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationHandlingManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 264) = a7;
  *(v8 + 272) = v7;
  *(v8 + 532) = a6;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  *(v8 + 232) = a2;
  *(v8 + 240) = a3;
  *(v8 + 224) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

uint64_t NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)()
{
  v55 = v0;
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 264);
  v4 = *(v0 + 224);
  v5 = type metadata accessor for Logger();
  *(v0 + 312) = __swift_project_value_buffer(v5, static CommonLogger.notification);
  outlined init with copy of DateInterval?(v4, v2, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DateInterval?(v3, v1, &_s10Foundation4UUIDVSgMd);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 304);
  if (v8)
  {
    v53 = v7;
    v10 = *(v0 + 288);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v15 = 136316162;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v54);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v54);
    *(v15 + 22) = 2080;
    outlined init with copy of DateInterval?(v9, v10, &_s10Foundation4UUIDVSgMd);
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    v51 = *(v17 + 48);
    v18 = v51(v10, 1, v16);
    v19 = *(v0 + 288);
    if (v18 == 1)
    {
      outlined destroy of UTType?(*(v0 + 288), &_s10Foundation4UUIDVSgMd);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v21 = UUID.uuidString.getter();
      v20 = v23;
      (*(v17 + 8))(v19, v16);
    }

    v24 = *(v0 + 296);
    v25 = *(v0 + 280);
    v26 = *(v0 + 532);
    outlined destroy of UTType?(*(v0 + 304), &_s10Foundation4UUIDVSgMd);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v54);

    *(v15 + 24) = v27;
    *(v15 + 32) = 1024;
    *(v15 + 34) = v26;
    *(v15 + 38) = 2080;
    outlined init with copy of DateInterval?(v24, v25, &_s10Foundation4UUIDVSgMd);
    v28 = v51(v25, 1, v16);
    v29 = *(v0 + 280);
    if (v28 == 1)
    {
      outlined destroy of UTType?(*(v0 + 280), &_s10Foundation4UUIDVSgMd);
      v30 = 0xE300000000000000;
      v31 = 7104878;
    }

    else
    {
      v31 = UUID.uuidString.getter();
      v30 = v32;
      (*(v17 + 8))(v29, v16);
    }

    outlined destroy of UTType?(*(v0 + 296), &_s10Foundation4UUIDVSgMd);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v54);

    *(v15 + 40) = v33;
    _os_log_impl(&dword_21607C000, v6, v53, "[NotificationHandlingManager] didReceiveNotificationServiceTrigger, bundleID: %s, customURLFormat: %s, testSuggestionID: %s forRealtime: %{BOOL}d, from engaged suggestion: %s", v15, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v52, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {
    v22 = *(v0 + 296);

    outlined destroy of UTType?(v22, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v9, &_s10Foundation4UUIDVSgMd);
  }

  v34 = *(v0 + 272);
  v36 = *(v0 + 248);
  v35 = *(v0 + 256);
  v37 = *(v0 + 232);
  v38 = *(v0 + 240);
  v39 = *(v0 + 224);
  v40 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID;
  *(v0 + 320) = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID;
  v41 = (v34 + v40);
  *v41 = v37;
  v41[1] = v38;

  v42 = (v34 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL);
  *v42 = v36;
  v42[1] = v35;

  v43 = type metadata accessor for UUID();
  *(v0 + 528) = (*(*(v43 - 8) + 48))(v39, 1, v43);
  v44 = *v41;
  v45 = v41[1];
  v46 = MEMORY[0x277D837D0];
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v44;
  *(v0 + 152) = v45;

  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v0 + 144, 0xD00000000000001ELL, 0x8000000216581520);
  outlined destroy of UTType?(v0 + 144, &_sypSgMd);
  v48 = *v42;
  v47 = v42[1];
  *(v0 + 200) = v46;
  *(v0 + 176) = v48;
  *(v0 + 184) = v47;

  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v0 + 176, 0xD000000000000019, 0x8000000216581500);
  outlined destroy of UTType?(v0 + 176, &_sypSgMd);
  v49 = swift_task_alloc();
  *(v0 + 328) = v49;
  *v49 = v0;
  v49[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);

  return NotificationHandlingManager.clearPendingNotifications()();
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 272)) + 0x68))();
  *(v0 + 336) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_25;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v1 = *(v0 + 208);

  v2 = [v1 authorizationStatus];
  if (v2 == 2)
  {
    v3 = (*(v0 + 272) + *(v0 + 320));
    v5 = *v3;
    v4 = v3[1];
    objc_allocWithZone(MEMORY[0x277CC1E70]);

    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    *v11 = v0;
    v11[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
    v12 = *(v0 + 264);

    return NotificationHandlingManager.trackAndProcessDeliveredNotification(from:)(v12);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21607C000, v6, v7, "[NotificationHandlingManager] JS Notifications not authorized", v8, 2u);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v1 = specialized NotificationHandlingManager.getScheduleType()();
  *(v0 + 352) = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_21607C000, v2, v3, "[NotificationHandlingManager] Schedule type: %lu", v4, 0xCu);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = *(v0 + 528);

  specialized NotificationHandlingManager.weeklyCountCleanup()();
  if (v5 != 1)
  {
LABEL_9:
    v10 = 0;
LABEL_10:
    *(v0 + 408) = v10;
    v11 = swift_task_alloc();
    *(v0 + 416) = v11;
    *v11 = v0;
    v11[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
    v12 = *(v0 + 224);

    return NotificationHandlingManager.fetchEligibleSuggestions(with:)(v12);
  }

  if (v1 == 2)
  {
    v10 = specialized NotificationHandlingManager.getScheduledNotificationTrigger()();
    if (!v10)
    {
      lazy protocol witness table accessor for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError();
      swift_allocError();
      *v16 = 2;
      swift_willThrow();

      v17 = *(v0 + 8);
LABEL_23:

      return v17();
    }

    goto LABEL_10;
  }

  if (v1 != 1)
  {
    if (!v1)
    {
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "[NotificationHandlingManager] Ending notification servicing, schedule is off...";
LABEL_21:
        _os_log_impl(&dword_21607C000, v6, v7, v9, v8, 2u);
        MEMORY[0x21CE94770](v8, -1, -1);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if ((*(v0 + 532) & 1) == 0)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "[NotificationHandlingManager] Ending notification servicing, schedule is smart but realtime trigger is false.";
      goto LABEL_21;
    }

LABEL_22:

    v17 = *(v0 + 8);
    goto LABEL_23;
  }

  *(v0 + 360) = objc_opt_self();
  *(v0 + 368) = type metadata accessor for MainActor();
  *(v0 + 376) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), v15, v14);
}

{
  v1 = *(v0 + 360);

  *(v0 + 384) = [v1 currentDevice];

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  *(v0 + 392) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), v2, v1);
}

{
  v1 = *(v0 + 384);

  *(v0 + 400) = [v1 userInterfaceIdiom];

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  if (v0[50])
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "[NotificationHandlingManager] Only iphone is eligible for smart schedule.";
LABEL_13:
      _os_log_impl(&dword_21607C000, v1, v2, v4, v3, 2u);
      MEMORY[0x21CE94770](v3, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (!NotificationHandlingManager.doesNextSmartNotificationPassRecencyCheck()())
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "[NotificationHandlingManager] Ending notification servicing, last posted was under 20h from previous notification";
      goto LABEL_13;
    }

LABEL_14:

    v8 = v0[1];

    return v8();
  }

  if (!specialized NotificationHandlingManager.isEligibleForSmartNotification()())
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "[NotificationHandlingManager] Ending notification servicing, quota maxed, ineligible for new smart notification";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v0[51] = 0;
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  v6 = v0[28];

  return NotificationHandlingManager.fetchEligibleSuggestions(with:)(v6);
}

{
  v43 = v0;
  if (*(v0 + 432))
  {
    v1 = *(v0 + 432);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_21:

    v4 = 0;
    goto LABEL_22;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CE93180](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  *(v0 + 440) = v3;

  v5 = *(&v4->isa + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
  if (!v5)
  {
LABEL_22:
    *(v0 + 480) = v4;
    v23 = *(v0 + 352);
    if (v23 == 1)
    {
      if (NotificationHandlingManager.isEligibleForGenericSmartNotification()())
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_21607C000, v29, v30, "[NotificationHandlingManager] 0 eligible suggestions, attempting to post fallback ttw notification", v31, 2u);
          MEMORY[0x21CE94770](v31, -1, -1);
        }

        v41 = 0xD00000000000001ELL;
        v42 = 0x8000000216582620;
        *(v0 + 216) = 0;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v32);

        v34 = v41;
        v33 = v42;
        *(v0 + 504) = v42;
        v35 = swift_task_alloc();
        *(v0 + 512) = v35;
        *v35 = v0;
        v35[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
        v36 = *(v0 + 408);

        return NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(v36, v34, v33, 1);
      }
    }

    else if (v23 == 2)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_21607C000, v24, v25, "[NotificationHandlingManager] 0 eligible suggestions, attempting to post fallback ttw notification", v26, 2u);
        MEMORY[0x21CE94770](v26, -1, -1);
      }

      v27 = *(v0 + 528);

      v28 = swift_task_alloc();
      *(v0 + 488) = v28;
      *v28 = v0;
      v28[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);

      return NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)(0, v27 != 1);
    }

    v19 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    v38 = os_log_type_enabled(v19, v37);
    v18 = *(v0 + 408);
    if (v38)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21607C000, v19, v37, "[NotificationHandlingManager] Ending notification servicing, nothing to do...", v39, 2u);
      MEMORY[0x21CE94770](v39, -1, -1);
    }

    goto LABEL_37;
  }

  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
  v4 = v4;
  v7 = v5;
  v6();
  v9 = v8;

  if (!v9)
  {

    goto LABEL_22;
  }

  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136315138;
    v15 = UUID.uuidString.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v41);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21607C000, v11, v12, "[NotificationHandlingManager] Top suggestionID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);
  }

  if (*(v0 + 528) == 1 && (*(v0 + 352) - 1) > 1)
  {
    v4 = *(v0 + 440);
    v18 = *(v0 + 408);
    v19 = v4;
LABEL_37:

    v40 = *(v0 + 8);

    return v40();
  }

  v20 = swift_task_alloc();
  *(v0 + 448) = v20;
  *v20 = v0;
  v20[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  v21 = *(v0 + 408);
  v22 = *(v0 + 352);

  return NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:)(v10, v21, v22);
}

{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (*(v0 + 352) == 2 && *(v0 + 528) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);

    return NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)(1, 0);
  }

  else
  {
    v3 = *(v0 + 440);
    v4 = *(v0 + 408);

    v5 = *(v0 + 8);

    return v5();
  }
}

{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[55];
  v2 = v0[51];

  v3 = v0[1];

  return v3();
}

{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[55];
  v2 = v0[51];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[55];
  v2 = v0[51];

  v3 = v0[1];

  return v3();
}

uint64_t NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v5 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    *(v4 + 432) = a1;
    v5 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t NotificationHandlingManager.clearPendingNotifications()()
{
  v1[47] = v0;
  v2 = type metadata accessor for Date();
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  v1[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.clearPendingNotifications(), 0, 0);
}

{
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[59] = __swift_project_value_buffer(v1, static CommonLogger.notification);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[NotificationHandlingManager] Clearing pending notifications...", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = v0[47];

  v6 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);
  v7 = ((*MEMORY[0x277D85000] & *v5) + 176) & 0xFFFFFFFFFFFFLL | 0x6128000000000000;
  v0[60] = v6;
  v0[61] = v7;
  v8 = v6();
  v0[62] = v8;
  v0[2] = v0;
  v0[7] = v0 + 45;
  v0[3] = NotificationHandlingManager.clearPendingNotifications();
  v9 = swift_continuation_init();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo21UNNotificationRequestCGs5NeverOGMd);
  v0[63] = v10;
  v0[25] = v10;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotificationRequest];
  v0[21] = &block_descriptor_13_0;
  v0[22] = v9;
  [v8 getPendingNotificationRequestsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.clearPendingNotifications(), 0, 0);
}

{
  v1 = *(v0 + 360);

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    v3 = v2;
    v29 = v0;
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v0;
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return MEMORY[0x282200938](v2);
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v7 = v1;
  do
  {
    if (v5)
    {
      v8 = MEMORY[0x21CE93180](v4, v1);
    }

    else
    {
      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = [v8 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = 0x54656D6954707061;
    v14._object = 0xEE0065746972576FLL;
    if (String.hasPrefix(_:)(v14))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v11;
      *(v17 + 5) = v13;
      v1 = v7;
    }

    else
    {
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_17:
  v18 = v29[63];
  v19 = v29[60];
  v20 = v29[47];

  v22 = v19(v21);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 removePendingNotificationRequestsWithIdentifiers_];

  v24 = *((*MEMORY[0x277D85000] & *v20) + 0x68);
  v25 = (*MEMORY[0x277D85000] & *v20) + 104;
  v29[64] = v24;
  v29[65] = v25 & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v26 = v24();
  v29[66] = v26;
  v29[10] = v29;
  v29[15] = v29 + 46;
  v29[11] = NotificationHandlingManager.clearPendingNotifications();
  v27 = swift_continuation_init();
  v29[33] = v18;
  v29[26] = MEMORY[0x277D85DD0];
  v29[27] = 1107296256;
  v29[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotificationRequest];
  v29[29] = &block_descriptor_16;
  v29[30] = v27;
  [v26 getPendingNotificationRequestsWithCompletionHandler_];
  v2 = (v29 + 10);

  return MEMORY[0x282200938](v2);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.clearPendingNotifications(), 0, 0);
}

{
  v81 = v0;
  v3 = *(v0 + 368);

  v75 = v3;
  if (v3 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_24;
  }

  v6 = 0;
  v71 = v74[53];
  v72 = v74[54];
  v70 = v3 & 0xC000000000000001;
  v79 = (v74[49] + 56);
  *&v4 = 136315394;
  v69 = v4;
  v73 = v5;
  do
  {
    if (v70)
    {
      v13 = MEMORY[0x21CE93180](v6, v75);
    }

    else
    {
      v13 = *(v75 + 8 * v6 + 32);
    }

    v14 = v13;
    v15 = [v13 content];
    v16 = [v15 userInfo];

    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v74[43] = 0x44676E6974736F70;
    v74[44] = 0xEB00000000657461;
    AnyHashable.init<A>(_:)();
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)((v74 + 34)), (v19 & 1) != 0))
    {
      v20 = v74[58];
      v21 = v74[48];
      outlined init with copy of Any(*(v17 + 56) + 32 * v18, (v74 + 39));
      outlined destroy of AnyHashable((v74 + 34));
      v22 = swift_dynamicCast();
      v23 = *v79;
      v24 = v22 ^ 1u;
      v25 = v20;
    }

    else
    {
      v26 = v74[58];
      v21 = v74[48];
      outlined destroy of AnyHashable((v74 + 34));
      v23 = *v79;
      v25 = v26;
      v24 = 1;
    }

    v77 = v23;
    v23(v25, v24, 1, v21);
    v78 = v14;
    v27 = [v14 identifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    v76 = v17;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v80 = v34;
      *v33 = v69;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v80);
      *(v33 + 12) = 2080;
      v35 = Dictionary.description.getter();
      v37 = v28;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v80);

      *(v33 + 14) = v38;
      v28 = v37;
      _os_log_impl(&dword_21607C000, v31, v32, "[NotificationHandlingManager] Clearing pending notification with identifier: %s, with info: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v34, -1, -1);
      MEMORY[0x21CE94770](v33, -1, -1);
    }

    if (v28 != 0xD000000000000015 || 0x8000000216582660 != v30)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v8 = v74[57];
    v7 = v74[58];
    v9 = v74[54];
    v10 = v74[48];

    outlined init with copy of DateInterval?(v7, v8, &_s10Foundation4DateVSgMd);
    v11 = *(v71 + 24);
    v77(&v9[v11], 1, 1, v10);
    v12 = *(v71 + 28);
    *v9 = 2;
    *(v72 + 8) = 0;
    outlined assign with take of Date?(v8, &v9[v11]);
    *&v9[v12] = v76;
    NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();

    outlined destroy of NotificationAnalyticsManager.NotificationEvent(v9);
    ++v6;
    outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd);
  }

  while (v73 != v6);
LABEL_20:
  v39 = v74;
  v40 = v74[64];
  v41 = v74[56];
  v42 = v74[48];
  v43 = v74[49];

  v45 = v40(v44);
  [v45 removeAllPendingNotificationRequests];

  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(0, v41);
  v1 = *(v43 + 48);
  if (v1(v41, 1, v42) == 1)
  {
    outlined destroy of UTType?(v74[56], &_s10Foundation4DateVSgMd);
    goto LABEL_28;
  }

  v46 = v74[51];
  v47 = v74[48];
  v48 = v74[49];
  (*(v48 + 32))(v74[52], v74[56], v47);
  static Date.now.getter();
  v49 = static Date.> infix(_:_:)();
  v2 = *(v48 + 8);
  v2(v46, v47);
  if ((v49 & 1) == 0)
  {
    v2(v74[52], v74[48]);
    goto LABEL_28;
  }

  if (one-time initialization token for momentsUI != -1)
  {
    goto LABEL_42;
  }

LABEL_24:
  v50 = static DefaultsManager.momentsUI;
  v51 = v74[52];
  v52 = v74[48];
  if (static DefaultsManager.momentsUI)
  {
    v53 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165809D0);
    [v50 removeObjectForKey_];
  }

  v2(v51, v52);
  v39 = v74;
LABEL_28:
  v54 = v39[55];
  v55 = v39[48];
  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(1, v54);
  if (v1(v54, 1, v55) == 1)
  {
    outlined destroy of UTType?(v39[55], &_s10Foundation4DateVSgMd);
  }

  else
  {
    v56 = v39[51];
    v57 = v39[48];
    v58 = v39[49];
    (*(v58 + 32))(v39[50], v39[55], v57);
    static Date.now.getter();
    v59 = static Date.> infix(_:_:)();
    v60 = *(v58 + 8);
    v60(v56, v57);
    if (v59)
    {
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v61 = static DefaultsManager.momentsUI;
      v62 = v39[50];
      v63 = v39[48];
      if (static DefaultsManager.momentsUI)
      {
        v64 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A10);
        [v61 removeObjectForKey_];
      }

      v65 = v62;
      v66 = v63;
    }

    else
    {
      v65 = v39[50];
      v66 = v39[48];
    }

    v60(v65, v66);
  }

  v67 = v39[1];

  return v67();
}

uint64_t NotificationHandlingManager.currentJSAuthorizationStatus()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJSAuthorizationStatus(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 152)) + 0x68))();
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = NotificationHandlingManager.currentJSAuthorizationStatus();
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_19_1;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJSAuthorizationStatus(), 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = [v1 authorizationStatus];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t NotificationHandlingManager.trackAndProcessDeliveredNotification(from:)(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2[43] = swift_task_alloc();
  v2[44] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  v2[45] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.trackAndProcessDeliveredNotification(from:), 0, 0);
}

uint64_t NotificationHandlingManager.trackAndProcessDeliveredNotification(from:)()
{
  v1 = v0[40];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 104) & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v0[49] = v2;
  v0[50] = v3;
  v4 = v2();
  v0[51] = v4;
  v0[2] = v0;
  v0[7] = v0 + 38;
  v0[3] = NotificationHandlingManager.trackAndProcessDeliveredNotification(from:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo14UNNotificationCGs5NeverOGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotification];
  v0[13] = &block_descriptor_22;
  v0[14] = v5;
  [v4 getDeliveredNotificationsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.trackAndProcessDeliveredNotification(from:), 0, 0);
}

{
  v114 = v0;
  v1 = v0;
  v2 = *(v0 + 304);

  if (one-time initialization token for notification != -1)
  {
LABEL_65:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.notification);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = v2 >> 62;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&dword_21607C000, v4, v5, "Number of delivered notifications in NotificationCenter currently: %ld", v7, 0xCu);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  else
  {
  }

  if (v6)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_67:

    goto LABEL_68;
  }

  v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_67;
  }

LABEL_9:
  v10 = 0;
  v11 = v1[47];
  v101 = v1[44];
  v102 = v1[45];
  v98 = v2 & 0xFFFFFFFFFFFFFF8;
  v99 = (v11 + 56);
  v100 = (v11 + 16);
  v96 = "LastDeliveredGenericID";
  v106 = (v11 + 8);
  v107 = v2 & 0xC000000000000001;
  v104 = v9;
  v105 = v2;
  v103 = v1;
  while (1)
  {
    if (v107)
    {
      v12 = MEMORY[0x21CE93180](v10, v2);
    }

    else
    {
      if (v10 >= *(v98 + 16))
      {
        goto LABEL_64;
      }

      v12 = *(v2 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v14 = [v12 request];
    v15 = [v14 content];

    v16 = [v15 userInfo];
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v17);

    v111 = v10 + 1;
    if (!v18)
    {
      v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v19 = [v13 request];
    v20 = [v19 identifier];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [v13 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = v13;
    if ((v21 != 0xD000000000000015 || 0x8000000216582660 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !*(v18 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x6974736567677573, 0xEC00000044496E6FLL), (v26 & 1) == 0) || (outlined init with copy of Any(*(v18 + 56) + 32 * v25, (v1 + 26)), (swift_dynamicCast() & 1) == 0))
    {
      v109 = v21;
      v31 = specialized static DefaultsManager.Notifications.lastDeliveredGenericNotificationID.getter();
      v33 = v32;
      if (*(v18 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000026, 0x80000002165814B0), (v35 & 1) != 0) && (outlined init with copy of Any(*(v18 + 56) + 32 * v34, (v1 + 18)), swift_dynamicCast()))
      {
        v36 = v1[34];
        v37 = v1[35];
        v110 = v23;
        if (!v33)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        v110 = v23;
        if (!v33)
        {
          goto LABEL_38;
        }
      }

      if (v31 == v36 && v33 == v37)
      {

LABEL_37:

        goto LABEL_39;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_37;
      }

LABEL_38:
      v39 = v1[45];
      v40 = v1[46];
      v41 = v1[43];
      (*v100)(v41, v1[48], v40);
      v42 = *v99;
      (*v99)(v41, 0, 1, v40);
      v43 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);

      v44 = *(v101 + 24);
      v42(&v39[v44], 1, 1, v40);
      v45 = *(v101 + 28);
      *v39 = 3;
      *(v102 + 8) = 0;
      outlined assign with take of Date?(v41, &v39[v44]);
      *&v39[v45] = v43;
      v1 = v103;
      NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
      v103[25] = MEMORY[0x277D837D0];
      v103[22] = v36;
      v103[23] = v37;
      specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)((v103 + 22), 0xD000000000000026, 0x80000002165814B0);
      outlined destroy of NotificationAnalyticsManager.NotificationEvent(v39);
      outlined destroy of UTType?((v103 + 22), &_sypSgMd);
LABEL_39:
      v46 = v1[41];
      outlined init with copy of DateInterval?(v1[39], v46, &_s10Foundation4UUIDVSgMd);
      v47 = type metadata accessor for UUID();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v46, 1, v47) == 1)
      {
        v49 = v1[41];
        (*v106)(v1[48], v1[46]);

        outlined destroy of UTType?(v49, &_s10Foundation4UUIDVSgMd);
        v2 = v105;
      }

      else
      {
        v50 = v1[41];
        v51 = UUID.uuidString.getter();
        v53 = v52;
        (*(v48 + 8))(v50, v47);

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v113[0] = v57;
          *v56 = 136315138;
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v113);

          *(v56 + 4) = v58;
          _os_log_impl(&dword_21607C000, v54, v55, "Removing delivered TTW notification as we've engaged with suggestionID: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          v59 = v57;
          v1 = v103;
          MEMORY[0x21CE94770](v59, -1, -1);
          MEMORY[0x21CE94770](v56, -1, -1);
        }

        else
        {
        }

        v2 = v105;
        v61 = v1[48];
        v62 = v1[46];
        v63 = (v1[49])(v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_21658CA50;
        *(v64 + 32) = v109;
        *(v64 + 40) = v110;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v63 removeDeliveredNotificationsWithIdentifiers_];

        (*v106)(v61, v62);
      }

      goto LABEL_45;
    }

    v28 = v1[36];
    v27 = v1[37];
    v29 = specialized static DefaultsManager.Notifications.lastDeliveredNotificationID.getter();
    v108 = v28;
    if (v30)
    {
      if (v29 == v28 && v30 == v27)
      {

LABEL_49:

        goto LABEL_51;
      }

      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v67)
      {
        goto LABEL_49;
      }
    }

    v68 = v1[45];
    v69 = v1[46];
    v70 = v1[43];
    (*v100)(v70, v1[48], v69);
    v71 = *v99;
    (*v99)(v70, 0, 1, v69);
    v97 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);

    v72 = *(v101 + 24);
    v71(&v68[v72], 1, 1, v69);
    v73 = *(v101 + 28);
    *v68 = 3;
    v1 = v103;
    *(v102 + 8) = 0;
    outlined assign with take of Date?(v70, &v68[v72]);
    *&v68[v73] = v97;
    NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
    v103[33] = MEMORY[0x277D837D0];
    v103[30] = v28;
    v103[31] = v27;

    specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)((v103 + 30), 0xD00000000000001FLL, v96 | 0x8000000000000000);
    outlined destroy of NotificationAnalyticsManager.NotificationEvent(v68);
    outlined destroy of UTType?((v103 + 30), &_sypSgMd);
LABEL_51:
    v74 = v1[42];
    outlined init with copy of DateInterval?(v1[39], v74, &_s10Foundation4UUIDVSgMd);
    v75 = type metadata accessor for UUID();
    v76 = *(v75 - 8);
    v2 = v105;
    if ((*(v76 + 48))(v74, 1, v75) != 1)
    {
      break;
    }

    v77 = v1[42];
    (*v106)(v1[48], v1[46]);

    outlined destroy of UTType?(v77, &_s10Foundation4UUIDVSgMd);
LABEL_45:
    v66 = v104;
LABEL_46:
    ++v10;
    if (v111 == v66)
    {
      goto LABEL_67;
    }
  }

  v78 = v1[42];
  v79 = UUID.uuidString.getter();
  v81 = v80;
  (*(v76 + 8))(v78, v75);
  if (v79 == v108 && v81 == v27)
  {
    v83 = v108;

    v84 = v112;
    goto LABEL_59;
  }

  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v82 & 1) == 0)
  {
    (*v106)(v1[48], v1[46]);

    v66 = v104;
    goto LABEL_46;
  }

  v83 = v79;
  v84 = v112;
LABEL_59:

  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v113[0] = v88;
    *v87 = 136315138;
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v81, v113);

    *(v87 + 4) = v89;
    _os_log_impl(&dword_21607C000, v85, v86, "Removing all delivered notifications as we've engaged suggestionID: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x21CE94770](v88, -1, -1);
    MEMORY[0x21CE94770](v87, -1, -1);
  }

  else
  {
  }

  v91 = v1[48];
  v92 = v1[46];
  v93 = (v1[49])(v90);
  [v93 removeAllDeliveredNotifications];

  (*v106)(v91, v92);
LABEL_68:

  v94 = v1[1];

  return v94();
}

Swift::Bool __swiftcall NotificationHandlingManager.doesNextSmartNotificationPassRecencyCheck()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(0, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of UTType?(v2, &_s10Foundation4DateVSgMd);
    v16 = 1;
  }

  else
  {
    (*(v4 + 32))(v15, v2, v3);
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v40 = v7;
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static CommonLogger.notification);
    (*(v4 + 16))(v13, v15, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v41 = v15;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v39 = v10;
      v22 = v21;
      v38 = swift_slowAlloc();
      v42 = v38;
      *v22 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = *(v4 + 8);
      v26(v13, v3);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v42);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_21607C000, v18, v19, "[NotificationHandlingManager] lastPostedDate: %s", v22, 0xCu);
      v28 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x21CE94770](v28, -1, -1);
      v29 = v22;
      v10 = v39;
      MEMORY[0x21CE94770](v29, -1, -1);
    }

    else
    {

      v26 = *(v4 + 8);
      v26(v13, v3);
    }

    v30 = specialized static DefaultsManager.Notifications.holdoffFireHours.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v30;
      _os_log_impl(&dword_21607C000, v31, v32, "[NotificationHandlingManager] holdoffFireHours: %f", v33, 0xCu);
      MEMORY[0x21CE94770](v33, -1, -1);
    }

    v34 = v40;
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    v26(v34, v3);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v35 = v41;
    LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
    v26(v10, v3);
    v26(v35, v3);
    v16 = v34 ^ 1;
  }

  return v16 & 1;
}

uint64_t NotificationHandlingManager.fetchEligibleSuggestions(with:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.fetchEligibleSuggestions(with:), 0, 0);
}

{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](NotificationHandlingManager.fetchEligibleSuggestions(with:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  else
  {
    *(v4 + 304) = a1;
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t NotificationHandlingManager.fetchEligibleSuggestions(with:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MomentsUIManager.shared;
  v0[21] = static MomentsUIManager.shared;
  v0[22] = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = NotificationHandlingManager.fetchEligibleSuggestions(with:);

  return CloudManager.getDBManager()();
}

{
  v72 = v0;
  if (*(v0 + 192))
  {
    v1 = specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();
    if (v2 & 1) != 0 && (v1 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD000000000000026, 0x8000000216580AC0), (v3))
    {
      v4 = 0.1;
    }

    else
    {
      v4 = *&v1;
    }

    v5 = *(v0 + 168);
    *(v0 + 64) = v4;
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v7 = ((*MEMORY[0x277D85000] & *v5) + 96) & 0xFFFFFFFFFFFFLL | 0x3D72000000000000;
    *(v0 + 200) = v6;
    *(v0 + 208) = v7;
    if (!v6(v1))
    {
      goto LABEL_33;
    }

    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 72))(ObjectType, v9);
    swift_unknownObjectRelease();
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static CommonLogger.notification);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v71 = v16;
      *v15 = 136315138;
      v17 = MEMORY[0x21CE922B0](v11, MEMORY[0x277D839F8]);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v71);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21607C000, v13, v14, "[NotificationHandlingManager] goodness scores of previously engaged suggestions: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CE94770](v16, -1, -1);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    v20 = specialized static DefaultsManager.Notifications.adaptiveGoodnessScoreSuggestionCountThreshold.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v20;
      _os_log_impl(&dword_21607C000, v21, v22, "[NotificationHandlingManager] engagement count requirement to update goodnessScore: %ld", v23, 0xCu);
      MEMORY[0x21CE94770](v23, -1, -1);
    }

    v24 = *(v11 + 16);
    if (v24 < v20)
    {

LABEL_33:
      if (one-time initialization token for notification != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      *(v0 + 216) = __swift_project_value_buffer(v40, static CommonLogger.notification);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = v4;
        _os_log_impl(&dword_21607C000, v41, v42, "[NotificationHandlingManager] fetch eligible suggestions... Goodness score threshold: %f", v43, 0xCu);
        MEMORY[0x21CE94770](v43, -1, -1);
      }

      v44 = *(v0 + 160);
      v45 = *(v0 + 104);
      v46 = *(v0 + 112);
      v47 = *(v0 + 96);
      v48 = *(v0 + 80);

      NotificationHandlingManager.getLookbackWindowStartDate()(v44);
      outlined init with copy of DateInterval?(v48, v47, &_s10Foundation4UUIDVSgMd);
      if ((*(v46 + 48))(v47, 1, v45) == 1)
      {
        outlined destroy of UTType?(*(v0 + 96), &_s10Foundation4UUIDVSgMd);
        type metadata accessor for MainActor();
        *(v0 + 272) = static MainActor.shared.getter();
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v50;
        v52 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
      }

      else
      {
        v54 = *(v0 + 128);
        v53 = *(v0 + 136);
        v55 = *(v0 + 104);
        v56 = *(v0 + 112);
        (*(v56 + 32))(v53, *(v0 + 96), v55);
        (*(v56 + 16))(v54, v53, v55);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();
        v59 = os_log_type_enabled(v57, v58);
        v60 = *(v0 + 128);
        v61 = *(v0 + 104);
        v62 = *(v0 + 112);
        if (v59)
        {
          v63 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = v70;
          *v63 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v64 = dispatch thunk of CustomStringConvertible.description.getter();
          v66 = v65;
          v67 = *(v62 + 8);
          v67(v60, v61);
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v71);

          *(v63 + 4) = v68;
          _os_log_impl(&dword_21607C000, v57, v58, "[NotificationHandlingManager] Search for suggestion matching ID:  %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x21CE94770](v70, -1, -1);
          MEMORY[0x21CE94770](v63, -1, -1);
        }

        else
        {

          v67 = *(v62 + 8);
          v67(v60, v61);
        }

        *(v0 + 224) = v67;
        type metadata accessor for MainActor();
        *(v0 + 232) = static MainActor.shared.getter();
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v69;
        v52 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
      }

      return MEMORY[0x2822009F8](v52, v49, v51);
    }

    if (!v24)
    {
      v33 = 0.0;
      goto LABEL_31;
    }

    if (v24 > 3)
    {
      v32 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      v34 = (v11 + 48);
      v33 = 0.0;
      v35 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v33 = v33 + *(v34 - 2) + *(v34 - 1) + *v34 + v34[1];
        v34 += 4;
        v35 -= 4;
      }

      while (v35);
      if (v24 == v32)
      {
LABEL_31:

        v39 = v33 / v24;
        if (v39 < v4)
        {
          v4 = fmax(v39, 0.05);
          *(v0 + 64) = v4;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0.0;
    }

    v36 = v24 - v32;
    v37 = (v11 + 8 * v32 + 32);
    do
    {
      v38 = *v37++;
      v33 = v33 + v38;
      --v36;
    }

    while (v36);
    goto LABEL_31;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static CommonLogger.notification);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_21607C000, v26, v27, "[NotificationHandlingManager] No db manager", v28, 2u);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  v29 = *(v0 + 8);
  v30 = MEMORY[0x277D84F90];

  return v29(v30);
}

{

  v0[30] = DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  v2 = v0[17];

  return DBWriter.lookupSuggestionID(_:)(v2);
}

{
  v93 = v0;
  v1 = v0;
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[17];
  v5 = v0[13];
  v6 = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v3(v4, v5);
  v8 = v1[32];
  v91 = v6;
  specialized Sequence.forEach(_:)(v7, v1 + 8, &v91);

  v92[0] = specialized Array._copyToContiguousArray()(v9);
  v10 = specialized MutableCollection<>.sort(by:)(v92);
  if (v8)
  {
  }

  v12 = v92[0];
  if ((v1[25])(v10))
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    (*(v14 + 64))(v92, ObjectType, v14);
    swift_unknownObjectRelease();
    v17 = v92[0];
    v16 = v92[1];
    v1[9] = v12;
    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    for (i = *(v12 + 16); i; i = __CocoaSet.count.getter())
    {
      v82 = i;
      v83 = v12 & 0xC000000000000001;
      v79 = v12 + 32;
      v86 = v16 + 56;
      v81 = v1[14];
      v89 = (v81 + 8);
      v85 = v17 + 56;

      v19 = 0;
      v90 = v1;
      v80 = v12;
      v87 = v16;
      v88 = v17;
      while (1)
      {
        if (v83)
        {
          v21 = MEMORY[0x21CE93180](v19, v12);
        }

        else
        {
          if (v19 >= *(v12 + 16))
          {
            goto LABEL_53;
          }

          v21 = *(v79 + 8 * v19);
        }

        v20 = v21;
        if (__OFADD__(v19++, 1))
        {
          break;
        }

        v84 = v19;
        if (!*(v16 + 16))
        {
          goto LABEL_27;
        }

        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v23 = v20;
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v25 = -1 << *(v16 + 32);
        v26 = v24 & ~v25;
        if (((*(v86 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
LABEL_26:
          v17 = v88;
          v19 = v84;
          v20 = v23;
LABEL_27:
          if (!*(v17 + 16))
          {
            goto LABEL_14;
          }

LABEL_28:
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v33 = v20;
          v17 = v88;
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(v88 + 32);
          v36 = v34 & ~v35;
          if ((*(v85 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            v37 = ~v35;
            v38 = *(v81 + 72);
            v39 = *(v81 + 16);
            while (1)
            {
              v40 = v90[15];
              v41 = v90[13];
              v39(v40, *(v17 + 48) + v36 * v38, v41);
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v42 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v89)(v40, v41);
              if (v42)
              {
                break;
              }

              v36 = (v36 + 1) & v37;
              v17 = v88;
              if (((*(v85 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                v1 = v90;
                v12 = v80;
                v16 = v87;
                goto LABEL_13;
              }
            }

            v1 = v90;
            v20 = v33;
            v55 = v33;
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v92[0] = v59;
              *v58 = 136315138;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v60 = dispatch thunk of CustomStringConvertible.description.getter();
              v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v92);

              *(v58 + 4) = v62;
              _os_log_impl(&dword_21607C000, v56, v57, "[NotificationHandlingManager] Filter out suggestion %s due to selected engagement", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x21CE94770](v59, -1, -1);
              MEMORY[0x21CE94770](v58, -1, -1);
            }

            v12 = v80;
            v16 = v87;
            v17 = v88;
            v63 = v55;
            v64 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v90 + 9);

            v65 = v90[9];
            if (v65 >> 62)
            {
              v66 = __CocoaSet.count.getter();
              if (v66 < v64)
              {
LABEL_47:
                __break(1u);
LABEL_48:

                goto LABEL_57;
              }
            }

            else
            {
              v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v66 < v64)
              {
                goto LABEL_47;
              }
            }

            specialized Array.replaceSubrange<A>(_:with:)(v64, v66);
            v19 = v84;
          }

          else
          {
LABEL_13:
            v19 = v84;
            v20 = v33;
          }

          goto LABEL_14;
        }

        v27 = ~v25;
        v28 = *(v81 + 72);
        v29 = *(v81 + 16);
        while (1)
        {
          v30 = v90[15];
          v31 = v90[13];
          v29(v30, *(v87 + 48) + v26 * v28, v31);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v89)(v30, v31);
          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v86 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            v1 = v90;
            v12 = v80;
            v16 = v87;
            goto LABEL_26;
          }
        }

        v1 = v90;
        v20 = v23;
        v43 = v23;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v92[0] = v47;
          *v46 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v92);

          *(v46 + 4) = v50;
          _os_log_impl(&dword_21607C000, v44, v45, "[NotificationHandlingManager] Filter out suggestion %s due to removal engagement", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v47);
          MEMORY[0x21CE94770](v47, -1, -1);
          MEMORY[0x21CE94770](v46, -1, -1);
        }

        v12 = v80;
        v16 = v87;
        v17 = v88;
        v51 = v43;
        v52 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v90 + 9);

        v53 = v90[9];
        if (v53 >> 62)
        {
          v54 = __CocoaSet.count.getter();
          if (v54 < v52)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54 < v52)
          {
            goto LABEL_54;
          }
        }

        specialized Array.replaceSubrange<A>(_:with:)(v52, v54);
        v19 = v84;
        if (*(v88 + 16))
        {
          goto LABEL_28;
        }

LABEL_14:

        if (v19 == v82)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      ;
    }

LABEL_57:
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 134217984;
      swift_beginAccess();
      v76 = v1[9];
      if (v76 >> 62)
      {
        v77 = __CocoaSet.count.getter();
      }

      else
      {
        v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v75 + 4) = v77;
      _os_log_impl(&dword_21607C000, v73, v74, "[NotificationHandlingManager] Filtered eligible suggestion count: %ld", v75, 0xCu);
      MEMORY[0x21CE94770](v75, -1, -1);
    }

    else
    {
    }

    (*(v1[19] + 8))(v1[20], v1[18]);
    swift_beginAccess();
    v12 = v1[9];
  }

  else
  {
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_21607C000, v67, v68, "[NotificationHandlingManager] unable to fetch engagement history", v69, 2u);
      MEMORY[0x21CE94770](v69, -1, -1);
    }

    v71 = v1[19];
    v70 = v1[20];
    v72 = v1[18];

    (*(v71 + 8))(v70, v72);
  }

  v78 = v1[1];

  return v78(v12);
}

{

  v0[35] = DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  v2 = v0[20];

  return DBWriter.fetchEligibleNotificationSuggestions(after:)(v2);
}

{
  v88 = v0;
  v1 = v0;
  v2 = *(v0 + 296);
  if (*(v0 + 304))
  {
    v3 = *(v0 + 304);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v86 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(v3, (v0 + 64), &v86);

  v87[0] = specialized Array._copyToContiguousArray()(v4);
  v5 = specialized MutableCollection<>.sort(by:)(v87);
  if (v2)
  {
  }

  v7 = v87[0];
  if ((*(v0 + 200))(v5))
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 64))(v87, ObjectType, v9);
    swift_unknownObjectRelease();
    v12 = v87[0];
    v11 = v87[1];
    *(v0 + 72) = v7;
    if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    for (i = *(v7 + 16); i; i = __CocoaSet.count.getter())
    {
      v77 = i;
      v78 = v7 & 0xC000000000000001;
      v74 = v7 + 32;
      v81 = v11 + 56;
      v76 = v1[14];
      v84 = (v76 + 8);
      v80 = v12 + 56;

      v14 = 0;
      v85 = v1;
      v75 = v7;
      v82 = v11;
      v83 = v12;
      while (1)
      {
        if (v78)
        {
          v16 = MEMORY[0x21CE93180](v14, v7);
        }

        else
        {
          if (v14 >= *(v7 + 16))
          {
            goto LABEL_53;
          }

          v16 = *(v74 + 8 * v14);
        }

        v15 = v16;
        if (__OFADD__(v14++, 1))
        {
          break;
        }

        v79 = v14;
        if (!*(v11 + 16))
        {
          goto LABEL_27;
        }

        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v18 = v15;
        v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v11 + 32);
        v21 = v19 & ~v20;
        if (((*(v81 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
LABEL_26:
          v12 = v83;
          v14 = v79;
          v15 = v18;
LABEL_27:
          if (!*(v12 + 16))
          {
            goto LABEL_14;
          }

LABEL_28:
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v28 = v15;
          v12 = v83;
          v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v30 = -1 << *(v83 + 32);
          v31 = v29 & ~v30;
          if ((*(v80 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
          {
            v32 = ~v30;
            v33 = *(v76 + 72);
            v34 = *(v76 + 16);
            while (1)
            {
              v35 = v85[15];
              v36 = v85[13];
              v34(v35, *(v12 + 48) + v31 * v33, v36);
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v37 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v84)(v35, v36);
              if (v37)
              {
                break;
              }

              v31 = (v31 + 1) & v32;
              v12 = v83;
              if (((*(v80 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                v1 = v85;
                v7 = v75;
                v11 = v82;
                goto LABEL_13;
              }
            }

            v1 = v85;
            v15 = v28;
            v50 = v28;
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v87[0] = v54;
              *v53 = 136315138;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v55 = dispatch thunk of CustomStringConvertible.description.getter();
              v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v87);

              *(v53 + 4) = v57;
              _os_log_impl(&dword_21607C000, v51, v52, "[NotificationHandlingManager] Filter out suggestion %s due to selected engagement", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v54);
              MEMORY[0x21CE94770](v54, -1, -1);
              MEMORY[0x21CE94770](v53, -1, -1);
            }

            v7 = v75;
            v11 = v82;
            v12 = v83;
            v58 = v50;
            v59 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v85 + 9);

            v60 = v85[9];
            if (v60 >> 62)
            {
              v61 = __CocoaSet.count.getter();
              if (v61 < v59)
              {
LABEL_47:
                __break(1u);
LABEL_48:

                goto LABEL_57;
              }
            }

            else
            {
              v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v61 < v59)
              {
                goto LABEL_47;
              }
            }

            specialized Array.replaceSubrange<A>(_:with:)(v59, v61);
            v14 = v79;
          }

          else
          {
LABEL_13:
            v14 = v79;
            v15 = v28;
          }

          goto LABEL_14;
        }

        v22 = ~v20;
        v23 = *(v76 + 72);
        v24 = *(v76 + 16);
        while (1)
        {
          v25 = v85[15];
          v26 = v85[13];
          v24(v25, *(v82 + 48) + v21 * v23, v26);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v84)(v25, v26);
          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v81 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            v1 = v85;
            v7 = v75;
            v11 = v82;
            goto LABEL_26;
          }
        }

        v1 = v85;
        v15 = v18;
        v38 = v18;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v87[0] = v42;
          *v41 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v87);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_21607C000, v39, v40, "[NotificationHandlingManager] Filter out suggestion %s due to removal engagement", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x21CE94770](v42, -1, -1);
          MEMORY[0x21CE94770](v41, -1, -1);
        }

        v7 = v75;
        v11 = v82;
        v12 = v83;
        v46 = v38;
        v47 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v85 + 9);

        v48 = v85[9];
        if (v48 >> 62)
        {
          v49 = __CocoaSet.count.getter();
          if (v49 < v47)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v49 < v47)
          {
            goto LABEL_54;
          }
        }

        specialized Array.replaceSubrange<A>(_:with:)(v47, v49);
        v14 = v79;
        if (*(v83 + 16))
        {
          goto LABEL_28;
        }

LABEL_14:

        if (v14 == v77)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      ;
    }

LABEL_57:
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134217984;
      swift_beginAccess();
      v71 = v1[9];
      if (v71 >> 62)
      {
        v72 = __CocoaSet.count.getter();
      }

      else
      {
        v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v70 + 4) = v72;
      _os_log_impl(&dword_21607C000, v68, v69, "[NotificationHandlingManager] Filtered eligible suggestion count: %ld", v70, 0xCu);
      MEMORY[0x21CE94770](v70, -1, -1);
    }

    else
    {
    }

    (*(v1[19] + 8))(v1[20], v1[18]);
    swift_beginAccess();
    v7 = v1[9];
  }

  else
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_21607C000, v62, v63, "[NotificationHandlingManager] unable to fetch engagement history", v64, 2u);
      MEMORY[0x21CE94770](v64, -1, -1);
    }

    v66 = *(v0 + 152);
    v65 = v1[20];
    v67 = v1[18];

    (*(v66 + 8))(v65, v67);
  }

  v73 = v1[1];

  return v73(v7);
}

{
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[13];

  v1(v2, v3);
  (*(v0[19] + 8))(v0[20], v0[18]);

  v4 = v0[1];

  return v4();
}

{

  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)(char a1, char a2)
{
  *(v3 + 40) = v2;
  *(v3 + 137) = a2;
  *(v3 + 136) = a1;
  v4 = type metadata accessor for DateComponents();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:), 0, 0);
}

uint64_t NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)()
{
  result = specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()();
  if (!result)
  {
    result = specialized NotificationHandlingManager.getLegacyScheduleDateComponents()();
    if (!result)
    {
      lazy protocol witness table accessor for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError();
      swift_allocError();
      *v15 = 2;
      swift_willThrow();

      v4 = *(v0 + 8);
      goto LABEL_18;
    }
  }

  *(v0 + 72) = result;
  v2 = *(v0 + 136);
  v3 = *(result + 16);
  *(v0 + 80) = v3;
  if (v3 < v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 == v2)
  {

    v4 = *(v0 + 8);
LABEL_18:

    return v4();
  }

  v5 = *(v0 + 56);
  *(v0 + 88) = 0;
  *(v0 + 96) = v2;
  if (v3 <= v2)
  {
    goto LABEL_22;
  }

  if ((*(v0 + 137) & 1) == 0)
  {
    if (*(result + 16) > v2)
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 48);
      if (v2)
      {
        v9 = *(v5 + 72);
      }

      else
      {
        v9 = 0;
      }

      (*(v5 + 16))(*(v0 + 64), result + v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), *(v0 + 48));
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v6 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

      (*(v5 + 8))(v7, v8);
      goto LABEL_14;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v6 = 0;
LABEL_14:
  *(v0 + 104) = v6;
  *(v0 + 16) = 0xD00000000000001ELL;
  *(v0 + 24) = 0x8000000216582620;
  *(v0 + 32) = 0;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v11);

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  *(v0 + 112) = v13;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);

  return NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(v6, v12, v13, 2);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);
  }

  else
  {
    v2 = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)()
{
  v1 = *(v0 + 137);

  if ((v1 & 1) != 0 || (v2 = *(v0 + 80), v3 = vaddq_s64(*(v0 + 88), vdupq_n_s64(1uLL)), v3.i64[1] == v2))
  {

    v4 = *(v0 + 8);

    v4();
    return;
  }

  *(v0 + 88) = v3;
  if (v3.i64[1] >= v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((*(v0 + 137) & 1) == 0)
  {
    v15 = v3.i64[0];
    v6 = *(v0 + 72);
    if (v3.i64[1] < *(v6 + 16))
    {
      v8 = *(v0 + 56);
      v7 = *(v0 + 64);
      v9 = *(v0 + 48);
      (*(v8 + 16))(v7, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3.i64[1], v9);
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v5 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

      (*(v8 + 8))(v7, v9);
      v3.i64[0] = v15;
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v5 = 0;
LABEL_11:
  *(v0 + 104) = v5;
  *(v0 + 16) = 0xD00000000000001ELL;
  *(v0 + 24) = 0x8000000216582620;
  *(v0 + 32) = v3.i64[0];
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v11);

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  *(v0 + 112) = v13;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);

  NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(v5, v12, v13, 2);
}

Swift::Bool __swiftcall NotificationHandlingManager.isEligibleForGenericSmartNotification()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v47 = &v45 - v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  NotificationHandlingManager.getLastAvailabilityPredictedDate()(&v45 - v14);
  v16 = *(v1 + 48);
  v17 = v16(v15, 1, v0);
  outlined destroy of UTType?(v15, &_s10Foundation4DateVSgMd);
  if (v17 == 1)
  {
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static CommonLogger.notification);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_26;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "[NotificationHandlingManager] ineligible for smart TTW, no predicted date";
    v23 = v20;
    v24 = v19;
    v25 = v21;
    v26 = 2;
    goto LABEL_25;
  }

  static DefaultsManager.Notifications.lastNotificationDate.getter(v10);
  if (v16(v10, 1, v0) == 1)
  {
    static DefaultsManager.Notifications.olderNotificationDate.getter(v13);
    v27 = v1;
    if (v16(v10, 1, v0) != 1)
    {
      outlined destroy of UTType?(v10, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v27 = v1;
    (*(v1 + 32))(v13, v10, v0);
    (*(v1 + 56))(v13, 0, 1, v0);
  }

  if (v16(v13, 1, v0) == 1)
  {
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
  }

  else
  {
    v28 = v48;
    (*(v27 + 32))(v48, v13, v0);
    v29 = v46;
    static Date.now.getter();
    v30 = v47;
    Date.addingTimeInterval(_:)();
    v31 = *(v27 + 8);
    v31(v29, v0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    LOBYTE(v29) = dispatch thunk of static Comparable.< infix(_:_:)();
    v31(v30, v0);
    if ((v29 & 1) == 0)
    {
      if (one-time initialization token for notification != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static CommonLogger.notification);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_21607C000, v42, v43, "[NotificationHandlingManager] ineligible for generic ttw, last notification within last week", v44, 2u);
        MEMORY[0x21CE94770](v44, -1, -1);
      }

      v31(v28, v0);
      return 0;
    }

    v31(v28, v0);
  }

  v32 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static CommonLogger.notification);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = v34;
    _os_log_impl(&dword_21607C000, v36, v37, "[NotificationHandlingManager] generic ttw quota weekly count: %ld", v38, 0xCu);
    MEMORY[0x21CE94770](v38, -1, -1);
  }

  if (v34 < specialized static DefaultsManager.Notifications.genericNotificationWeeklyMax.getter())
  {
    return 1;
  }

  v19 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v40))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = v34;
    *(v21 + 12) = 2048;
    *(v21 + 14) = specialized static DefaultsManager.Notifications.genericNotificationWeeklyMax.getter();
    v22 = "[NotificationHandlingManager] Already %ld ttw notifications in the last week (max = %ld). Ineligible for new smart ttw notification";
    v23 = v40;
    v24 = v19;
    v25 = v21;
    v26 = 22;
LABEL_25:
    _os_log_impl(&dword_21607C000, v24, v23, v22, v25, v26);
    MEMORY[0x21CE94770](v21, -1, -1);
  }

LABEL_26:

  return 0;
}

uint64_t NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[87] = v4;
  v5[86] = a4;
  v5[85] = a3;
  v5[84] = a2;
  v5[83] = a1;
  v5[88] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  v5[89] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[90] = v6;
  v5[91] = *(v6 - 8);
  v5[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[99] = v7;
  v5[100] = *(v7 - 8);
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5[104] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:), 0, 0);
}

uint64_t NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 696);
  v60 = *(v0 + 688);
  v3 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 840) = v3;
  type metadata accessor for NotificationHandlingManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v62._object = 0x8000000216582680;
  v7._countAndFlagsBits = 0x206F7420656D6954;
  v7._object = 0xED00006574697257;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD000000000000029;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v62);

  v10 = MEMORY[0x21CE91FC0](v9._countAndFlagsBits, v9._object);

  [v3 setTitle_];

  v11 = [v5 bundleForClass_];
  v63._object = 0x80000002165826E0;
  v12._object = 0x80000002165826B0;
  v63._countAndFlagsBits = 0xD00000000000002BLL;
  v12._countAndFlagsBits = 0xD000000000000029;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v63);

  v15 = MEMORY[0x21CE91FC0](v14._countAndFlagsBits, v14._object);

  [v3 setBody_];

  v16 = *(v2 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID);
  v17 = *(v2 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID + 8);

  v18 = MEMORY[0x21CE91FC0](v16, v17);

  v19 = [objc_opt_self() iconForApplicationIdentifier_];

  [v3 setIcon_];
  v20 = [objc_opt_self() defaultSound];
  [v3 setSound_];

  [v3 setInterruptionLevel_];
  [v3 setShouldBackgroundDefaultAction_];
  [v3 setShouldShowSubordinateIcon_];

  URL.init(string:)();

  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v1, 1, v21);
  v25 = 0;
  if (v23 != 1)
  {
    v26 = *(v0 + 832);
    URL._bridgeToObjectiveC()(v24);
    v25 = v27;
    (*(v22 + 8))(v26, v21);
  }

  v28 = *(v0 + 664);
  [v3 setDefaultActionURL_];

  v29 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  [v3 setCategoryIdentifier_];

  if (v28)
  {
    v30 = [*(v0 + 664) nextTriggerDate];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = *(v0 + 800);
    v34 = *(v0 + 792);
    v35 = *(v0 + 784);
    v36 = *(v0 + 776);
    (*(v33 + 56))(v36, v32, 1, v34);
    outlined init with take of Date?(v36, v35);
    if ((*(v33 + 48))(v35, 1, v34) != 1)
    {
      (*(*(v0 + 800) + 32))(*(v0 + 824), *(v0 + 784), *(v0 + 792));
      goto LABEL_12;
    }
  }

  else
  {
    (*(*(v0 + 800) + 56))(*(v0 + 784), 1, 1, *(v0 + 792));
  }

  v37 = *(v0 + 800);
  v38 = *(v0 + 792);
  v39 = *(v0 + 784);
  static Date.now.getter();
  if ((*(v37 + 48))(v39, 1, v38) != 1)
  {
    outlined destroy of UTType?(*(v0 + 784), &_s10Foundation4DateVSgMd);
  }

LABEL_12:
  v40 = *(v0 + 824);
  v41 = *(v0 + 800);
  v42 = *(v0 + 792);
  v43 = *(v0 + 696);
  v44 = *(v0 + 688);
  *(v0 + 296) = v42;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  v46 = *(v41 + 16);
  *(v0 + 848) = v46;
  *(v0 + 856) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46(boxed_opaque_existential_1, v40, v42);
  outlined init with take of Any((v0 + 272), (v0 + 304));
  v47 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 304), 0x44676E6974736F70, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v50 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  *(v0 + 864) = v50;
  *(v0 + 360) = v50;
  *(v0 + 336) = v49;
  outlined init with take of Any((v0 + 336), (v0 + 368));
  v51 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 368), 0xD000000000000018, 0x800000021657ACF0, v51);
  v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 424) = v50;
  *(v0 + 400) = v52;
  outlined init with take of Any((v0 + 400), (v0 + 432));
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v54 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 432), 0xD000000000000016, 0x800000021657AD50, v53);
  *(v0 + 872) = v47;
  v55 = *((*MEMORY[0x277D85000] & *v43) + 0x68);
  v56 = (*MEMORY[0x277D85000] & *v43) + 104;
  *(v0 + 880) = v55;
  *(v0 + 888) = v56 & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v57 = v55(v54);
  *(v0 + 896) = v57;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 656;
  *(v0 + 24) = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  v58 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 168) = &block_descriptor_31_0;
  *(v0 + 176) = v58;
  [v57 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:), 0, 0);
}

{
  v65 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 688);
  v8 = *(v0 + 656);
  *(v0 + 904) = v8;

  v9 = [v8 scheduledDeliverySetting];
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 488) = v3;
  *(v0 + 464) = v10;
  outlined init with take of Any((v0 + 464), (v0 + 496));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 496), 0xD000000000000018, 0x800000021657AC70, isUniquelyReferenced_nonNull_native);
  v12 = v2;
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v5 + 8))(v4, v6);
  *(v0 + 552) = MEMORY[0x277D837D0];
  *(v0 + 528) = v13;
  *(v0 + 536) = v15;
  outlined init with take of Any((v0 + 528), (v0 + 560));
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v12;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 560), 0xD000000000000026, 0x80000002165814B0, v16);
  if (v7 == 1)
  {
    v17 = *(v0 + 864);
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v0 + 616) = v17;
    *(v0 + 592) = v18;
    outlined init with take of Any((v0 + 592), (v0 + 624));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 624), 0xD00000000000001CLL, 0x800000021657AD30, v19);
  }

  *(v0 + 912) = v12;
  v20 = *(v0 + 840);
  v21 = *(v0 + 680);
  v22 = *(v0 + 672);
  v23 = *(v0 + 664);

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 setUserInfo_];

  v26 = v23;
  v27 = v20;
  v28 = MEMORY[0x21CE91FC0](v22, v21);
  v29 = [objc_opt_self() requestWithIdentifier:v28 content:v27 trigger:v26];
  *(v0 + 920) = v29;

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static CommonLogger.notification);
  v31 = v26;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v32, v33))
  {

    goto LABEL_17;
  }

  v34 = *(v0 + 680);
  v35 = *(v0 + 672);
  v36 = *(v0 + 664);
  v37 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v64 = v62;
  *v37 = 136315650;
  *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v64);
  *(v37 + 12) = 2080;
  v63 = v29;
  if (!v36)
  {
    (*(*(v0 + 800) + 56))(*(v0 + 768), 1, 1, *(v0 + 792));
    goto LABEL_13;
  }

  v38 = [v31 nextTriggerDate];
  if (v38)
  {
    v39 = v38;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = *(v0 + 800);
  v42 = *(v0 + 792);
  v43 = *(v0 + 768);
  v44 = *(v0 + 760);
  (*(v41 + 56))(v44, v40, 1, v42);
  outlined init with take of Date?(v44, v43);
  if ((*(v41 + 48))(v43, 1, v42) == 1)
  {
LABEL_13:
    v45 = *(v0 + 800);
    v46 = *(v0 + 792);
    v47 = *(v0 + 768);
    static Date.now.getter();
    if ((*(v45 + 48))(v47, 1, v46) != 1)
    {
      outlined destroy of UTType?(*(v0 + 768), &_s10Foundation4DateVSgMd);
    }

    goto LABEL_16;
  }

  (*(*(v0 + 800) + 32))(*(v0 + 816), *(v0 + 768), *(v0 + 792));
LABEL_16:
  v48 = *(v0 + 816);
  v49 = *(v0 + 800);
  v50 = *(v0 + 792);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v52;
  (*(v49 + 8))(v48, v50);
  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v64);

  *(v37 + 14) = v54;
  *(v37 + 22) = 2080;

  v55 = Dictionary.description.getter();
  v57 = v56;

  v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v64);

  *(v37 + 24) = v58;
  _os_log_impl(&dword_21607C000, v32, v33, "Scheduling time to write notification with identifier: %s for time: %s, with userInfo: %s", v37, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v62, -1, -1);
  MEMORY[0x21CE94770](v37, -1, -1);

  v29 = v63;
LABEL_17:
  v59 = (*(v0 + 880))();
  *(v0 + 928) = v59;
  *(v0 + 80) = v0;
  *(v0 + 88) = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  v60 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ();
  *(v0 + 232) = &block_descriptor_34;
  *(v0 + 240) = v60;
  [v59 addNotificationRequest:v29 withCompletionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 936) = v1;
  if (v1)
  {
    v2 = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  }

  else
  {
    v2 = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 752);
  v6 = *(v0 + 712);
  v37 = *(v0 + 704);
  v38 = *(v0 + 688);
  v7 = *(v0 + 664);

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  v1(v5, v2, v4);
  v9 = *(v3 + 56);
  v9(v5, 0, 1, v4);

  v11 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  v12 = *(v37 + 24);
  v9(v6 + v12, 1, 1, v4);
  v13 = *(v37 + 28);
  *v6 = v8;
  *(v6 + 8) = 0;
  outlined assign with take of Date?(v5, v6 + v12);
  *(v6 + v13) = v11;
  NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
  if (v38 == 1)
  {
    v14 = *(v0 + 800);
    v15 = *(v0 + 792);
    v16 = *(v0 + 744);
    specialized static DefaultsManager.Notifications.incrementGenericNotificationWeeklyCount()();
    static DefaultsManager.Notifications.lastNotificationDate.getter(v16);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      outlined destroy of UTType?(*(v0 + 744), &_s10Foundation4DateVSgMd);
    }

    else
    {
      (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 744), *(v0 + 792));
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v20 = static DefaultsManager.momentsUI;
      v21 = *(v0 + 808);
      v22 = *(v0 + 800);
      v23 = *(v0 + 792);
      if (static DefaultsManager.momentsUI)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        v25 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x80000002165809B0);
        [v20 setObject:isa forKey:v25];
      }

      (*(v22 + 8))(v21, v23);
    }

    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v26 = static DefaultsManager.momentsUI;
    v27 = *(v0 + 920);
    v28 = *(v0 + 904);
    v29 = *(v0 + 840);
    v30 = *(v0 + 824);
    v31 = *(v0 + 800);
    v32 = *(v0 + 792);
    if (static DefaultsManager.momentsUI)
    {
      v33 = Date._bridgeToObjectiveC()().super.isa;
      v34 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165809D0);
      [v26 setObject:v33 forKey:v34];

      (*(v31 + 8))(v30, v32);
    }

    else
    {
      (*(v31 + 8))(*(v0 + 824), *(v0 + 792));
    }
  }

  else
  {
    v17 = *(v0 + 920);
    v18 = *(v0 + 904);
    v19 = *(v0 + 840);
    (*(*(v0 + 800) + 8))(*(v0 + 824), *(v0 + 792));
  }

  outlined destroy of NotificationAnalyticsManager.NotificationEvent(*(v0 + 712));

  v35 = *(v0 + 8);

  return v35();
}

{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[113];
  v4 = v0[105];
  v5 = v0[103];
  v6 = v0[100];
  v7 = v0[99];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[76] = v3;
  v4[75] = a3;
  v4[74] = a2;
  v4[73] = a1;
  v4[77] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent();
  v4[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:), 0, 0);
}

uint64_t NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:)()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = UUID.uuidString.getter();
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL + 8);
  *(v0 + 528) = *(v1 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL);
  *(v0 + 536) = v4;
  *(v0 + 544) = 0xD00000000000001ALL;
  *(v0 + 552) = 0x8000000216582710;
  *(v0 + 560) = v3;
  *(v0 + 568) = v5;
  v77 = lazy protocol witness table accessor for type String and conformance String();
  v76 = MEMORY[0x277D837D0];
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  if (v2)
  {
    v6 = [*(v0 + 592) nextTriggerDate];
    if (v6)
    {
      v7 = v6;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(v0 + 688);
    v10 = *(v0 + 680);
    v11 = *(v0 + 672);
    v12 = *(v0 + 664);
    (*(v9 + 56))(v12, v8, 1, v10);
    outlined init with take of Date?(v12, v11);
    v13 = *(v9 + 48);
    if (v13(v11, 1, v10) != 1)
    {
      v78 = v13;
      (*(*(v0 + 688) + 32))(*(v0 + 720), *(v0 + 672), *(v0 + 680));
      goto LABEL_10;
    }
  }

  else
  {
    (*(*(v0 + 688) + 56))(*(v0 + 672), 1, 1, *(v0 + 680));
  }

  v14 = *(v0 + 688);
  v15 = *(v0 + 680);
  v16 = *(v0 + 672);
  static Date.now.getter();
  v78 = *(v14 + 48);
  if (v78(v16, 1, v15) != 1)
  {
    outlined destroy of UTType?(*(v0 + 672), &_s10Foundation4DateVSgMd);
  }

LABEL_10:
  v17 = *(v0 + 720);
  v18 = *(v0 + 584);
  v19 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 760) = v19;
  type metadata accessor for NotificationHandlingManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v80._object = 0x8000000216582750;
  v23._countAndFlagsBits = 0xD000000000000019;
  v23._object = 0x8000000216582730;
  v80._countAndFlagsBits = 0xD000000000000015;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v80);

  v26 = MEMORY[0x21CE91FC0](v25._countAndFlagsBits, v25._object);

  [v19 setTitle_];

  countAndFlagsBits = specialized NotificationHandlingManager.createNotificationBodyText(for:postingDate:)(v18, v17);
  if (v28)
  {
    object = v28;
  }

  else
  {
    v30 = [v21 bundleForClass_];
    v81._object = 0x8000000216582790;
    v31._object = 0x8000000216582770;
    v81._countAndFlagsBits = 0xD00000000000001DLL;
    v31._countAndFlagsBits = 0xD000000000000013;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v81);
    object = v33._object;

    countAndFlagsBits = v33._countAndFlagsBits;
  }

  v34 = *(v0 + 752);
  v35 = *(v0 + 744);
  v36 = *(v0 + 608);
  v37 = *(v0 + 600);
  v38 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);

  [v19 setBody_];

  v39 = *(v36 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID);
  v40 = *(v36 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID + 8);

  v41 = MEMORY[0x21CE91FC0](v39, v40);

  v42 = [objc_opt_self() iconForApplicationIdentifier_];

  [v19 setIcon_];
  [v19 setInterruptionLevel_];
  [v19 setShouldShowSubordinateIcon_];
  [v19 setShouldBackgroundDefaultAction_];
  outlined init with copy of DateInterval?(v34, v35, &_s10Foundation3URLVSgMd);
  v43 = type metadata accessor for URL();
  *(v0 + 768) = v43;
  v44 = *(v43 - 8);
  *(v0 + 776) = v44;
  v45 = *(v44 + 48);
  *(v0 + 784) = v45;
  *(v0 + 792) = (v44 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v46 = v45(v35, 1, v43);
  v48 = 0;
  if (v46 != 1)
  {
    v49 = *(v0 + 744);
    URL._bridgeToObjectiveC()(v47);
    v48 = v50;
    (*(v44 + 8))(v49, v43);
  }

  v51 = *(v0 + 720);
  v52 = *(v0 + 688);
  v53 = *(v0 + 680);
  v54 = *(v0 + 600);
  v55 = *(v0 + 584);
  [v19 setDefaultActionURL_];

  v56 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  [v19 setCategoryIdentifier_];

  v57 = specialized NotificationHandlingManager.generateUserInfoDictForAnalytics(with:)(v55);
  *(v0 + 296) = v53;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  v59 = *(v52 + 16);
  *(v0 + 800) = v59;
  *(v0 + 808) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(boxed_opaque_existential_1, v51, v53);
  outlined init with take of Any((v0 + 272), (v0 + 304));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 304), 0x44676E6974736F70, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
  v61 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v62 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  *(v0 + 816) = v62;
  *(v0 + 360) = v62;
  *(v0 + 336) = v61;
  outlined init with take of Any((v0 + 336), (v0 + 368));
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v64 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 368), 0xD000000000000018, 0x800000021657ACF0, v63);
  if (v54 == 1)
  {
    v65 = *(v0 + 680);
    v66 = *(v0 + 656);
    NotificationHandlingManager.getLastAvailabilityPredictedDate()(v66);
    LODWORD(v65) = v78(v66, 1, v65);
    outlined destroy of UTType?(v66, &_s10Foundation4DateVSgMd);
    if (v65 == 1)
    {
      v67 = 2;
    }

    else
    {
      v67 = 1;
    }

    v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v0 + 488) = v62;
    *(v0 + 464) = v68;
    outlined init with take of Any((v0 + 464), (v0 + 496));
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v64 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 496), 0xD00000000000001CLL, 0x800000021657AD30, v69);
  }

  *(v0 + 824) = v57;
  v70 = *(v0 + 608);
  v71 = *((*MEMORY[0x277D85000] & *v70) + 0x68);
  v72 = (*MEMORY[0x277D85000] & *v70) + 104;
  *(v0 + 832) = v71;
  *(v0 + 840) = v72 & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v73 = v71(v64);
  *(v0 + 848) = v73;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 576;
  *(v0 + 24) = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  v74 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 168) = &block_descriptor_38;
  *(v0 + 176) = v74;
  [v73 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:), 0, 0);
}

{
  v61 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 760);
  v5 = *(v0 + 592);
  v6 = *(v0 + 576);
  *(v0 + 856) = v6;

  v7 = [v6 scheduledDeliverySetting];
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 424) = v3;
  *(v0 + 400) = v8;
  outlined init with take of Any((v0 + 400), (v0 + 432));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 432), 0xD000000000000018, 0x800000021657AC70, isUniquelyReferenced_nonNull_native);
  *(v0 + 864) = v2;

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 setUserInfo_];

  v12 = v5;
  v13 = v4;
  v14 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x8000000216582660);
  v59 = [objc_opt_self() requestWithIdentifier:v14 content:v13 trigger:v12];
  *(v0 + 872) = v59;

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 800);
  v16 = *(v0 + 752);
  v17 = *(v0 + 736);
  v18 = *(v0 + 720);
  v19 = *(v0 + 712);
  v20 = *(v0 + 680);
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static CommonLogger.notification);
  v15(v19, v18, v20);
  outlined init with copy of DateInterval?(v16, v17, &_s10Foundation3URLVSgMd);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v57 = v23;
    log = v22;
    v55 = *(v0 + 784);
    v53 = *(v0 + 736);
    v54 = *(v0 + 768);
    v24 = *(v0 + 728);
    v25 = *(v0 + 712);
    v26 = *(v0 + 688);
    v27 = *(v0 + 680);
    v28 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v28 = 136315650;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = *(v26 + 8);
    v32(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v60);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    outlined init with copy of DateInterval?(v53, v24, &_s10Foundation3URLVSgMd);
    if (v55(v24, 1, v54) == 1)
    {
      outlined destroy of UTType?(*(v0 + 728), &_s10Foundation3URLVSgMd);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v41 = *(v0 + 776);
      v42 = *(v0 + 768);
      v43 = *(v0 + 728);
      v35 = URL.absoluteString.getter();
      v34 = v44;
      (*(v41 + 8))(v43, v42);
    }

    outlined destroy of UTType?(*(v0 + 736), &_s10Foundation3URLVSgMd);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v60);

    *(v28 + 14) = v45;
    *(v28 + 22) = 2080;

    v46 = Dictionary.description.getter();
    v48 = v47;

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v60);

    *(v28 + 24) = v49;
    _os_log_impl(&dword_21607C000, log, v57, "Trying to post JS Notification for time: %s, actionURL: %s) with userInfo: %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v56, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  else
  {
    v36 = *(v0 + 736);
    v37 = *(v0 + 712);
    v38 = *(v0 + 688);
    v39 = *(v0 + 680);

    outlined destroy of UTType?(v36, &_s10Foundation3URLVSgMd);
    v32 = *(v38 + 8);
    v40 = (v32)(v37, v39);
  }

  *(v0 + 880) = v32;
  v50 = (*(v0 + 832))(v40);
  *(v0 + 888) = v50;
  *(v0 + 80) = v0;
  *(v0 + 88) = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  v51 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ();
  *(v0 + 232) = &block_descriptor_41;
  *(v0 + 240) = v51;
  [v50 addNotificationRequest:v59 withCompletionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 896) = v1;
  if (v1)
  {
    v2 = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  }

  else
  {
    v2 = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 600);

  if (v1 == 1)
  {
    specialized static DefaultsManager.Notifications.incrementSuggestionNotificationWeeklyCount()();
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 648);
  static DefaultsManager.Notifications.lastNotificationDate.getter(v4);
  v5 = *(v2 + 48);
  if (v5(v4, 1, v3) == 1)
  {
    outlined destroy of UTType?(*(v0 + 648), &_s10Foundation4DateVSgMd);
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 704), *(v0 + 648), *(v0 + 680));
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v6 = static DefaultsManager.momentsUI;
    v7 = *(v0 + 880);
    v8 = *(v0 + 704);
    v9 = *(v0 + 680);
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v11 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x80000002165809B0);
      [v6 setObject:isa forKey:v11];
    }

    v7(v8, v9);
  }

  v12 = *(v0 + 680);
  v13 = *(v0 + 640);
  static DefaultsManager.Notifications.lastSuggestionNotificationDate.getter(v13);
  if (v5(v13, 1, v12) == 1)
  {
    outlined destroy of UTType?(*(v0 + 640), &_s10Foundation4DateVSgMd);
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 640), *(v0 + 680));
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v14 = static DefaultsManager.momentsUI;
    v15 = *(v0 + 880);
    v16 = *(v0 + 696);
    v17 = *(v0 + 680);
    if (static DefaultsManager.momentsUI)
    {
      v18 = Date._bridgeToObjectiveC()().super.isa;
      v19 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165809F0);
      [v14 setObject:v18 forKey:v19];
    }

    v15(v16, v17);
  }

  if (one-time initialization token for momentsUI == -1)
  {
    v20 = static DefaultsManager.momentsUI;
    if (!static DefaultsManager.momentsUI)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  swift_once();
  v20 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
LABEL_19:
    v21 = Date._bridgeToObjectiveC()().super.isa;
    v22 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165809D0);
    [v20 setObject:v21 forKey:v22];

    v23 = Date._bridgeToObjectiveC()().super.isa;
    v24 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A10);
    [v20 setObject:v23 forKey:v24];

    v25 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580E80);
    [v20 removeObjectForKey_];

    v26 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x80000002165827B0);
    [v20 removeObjectForKey_];

    v27 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x80000002165827D0);
    [v20 removeObjectForKey_];

    v28 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216582800);
    [v20 removeObjectForKey_];

    v29 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x8000000216582830);
    [v20 removeObjectForKey_];

    v30 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216582860);
    [v20 removeObjectForKey_];

    v31 = MEMORY[0x21CE91FC0](0xD000000000000022, 0x8000000216582890);
    [v20 removeObjectForKey_];
  }

LABEL_20:
  v50 = *(v0 + 872);
  v51 = *(v0 + 856);
  v52 = *(v0 + 760);
  v53 = *(v0 + 752);
  v54 = *(v0 + 880);
  v49 = *(v0 + 720);
  v32 = *(v0 + 688);
  v33 = *(v0 + 680);
  v34 = *(v0 + 632);
  v47 = v34;
  v35 = *(v0 + 624);
  v36 = *(v0 + 616);
  if (*(v0 + 592))
  {
    v37 = 1;
  }

  else
  {
    v37 = 4;
  }

  v48 = v37;
  v38 = *(v0 + 584);
  (*(v0 + 800))(v34);
  v39 = *(v32 + 56);
  v39(v34, 0, 1, v33);

  v41 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v40);

  v42 = *(v36 + 24);
  v39(v35 + v42, 1, 1, v33);
  v43 = *(v36 + 28);
  *v35 = v48;
  *(v35 + 8) = v38;
  v44 = v38;
  outlined assign with take of Date?(v47, v35 + v42);
  *(v35 + v43) = v41;
  NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();

  v54(v49, v33);
  outlined destroy of UTType?(v53, &_s10Foundation3URLVSgMd);
  outlined destroy of NotificationAnalyticsManager.NotificationEvent(v35);

  v45 = *(v0 + 8);

  return v45();
}

{
  v1 = v0[110];
  v2 = v0[109];
  v10 = v0[111];
  v3 = v0[107];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[90];
  v7 = v0[85];
  swift_willThrow();

  v1(v6, v7);
  outlined destroy of UTType?(v5, &_s10Foundation3URLVSgMd);

  v8 = v0[1];

  return v8();
}

uint64_t NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:), 0, 0);
}

uint64_t NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)()
{
  v43 = v0;
  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.services);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v7 = 138413058;
    v9 = [v6 scheduleType];
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2080;
    v10 = [v6 weekdays];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = *(v0 + 16);
    v14 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v15 = MEMORY[0x21CE922B0](v12, v14);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v42);

    *(v7 + 14) = v18;
    *(v7 + 22) = 2112;
    isa = [v13 hour];
    if (!isa)
    {
      isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    v20 = *(v0 + 16);
    *(v7 + 24) = isa;
    v8[1] = isa;
    *(v7 + 32) = 2112;
    v21 = [v20 minute];
    if (!v21)
    {
      v21 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    *(v7 + 34) = v21;
    v8[2] = v21;
    _os_log_impl(&dword_21607C000, v4, v5, "[NotificationHandlingManager] didReceiveScheduleChange for type: %@, days: %s, hour: %@, minute: %@", v7, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x21CE94770](v41, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  else
  {
  }

  if ([*(v0 + 24) BOOLValue])
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "[NotificationHandlingManager] Updating MomentsUI defaults for notification schedule", v24, 2u);
      MEMORY[0x21CE94770](v24, -1, -1);
    }

    v25 = *(v0 + 16);

    specialized NotificationHandlingManager.updateNotificationScheduleDefaults(with:)(v25);
  }

  v26 = [*(v0 + 16) scheduleType];
  v27 = [v26 integerValue];

  if (v27)
  {
    v28 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = type metadata accessor for UUID();
    v31 = *(*(v30 - 8) + 56);
    v31(v29, 1, 1, v30);
    v31(v28, 1, 1, v30);
    v32 = swift_task_alloc();
    *(v0 + 96) = v32;
    *v32 = v0;
    v32[1] = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);
    v33 = *(v0 + 72);
    v34 = *(v0 + 80);
    v35 = *(v0 + 56);
    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    v38 = *(v0 + 32);

    return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(v34, v38, v36, v37, v35, 0, v33);
  }

  else
  {
    v40 = swift_task_alloc();
    *(v0 + 88) = v40;
    *v40 = v0;
    v40[1] = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);

    return NotificationHandlingManager.clearPendingNotifications()();
  }
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:), 0, 0);
}

{
  v1 = [*(v0 + 16) scheduleType];
  v2 = [v1 integerValue];

  if (v2 <= 2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x60))())
    {
      v4 = v3;
      v6 = *(v0 + 32);
      v5 = *(v0 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(v2, v6, v5, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v2, &_s10Foundation4UUIDVSgMd);
  if (v0)
  {
    v4 = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);
  }

  else
  {
    v4 = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}