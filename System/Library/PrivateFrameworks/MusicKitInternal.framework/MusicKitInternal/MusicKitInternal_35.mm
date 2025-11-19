uint64_t sub_1D516ABB8(uint64_t *a1)
{
  v2 = *(type metadata accessor for MusicRecentlySearchedViewModel.Entry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD5C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1D516B008(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1D516AC60()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v3 = type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_32(v6);
  *v7 = v8;
  v7[1] = sub_1D4E73560;

  return sub_1D516689C(v2, v0 + v5);
}

uint64_t sub_1D516AD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of MusicRecentlySearchedViewModel.add(_:)()
{
  return (*(*v0 + 376))();
}

{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *(*v0 + 384);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_26_12(v6);

  return v8(v3);
}

uint64_t sub_1D516B008(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D56160E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for MusicRecentlySearchedViewModel.Entry();
        v6 = sub_1D56151D8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MusicRecentlySearchedViewModel.Entry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D516B394(v8, v9, a1, v4);
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
    return sub_1D516B138(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D516B138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v33 = v21;
      v34 = a3;
      v31 = v24;
      v32 = v23;
      do
      {
        sub_1D516C588();
        sub_1D516C588();
        v25 = *(v8 + 24);
        v26 = sub_1D560C2D8();
        sub_1D516AD2C(v14, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        result = sub_1D516AD2C(v18, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return result;
        }

        sub_1D516C5DC();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D516C5DC();
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v34 + 1;
      v21 = v33 + v29;
      v23 = v32 - 1;
      v24 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D516B394(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v105 = a1;
  v9 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  v113 = *(v9 - 8);
  v10 = *(v113 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v109 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v117 = &v103 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v118 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v103 - v17;
  v115 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v97 = v21 + 16;
      v98 = *(v21 + 2);
      for (i = v21; v98 >= 2; v21 = i)
      {
        if (!*v115)
        {
          goto LABEL_141;
        }

        v99 = &v21[16 * v98];
        v100 = *v99;
        v21 = &v97[2 * v98];
        v101 = *(v21 + 1);
        sub_1D516BCD4(*v115 + *(v113 + 72) * *v99, *v115 + *(v113 + 72) * *v21, *v115 + *(v113 + 72) * v101, v5);
        if (v6)
        {
          break;
        }

        if (v101 < v100)
        {
          goto LABEL_129;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_130;
        }

        *v99 = v100;
        *(v99 + 1) = v101;
        v102 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_131;
        }

        v98 = *v97 - 1;
        sub_1D5530CB4(v21 + 16, v102, v21);
        *v97 = v98;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v21 = sub_1D5530B8C(v21);
    goto LABEL_105;
  }

  v104 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v119 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    i = v21;
    v106 = v20;
    if (v20 + 1 < v19)
    {
      v24 = *v115;
      v25 = *(v113 + 72);
      v26 = *v115 + v25 * v23;
      v112 = v19;
      sub_1D516C588();
      v5 = v118;
      sub_1D516C588();
      v27 = *(v9 + 24);
      LODWORD(v111) = sub_1D560C2D8();
      sub_1D516AD2C(v5, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D516AD2C(v18, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      v28 = v112;
      v29 = v106 + 2;
      v114 = v25;
      v21 = (v24 + v25 * (v106 + 2));
      while (1)
      {
        v30 = v29;
        if (++v23 >= v28)
        {
          break;
        }

        sub_1D516C588();
        v5 = v118;
        sub_1D516C588();
        v31 = *(v119 + 24);
        v32 = sub_1D560C2D8() & 1;
        sub_1D516AD2C(v5, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        sub_1D516AD2C(v18, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        v21 += v114;
        v26 += v114;
        v29 = v30 + 1;
        v28 = v112;
        if ((v111 & 1) != v32)
        {
          goto LABEL_9;
        }
      }

      v23 = v28;
LABEL_9:
      if (v111)
      {
        v22 = v106;
        if (v23 < v106)
        {
          goto LABEL_135;
        }

        if (v106 >= v23)
        {
          v21 = i;
          v9 = v119;
          goto LABEL_32;
        }

        v103 = v6;
        if (v28 >= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v28;
        }

        v34 = v114 * (v33 - 1);
        v35 = v106;
        v36 = v114 * v33;
        v37 = v106 * v114;
        v38 = v23;
        v21 = i;
        do
        {
          if (v35 != --v38)
          {
            v5 = v23;
            v39 = *v115;
            if (!*v115)
            {
              goto LABEL_142;
            }

            sub_1D516C5DC();
            v40 = v37 < v34 || v39 + v37 >= (v39 + v36);
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D516C5DC();
            v21 = i;
            v23 = v5;
          }

          ++v35;
          v34 -= v114;
          v36 -= v114;
          v37 += v114;
        }

        while (v35 < v38);
        v6 = v103;
      }

      else
      {
        v21 = i;
      }

      v9 = v119;
      v22 = v106;
    }

LABEL_32:
    v41 = v115[1];
    if (v23 < v41)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_134;
      }

      if (v23 - v22 < v104)
      {
        break;
      }
    }

LABEL_50:
    if (v23 < v22)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = *(v21 + 2);
      sub_1D4F01D2C();
      v21 = v95;
    }

    v52 = *(v21 + 2);
    v53 = v52 + 1;
    if (v52 >= *(v21 + 3) >> 1)
    {
      sub_1D4F01D2C();
      v21 = v96;
    }

    *(v21 + 2) = v53;
    v54 = v21 + 32;
    v55 = &v21[16 * v52 + 32];
    *v55 = v106;
    *(v55 + 1) = v23;
    v112 = *v105;
    if (!v112)
    {
      goto LABEL_143;
    }

    v114 = v23;
    if (v52)
    {
      i = v21;
      while (1)
      {
        v56 = v53 - 1;
        v57 = &v54[16 * v53 - 16];
        v58 = &v21[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_71:
          if (v62)
          {
            goto LABEL_120;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_123;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_128;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v53 < 2)
        {
          goto LABEL_122;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_86:
        if (v77)
        {
          goto LABEL_125;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_127;
        }

        if (v84 < v76)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_137;
        }

        if (!*v115)
        {
          goto LABEL_140;
        }

        v5 = v18;
        v88 = &v54[16 * v56 - 16];
        v89 = *v88;
        v90 = v54;
        v91 = v56;
        v21 = &v54[16 * v56];
        v92 = *(v21 + 1);
        sub_1D516BCD4(*v115 + *(v113 + 72) * *v88, *v115 + *(v113 + 72) * *v21, *v115 + *(v113 + 72) * v92, v112);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v92 < v89)
        {
          goto LABEL_115;
        }

        v6 = *(i + 2);
        if (v91 > v6)
        {
          goto LABEL_116;
        }

        *v88 = v89;
        *(v88 + 1) = v92;
        if (v91 >= v6)
        {
          goto LABEL_117;
        }

        v53 = v6 - 1;
        sub_1D5530CB4(v21 + 16, v6 - 1 - v91, v21);
        v21 = i;
        *(i + 2) = v6 - 1;
        v93 = v6 > 2;
        v6 = 0;
        v9 = v119;
        v54 = v90;
        v18 = v5;
        if (!v93)
        {
          goto LABEL_100;
        }
      }

      v63 = &v54[16 * v53];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_118;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_119;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_121;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_124;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_132;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v20 = v114;
    v19 = v115[1];
    if (v114 >= v19)
    {
      goto LABEL_103;
    }
  }

  v42 = v22 + v104;
  if (__OFADD__(v22, v104))
  {
    goto LABEL_136;
  }

  if (v42 >= v41)
  {
    v42 = v115[1];
  }

  if (v42 < v22)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v23 == v42)
  {
    goto LABEL_50;
  }

  v103 = v6;
  v43 = *v115;
  v44 = *(v113 + 72);
  v45 = *v115 + v44 * (v23 - 1);
  v46 = -v44;
  v47 = v22 - v23;
  v107 = v44;
  v108 = v42;
  v48 = v43 + v23 * v44;
LABEL_41:
  v114 = v23;
  v110 = v48;
  v111 = v47;
  v112 = v45;
  v49 = v45;
  while (1)
  {
    sub_1D516C588();
    v5 = v118;
    sub_1D516C588();
    v50 = *(v9 + 24);
    v51 = sub_1D560C2D8();
    sub_1D516AD2C(v5, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
    sub_1D516AD2C(v18, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
    if ((v51 & 1) == 0)
    {
      v9 = v119;
LABEL_48:
      v23 = v114 + 1;
      v45 = v112 + v107;
      v47 = v111 - 1;
      v48 = v110 + v107;
      if (v114 + 1 == v108)
      {
        v23 = v108;
        v6 = v103;
        v21 = i;
        v22 = v106;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v43)
    {
      break;
    }

    v5 = v117;
    sub_1D516C5DC();
    v9 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D516C5DC();
    v49 += v46;
    v48 += v46;
    v40 = __CFADD__(v47++, 1);
    if (v40)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1D516BCD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  v8 = *(*(v57 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v20 = v16 / v15;
  v60 = a1;
  v59 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    sub_1D4F03784(a2, v18 / v15, a4);
    v31 = a4 + v21 * v15;
    v32 = -v15;
    v33 = v31;
    v52 = a1;
    v53 = v32;
LABEL_36:
    v54 = a2 + v32;
    v55 = a2;
    v34 = a3;
    v35 = v33;
    v51 = v33;
    while (1)
    {
      if (v31 <= a4)
      {
        v60 = v55;
        v58 = v35;
        goto LABEL_58;
      }

      if (v55 <= a1)
      {
        break;
      }

      v50 = v35;
      v36 = a4;
      v37 = v34 + v32;
      v38 = v31 + v32;
      v39 = v34;
      sub_1D516C588();
      v40 = v13;
      v41 = v56;
      sub_1D516C588();
      v42 = *(v57 + 24);
      v43 = sub_1D560C2D8();
      v44 = v41;
      v13 = v40;
      sub_1D516AD2C(v44, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D516AD2C(v40, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      if (v43)
      {
        v47 = v39 < v55 || v37 >= v55;
        a4 = v36;
        if (v47)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v37;
          v33 = v50;
          a1 = v52;
          v32 = v53;
        }

        else
        {
          v17 = v39 == v55;
          v32 = v53;
          v48 = v54;
          a2 = v54;
          a3 = v37;
          v33 = v50;
          a1 = v52;
          if (!v17)
          {
            v33 = v50;
            swift_arrayInitWithTakeBackToFront();
            a2 = v48;
          }
        }

        goto LABEL_36;
      }

      v45 = v39 < v31 || v37 >= v31;
      a4 = v36;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v37;
        v31 += v32;
        v35 = v38;
        a1 = v52;
        v32 = v53;
        v33 = v51;
      }

      else
      {
        v35 = v31 + v32;
        v17 = v31 == v39;
        v34 = v37;
        v31 += v32;
        v46 = v37;
        a1 = v52;
        v32 = v53;
        v33 = v51;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v46;
          v31 = v38;
          v35 = v38;
        }
      }
    }

    v60 = v55;
    v58 = v33;
  }

  else
  {
    sub_1D4F03784(a1, v16 / v15, a4);
    v55 = a4 + v20 * v15;
    v58 = v55;
    while (a4 < v55 && a2 < a3)
    {
      v23 = a3;
      sub_1D516C588();
      v24 = a2;
      v25 = v56;
      sub_1D516C588();
      v26 = *(v57 + 24);
      v27 = sub_1D560C2D8();
      sub_1D516AD2C(v25, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D516AD2C(v13, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      if (v27)
      {
        a2 = v24 + v15;
        v28 = a1 < v24 || a1 >= a2;
        v29 = v24;
        if (v28)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (a1 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v24;
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = a4 + v15;
        a4 += v15;
      }

      a1 += v15;
      v60 = a1;
    }
  }

LABEL_58:
  sub_1D5530BA0(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_1D516C17C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5167B24(v3, v4, v5, v6);
}

uint64_t sub_1D516C208()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5167560(v3, v4, v5, v6);
}

uint64_t sub_1D516C294()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5165B38(v3, v4, v5, v6);
}

uint64_t sub_1D516C328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D516C37C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_7_8(v6);

  return sub_1D5169154(v8, v9, v2, v4, v3);
}

uint64_t sub_1D516C424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB088, &qword_1D56347A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D516C494()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5165D74(v3, v4, v5, v6);
}

uint64_t sub_1D516C540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D516C588()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D516C5DC()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D516C630()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D516C684()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5164F00(v3, v4, v5, v6);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_83_2();

  return swift_deallocObject();
}

uint64_t sub_1D516C74C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5164C94(v3, v4, v5, v6);
}

uint64_t sub_1D516C7F4(uint64_t result)
{
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D56157A8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D516C850(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  swift_unknownObjectRetain();
  sub_1D516C7F4(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D516C8A8()
{
  v1 = v0;
  v2 = sub_1D560C988();
  v3 = OUTLINED_FUNCTION_4(v2);
  v76 = v4;
  v77 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v74 = v8 - v7;
  v75 = sub_1D560C9B8();
  v9 = OUTLINED_FUNCTION_4(v75);
  v73 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v72 = v14 - v13;
  v15 = sub_1D560C978();
  v16 = OUTLINED_FUNCTION_4(v15);
  v70 = v17;
  v71 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v64 - v23);
  v25 = sub_1D560C9D8();
  v26 = OUTLINED_FUNCTION_4(v25);
  v68 = v27;
  v69 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v67 = v31 - v30;
  v32 = sub_1D5615778();
  v33 = OUTLINED_FUNCTION_4(v32);
  v66 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = sub_1D560C998();
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v48 = v47 - v46;
  v49 = *(v0 + 32);

  sub_1D560F608();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v64 = sub_1D4ECC7A8(0, &unk_1EC7F0D38, 0x1E69E9630);
    sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
    (*(v43 + 104))(v48, *MEMORY[0x1E69E7F90], v40);
    v50 = sub_1D5615768();
    v65 = v1;
    v51 = v50;
    (*(v43 + 8))(v48, v40);
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D516D684(&qword_1EC7F0D48, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D50, &qword_1D563C2B8);
    sub_1D4E62A60(&qword_1EC7F0D58, &qword_1EC7F0D50, &qword_1D563C2B8);
    sub_1D56159E8();
    sub_1D5615788();

    v1 = v65;
    (*(v66 + 8))(v39, v32);
    ObjectType = swift_getObjectType();
    v53 = v67;
    sub_1D560C9C8();
    *v24 = 500;
    v55 = v70;
    v54 = v71;
    v56 = *(v70 + 104);
    v56(v24, *MEMORY[0x1E69E7F38], v71);
    *v22 = 1;
    v56(v22, *MEMORY[0x1E69E7F28], v54);
    MEMORY[0x1DA6EB5E0](v53, v24, v22, ObjectType);
    v57 = *(v55 + 8);
    v57(v22, v54);
    v57(v24, v54);
    (*(v68 + 8))(v53, v69);
    v58 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1D516D67C;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_10;
    v59 = _Block_copy(aBlock);

    v60 = v72;
    sub_1D560C9A8();
    v61 = v74;
    sub_1D516D3EC();
    sub_1D5615798();
    _Block_release(v59);
    (*(v76 + 8))(v61, v77);
    (*(v73 + 8))(v60, v75);

    v62 = swift_unknownObjectRetain();
    sub_1D516C850(v62);
    sub_1D56157B8();
    swift_unknownObjectRelease();
  }

  aBlock[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D28, &qword_1D563C2B0);
  sub_1D4E62A60(&qword_1EC7F0D30, &qword_1EC7F0D28, &qword_1D563C2B0);
  return sub_1D560C938();
}

void sub_1D516CF88()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([*(Strong + 24) isUpdateInProgress])
    {
      v2 = *(v1 + 24);
      v3 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1D516D6CC;
      aBlock[5] = v3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D516D398;
      aBlock[3] = &block_descriptor_17;
      v4 = _Block_copy(aBlock);
      v5 = v2;

      [v5 loadCloudMusicLibraryUpdateProgressWithCompletionHandler_];
      _Block_release(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1D516D0C4(float a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();

  v8 = sub_1D56153B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v7;
  *(v9 + 40) = a1;

  sub_1D51ECB60(0, 0, v5, &unk_1D563C2D8, v9);
}

uint64_t sub_1D516D230(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a5;
  sub_1D56153C8();
  *(v5 + 64) = sub_1D56153B8();
  v7 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D516D2CC, v7, v6);
}

uint64_t sub_1D516D2CC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = *(v0 + 72);
    v6 = *(Strong + 16);

    *(v0 + 40) = v5;
    sub_1D560C848();
  }

  **(v0 + 48) = v4 == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D516D398(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v5, a2);
}

uint64_t sub_1D516D3EC()
{
  sub_1D560C988();
  sub_1D516D684(&qword_1EDD5D840, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D4E62A60(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0);
  return sub_1D56159E8();
}

uint64_t sub_1D516D4D8()
{
  v1 = v0;
  v2 = *(v0 + 32);

  sub_1D560F608();

  if (v5 == 1)
  {
    if (*(v1 + 48))
    {
      v4 = *(v1 + 48);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D56157A8();
      swift_unknownObjectRelease();
    }

    return sub_1D516C850(0);
  }

  return result;
}

uint64_t sub_1D516D58C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D516D5C4()
{
  sub_1D516D58C();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1D516D644(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    OUTLINED_FUNCTION_2_93(a1);
  }
}

void sub_1D516D660(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    OUTLINED_FUNCTION_2_93(a1);
  }
}

uint64_t sub_1D516D684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D516D6D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D4ECF3E8;

  return sub_1D516D230(a1, v7, v4, v5, v6);
}

uint64_t sub_1D516D7A0@<X0>(uint64_t *a1@<X8>)
{
  v82 = a1;
  v2 = sub_1D560FB68();
  v3 = OUTLINED_FUNCTION_4(v2);
  v81 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D60, &qword_1D563C2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v79 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D68, qword_1D563C2E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_13();
  v71 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v71 - v18;
  OUTLINED_FUNCTION_23();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v71 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v71 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v71 - v26;
  v28 = sub_1D560FB98();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v75 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v71 - v36;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
  v78 = v1;
  sub_1D5610708();
  sub_1D560FB78();
  v38 = *(v31 + 8);
  v76 = v31 + 8;
  v77 = v28;
  v73 = v38;
  v38(v37, v28);
  sub_1D560FB48();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v2);
  v39 = *(v8 + 48);
  sub_1D516DDF0(v25, v13);
  sub_1D516DDF0(v27, &v13[v39]);
  OUTLINED_FUNCTION_43_0(v13);
  if (v40)
  {
    sub_1D4E6C9CC(v25, &qword_1EC7F0D68, qword_1D563C2E8);
    OUTLINED_FUNCTION_43_0(&v13[v39]);
    if (v40)
    {
      sub_1D4E6C9CC(v13, &qword_1EC7F0D68, qword_1D563C2E8);
LABEL_21:
      v47 = 0;
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_1D516DDF0(v13, v22);
  OUTLINED_FUNCTION_43_0(&v13[v39]);
  if (v40)
  {
    sub_1D4E6C9CC(v25, &qword_1EC7F0D68, qword_1D563C2E8);
    v41 = *(v81 + 8);
    v42 = OUTLINED_FUNCTION_26_27();
    v43(v42);
LABEL_9:
    sub_1D4E6C9CC(v13, &qword_1EC7F0D60, &qword_1D563C2E0);
    goto LABEL_10;
  }

  v53 = v81;
  v54 = v72;
  (*(v81 + 32))(v72, &v13[v39], v2);
  sub_1D516DED0();
  v55 = sub_1D5614D18();
  v56 = *(v53 + 8);
  v56(v54, v2);
  sub_1D4E6C9CC(v25, &qword_1EC7F0D68, qword_1D563C2E8);
  v57 = OUTLINED_FUNCTION_26_27();
  (v56)(v57);
  sub_1D4E6C9CC(v13, &qword_1EC7F0D68, qword_1D563C2E8);
  if (v55)
  {
    goto LABEL_21;
  }

LABEL_10:
  v44 = v80;
  sub_1D560FB58();
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v2);
  v45 = *(v8 + 48);
  v46 = v79;
  sub_1D516DDF0(v44, v79);
  sub_1D516DE60(v27, v46 + v45);
  OUTLINED_FUNCTION_43_0(v46);
  if (!v40)
  {
    sub_1D516DDF0(v46, v71);
    OUTLINED_FUNCTION_43_0(v46 + v45);
    if (!v48)
    {
      v65 = v81;
      v66 = v72;
      (*(v81 + 32))(v72, v46 + v45, v2);
      sub_1D516DED0();
      v67 = sub_1D5614D18();
      v68 = *(v65 + 8);
      v68(v66, v2);
      sub_1D4E6C9CC(v44, &qword_1EC7F0D68, qword_1D563C2E8);
      v69 = OUTLINED_FUNCTION_26_27();
      (v68)(v69);
      result = sub_1D4E6C9CC(v46, &qword_1EC7F0D68, qword_1D563C2E8);
      if (v67)
      {
        v47 = 1;
        goto LABEL_23;
      }

LABEL_19:
      v52 = v82;
      *v82 = 0;
      v52[1] = 0;
      *(v52 + 16) = 0;
      return result;
    }

    sub_1D4E6C9CC(v44, &qword_1EC7F0D68, qword_1D563C2E8);
    v49 = *(v81 + 8);
    v50 = OUTLINED_FUNCTION_26_27();
    v51(v50);
LABEL_18:
    result = sub_1D4E6C9CC(v46, &qword_1EC7F0D60, &qword_1D563C2E0);
    goto LABEL_19;
  }

  sub_1D4E6C9CC(v44, &qword_1EC7F0D68, qword_1D563C2E8);
  v47 = 1;
  OUTLINED_FUNCTION_43_0(v46 + v45);
  if (!v40)
  {
    goto LABEL_18;
  }

  v27 = v46;
LABEL_22:
  sub_1D4E6C9CC(v27, &qword_1EC7F0D68, qword_1D563C2E8);
LABEL_23:
  v58 = v75;
  sub_1D5610708();
  v59 = sub_1D560FB88();
  v61 = v60;
  result = v73(v58, v77);
  if (v61)
  {
    v62 = v59;
  }

  else
  {
    v62 = 0;
  }

  v63 = 0xE000000000000000;
  if (v61)
  {
    v63 = v61;
  }

  v64 = v82;
  *v82 = v62;
  v64[1] = v63;
  *(v64 + 16) = v47;
  return result;
}

uint64_t sub_1D516DDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D68, qword_1D563C2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D516DE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D68, qword_1D563C2E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D516DED0()
{
  result = qword_1EC7F0D70;
  if (!qword_1EC7F0D70)
  {
    sub_1D560FB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0D70);
  }

  return result;
}

uint64_t sub_1D516DFB8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D516E010()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D80, &unk_1D563C370);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612ED8();

  *(v0 + 48) = v3;
  qword_1EC87C230 = v0;
  return result;
}

uint64_t sub_1D516E0F0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D516E15C()
{
  OUTLINED_FUNCTION_60();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[23] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08D8, &qword_1D563A180);
  v1[28] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[29] = v7;
  v9 = *(v8 + 64);
  v1[30] = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19D0, &qword_1D5642090);
  v1[31] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[32] = v11;
  v13 = *(v12 + 64);
  v1[33] = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D88, &qword_1D563C3F0);
  v1[34] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[35] = v15;
  v17 = *(v16 + 64);
  v1[36] = OUTLINED_FUNCTION_127();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040) - 8) + 64);
  v1[37] = OUTLINED_FUNCTION_127();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D90, &qword_1D563C3F8);
  v1[38] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[39] = v20;
  v22 = *(v21 + 64);
  v1[40] = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D516E354, 0, 0);
}

uint64_t sub_1D516E354()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D98, &qword_1D563C400);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    sub_1D5615B68();
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x79747265706F7250, 0xE900000000000020);
    v0[18] = v1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D56861F0);
    v22 = v0[12];
    v23 = v0[13];
    return sub_1D5615E08();
  }

  v3 = v2;
  v4 = v0[23];
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = qword_1EC7E8D28;

  if (v5 != -1)
  {
    swift_once();
  }

  v0[19] = qword_1EC7EF1B8;
  v0[20] = v3;
  sub_1D516F428();
  if (sub_1D5614D18())
  {
    v6 = v0[40];
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[26];
    v10 = v0[27];
    v11 = v0[25];
    type metadata accessor for Playlist.Folder.Item();
    sub_1D516F4F0(&qword_1EDD52C98, type metadata accessor for Playlist.Folder.Item);
    sub_1D560DD68();
    sub_1D560CB98();
    sub_1D560DC98();
    KeyPath = swift_getKeyPath();
    sub_1D516F48C(v10, v8);
    v13 = type metadata accessor for Playlist.Folder();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    OUTLINED_FUNCTION_0_114();
    v16 = sub_1D516F4F0(v14, v15);
    MEMORY[0x1DA6E3AE0](KeyPath, v8, v7, v16);

    sub_1D4E6C9CC(v8, &qword_1EC7F1980, &qword_1D5642040);

    _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
    v17 = *(MEMORY[0x1E6975088] + 4);
    v18 = swift_task_alloc();
    v0[41] = v18;
    *v18 = v0;
    v18[1] = sub_1D516E9F8;
    v19 = v0[40];
    v20 = v0[38];
    v21 = v0[36];
LABEL_6:

    return MEMORY[0x1EEDCEAC0](v21, v20);
  }

  v24 = v0[24];
  v25 = qword_1EC7E8D30;

  if (v25 != -1)
  {
    swift_once();
    v45 = v0[24];
  }

  v0[21] = qword_1EC7EF1C0;
  v0[22] = v3;
  v26 = sub_1D5614D18();

  if (v26)
  {
    if (qword_1EC7E8D18 != -1)
    {
      swift_once();
    }

    v27 = v0[27];
    sub_1D516F4F0(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
    sub_1D516F4F0(&qword_1EC7EE420, type metadata accessor for Playlist.Folder);
    sub_1D560EC28();
    v28 = v0[15];
    if (v28)
    {
      v29 = v0[14];
      if (v29 == sub_1D560EED8() && v28 == v30)
      {
      }

      else
      {
        v32 = sub_1D5616168();

        if ((v32 & 1) == 0)
        {
          v33 = v0[33];
          v34 = v0[31];
          v35 = v0[25];
          v36 = v0[26];
          type metadata accessor for Playlist.Folder();
          OUTLINED_FUNCTION_0_114();
          sub_1D516F4F0(v37, v38);
          sub_1D560DD68();
          sub_1D560CB98();
          sub_1D560DC98();
          swift_getKeyPath();
          v0[16] = v29;
          v0[17] = v28;
          MEMORY[0x1DA6E3AD0]();

          _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
          v39 = *(MEMORY[0x1E6975088] + 4);
          v40 = swift_task_alloc();
          v0[43] = v40;
          *v40 = v0;
          v40[1] = sub_1D516EC40;
          v41 = v0[33];
          v21 = v0[30];
          v20 = v0[31];
          goto LABEL_6;
        }
      }

      sub_1D4E6C9CC(v0[23], &qword_1EC7F0900, &qword_1D563A1B0);
    }

    else
    {
      sub_1D4E6C9CC(v0[23], &qword_1EC7F0900, &qword_1D563A1B0);
    }

    v42 = v0[23];
    v43 = v0[24];
  }

  else
  {
    v42 = v0[23];
    sub_1D4E6C9CC(v42, &qword_1EC7F0900, &qword_1D563A1B0);
  }

  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_55();

  return v44();
}

uint64_t sub_1D516E9F8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(*v1 + 328);
  v3 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *(v5 + 336) = v0;

  if (v0)
  {
    v6 = sub_1D516EE80;
  }

  else
  {
    v6 = sub_1D516EB00;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D516EB00()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  *(v0 + 88) = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_1D560DE38();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_1D4E6C9CC(v8, &qword_1EC7F0900, &qword_1D563A1B0);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  *v8 = *(v0 + 56);
  *(v8 + 16) = v10;
  *(v8 + 32) = v9;
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_55();

  return v11();
}

uint64_t sub_1D516EC40()
{
  OUTLINED_FUNCTION_60();
  v2 = *(*v1 + 344);
  v3 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *(v5 + 352) = v0;

  if (v0)
  {
    v6 = sub_1D516EF6C;
  }

  else
  {
    v6 = sub_1D516ED48;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D516ED48()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  *(v0 + 48) = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_1D560DE38();

  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  sub_1D4E6C9CC(v8, &qword_1EC7F0900, &qword_1D563A1B0);
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);
  *v8 = *(v0 + 16);
  *(v8 + 16) = v10;
  *(v8 + 32) = v9;
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_55();

  return v11();
}

uint64_t sub_1D516EE80()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[30];
  v10 = v0[23];
  v9 = v0[24];

  (*(v3 + 8))(v2, v4);
  sub_1D4E6C9CC(v10, &qword_1EC7F0900, &qword_1D563A1B0);

  OUTLINED_FUNCTION_55();

  return v11();
}

uint64_t sub_1D516EF6C()
{
  v1 = v0[44];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[23];
  v9 = v0[24];

  (*(v3 + 8))(v2, v7);
  sub_1D4E6C9CC(v10, &qword_1EC7F0900, &qword_1D563A1B0);

  OUTLINED_FUNCTION_55();

  return v11();
}

uint64_t sub_1D516F0B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D51592F8;

  return sub_1D516E15C();
}

uint64_t sub_1D516F174(void *a1)
{
  a1[1] = sub_1D516F4F0(&qword_1EC7F0D78, type metadata accessor for Playlist.Folder);
  a1[2] = sub_1D516F4F0(&qword_1EC7F0910, type metadata accessor for Playlist.Folder);
  result = sub_1D516F4F0(&qword_1EC7EE430, type metadata accessor for Playlist.Folder);
  a1[3] = result;
  return result;
}

uint64_t sub_1D516F224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D51592F8;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)();
}

uint64_t sub_1D516F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1D4E6E494;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(a1, a2, a3, a4, a5, a6, a9, a7);
}

unint64_t sub_1D516F428()
{
  result = qword_1EC7F0DA0;
  if (!qword_1EC7F0DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0D98, &qword_1D563C400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DA0);
  }

  return result;
}

uint64_t sub_1D516F48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D516F4F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StorePlatformSocialProfile()
{
  result = qword_1EDD55190;
  if (!qword_1EDD55190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D516F5B8()
{
  sub_1D4F55058();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F550);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1D500A1D4();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

BOOL sub_1D516F700(uint64_t a1, uint64_t a2)
{
  v113 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v113);
  v111 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v108 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v107 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v107 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v17 = OUTLINED_FUNCTION_14(v114);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v109 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v107 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v107 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v107 - v43;
  v45 = *(v42 + 56);
  sub_1D4F39AB0(a1, &v107 - v43, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(a2, &v44[v45], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v44, 1, v24);
  if (v46)
  {
    OUTLINED_FUNCTION_57(&v44[v45], 1, v24);
    if (v46)
    {
      sub_1D4E50004(v44, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_14;
    }

LABEL_9:
    v50 = &qword_1EC7EC330;
    v51 = &qword_1D56222C0;
    v52 = v44;
    goto LABEL_10;
  }

  sub_1D4F39AB0(v44, v37, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v44[v45], 1, v24);
  if (v46)
  {
    v47 = *(v26 + 8);
    v48 = OUTLINED_FUNCTION_109();
    v49(v48);
    goto LABEL_9;
  }

  (*(v26 + 32))(v31, &v44[v45], v24);
  sub_1D51713DC(&qword_1EC7EBEB8, &qword_1EC7EBDD0);
  v54 = sub_1D5614D18();
  v55 = *(v26 + 8);
  v56 = OUTLINED_FUNCTION_71();
  v55(v56);
  v57 = OUTLINED_FUNCTION_109();
  v55(v57);
  sub_1D4E50004(v44, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v58 = type metadata accessor for StorePlatformSocialProfile();
  v59 = v58[5];
  OUTLINED_FUNCTION_14_50();
  if (v60)
  {
    if (!v61)
    {
      return 0;
    }

    v64 = *v62 == *v63 && v60 == v61;
    if (!v64 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v65 = v58[6];
  v66 = *(a1 + v65);
  v67 = *(a1 + v65 + 8);
  v68 = (a2 + v65);
  v69 = v66 == *v68 && v67 == v68[1];
  if (!v69 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v70 = v58[7];
  v71 = *(a1 + v70);
  v72 = *(a2 + v70);
  if (v71 == 2)
  {
    if (v72 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v72 == 2 || ((v72 ^ v71) & 1) != 0)
    {
      return result;
    }
  }

  v73 = v58[8];
  v74 = *(a1 + v73);
  v75 = *(a2 + v73);
  if (v74 == 2)
  {
    if (v75 != 2)
    {
      return 0;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v75 != 2 && ((v75 ^ v74) & 1) == 0)
  {
LABEL_38:
    v76 = v58[9];
    OUTLINED_FUNCTION_14_50();
    if (v77)
    {
      if (!v78)
      {
        return 0;
      }

      v81 = *v79 == *v80 && v77 == v78;
      if (!v81 && (sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v78)
    {
      return 0;
    }

    v82 = v58[10];
    v83 = *(v114 + 48);
    v84 = v112;
    sub_1D4F39AB0(a1 + v82, v112, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4F39AB0(a2 + v82, v84 + v83, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v85 = v113;
    OUTLINED_FUNCTION_57(v84, 1, v113);
    if (v46)
    {
      OUTLINED_FUNCTION_32_1(v84 + v83);
      if (v46)
      {
        sub_1D4E50004(v84, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_57:
        v94 = v58[11];
        v95 = *(v114 + 48);
        v96 = a1 + v94;
        v97 = v109;
        sub_1D4F39AB0(v96, v109, &unk_1EC7E9CA8, &unk_1D561D1D0);
        sub_1D4F39AB0(a2 + v94, v97 + v95, &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_32_1(v97);
        if (v46)
        {
          OUTLINED_FUNCTION_32_1(v97 + v95);
          if (v46)
          {
            sub_1D4E50004(v97, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return 1;
          }
        }

        else
        {
          v98 = v107;
          sub_1D4F39AB0(v97, v107, &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_32_1(v97 + v95);
          if (!v99)
          {
            v100 = v111;
            v101 = v97 + v95;
            v102 = v108;
            (*(v111 + 32))(v108, v101, v85);
            OUTLINED_FUNCTION_0_115();
            sub_1D5171478(v103, v104);
            v105 = sub_1D5614D18();
            v106 = *(v100 + 8);
            v106(v102, v85);
            v106(v98, v85);
            sub_1D4E50004(v97, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return (v105 & 1) != 0;
          }

          (*(v111 + 8))(v98, v85);
        }

        v50 = &qword_1EC7E9FB0;
        v51 = &qword_1D562C590;
        v52 = v97;
        goto LABEL_10;
      }
    }

    else
    {
      v86 = v110;
      sub_1D4F39AB0(v84, v110, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_32_1(v84 + v83);
      if (!v87)
      {
        v88 = v111;
        v89 = v108;
        (*(v111 + 32))(v108, v84 + v83, v85);
        OUTLINED_FUNCTION_0_115();
        sub_1D5171478(v90, v91);
        v92 = sub_1D5614D18();
        v93 = *(v88 + 8);
        v93(v89, v85);
        v93(v86, v85);
        sub_1D4E50004(v84, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v92 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_57;
      }

      (*(v111 + 8))(v86, v85);
    }

    v50 = &qword_1EC7E9FB0;
    v51 = &qword_1D562C590;
    v52 = v84;
LABEL_10:
    sub_1D4E50004(v52, v50, v51);
    return 0;
  }

  return result;
}

uint64_t sub_1D516FF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7241726174617661 && a2 == 0xED00006B726F7774;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461766972507369 && a2 == 0xE900000000000065;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C725574726F6873 && a2 == 0xE800000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 7107189 && a2 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1D5616168();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D51701D8(char a1)
{
  result = 0x7241726174617661;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x7461766972507369;
      break;
    case 4:
      result = 0x6966697265567369;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6C725574726F6873;
      break;
    case 7:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51702B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0DC8, &qword_1D563C5A8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51711F4();
  sub_1D56163D8();
  LOBYTE(v31[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D5171308(&qword_1EC7EC350);
  OUTLINED_FUNCTION_10_43();
  sub_1D5616068();
  if (!v2)
  {
    v14 = type metadata accessor for StorePlatformSocialProfile();
    v15 = (v3 + v14[5]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v31[0]) = 1;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616028();
    v18 = (v3 + v14[6]);
    v20 = *v18;
    v19 = v18[1];
    v31[0] = v20;
    v31[1] = v19;
    v32 = 2;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
    v21 = *(v3 + v14[7]);
    LOBYTE(v31[0]) = 3;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616038();
    v22 = *(v3 + v14[8]);
    LOBYTE(v31[0]) = 4;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616038();
    v23 = (v3 + v14[9]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v31[0]) = 5;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616028();
    v26 = v14[10];
    LOBYTE(v31[0]) = 6;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_115();
    sub_1D5171478(v27, v28);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    v29 = v14[11];
    LOBYTE(v31[0]) = 7;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D517059C()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v58 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v57 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v56 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - v29;
  v31 = OUTLINED_FUNCTION_109();
  sub_1D4F39AB0(v31, v32, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v30, 1, v17);
  if (v33)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v19 + 32))(v24, v30, v17);
    OUTLINED_FUNCTION_27();
    sub_1D51713DC(&qword_1EC7EBE78, &qword_1EC7EBDC8);
    sub_1D5614CB8();
    (*(v19 + 8))(v24, v17);
  }

  v34 = type metadata accessor for StorePlatformSocialProfile();
  v35 = (v1 + v34[5]);
  if (v35[1])
  {
    v36 = *v35;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v37 = (v1 + v34[6]);
  v38 = *v37;
  v39 = v37[1];
  sub_1D5614E28();
  if (*(v1 + v34[7]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v34[8]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v40 = (v1 + v34[9]);
  if (v40[1])
  {
    v41 = *v40;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v1 + v34[10], v16, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v16, 1, v2);
  if (v33)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v43 = v57;
    v42 = v58;
    (*(v58 + 32))(v57, v16, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_115();
    sub_1D5171478(v44, v45);
    sub_1D5614CB8();
    (*(v42 + 8))(v43, v2);
  }

  v46 = v56;
  sub_1D4F39AB0(v1 + v34[11], v56, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v46, 1, v2);
  if (v33)
  {
    return OUTLINED_FUNCTION_36();
  }

  v48 = v57;
  v47 = v58;
  v49 = *(v58 + 32);
  v50 = OUTLINED_FUNCTION_109();
  v51(v50);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_115();
  sub_1D5171478(v52, v53);
  sub_1D5614CB8();
  return (*(v47 + 8))(v48, v2);
}

uint64_t sub_1D5170A64()
{
  sub_1D56162D8();
  sub_1D517059C();
  return sub_1D5616328();
}

uint64_t sub_1D5170AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0DB8, &qword_1D563C5A0);
  OUTLINED_FUNCTION_4(v45);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v49 = type metadata accessor for StorePlatformSocialProfile();
  v22 = OUTLINED_FUNCTION_14(v49);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v47 = v25;
  v48 = a1;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51711F4();
  v27 = v46;
  sub_1D5616398();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v46 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  LOBYTE(v50) = 0;
  sub_1D5171308(&qword_1EDD531B8);
  sub_1D5615F78();
  v28 = v47;
  sub_1D4F39A1C(v18, v47, &qword_1EC7EB5B8, &unk_1D56206A0);
  LOBYTE(v50) = 1;
  v29 = sub_1D5615F38();
  v30 = v49;
  v31 = (v28 + v49[5]);
  *v31 = v29;
  v31[1] = v32;
  v52 = 2;
  sub_1D4F89C9C();
  sub_1D5615FD8();
  v33 = v51;
  v34 = (v28 + v30[6]);
  *v34 = v50;
  v34[1] = v33;
  OUTLINED_FUNCTION_7_70(3);
  *(v28 + v30[7]) = sub_1D5615F48();
  OUTLINED_FUNCTION_7_70(4);
  *(v28 + v30[8]) = sub_1D5615F48();
  OUTLINED_FUNCTION_7_70(5);
  v35 = sub_1D5615F38();
  v36 = (v28 + v30[9]);
  *v36 = v35;
  v36[1] = v37;
  sub_1D560C0A8();
  LOBYTE(v50) = 6;
  OUTLINED_FUNCTION_0_115();
  sub_1D5171478(v38, v39);
  sub_1D5615F78();
  sub_1D4F39A1C(v12, v28 + v30[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v50) = 7;
  v40 = v46;
  sub_1D5615F78();
  v41 = OUTLINED_FUNCTION_2_95();
  v42(v41);
  sub_1D4F39A1C(v40, v28 + v49[11], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5171248(v28, v44);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1D51712AC(v28);
}

uint64_t sub_1D51710B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D516FF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51710DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D51701D0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5171104(uint64_t a1)
{
  v2 = sub_1D51711F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5171140(uint64_t a1)
{
  v2 = sub_1D51711F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51711B8()
{
  sub_1D56162D8();
  sub_1D517059C();
  return sub_1D5616328();
}

unint64_t sub_1D51711F4()
{
  result = qword_1EC7F0DC0;
  if (!qword_1EC7F0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DC0);
  }

  return result;
}

uint64_t sub_1D5171248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformSocialProfile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51712AC(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformSocialProfile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5171308(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v3 = MEMORY[0x1E6975968];
    sub_1D5171478(&qword_1EDD533A8, MEMORY[0x1E6975968]);
    sub_1D5171478(&qword_1EDD533B0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D51713DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D5171478(a2, MEMORY[0x1E6975968]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5171478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D51714C0()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C240);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FF18();
}

_BYTE *storeEnumTagSinglePayload for StorePlatformSocialProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D51715E8()
{
  result = qword_1EC7F0DD0;
  if (!qword_1EC7F0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DD0);
  }

  return result;
}

unint64_t sub_1D5171640()
{
  result = qword_1EC7F0DD8;
  if (!qword_1EC7F0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DD8);
  }

  return result;
}

unint64_t sub_1D5171698()
{
  result = qword_1EC7F0DE0;
  if (!qword_1EC7F0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DE0);
  }

  return result;
}

void static CloudUploadedVideo.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v292 = sub_1D56109F8();
  v29 = OUTLINED_FUNCTION_4(v292);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_14(v289);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v41);
  v42 = sub_1D560C0A8();
  v43 = OUTLINED_FUNCTION_4(v42);
  v298 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v49 = OUTLINED_FUNCTION_22(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v53);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v54 = OUTLINED_FUNCTION_14(v300);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_2();
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_4(v305);
  v302 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_3();
  v299 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  v301 = v67;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0DF8, &unk_1D563C6D0);
  OUTLINED_FUNCTION_14(v303);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_3();
  v304 = v71;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v310);
  v308 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  v306 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v78 = OUTLINED_FUNCTION_22(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  v307 = v82;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  v83 = OUTLINED_FUNCTION_14(v309);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_177(v87);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4(v315);
  v313 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  v311 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_3();
  v312 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8B0, &unk_1D5633390);
  OUTLINED_FUNCTION_14(v98);
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_103_9(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v103);
  v105 = v104;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_114();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v109);
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_31();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v113);
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_45();
  v117 = v28[1];
  v118 = v26[1];
  if (v117)
  {
    if (!v118)
    {
      goto LABEL_31;
    }

    v119 = *v28 == *v26 && v117 == v118;
    if (!v119 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v118)
  {
    goto LABEL_31;
  }

  v284 = v42;
  v316 = v26;
  v285 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v120 = v285[5];
  v121 = *(v113 + 48);
  v286 = v28;
  sub_1D4F39AB0(v28 + v120, v22, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v316 + v120, v22 + v121, &qword_1EC7EB5B8, &unk_1D56206A0);
  v122 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_57(v122, v123, v103);
  if (v119)
  {
    OUTLINED_FUNCTION_57(v22 + v121, 1, v103);
    if (v119)
    {
      sub_1D4E50004(v22, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_20;
    }

LABEL_18:
    v128 = &qword_1EC7EC330;
    v129 = &qword_1D56222C0;
    v130 = v22;
LABEL_30:
    sub_1D4E50004(v130, v128, v129);
    goto LABEL_31;
  }

  sub_1D4F39AB0(v22, v20, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v22 + v121, 1, v103);
  if (v124)
  {
    v125 = *(v105 + 8);
    v126 = OUTLINED_FUNCTION_116();
    v127(v126);
    goto LABEL_18;
  }

  (*(v105 + 32))(v21, v22 + v121, v103);
  sub_1D4F39858();
  v131 = sub_1D5614D18();
  v132 = *(v105 + 8);
  v132(v21, v103);
  v133 = OUTLINED_FUNCTION_116();
  (v132)(v133);
  sub_1D4E50004(v22, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v131 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v134 = v285[6];
  v135 = *(v98 + 48);
  v136 = v314;
  OUTLINED_FUNCTION_113(v286 + v134, v314);
  OUTLINED_FUNCTION_113(v316 + v134, v314 + v135);
  v137 = OUTLINED_FUNCTION_67_18();
  OUTLINED_FUNCTION_57(v137, v138, v315);
  if (v119)
  {
    OUTLINED_FUNCTION_57(v314 + v135, 1, v315);
    if (v119)
    {
      sub_1D4E50004(v314, &qword_1EC7EF380, &unk_1D5677480);
      goto LABEL_33;
    }

LABEL_28:
    v128 = &qword_1EC7EF8B0;
    v129 = &unk_1D5633390;
LABEL_29:
    v130 = v136;
    goto LABEL_30;
  }

  sub_1D4F39AB0(v314, v312, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_57(v314 + v135, 1, v315);
  if (v139)
  {
    (*(v313 + 8))(v312, v315);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_81();
  v140(v311, v314 + v135, v315);
  sub_1D5172C14();
  OUTLINED_FUNCTION_85_8();
  v141 = sub_1D5614D18();
  v142 = *(v313 + 8);
  v142(v311, v315);
  v142(v312, v315);
  sub_1D4E50004(v314, &qword_1EC7EF380, &unk_1D5677480);
  if ((v141 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  v143 = v285[7];
  v144 = (v286 + v143);
  v145 = *(v286 + v143 + 8);
  v146 = (v316 + v143);
  v147 = *(v316 + v143 + 8);
  if (v145)
  {
    if (!v147)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v144 != *v146)
    {
      LOBYTE(v147) = 1;
    }

    if (v147)
    {
      goto LABEL_31;
    }
  }

  v148 = v285[8];
  v149 = *(v316 + v148);
  if (*(v286 + v148))
  {
    if (!v149)
    {
      goto LABEL_31;
    }

    v150 = *(v316 + v148);

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    v152 = v151;

    if ((v152 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v149)
  {
    goto LABEL_31;
  }

  v153 = v285[9];
  v154 = *(v309 + 48);
  v155 = &qword_1EC7EC960;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v156, v157, v158, v159);
  OUTLINED_FUNCTION_94_11();
  v160 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_18(v160, v161);
  if (v119)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EC7EC960 + v154);
    if (v119)
    {
      sub_1D4E50004(&qword_1EC7EC960, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_55;
    }

LABEL_52:
    v128 = &qword_1EC7EC968;
    v129 = &unk_1D5622290;
LABEL_53:
    v130 = v155;
    goto LABEL_30;
  }

  sub_1D4F39AB0(&qword_1EC7EC960, v307, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_43_0(&qword_1EC7EC960 + v154);
  if (v162)
  {
    v163 = *(v308 + 8);
    v164 = OUTLINED_FUNCTION_164_0();
    v165(v164);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_11_18();
  v166(v306, &qword_1EC7EC960 + v154, v310);
  sub_1D4F7BF60();
  OUTLINED_FUNCTION_85_8();
  v167 = sub_1D5614D18();
  v168 = OUTLINED_FUNCTION_82_13(v167);
  v154(v168);
  v169 = OUTLINED_FUNCTION_164_0();
  v154(v169);
  sub_1D4E50004(&qword_1EC7EC960, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v315 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_55:
  v170 = v285[10];
  v171 = *(v316 + v170);
  if (*(v286 + v170))
  {
    if (!v171)
    {
      goto LABEL_31;
    }

    v172 = *(v316 + v170);

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    v174 = v173;

    if ((v174 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v171)
  {
    goto LABEL_31;
  }

  v175 = v285[11];
  v136 = v304;
  v176 = *(v303 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v177, v178, v179, v180);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v181, v182, v183, v184);
  v185 = OUTLINED_FUNCTION_67_18();
  OUTLINED_FUNCTION_4_18(v185, v186);
  if (v119)
  {
    OUTLINED_FUNCTION_43_0(v304 + v176);
    if (v119)
    {
      sub_1D4E50004(v304, &qword_1EC7EF3A0, &qword_1D5631128);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  sub_1D4F39AB0(v304, v301, &qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_43_0(v304 + v176);
  if (v187)
  {
    v188 = *(v302 + 8);
    v189 = OUTLINED_FUNCTION_164_0();
    v190(v189);
LABEL_68:
    v128 = &qword_1EC7F0DF8;
    v129 = &unk_1D563C6D0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_11_18();
  v191(v299, v304 + v176, v305);
  sub_1D5172B60();
  OUTLINED_FUNCTION_85_8();
  v192 = sub_1D5614D18();
  v193 = *(v302 + 8);
  v193(v299, v305);
  v194 = OUTLINED_FUNCTION_164_0();
  (v193)(v194);
  sub_1D4E50004(v304, &qword_1EC7EF3A0, &qword_1D5631128);
  if ((v192 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_70:
  v195 = v285[12];
  v196 = *(v300 + 48);
  v155 = &unk_1EC7E9CA8;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v197, v198, v199, v200);
  OUTLINED_FUNCTION_94_11();
  v201 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_18(v201, v202);
  if (v119)
  {
    OUTLINED_FUNCTION_43_0(&unk_1EC7E9CA8 + v196);
    if (v119)
    {
      sub_1D4E50004(&unk_1EC7E9CA8, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  sub_1D4F39AB0(&unk_1EC7E9CA8, v297, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_43_0(&unk_1EC7E9CA8 + v196);
  if (v203)
  {
    v204 = *(v298 + 8);
    v205 = OUTLINED_FUNCTION_164_0();
    v206(v205);
LABEL_78:
    v128 = &qword_1EC7E9FB0;
    v129 = &qword_1D562C590;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_11_18();
  v207(v295, &unk_1EC7E9CA8 + v196, v284);
  OUTLINED_FUNCTION_0_116();
  sub_1D5172B18(v208, v209);
  OUTLINED_FUNCTION_85_8();
  v210 = sub_1D5614D18();
  v211 = OUTLINED_FUNCTION_82_13(v210);
  v196(v211);
  v212 = OUTLINED_FUNCTION_164_0();
  v196(v212);
  sub_1D4E50004(&unk_1EC7E9CA8, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v315 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_80:
  v213 = v285[13];
  v214 = *(v316 + v213 + 8);
  if (*(v286 + v213 + 8))
  {
    if (!v214)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_31_0((v286 + v213));
    v217 = v119 && v215 == v216;
    if (!v217 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v214)
  {
    goto LABEL_31;
  }

  v218 = v285[14];
  v219 = *(v309 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v220, v221, v222, v223);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v224, v225, v226, v227);
  OUTLINED_FUNCTION_57(v296, 1, v310);
  if (v119)
  {
    OUTLINED_FUNCTION_1(v296 + v219);
    if (v119)
    {
      sub_1D4E50004(v296, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_99;
    }

LABEL_97:
    v128 = &qword_1EC7EC968;
    v129 = &unk_1D5622290;
    v229 = &a17;
LABEL_117:
    v130 = *(v229 - 32);
    goto LABEL_30;
  }

  sub_1D4F39AB0(v296, v293, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_1(v296 + v219);
  if (v228)
  {
    (*(v308 + 8))(v293, v310);
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_81();
  v230(v306, v296 + v219, v310);
  sub_1D4F7BF60();
  OUTLINED_FUNCTION_157_0();
  v231 = OUTLINED_FUNCTION_51();
  (unk_1D56334C0)(v231);
  v232 = OUTLINED_FUNCTION_85();
  (unk_1D56334C0)(v232);
  sub_1D4E50004(v296, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v310 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_99:
  OUTLINED_FUNCTION_90_12();
  v234 = *(v233 + 60);
  v235 = *(v289 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v236, v237, v238, v239);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v240, v241, v242, v243);
  OUTLINED_FUNCTION_57(v294, 1, v292);
  if (v119)
  {
    OUTLINED_FUNCTION_57(v294 + v235, 1, v292);
    if (!v119)
    {
      goto LABEL_106;
    }

    sub_1D4E50004(v294, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  else
  {
    sub_1D4F39AB0(v294, v290, &qword_1EC7EB5C0, &unk_1D56223C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v294 + v235, 1, v292);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_136(&a9);
      v245(v290, v292);
LABEL_106:
      v128 = &qword_1EC7EF610;
      v129 = &unk_1D5637E70;
      v229 = &a15;
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_81();
    v246(v287, v294 + v235, v292);
    OUTLINED_FUNCTION_5_73();
    sub_1D5172B18(v247, v248);
    OUTLINED_FUNCTION_157_0();
    v249 = OUTLINED_FUNCTION_51();
    (unk_1D56223C0)(v249);
    v250 = OUTLINED_FUNCTION_85();
    (unk_1D56223C0)(v250);
    sub_1D4E50004(v294, &qword_1EC7EB5C0, &unk_1D56223C0);
    if ((v294 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_90_12();
  v252 = *(v251 + 64);
  v253 = *(v300 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v254, v255, v256, v257);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v258, v259, v260, v261);
  OUTLINED_FUNCTION_57(v291, 1, v284);
  if (!v119)
  {
    sub_1D4F39AB0(v291, v288, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v291 + v253, 1, v284);
    if (!v262)
    {
      OUTLINED_FUNCTION_81();
      v263(v295, v291 + v253, v284);
      OUTLINED_FUNCTION_0_116();
      sub_1D5172B18(v264, v265);
      OUTLINED_FUNCTION_157_0();
      v266 = OUTLINED_FUNCTION_51();
      (unk_1D561D1D0)(v266);
      v267 = OUTLINED_FUNCTION_85();
      (unk_1D561D1D0)(v267);
      sub_1D4E50004(v291, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v291 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_119;
    }

    (*(v298 + 8))(v288, v284);
LABEL_116:
    v128 = &qword_1EC7E9FB0;
    v129 = &qword_1D562C590;
    v229 = &a12;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_57(v291 + v253, 1, v284);
  if (!v119)
  {
    goto LABEL_116;
  }

  sub_1D4E50004(v291, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_119:
  OUTLINED_FUNCTION_90_12();
  v269 = *(v268 + 68);
  OUTLINED_FUNCTION_66_12();
  if (v272)
  {
    if (!v270)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_31_0(v271);
    v275 = v119 && v273 == v274;
    if (!v275 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v270)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_90_12();
  v277 = *(v276 + 72);
  OUTLINED_FUNCTION_66_12();
  if (v280 && v278)
  {
    OUTLINED_FUNCTION_31_0(v279);
    if (!v119 || v281 != v282)
    {
      sub_1D5616168();
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5172B18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5172B60()
{
  result = qword_1EC7F0E00;
  if (!qword_1EC7F0E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EC7F0E08, type metadata accessor for CloudHLSAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E00);
  }

  return result;
}

unint64_t sub_1D5172C14()
{
  result = qword_1EC7EF8B8;
  if (!qword_1EC7EF8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D5172B18(&qword_1EC7EF8C0, type metadata accessor for CloudAssetFlavors);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8B8);
  }

  return result;
}

uint64_t sub_1D5172CC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F547465737361 && a2 == 0xEB00000000736E65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001D56819A0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7465737341736C68 && a2 == 0xE800000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C725574736F70 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x614464616F6C7075 && a2 == 0xEA00000000006574;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000013 && 0x80000001D5683C10 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1D5616168();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
        }
      }
    }
  }
}

unint64_t sub_1D5173158(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6B6F547465737361;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x7465737341736C68;
      break;
    case 8:
      result = 0x76697372656D6D69;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6172615079616C70;
      break;
    case 12:
      result = 0x6C725574736F70;
      break;
    case 13:
      result = 0x614464616F6C7075;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5173324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5172CC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D517334C(uint64_t a1)
{
  v2 = sub_1D5173888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5173388(uint64_t a1)
{
  v2 = sub_1D5173888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudUploadedVideo.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E10, &unk_1D563C6E0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D5173888();
  OUTLINED_FUNCTION_132();
  v10 = *v0;
  v11 = v0[1];
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v1)
  {
    v12 = type metadata accessor for CloudUploadedVideo.Attributes(0);
    v13 = v12[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v14 = v12[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C43C8();
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v15 = v0 + v12[7];
    v16 = *v15;
    v17 = v15[8];
    OUTLINED_FUNCTION_37_1(3);
    sub_1D5616058();
    v35 = *(v0 + v12[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D517B2B8(&qword_1EC7EC9D8, sub_1D4F7CD24);
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v18 = v12[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v36 = *(v3 + v12[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D51738DC(&qword_1EC7EC9F0, sub_1D4F7D1A8);
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v33 = v12[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5173950();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    v34 = v12[12];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v19, v20);
    OUTLINED_FUNCTION_53_10(v34);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v21 = (v3 + v12[13]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_37_1(9);
    sub_1D5616028();
    OUTLINED_FUNCTION_53_10(v12[14]);
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v24 = v12[15];
    sub_1D56109F8();
    OUTLINED_FUNCTION_5_73();
    sub_1D5172B18(v25, v26);
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v12[16]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v27 = (v3 + v12[17]);
    v28 = *v27;
    v29 = v27[1];
    OUTLINED_FUNCTION_37_1(13);
    sub_1D5616028();
    v30 = (v3 + v12[18]);
    v31 = *v30;
    v32 = v30[1];
    OUTLINED_FUNCTION_37_1(14);
    sub_1D5616028();
  }

  (*(v6 + 8))(v2, v4);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5173888()
{
  result = qword_1EDD563C8[0];
  if (!qword_1EDD563C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD563C8);
  }

  return result;
}

uint64_t sub_1D51738DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    a2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5173950()
{
  result = qword_1EC7F0E18;
  if (!qword_1EC7F0E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EDD57A18, type metadata accessor for CloudHLSAsset);
    sub_1D5172B18(qword_1EDD57A20, type metadata accessor for CloudHLSAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E18);
  }

  return result;
}

void CloudUploadedVideo.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v130 = sub_1D56109F8();
  v4 = OUTLINED_FUNCTION_4(v130);
  v118 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v117 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v128 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D560C0A8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v131 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_103_9(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v129 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v123 = v26;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_4(v122);
  v116 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v115 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v121 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v38 = OUTLINED_FUNCTION_4(v37);
  v126 = v39;
  v127 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_177(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  v124 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v120 = v50;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4(v119);
  v114 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  v113 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_19_0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v60);
  v62 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_71_1();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_45();
  if (v0[1])
  {
    v70 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v71 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  sub_1D4F39AB0(v0 + v71[5], v3, &qword_1EC7EB5B8, &unk_1D56206A0);
  v72 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_57(v72, v73, v60);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v75(v2, v3, v60);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v62 + 8))(v2, v60);
  }

  sub_1D4F39AB0(v0 + v71[6], v1, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_43_0(v1);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v76(v113, v1, v119);
    OUTLINED_FUNCTION_27();
    sub_1D5174460();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v114 + 8))(v113, v119);
  }

  v77 = v0 + v71[7];
  if (v77[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v78 = *v77;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v78);
  }

  if (*(v0 + v71[8]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v71[9], v120, &qword_1EC7EC960, &unk_1D56334C0);
  v79 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v79, v80, v127);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v81 = OUTLINED_FUNCTION_56_17();
    v82(v81);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v126 + 8))(v125, v127);
  }

  if (*(v0 + v71[10]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v71[11], v121, &qword_1EC7EF3A0, &qword_1D5631128);
  v83 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v83, v84);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v85 = OUTLINED_FUNCTION_58_16();
    v86(v85);
    OUTLINED_FUNCTION_27();
    sub_1D517B204();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v116 + 8))(v115, v122);
  }

  sub_1D4F39AB0(v0 + v71[12], v123, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_74(v123);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v87 = OUTLINED_FUNCTION_56_17();
    v88(v87);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v89, v90);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v91 = *(v131 + 8);
    v92 = OUTLINED_FUNCTION_85_0();
    v93(v92);
  }

  v94 = (v0 + v71[13]);
  if (v94[1])
  {
    v95 = *v94;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v71[14], v124, &qword_1EC7EC960, &unk_1D56334C0);
  v96 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v96, v97, v127);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v98 = OUTLINED_FUNCTION_58_16();
    v99(v98);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v126 + 8))(v125, v127);
  }

  sub_1D4F39AB0(v0 + v71[15], v128, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_43_0(v128);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v118 + 32))(v117, v128, v130);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_5_73();
    sub_1D5172B18(v100, v101);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v118 + 8))(v117, v130);
  }

  sub_1D4F39AB0(v0 + v71[16], v129, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_74(v129);
  if (v74)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v102 = OUTLINED_FUNCTION_56_17();
    v103(v102);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v104, v105);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v106 = *(v131 + 8);
    v107 = OUTLINED_FUNCTION_85_0();
    v108(v107);
  }

  v109 = (v0 + v71[17]);
  if (v109[1])
  {
    v110 = *v109;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v111 = (v0 + v71[18]);
  if (v111[1])
  {
    v112 = *v111;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D5174460()
{
  result = qword_1EC7EF8C8;
  if (!qword_1EC7EF8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D5172B18(&qword_1EC7EF8D0, type metadata accessor for CloudAssetFlavors);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8C8);
  }

  return result;
}

void CloudUploadedVideo.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v140 = v10;
  v13 = v12;
  v132 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_177(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v133 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v135 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v138 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = v129 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_19_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v129 - v49;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E38, &unk_1D563C6F0);
  OUTLINED_FUNCTION_4(v136);
  v52 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v129 - v56;
  v142 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v58 = OUTLINED_FUNCTION_14(v142);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  v141 = v61;
  v63 = v13[3];
  v62 = v13[4];
  v139 = v13;
  __swift_project_boxed_opaque_existential_1(v13, v63);
  sub_1D5173888();
  v137 = v57;
  v64 = v140;
  sub_1D5616398();
  if (v64)
  {
    v140 = v64;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    LODWORD(v70) = 0;
    v71 = 0;
    v72 = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
  }

  else
  {
    v65 = v50;
    v140 = v40;
    v130 = v38;
    v131 = v52;
    v71 = v136;
    v66 = sub_1D5615F38();
    v82 = v141;
    *v141 = v66;
    v82[1] = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F886BC();
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    v72 = v131;
    v84 = v142;
    sub_1D4F39A1C(v65, v82 + v142[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    LOBYTE(a10) = 2;
    sub_1D50C41B8();
    OUTLINED_FUNCTION_188();
    sub_1D5615F78();
    sub_1D4F39A1C(v11, v82 + v84[6], &qword_1EC7EF380, &unk_1D5677480);
    OUTLINED_FUNCTION_153_0(3);
    v85 = sub_1D5615F68();
    v86 = v82 + v84[7];
    *v86 = v85;
    v86[8] = v87 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v143 = 4;
    sub_1D517B2B8(&qword_1EDD528F8, sub_1D4F886BC);
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    *(v82 + v84[8]) = a10;
    v88 = v82;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 5;
    v90 = sub_1D4F88A24();
    v91 = v140;
    sub_1D5615F78();
    v129[0] = v90;
    v129[1] = v89;
    sub_1D4F39A1C(v91, v88 + v84[9], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v143 = 6;
    sub_1D51738DC(&qword_1EDD52908, sub_1D4F88B0C);
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    *(v88 + v84[10]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D517B32C();
    OUTLINED_FUNCTION_188();
    v92 = v138;
    OUTLINED_FUNCTION_54_14();
    sub_1D5615F78();
    v93 = v141;
    sub_1D4F39A1C(v92, v141 + v84[11], &qword_1EC7EF3A0, &qword_1D5631128);
    v68 = sub_1D560C0A8();
    OUTLINED_FUNCTION_0_116();
    sub_1D5172B18(v94, v95);
    v70 = v135;
    sub_1D5615F78();
    v140 = 0;
    sub_1D4F39A1C(v70, v93 + v142[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_153_0(9);
    v69 = v137;
    v96 = v140;
    v97 = sub_1D5615F38();
    v140 = v96;
    if (v96)
    {
      v99 = OUTLINED_FUNCTION_33_33();
      v100(v99);
      LODWORD(v137) = 0;
      v67 = 1;
      OUTLINED_FUNCTION_11_65();
      OUTLINED_FUNCTION_76_0();
    }

    else
    {
      v101 = (v141 + v142[13]);
      *v101 = v97;
      v101[1] = v98;
      v69 = v137;
      v102 = v140;
      sub_1D5615F78();
      v140 = v102;
      if (!v102)
      {
        sub_1D4F39A1C(v130, v141 + v142[14], &qword_1EC7EC960, &unk_1D56334C0);
        sub_1D56109F8();
        OUTLINED_FUNCTION_5_73();
        sub_1D5172B18(v106, v107);
        OUTLINED_FUNCTION_188();
        v69 = v137;
        v108 = v140;
        sub_1D5615F78();
        LODWORD(v138) = v108 == 0;
        v140 = v108;
        if (v108 || (sub_1D4F39A1C(v134, v141 + v142[15], &qword_1EC7EB5C0, &unk_1D56223C0), v69 = v137, v109 = v140, sub_1D5615F78(), (v140 = v109) != 0))
        {
          v110 = OUTLINED_FUNCTION_33_33();
          v111(v110);
          v75 = 0;
          LODWORD(v135) = 0;
        }

        else
        {
          sub_1D4F39A1C(v133, v141 + v142[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_153_0(13);
          v69 = v137;
          v113 = v140;
          v114 = sub_1D5615F38();
          v140 = v113;
          if (v113)
          {
            v116 = OUTLINED_FUNCTION_33_33();
            v117(v116);
            LODWORD(v135) = 0;
            v75 = 1;
          }

          else
          {
            v118 = (v141 + v142[17]);
            *v118 = v114;
            v118[1] = v115;
            OUTLINED_FUNCTION_153_0(14);
            v69 = v137;
            v119 = v140;
            v120 = sub_1D5615F38();
            v140 = v119;
            if (!v119)
            {
              v124 = v120;
              v125 = v121;
              v126 = OUTLINED_FUNCTION_33_33();
              v127(v126);
              v128 = (v141 + v142[18]);
              *v128 = v124;
              v128[1] = v125;
              OUTLINED_FUNCTION_14_51();
              sub_1D517B614();
              __swift_destroy_boxed_opaque_existential_1(v139);
              OUTLINED_FUNCTION_13_50();
              sub_1D517B668();
              goto LABEL_31;
            }

            v122 = OUTLINED_FUNCTION_33_33();
            v123(v122);
            v75 = 1;
            LODWORD(v135) = 1;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v139);
        OUTLINED_FUNCTION_11_65();
        OUTLINED_FUNCTION_76_0();
        LODWORD(v137) = v112;
        v74 = 1;
        v73 = v141;
        goto LABEL_6;
      }

      v103 = OUTLINED_FUNCTION_33_33();
      v104(v103);
      v67 = 1;
      OUTLINED_FUNCTION_11_65();
      OUTLINED_FUNCTION_76_0();
      LODWORD(v137) = v105;
    }
  }

  v73 = v141;
  __swift_destroy_boxed_opaque_existential_1(v139);
  if (v67)
  {
    v74 = 0;
    LODWORD(v138) = 0;
    v75 = 0;
    LODWORD(v135) = 0;
LABEL_6:
    v76 = v73[1];

    goto LABEL_19;
  }

  LODWORD(v135) = 0;
  v75 = 0;
  LODWORD(v138) = 0;
  v74 = 0;
LABEL_19:
  v79 = v142;
  if (!v68)
  {
    if (!v69)
    {
      goto LABEL_21;
    }

LABEL_8:
    v77 = *(v73 + v79[8]);

    if (v70)
    {
      goto LABEL_22;
    }

LABEL_9:
    if (!v71)
    {
      goto LABEL_23;
    }

LABEL_10:
    v78 = *(v73 + v79[10]);

    if (v72)
    {
      goto LABEL_24;
    }

LABEL_11:
    if (!v136)
    {
      goto LABEL_25;
    }

LABEL_12:
    sub_1D4E50004(v73 + v79[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if (v137)
    {
      goto LABEL_26;
    }

LABEL_13:
    if (!v74)
    {
      goto LABEL_27;
    }

LABEL_14:
    sub_1D4E50004(v73 + v79[14], &qword_1EC7EC960, &unk_1D56334C0);
    if (v138)
    {
      goto LABEL_28;
    }

LABEL_15:
    if (!v75)
    {
      goto LABEL_29;
    }

LABEL_16:
    sub_1D4E50004(v73 + v79[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v135 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  sub_1D4E50004(v73 + v142[6], &qword_1EC7EF380, &unk_1D5677480);
  if (v69)
  {
    goto LABEL_8;
  }

LABEL_21:
  if (!v70)
  {
    goto LABEL_9;
  }

LABEL_22:
  sub_1D4E50004(v73 + v79[9], &qword_1EC7EC960, &unk_1D56334C0);
  if (v71)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (!v72)
  {
    goto LABEL_11;
  }

LABEL_24:
  sub_1D4E50004(v73 + v79[11], &qword_1EC7EF3A0, &qword_1D5631128);
  if (v136)
  {
    goto LABEL_12;
  }

LABEL_25:
  if (!v137)
  {
    goto LABEL_13;
  }

LABEL_26:
  v80 = *(v73 + v79[13] + 8);

  if (v74)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (!v138)
  {
    goto LABEL_15;
  }

LABEL_28:
  sub_1D4E50004(v73 + v79[15], &qword_1EC7EB5C0, &unk_1D56223C0);
  if (v75)
  {
    goto LABEL_16;
  }

LABEL_29:
  if (v135)
  {
LABEL_30:
    v81 = *(v73 + v79[17] + 8);
  }

LABEL_31:
  OUTLINED_FUNCTION_26();
}

uint64_t CloudUploadedVideo.Relationships.curator.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = type metadata accessor for CloudUploadedVideo.Relationships(v2);
  return sub_1D4F39AB0(v1 + *(v3 + 20), v0, &qword_1EC7EA798, &unk_1D5622EF0);
}

uint64_t sub_1D5175310@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t CloudUploadedVideo.Relationships.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x726F7461727563;
  }

  else
  {
    return 0x73747369747261;
  }
}

uint64_t sub_1D51753F8@<X0>(uint64_t *a1@<X8>)
{
  result = CloudUploadedVideo.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1D5175458(uint64_t a1)
{
  v2 = sub_1D517B4B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5175494(uint64_t a1)
{
  v2 = sub_1D517B4B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudUploadedVideo.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4(v67);
  v62 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v60 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v61 = v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E40, &qword_1D563C700);
  OUTLINED_FUNCTION_14(v63);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_103_9(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_45();
  v26 = OUTLINED_FUNCTION_85_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_68_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAA0, &unk_1D5627040);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v60 - v37;
  v39 = *(v36 + 56);
  v65 = v5;
  sub_1D4F39AB0(v5, &v60 - v37, &qword_1EC7EB5A8, &unk_1D5622F00);
  v66 = v3;
  sub_1D4F39AB0(v3, &v38[v39], &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_57(v38, 1, v20);
  if (!v40)
  {
    sub_1D4F39AB0(v38, v0, &qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_57(&v38[v39], 1, v20);
    if (!v40)
    {
      (*(v22 + 32))(v1, &v38[v39], v20);
      sub_1D5000458();
      v44 = sub_1D5614D18();
      v45 = *(v22 + 8);
      v45(v1, v20);
      v45(v0, v20);
      sub_1D4E50004(v38, &qword_1EC7EB5A8, &unk_1D5622F00);
      if ((v44 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    (*(v22 + 8))(v0, v20);
LABEL_9:
    v41 = &qword_1EC7EDAA0;
    v42 = &unk_1D5627040;
    v43 = v38;
LABEL_20:
    sub_1D4E50004(v43, v41, v42);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_57(&v38[v39], 1, v20);
  if (!v40)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v38, &qword_1EC7EB5A8, &unk_1D5622F00);
LABEL_11:
  v46 = *(type metadata accessor for CloudUploadedVideo.Relationships(0) + 20);
  v47 = v64;
  v48 = *(v63 + 48);
  OUTLINED_FUNCTION_113(v65 + v46, v64);
  OUTLINED_FUNCTION_113(v66 + v46, v47 + v48);
  v49 = v67;
  OUTLINED_FUNCTION_57(v47, 1, v67);
  if (!v40)
  {
    sub_1D4F39AB0(v47, v61, &qword_1EC7EA798, &unk_1D5622EF0);
    OUTLINED_FUNCTION_57(v47 + v48, 1, v49);
    if (!v50)
    {
      v54 = v62;
      OUTLINED_FUNCTION_11_18();
      v55 = v47 + v48;
      v56 = v60;
      v57(v60, v55, v49);
      sub_1D517B434();
      OUTLINED_FUNCTION_157_0();
      v58 = *(v54 + 8);
      v58(v56, v49);
      v59 = OUTLINED_FUNCTION_85();
      (v58)(v59);
      sub_1D4E50004(v47, &qword_1EC7EA798, &unk_1D5622EF0);
      goto LABEL_21;
    }

    v51 = *(v62 + 8);
    v52 = OUTLINED_FUNCTION_85();
    v53(v52);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_57(v47 + v48, 1, v49);
  if (!v40)
  {
LABEL_19:
    v41 = &qword_1EC7F0E40;
    v42 = &qword_1D563C700;
    v43 = v47;
    goto LABEL_20;
  }

  sub_1D4E50004(v47, &qword_1EC7EA798, &unk_1D5622EF0);
LABEL_21:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudUploadedVideo.Relationships.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E50, &qword_1D563C708);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D517B4B8();
  OUTLINED_FUNCTION_132();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  sub_1D5000530();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v0)
  {
    v8 = *(type metadata accessor for CloudUploadedVideo.Relationships(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D517B50C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  return (*(v4 + 8))(v1, v2);
}

void CloudUploadedVideo.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v4 = OUTLINED_FUNCTION_4(v3);
  v35 = v5;
  v36 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v34 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_114();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v24, v25, &qword_1EC7EB5A8, &unk_1D5622F00);
  v26 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v26, v27, v14);
  if (v28)
  {
    sub_1D56162F8();
  }

  else
  {
    v29 = OUTLINED_FUNCTION_58_16();
    v30(v29);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v16 + 8))(v2, v14);
  }

  v31 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  sub_1D4F39AB0(v0 + *(v31 + 20), v1, &qword_1EC7EA798, &unk_1D5622EF0);
  v32 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v32, v33, v36);
  if (v28)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v35 + 32))(v34, v1, v36);
    sub_1D56162F8();
    sub_1D4F8B314();
    sub_1D5614CB8();
    (*(v35 + 8))(v34, v36);
  }

  OUTLINED_FUNCTION_46();
}

void CloudUploadedVideo.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4(v5);
  v32 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_68_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_71_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  sub_1D56162D8();
  v26 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v26, v27, &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_74(v25);
  if (v28)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v16 + 32))(v3, v25, v14);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v16 + 8))(v3, v14);
  }

  v29 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  sub_1D4F39AB0(v4 + *(v29 + 20), v2, &qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_1(v2);
  if (v28)
  {
    sub_1D56162F8();
  }

  else
  {
    v30 = v32;
    OUTLINED_FUNCTION_81();
    v31(v1, v2, v5);
    sub_1D56162F8();
    sub_1D4F8B314();
    sub_1D5614CB8();
    (*(v30 + 8))(v1, v5);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudUploadedVideo.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_71_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v30 = v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E68, &qword_1D563C710);
  OUTLINED_FUNCTION_4(v31);
  v29 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_45();
  v18 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = v4[3];
  v26 = v4[4];
  v27 = OUTLINED_FUNCTION_81_0();
  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_1D517B4B8();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D5000808();
    OUTLINED_FUNCTION_3_64();
    sub_1D4F39A1C(v30, v24, &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D517B590();
    OUTLINED_FUNCTION_3_64();
    (*(v29 + 8))(v2, v31);
    sub_1D4F39A1C(v1, v24 + *(v18 + 20), &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D517B614();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_4_69();
    sub_1D517B668();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5176408(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - v17;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v18, &qword_1EC7EB5A8, &unk_1D5622F00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v10) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v11 + 8))(v14, v10);
  }

  sub_1D4F39AB0(v2 + *(v24 + 20), v9, &qword_1EC7EA798, &unk_1D5622EF0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v19 = v22;
    v20 = v23;
    (*(v23 + 32))(v22, v9, v3);
    sub_1D56162F8();
    sub_1D4F8B314();
    sub_1D5614CB8();
    (*(v20 + 8))(v19, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D5176758(uint64_t a1)
{
  v2 = sub_1D517B6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5176794(uint64_t a1)
{
  v2 = sub_1D517B6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUploadedVideo.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E78, &qword_1D563C718);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D517B6BC();
  sub_1D56163D8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudUploadedVideo.Metadata.init(snippets:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t CloudUploadedVideo.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static CloudUploadedVideo.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C();
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5176A50(uint64_t a1)
{
  v2 = sub_1D517B710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5176A8C(uint64_t a1)
{
  v2 = sub_1D517B710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudUploadedVideo.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E88, &qword_1D563C720);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = *v0;
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D517B710();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_26();
}

void CloudUploadedVideo.Metadata.hash(into:)()
{
  if (*v0)
  {
    sub_1D56162F8();

    sub_1D4F068B4();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudUploadedVideo.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4();
  }

  return sub_1D5616328();
}

void CloudUploadedVideo.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0E98, &unk_1D563C728);
  OUTLINED_FUNCTION_4(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9();
  v22 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1D517B710();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudUploadedVideo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudUploadedVideo.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = *(type metadata accessor for CloudUploadedVideo(v0) + 20);
  OUTLINED_FUNCTION_14_51();
  return sub_1D517B614();
}

uint64_t CloudUploadedVideo.relationships.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = type metadata accessor for CloudUploadedVideo(v2);
  return sub_1D4F39AB0(v1 + *(v3 + 24), v0, &qword_1EC7ECD60, &qword_1D5622F50);
}

uint64_t static CloudUploadedVideo.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7F0DE8 = a1;
}

uint64_t (*static CloudUploadedVideo.relationshipCodingKeys.modify())()
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D5176FF8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F0DE8;
}

uint64_t sub_1D5177048(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F0DE8 = v1;
}

uint64_t CloudUploadedVideo.views.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  result = type metadata accessor for CloudUploadedVideo(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudUploadedVideo.meta.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = *(v1 + *(type metadata accessor for CloudUploadedVideo(v2) + 32));
  *v0 = v3;

  return sub_1D4E67688(v3);
}

uint64_t CloudUploadedVideo.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudUploadedVideo(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

double (*CloudUploadedVideo.meta.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = *(type metadata accessor for CloudUploadedVideo(v0) + 32);
  return nullsub_1;
}

uint64_t sub_1D51771D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_64_1();
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FF38();
  qword_1EDD562B0 = v3;
  return result;
}

uint64_t sub_1D5177678(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D517770C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5177760(uint64_t a1)
{
  v2 = sub_1D517B784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D517779C(uint64_t a1)
{
  v2 = sub_1D517B784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUploadedVideo.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0EA8, &qword_1D563C740);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D517B784();
  OUTLINED_FUNCTION_132();
  v17 = *v0;
  v20 = v0[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_32_9();
  sub_1D56160C8();
  if (!v1)
  {
    v9 = type metadata accessor for CloudUploadedVideo(0);
    v10 = v9[5];
    type metadata accessor for CloudUploadedVideo.Attributes(0);
    OUTLINED_FUNCTION_17_51();
    sub_1D5172B18(v11, v12);
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_8_1();
    sub_1D56160C8();
    v13 = v9[6];
    type metadata accessor for CloudUploadedVideo.Relationships(0);
    OUTLINED_FUNCTION_50_17();
    sub_1D5172B18(v14, v15);
    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    v18 = *(v0 + v9[7]);
    sub_1D517B7D8();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    v19 = *(v0 + v9[8]);
    sub_1D4E67688(v19);
    sub_1D517B82C();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    sub_1D4EA7410(v19);
  }

  return (*(v5 + 8))(v2, v3);
}

void CloudUploadedVideo.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = type metadata accessor for CloudUploadedVideo(0);
  v5 = v0 + v4[5];
  CloudUploadedVideo.Attributes.hash(into:)();
  v6 = v1 + v4[6];
  sub_1D4F86198();
  v7 = *(v1 + v4[7]);
  sub_1D56162F8();
  v8 = *(v1 + v4[8]);
  if (v8 == 1 || (OUTLINED_FUNCTION_27(), !v8))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    sub_1D4F068B4();
  }
}

uint64_t sub_1D5177AF8(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_164();
  a1(v3);
  return sub_1D5616328();
}

void CloudUploadedVideo.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v35 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for CloudUploadedVideo.Attributes(v8);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0ED0, &qword_1D563C748);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_114();
  v17 = type metadata accessor for CloudUploadedVideo(0);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v36 = (v23 - v22);
  v37 = *(v21 + 32);
  *(v23 - v22 + v37) = 1;
  v24 = v2[3];
  v25 = v2[4];
  v26 = OUTLINED_FUNCTION_85_0();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1D517B784();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D4EA7410(*(v36 + v37));
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615FD8();
    *v36 = v38;
    v36[1] = v39;
    OUTLINED_FUNCTION_17_51();
    sub_1D5172B18(v28, v29);
    sub_1D5615FD8();
    v30 = v17[5];
    sub_1D517B880();
    type metadata accessor for CloudUploadedVideo.Relationships(0);
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_50_17();
    sub_1D5172B18(v31, v32);
    sub_1D5615F78();
    sub_1D4F39A1C(v35, v36 + v17[6], &qword_1EC7ECD60, &qword_1D5622F50);
    sub_1D517B8D4();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    *(v36 + v17[7]) = 2;
    sub_1D517B928();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    v33 = OUTLINED_FUNCTION_26_18();
    v34(v33);
    sub_1D4EA7410(*(v36 + v37));
    *(v36 + v37) = v38;
    OUTLINED_FUNCTION_48_19();
    sub_1D517B614();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_16_51();
    sub_1D517B668();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5177FD4(uint64_t a1)
{
  v2 = sub_1D5172B18(&qword_1EC7F0F68, type metadata accessor for CloudUploadedVideo);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D5178094(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void UploadedVideo.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v377 = v23;
  v417 = v24;
  v418 = v25;
  v415 = v27;
  v416 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v414 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  v413 = v49;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_2();
  v411 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  v421 = v61;
  OUTLINED_FUNCTION_70_0();
  v408 = sub_1D5610788();
  v62 = OUTLINED_FUNCTION_4(v408);
  v407 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v66);
  v406 = sub_1D56107C8();
  v67 = OUTLINED_FUNCTION_4(v406);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v87 = OUTLINED_FUNCTION_22(v86);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v93 = OUTLINED_FUNCTION_22(v92);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v98);
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v103);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v108);
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v113);
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v118);
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v122);
  v123 = type metadata accessor for UploadedVideoPropertyProvider();
  v124 = OUTLINED_FUNCTION_14(v123);
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5();
  v129 = (v128 - v127);
  v130 = sub_1D560D838();
  v131 = OUTLINED_FUNCTION_4(v130);
  v423 = v132;
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v135 = type metadata accessor for CloudUploadedVideo(0);
  v136 = OUTLINED_FUNCTION_14(v135);
  v138 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_5();
  v141 = v140 - v139;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  sub_1D5610648();
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v143 = sub_1D560D9A8();
  __swift_project_value_buffer(v143, qword_1EDD53CF0);
  v422 = v135;
  v144 = *(v135 + 20);
  v420 = v141;
  v145 = (v141 + v144);
  v424 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  v379 = v145;
  v397 = v424[15];
  sub_1D56105B8();
  v146 = v123[5];
  sub_1D56140F8();
  v147 = OUTLINED_FUNCTION_31_2(&v405);
  v380 = v148;
  __swift_storeEnumTagSinglePayload(v147, v149, v150, v148);
  v151 = v123[6];
  type metadata accessor for AssetFlavors();
  v152 = OUTLINED_FUNCTION_31_2(&v407);
  v382 = v153;
  __swift_storeEnumTagSinglePayload(v152, v154, v155, v153);
  v156 = v123[7];
  sub_1D560F928();
  v157 = OUTLINED_FUNCTION_31_2(&v408);
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
  v161 = v123[8];
  sub_1D56106B8();
  v162 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
  v166 = v123[11];
  v167 = sub_1D5610978();
  v168 = OUTLINED_FUNCTION_31_2(&v411);
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v167);
  v171 = v123[13];
  v172 = sub_1D560C328();
  v173 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v172);
  v176 = v123[14];
  sub_1D56128E8();
  v177 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
  v181 = v123[15];
  type metadata accessor for HLSAsset();
  v182 = OUTLINED_FUNCTION_31_2(&v416);
  v386 = v183;
  __swift_storeEnumTagSinglePayload(v182, v184, v185, v183);
  v186 = v123[16];
  sub_1D5610CB8();
  v187 = OUTLINED_FUNCTION_43_4();
  __swift_storeEnumTagSinglePayload(v187, v188, v189, v190);
  v191 = v123[17];
  v192 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v192);
  v196 = v20;
  v197 = v123[18];
  sub_1D5613198();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v201);
  v202 = v123[19];
  sub_1D56134E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
  v207 = v123[20];
  sub_1D5614A78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
  v390 = v123[21];
  OUTLINED_FUNCTION_33();
  v393 = v167;
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v167);
  v215 = v123[22];
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v216, v217, v218, v219);
  v389 = v123[23];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v220, v221, v222, v192);
  v391 = v123[25];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v223, v224, v225, v172);
  v226 = v123[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v227 = OUTLINED_FUNCTION_31_2(v426);
  v398 = v228;
  __swift_storeEnumTagSinglePayload(v227, v229, v230, v228);
  v231 = v123[28];
  type metadata accessor for CuratorRelationshipProvider();
  v232 = OUTLINED_FUNCTION_31_2(&a9);
  v401 = v233;
  __swift_storeEnumTagSinglePayload(v232, v234, v235, v233);
  v236 = *(v423 + 16);
  v237 = v129 + v123[31];
  v410 = v196;
  v412 = v130;
  v236(v237, v196, v130);
  v238 = v129 + v123[32];
  sub_1D5610658();
  v239 = sub_1D5610618();
  v378 = v240;
  v241 = sub_1D56105C8();
  v242 = sub_1D56105F8();
  v243 = sub_1D56105E8();
  v409 = v142;
  v419 = v29;
  v244 = sub_1D56105A8();
  v245 = v129 + v123[9];
  *v245 = 0;
  v374 = v245;
  v245[8] = 1;
  if (qword_1EDD54CE8 != -1)
  {
    swift_once();
  }

  v246 = qword_1EDD76B50;
  if (qword_1EDD76B50 >> 62)
  {
    sub_1D560CDE8();

    v371 = sub_1D5615E18();

    v246 = v371;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v129 + v123[30]) = v246;
  v247 = (v129 + v123[33]);
  *v247 = v239;
  v247[1] = v378;
  *(v129 + v123[34]) = v241;
  *(v129 + v123[35]) = v242;
  *(v129 + v123[36]) = v243;
  *(v129 + v123[37]) = v244;
  v248 = v379[1];
  *v129 = *v379;
  v129[1] = v248;
  v249 = v424;
  sub_1D4F39AB0(v379 + v424[5], v384, &qword_1EC7EB5B8, &unk_1D56206A0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v251 = OUTLINED_FUNCTION_105();
  __swift_getEnumTagSinglePayload(v251, v252, v250);
  OUTLINED_FUNCTION_112_8();
  if (v243 == 1)
  {
    sub_1D4E50004(v384, &qword_1EC7EB5B8, &unk_1D56206A0);
    v253 = 1;
  }

  else
  {
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0(v250);
    (*(v254 + 8))(v384, v250);
    v253 = 0;
  }

  __swift_storeEnumTagSinglePayload(v385, v253, 1, v380);
  OUTLINED_FUNCTION_95_7(&v405);
  sub_1D4E68940(v385, v255, v256, v257);
  sub_1D4F39AB0(v379 + v249[6], v387, &qword_1EC7EF380, &unk_1D5677480);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_1(v387);
  v259 = v399;
  if (v334)
  {
    sub_1D4E50004(v387, &qword_1EC7EF380, &unk_1D5677480);
    v261 = 1;
  }

  else
  {
    sub_1D536AC28();
    OUTLINED_FUNCTION_24_0(v258);
    (*(v260 + 8))(v387, v258);
    v261 = 0;
  }

  __swift_storeEnumTagSinglePayload(v388, v261, 1, v382);
  OUTLINED_FUNCTION_95_7(&v407);
  sub_1D4E68940(v388, v262, v263, v264);
  OUTLINED_FUNCTION_17_51();
  sub_1D5172B18(v265, v266);
  sub_1D5612A68();
  OUTLINED_FUNCTION_95_7(&v408);
  sub_1D4E68940(v392, v267, v268, v269);
  v270 = (v379 + v249[7]);
  if ((v270[1] & 1) == 0)
  {
    *v374 = *v270 / 1000.0;
    *(v374 + 8) = 0;
  }

  *(v129 + v123[10]) = *(v379 + v249[8]);
  sub_1D4F39AB0(v379 + v249[9], v394, &qword_1EC7EC960, &unk_1D56334C0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_getEnumTagSinglePayload(v394, 1, v271);
  OUTLINED_FUNCTION_112_8();
  if (v394 == 1)
  {
    sub_1D4E50004(v394, &qword_1EC7EC960, &unk_1D56334C0);
    v272 = 1;
    v273 = v396;
  }

  else
  {
    sub_1D5610738();
    v273 = v396;
    OUTLINED_FUNCTION_24_0(v271);
    (*(v274 + 8))(v394, v271);
    v272 = 0;
  }

  __swift_storeEnumTagSinglePayload(v273, v272, 1, v393);
  v275 = v123[12];
  OUTLINED_FUNCTION_95_7(&v411);
  sub_1D4E68940(v273, v276, v277, v278);
  *(v129 + v275) = *(v379 + v249[10]);
  sub_1D4F39AB0(v379 + v249[11], v402, &qword_1EC7EF3A0, &qword_1D5631128);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  v280 = OUTLINED_FUNCTION_67_18();
  __swift_getEnumTagSinglePayload(v280, v281, v279);
  OUTLINED_FUNCTION_112_8();
  if (v275 == 1)
  {
    sub_1D4E50004(v402, &qword_1EC7EF3A0, &qword_1D5631128);
    v282 = 1;
  }

  else
  {
    sub_1D54050A0(v399);
    OUTLINED_FUNCTION_24_0(v279);
    (*(v370 + 8))(v402, v279);
    v282 = 0;
  }

  __swift_storeEnumTagSinglePayload(v399, v282, 1, v386);
  v283 = (v129 + v123[24]);
  OUTLINED_FUNCTION_95_7(&v416);
  sub_1D4E68940(v399, v284, v285, v286);
  v287 = v424;
  v288 = v379 + v424[12];
  OUTLINED_FUNCTION_95_7(&v412);
  sub_1D5000C8C(v289, v290, v291, v292);
  v293 = (v379 + v287[13]);
  v294 = v293[1];
  *v283 = *v293;
  v283[1] = v294;
  sub_1D4F39AB0(v379 + v287[14], v395, &qword_1EC7EC960, &unk_1D56334C0);
  v295 = OUTLINED_FUNCTION_67_18();
  __swift_getEnumTagSinglePayload(v295, v296, v271);
  OUTLINED_FUNCTION_112_8();
  if (v283 == 1)
  {
    sub_1D4E50004(v395, &qword_1EC7EC960, &unk_1D56334C0);
    v297 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v271);
    (*(v298 + 8))(v395, v271);
    v297 = 0;
  }

  __swift_storeEnumTagSinglePayload(v403, v297, 1, v393);
  v400 = (v129 + v123[26]);
  OUTLINED_FUNCTION_95_7(&v418);
  sub_1D4E68940(v403, v299, v300, v301);
  OUTLINED_FUNCTION_95_7(&v419);
  sub_1D5000C8C(v302, v303, v304, v305);
  v306 = v424;
  v307 = v379 + v424[16];
  OUTLINED_FUNCTION_95_7(&v417);
  sub_1D5000C8C(v308, v309, v310, v311);
  sub_1D56107A8();
  v312 = (v379 + v306[17]);
  v313 = *v312;
  v314 = v312[1];
  v315 = v407;
  v316 = v405;
  v317 = v408;
  (*(v407 + 104))(v405, *MEMORY[0x1E6975DC8], v408);
  OUTLINED_FUNCTION_186(&a11);
  sub_1D5610798();
  (*(v315 + 8))(v316, v317);
  OUTLINED_FUNCTION_136(&a13);
  v318(v404, v406);
  OUTLINED_FUNCTION_95_7(&v420);
  sub_1D4E68940(v259, v319, v320, v321);
  v322 = (v379 + v306[18]);
  v323 = v322[1];
  *v400 = *v322;
  v400[1] = v323;
  v324 = *(v422 + 24);
  v325 = v420;
  v326 = v411;
  sub_1D4F39AB0(v420 + v324, v411, &qword_1EC7ECD60, &qword_1D5622F50);
  v327 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  OUTLINED_FUNCTION_1(v326);
  if (v334)
  {

    sub_1D4E50004(v326, &qword_1EC7ECD60, &qword_1D5622F50);
    v328 = 1;
    v330 = v416;
    v329 = v417;
  }

  else
  {
    sub_1D4F39AB0(v326, v375, &qword_1EC7EB5A8, &unk_1D5622F00);

    OUTLINED_FUNCTION_4_69();
    sub_1D517B668();
    v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    v332 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v332, v333, v331);
    v330 = v416;
    v329 = v417;
    if (!v334)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v335, v336, v337, v338);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_49_16();
      sub_1D5172B18(v339, v340);
      v341 = v418;
      sub_1D5612368();
      v325 = v420;
      sub_1D4E50004(v373, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v331);
      (*(v342 + 8))(v375, v331);
      v328 = 0;
      v343 = v413;
      goto LABEL_31;
    }

    sub_1D4E50004(v375, &qword_1EC7EB5A8, &unk_1D5622F00);
    v328 = 1;
  }

  v343 = v413;
  v341 = v418;
LABEL_31:
  v344 = v421;
  __swift_storeEnumTagSinglePayload(v421, v328, 1, v398);
  OUTLINED_FUNCTION_95_7(v426);
  sub_1D4E68940(v344, v345, v346, v347);
  sub_1D4F39AB0(v325 + v324, v343, &qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_1(v343);
  v348 = v419;
  if (v334)
  {
    sub_1D4E50004(v343, &qword_1EC7ECD60, &qword_1D5622F50);
    v349 = 1;
    v350 = v414;
  }

  else
  {
    sub_1D4F39AB0(v343 + *(v327 + 20), v376, &qword_1EC7EA798, &unk_1D5622EF0);
    OUTLINED_FUNCTION_4_69();
    sub_1D517B668();
    v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
    OUTLINED_FUNCTION_1(v376);
    v350 = v414;
    if (v352)
    {
      sub_1D4E50004(v376, &qword_1EC7EA798, &unk_1D5622EF0);
      v349 = 1;
    }

    else
    {
      sub_1D4ED3850(v329, v330, v341, v377, v353, v354, v355, v356, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383);
      OUTLINED_FUNCTION_24_0(v351);
      v358 = *(v357 + 8);
      v359 = OUTLINED_FUNCTION_159();
      v360(v359);
      v349 = 0;
    }
  }

  v361 = v423;
  __swift_storeEnumTagSinglePayload(v350, v349, 1, v401);
  OUTLINED_FUNCTION_95_7(&a9);
  sub_1D4E68940(v350, v362, v363, v364);
  v365 = *(v422 + 32);
  v366 = *(v325 + v365);
  if (v366 == 1)
  {
    v367 = 0;
  }

  else
  {
    v367 = *(v325 + v365);
  }

  *(v129 + v123[29]) = v367;
  v426[1] = v123;
  v426[2] = sub_1D5172B18(&qword_1EDD54CD8, type metadata accessor for UploadedVideoPropertyProvider);
  __swift_allocate_boxed_opaque_existential_0(v425);
  sub_1D517B614();
  sub_1D4E67688(v366);
  UploadedVideo.init(propertyProvider:)(v425, v415);

  OUTLINED_FUNCTION_24_0(v341);
  (*(v368 + 8))(v329, v341);
  OUTLINED_FUNCTION_24_0(v409);
  (*(v369 + 8))(v348);
  (*(v361 + 8))(v410, v412);
  OUTLINED_FUNCTION_16_51();
  sub_1D517B668();
  sub_1D517B668();
  OUTLINED_FUNCTION_46();
}

void UploadedVideo.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v273[1] = v3;
  v273[2] = v4;
  v273[0] = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v270 = v12;
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1D5610088();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v27);
  v269 = sub_1D5612B78();
  v28 = OUTLINED_FUNCTION_4(v269);
  v268 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v33 = OUTLINED_FUNCTION_48(v32);
  v265 = type metadata accessor for CloudUploadedVideo(v33);
  v34 = OUTLINED_FUNCTION_14(v265);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v282[1] = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v39);
  v245 = sub_1D5613578();
  v40 = OUTLINED_FUNCTION_4(v245);
  v244[1] = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v282[0] = v54;
  OUTLINED_FUNCTION_70_0();
  v263 = type metadata accessor for CuratorRelationshipProvider();
  v55 = OUTLINED_FUNCTION_14(v263);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  v281 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v60 = OUTLINED_FUNCTION_22(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13();
  v272 = v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_177(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  v67 = OUTLINED_FUNCTION_22(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_2();
  v283 = v71;
  OUTLINED_FUNCTION_70_0();
  v262 = sub_1D5610788();
  v72 = OUTLINED_FUNCTION_4(v262);
  v261 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v81);
  v259 = sub_1D56107C8();
  v82 = OUTLINED_FUNCTION_4(v259);
  v258 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13_3();
  v279 = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
  OUTLINED_FUNCTION_22(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_13_3();
  v278 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v103 = OUTLINED_FUNCTION_22(v102);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13();
  v271 = v106;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v107);
  v109 = v244 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v111 = OUTLINED_FUNCTION_22(v110);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_13();
  v277 = v114;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13_2();
  v276 = v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v117);
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_114();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v121);
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13_3();
  v275 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v126);
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_9();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v130);
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_13_3();
  v274 = v134;
  v135 = OUTLINED_FUNCTION_70_0();
  v136 = type metadata accessor for CloudUploadedVideo.Attributes(v135);
  v137 = OUTLINED_FUNCTION_14(v136);
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_103_9(v140);
  if (qword_1EDD53E28 != -1)
  {
    swift_once();
  }

  sub_1D5172B18(&qword_1EDD57488, type metadata accessor for UploadedVideo);
  v141 = sub_1D5172B18(&qword_1EC7EC488, type metadata accessor for UploadedVideo);
  OUTLINED_FUNCTION_23_4();
  v284 = v0;
  sub_1D560EC28();
  v256 = v287;
  if ((v287 & 1) == 0)
  {
    v142 = v286 * 1000.0;
    if (COERCE__INT64(fabs(v286 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v142 > -9.22337204e18)
    {
      if (v142 < 9.22337204e18)
      {
        v253 = v142;
        goto LABEL_9;
      }

LABEL_69:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_69;
  }

  v253 = 0;
LABEL_9:
  v254 = v7;
  v252 = UploadedVideo.artistName.getter();
  v251 = v143;
  if (qword_1EDD53E58 != -1)
  {
    swift_once();
  }

  v144 = sub_1D56140F8();
  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v145 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v145, v146, v144);
  if (v147)
  {
    sub_1D4E50004(v1, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v149 = 1;
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v144);
    (*(v148 + 8))(v1, v144);
    v149 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v150 = OUTLINED_FUNCTION_85_8();
  __swift_storeEnumTagSinglePayload(v150, v149, 1, v151);
  if (qword_1EDD53F70 != -1)
  {
    swift_once();
  }

  type metadata accessor for AssetFlavors();
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v2);
  if (v147)
  {
    sub_1D4E50004(v2, &qword_1EC7ECC88, &unk_1D56310F0);
  }

  else
  {
    sub_1D536AE60();
    sub_1D517B668();
  }

  v152 = v276;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_70_11(v153);
  if (qword_1EDD53ED0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  v250 = v286;
  if (qword_1EDD53F18 != -1)
  {
    swift_once();
  }

  v154 = sub_1D5610978();
  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v109, 1, v154);
  if (v147)
  {
    sub_1D4E50004(v109, &qword_1EC7EAC98, &unk_1D561DA80);
    v156 = 1;
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v154);
    (*(v155 + 8))(v109, v154);
    v156 = 0;
  }

  v157 = v278;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v152, v156, 1, v158);
  sub_1D4F84AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_39_25();
  v159 = v284;
  sub_1D560EC28();

  v249 = v286;
  v160 = v285;
  if (qword_1EDD53E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for HLSAsset();
  OUTLINED_FUNCTION_186(v282);
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v144);
  if (v147)
  {
    sub_1D4E50004(v144, &qword_1EC7EF398, &qword_1D5631120);
  }

  else
  {
    sub_1D5405584(v157);
    sub_1D517B668();
  }

  v161 = v271;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  OUTLINED_FUNCTION_70_11(v162);
  if (qword_1EDD53F50 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  if (qword_1EDD53E78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v255 = v286;
  v248 = v287;
  if (qword_1EDD53EC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v163 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_57(v163, v164, v154);
  if (v147)
  {
    sub_1D4E50004(v161, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v154);
    (*(v165 + 8))(v161, v154);
  }

  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_70_11(v166);
  if (qword_1EDD53EF8 != -1)
  {
    swift_once();
  }

  v167 = v136[15];
  sub_1D56109F8();
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  if (qword_1EDD53E30 != -1)
  {
    swift_once();
  }

  v168 = v160 + v136[16];
  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v169 = v257;
  sub_1D56107A8();
  if (qword_1EDD53F40 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_186(&v285);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  v170 = v261;
  (*(v261 + 104))(v260, *MEMORY[0x1E6975DC8], v262);
  v171 = v169;
  v271 = sub_1D56107B8();
  v173 = v172;
  v174 = *(v170 + 8);
  v175 = OUTLINED_FUNCTION_164_0();
  v176(v175);
  sub_1D4E50004(v161, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_136(&v284);
  v177(v171, v259);
  if (qword_1EDD53EB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_39_25();
  sub_1D560EC28();
  v179 = v286;
  v178 = v287;
  v180 = v285;
  v181 = v251;
  *v285 = v252;
  v180[1] = v181;
  sub_1D4F39A1C(v274, v180 + v136[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39A1C(v275, v180 + v136[6], &qword_1EC7EF380, &unk_1D5677480);
  v182 = v180 + v136[7];
  *v182 = v253;
  v182[8] = v256;
  *(v180 + v136[8]) = v250;
  sub_1D4F39A1C(v276, v180 + v136[9], &qword_1EC7EC960, &unk_1D56334C0);
  *(v180 + v136[10]) = v249;
  sub_1D4F39A1C(v278, v180 + v136[11], &qword_1EC7EF3A0, &qword_1D5631128);
  sub_1D4F39A1C(v279, v180 + v136[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  v183 = (v180 + v136[13]);
  v184 = v248;
  *v183 = v255;
  *(v183 + 1) = v184;
  sub_1D4F39A1C(v277, v180 + v136[14], &qword_1EC7EC960, &unk_1D56334C0);
  v185 = (v180 + v136[17]);
  *v185 = v271;
  v185[1] = v173;
  v186 = (v180 + v136[18]);
  *v186 = v179;
  *(v186 + 1) = v178;
  v187 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v187);
  if (qword_1EDD53E68 != -1)
  {
    swift_once();
  }

  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v192 = v280;
  OUTLINED_FUNCTION_35_31();
  sub_1D560EC28();
  v193 = v159;
  if (qword_1EDD53E40 != -1)
  {
    swift_once();
  }

  v279 = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  v194 = v282[0];
  v195 = v263;
  if (off_1EDD53E88 != -1)
  {
    swift_once();
  }

  v196 = v195[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  if (off_1EDD53E00 != -1)
  {
    swift_once();
  }

  v197 = v195[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_23_4();
  sub_1D560EC28();
  v198 = v195[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
  sub_1D4ED2CDC();
  OUTLINED_FUNCTION_74(v192);
  v203 = v283;
  if (!v147 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110), v204 = OUTLINED_FUNCTION_88(), OUTLINED_FUNCTION_57(v204, v205, v206), !v147))
  {
    v207 = v272;
    sub_1D4F39AB0(v192, v272, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_74(v207);
    if (v147)
    {
      sub_1D4E50004(v203, &qword_1EC7ECD60, &qword_1D5622F50);
      sub_1D4E50004(v207, &off_1EC7EB5B0, &unk_1D5632170);
      v215 = 1;
      v211 = v247;
    }

    else
    {
      sub_1D5613EF8();
      OUTLINED_FUNCTION_49_16();
      sub_1D5172B18(v208, v209);
      v278 = v141;
      OUTLINED_FUNCTION_186(&v272);
      sub_1D4F1ABE8(v210);
      v211 = v247;
      v212 = v272;
      sub_1D560DA98();
      OUTLINED_FUNCTION_136(v273);
      v213(v194, v245);
      sub_1D4E50004(v203, &qword_1EC7ECD60, &qword_1D5622F50);
      OUTLINED_FUNCTION_24_0(v191);
      (*(v214 + 8))(v212, v191);
      v215 = 0;
    }

    v216 = v246;
    v217 = v279;
    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v211, v215, 1, v218);
    sub_1D4F39AB0(v194, v216 + *(v217 + 20), &qword_1EC7EA798, &unk_1D5622EF0);
    v219 = OUTLINED_FUNCTION_81_0();
    sub_1D4F39A1C(v219, v220, v221, v222);
    __swift_storeEnumTagSinglePayload(v216, 0, 1, v217);
    sub_1D4F39A1C(v216, v203, &qword_1EC7ECD60, &qword_1D5622F50);
  }

  v223 = type metadata accessor for UploadedVideo();
  sub_1D5172B18(&unk_1EDD57490, type metadata accessor for UploadedVideo);
  v224 = sub_1D560CBD8();
  if (v224 <= 1)
  {
    v225 = 1;
  }

  else
  {
    v225 = v224;
  }

  v227 = *v193;
  v226 = v193[1];
  v228 = v265;
  v229 = v265[5];
  OUTLINED_FUNCTION_14_51();
  v230 = v266;
  sub_1D517B614();
  sub_1D4F39AB0(v203, v230 + v228[6], &qword_1EC7ECD60, &qword_1D5622F50);
  *v230 = v227;
  v230[1] = v226;
  *(v230 + v228[7]) = 1;
  *(v230 + v228[8]) = v225;
  v231 = *(v223 + 20);

  v232 = v264;
  sub_1D5611A28();
  v233 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v232, 0, 1, v233);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v234, v235, v236, v237);
  v238 = v267;
  OUTLINED_FUNCTION_116();
  sub_1D5612B38();
  OUTLINED_FUNCTION_48_19();
  sub_1D517B614();
  sub_1D5611A98();
  v239 = sub_1D5611A88();
  v278 = v240;
  v279 = v239;
  v241 = v268;
  v242 = v270;
  v243 = v269;
  (*(v268 + 16))(v270, v238, v269);
  __swift_storeEnumTagSinglePayload(v242, 0, 1, v243);
  v277 = sub_1D5611A38();
  v276 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D5172B18(&qword_1EDD561E8, type metadata accessor for CloudUploadedVideo);
  sub_1D5610628();
  (*(v241 + 8))(v238, v243);
  OUTLINED_FUNCTION_16_51();
  sub_1D517B668();
  sub_1D517B668();
  sub_1D4E50004(v283, &qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_13_50();
  sub_1D517B668();
  sub_1D4E50004(v280, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4E50004(v282[0], &qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D517B12C()
{
  sub_1D5172B18(&qword_1EC7F0F60, type metadata accessor for UploadedVideo);

  return sub_1D5612668();
}

uint64_t sub_1D517B198(uint64_t a1)
{
  v2 = sub_1D5172B18(&qword_1EC7F0F58, type metadata accessor for UploadedVideo);

  return MEMORY[0x1EEDCE440](a1, v2);
}

unint64_t sub_1D517B204()
{
  result = qword_1EC7F0E28;
  if (!qword_1EC7F0E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EC7F0E30, type metadata accessor for CloudHLSAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E28);
  }

  return result;
}

uint64_t sub_1D517B2B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    a2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D517B32C()
{
  result = qword_1EDD53200;
  if (!qword_1EDD53200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3A8, &qword_1D5631130);
    sub_1D5172B18(&qword_1EDD57A18, type metadata accessor for CloudHLSAsset);
    sub_1D5172B18(qword_1EDD57A20, type metadata accessor for CloudHLSAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53200);
  }

  return result;
}

unint64_t sub_1D517B434()
{
  result = qword_1EC7F0E48;
  if (!qword_1EC7F0E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D4F368F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E48);
  }

  return result;
}

unint64_t sub_1D517B4B8()
{
  result = qword_1EC7F0E58;
  if (!qword_1EC7F0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E58);
  }

  return result;
}

unint64_t sub_1D517B50C()
{
  result = qword_1EC7F0E60;
  if (!qword_1EC7F0E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D5157CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E60);
  }

  return result;
}

unint64_t sub_1D517B590()
{
  result = qword_1EC7F0E70;
  if (!qword_1EC7F0E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D51566B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E70);
  }

  return result;
}

uint64_t sub_1D517B614()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D517B668()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1D517B6BC()
{
  result = qword_1EC7F0E80;
  if (!qword_1EC7F0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E80);
  }

  return result;
}

unint64_t sub_1D517B710()
{
  result = qword_1EC7F0E90;
  if (!qword_1EC7F0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0E90);
  }

  return result;
}

unint64_t sub_1D517B784()
{
  result = qword_1EDD562D8[0];
  if (!qword_1EDD562D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD562D8);
  }

  return result;
}

unint64_t sub_1D517B7D8()
{
  result = qword_1EC7F0EC0;
  if (!qword_1EC7F0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EC0);
  }

  return result;
}

unint64_t sub_1D517B82C()
{
  result = qword_1EC7F0EC8;
  if (!qword_1EC7F0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EC8);
  }

  return result;
}

uint64_t sub_1D517B880()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

unint64_t sub_1D517B8D4()
{
  result = qword_1EDD562C0;
  if (!qword_1EDD562C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD562C0);
  }

  return result;
}

unint64_t sub_1D517B928()
{
  result = qword_1EDD561F8[0];
  if (!qword_1EDD561F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD561F8);
  }

  return result;
}

unint64_t sub_1D517B9C8()
{
  result = qword_1EC7F0EE0;
  if (!qword_1EC7F0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EE0);
  }

  return result;
}

unint64_t sub_1D517BA20()
{
  result = qword_1EC7F0EE8;
  if (!qword_1EC7F0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EE8);
  }

  return result;
}

unint64_t sub_1D517BA78()
{
  result = qword_1EC7F0EF0;
  if (!qword_1EC7F0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EF0);
  }

  return result;
}

unint64_t sub_1D517BAD0()
{
  result = qword_1EC7F0EF8;
  if (!qword_1EC7F0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0F00, &qword_1D563C8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0EF8);
  }

  return result;
}

unint64_t sub_1D517BB80()
{
  result = qword_1EC7F0F10;
  if (!qword_1EC7F0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F10);
  }

  return result;
}

unint64_t sub_1D517BBD8()
{
  result = qword_1EC7F0F18;
  if (!qword_1EC7F0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F18);
  }

  return result;
}

void sub_1D517BE60()
{
  type metadata accessor for CloudUploadedVideo.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_1D517C1FC(319, qword_1EDD56258, type metadata accessor for CloudUploadedVideo.Relationships);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD562B8);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD561F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D517BF88()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD53248, &qword_1EC7EF388, &unk_1D5631100);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD52708);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v9 > 0x3F)
    {
      return v8;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD531F8, &qword_1EC7EF3A8, &qword_1D5631130);
    if (v11 > 0x3F)
    {
      return v3;
    }

    sub_1D517C1FC(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
    if (v13 > 0x3F)
    {
      return v12;
    }

    sub_1D517C1FC(319, &qword_1EDD53158, MEMORY[0x1E6975E88]);
    if (v14 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1D517C1FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D517C278()
{
  sub_1D4E6D600(319, &qword_1EDD530A0, &qword_1EC7EB5D8, &unk_1D5627030);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD530D0, &qword_1EC7EA7A0, &unk_1D5631110);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudUploadedVideo.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudUploadedVideo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D517C504(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudUploadedVideo.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D517C6A0()
{
  result = qword_1EC7F0F20;
  if (!qword_1EC7F0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F20);
  }

  return result;
}

unint64_t sub_1D517C6F8()
{
  result = qword_1EC7F0F28;
  if (!qword_1EC7F0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F28);
  }

  return result;
}

unint64_t sub_1D517C750()
{
  result = qword_1EC7F0F30;
  if (!qword_1EC7F0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F30);
  }

  return result;
}

unint64_t sub_1D517C7A8()
{
  result = qword_1EDD562C8;
  if (!qword_1EDD562C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD562C8);
  }

  return result;
}

unint64_t sub_1D517C800()
{
  result = qword_1EDD562D0;
  if (!qword_1EDD562D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD562D0);
  }

  return result;
}

unint64_t sub_1D517C858()
{
  result = qword_1EC7F0F38;
  if (!qword_1EC7F0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F38);
  }

  return result;
}

unint64_t sub_1D517C8B0()
{
  result = qword_1EC7F0F40;
  if (!qword_1EC7F0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F40);
  }

  return result;
}

unint64_t sub_1D517C908()
{
  result = qword_1EC7F0F48;
  if (!qword_1EC7F0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F48);
  }

  return result;
}

unint64_t sub_1D517C960()
{
  result = qword_1EC7F0F50;
  if (!qword_1EC7F0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F50);
  }

  return result;
}

unint64_t sub_1D517C9B8()
{
  result = qword_1EDD563B8;
  if (!qword_1EDD563B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD563B8);
  }

  return result;
}

unint64_t sub_1D517CA10()
{
  result = qword_1EDD563C0;
  if (!qword_1EDD563C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD563C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_33()
{
  v1 = *(*(v0 - 184) + 8);
  v3 = *(v0 - 144);
  return *(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_70_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_94_11()
{

  return sub_1D4F39AB0(v5 + v3, v4 + v2, v0, v1);
}

uint64_t sub_1D517CB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v36 = *(a3 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560D838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v35 - v20;
  v35[1] = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    *a5 = 1;
    return result;
  }

  v35[0] = a5;
  v23 = *(a4 + 8);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v14 + 8))(v17, v13);
  v24 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
  {
    sub_1D4E6C9CC(v21, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v25 = sub_1D560D488();
    v27 = v26;
    (*(*(v24 - 8) + 8))(v21, v24);
    if (v25 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v27 == v28)
    {
    }

    else
    {
      v30 = sub_1D5616168();

      if ((v30 & 1) == 0)
      {
        v31 = 1;
        v32 = v35[0];
LABEL_19:
        *v32 = v31;
        return result;
      }
    }
  }

  (*(v36 + 16))(v12, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    result = sub_1D4E6C9CC(&v39, &qword_1EC7EC500, &unk_1D5621030);
LABEL_18:
    v32 = v35[0];
    v31 = 3;
    goto LABEL_19;
  }

  sub_1D4F69344(&v39, v42);
  v33 = v43;
  v34 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v34 + 16))(&v37, v33, v34);
  if (!v38)
  {
    sub_1D4E6C9CC(&v37, &qword_1EC7EC500, &unk_1D5621030);
    result = __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_18;
  }

  sub_1D4F69344(&v37, &v39);
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  sub_1D4F60168();
  if (v37)
  {
    *v35[0] = 4;
  }

  else
  {
    *v35[0] = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t MusicLibrary.UnpinAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D517CFB4()
{
  result = qword_1EC7F0F70;
  if (!qword_1EC7F0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0F70);
  }

  return result;
}

_BYTE *_s11UnpinActionVwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s11UnpinActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t Playlist.Collaboration.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = a2 + *(type metadata accessor for Playlist.Collaboration() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for Playlist.Collaboration()
{
  result = qword_1EDD5F0E8;
  if (!qword_1EDD5F0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D517D388(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v6)
  {
    swift_once();
  }

  v7 = *a2;
  a3(0);
  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v8, v3);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v9, v3);

  return sub_1D560EC28();
}

uint64_t sub_1D517D4A4(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v4)
  {
    swift_once();
  }

  v5 = *a2;
  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v6, v2);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v7, v2);

  return sub_1D560EC28();
}

uint64_t sub_1D517D5A8(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33(a1);
  if (!v4)
  {
    swift_once();
  }

  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v6, v2);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v7, v2);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Collaboration.playlists.getter()
{
  if (qword_1EC7E8FB0 != -1)
  {
    OUTLINED_FUNCTION_19_46();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_1_98();
  sub_1D517FCAC(v1, v0);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Collaboration.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Playlist.Collaboration.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Playlist.Collaboration() + 20);
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1D517D7CC()
{
  if (qword_1EC7E8F88 != -1)
  {
    swift_once();
  }

  sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v0, type metadata accessor for Playlist.Collaboration);
  sub_1D560EC28();
  return v2;
}

uint64_t Playlist.Collaboration.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  if (qword_1EC7E8FB0 != -1)
  {
    OUTLINED_FUNCTION_19_46();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_8_64();
  sub_1D517FCAC(v10, v1);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v11, v1);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1D4E7661C(v8, &qword_1EC7EB620, &unk_1D561E5B0);
    v12 = sub_1D5614898();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }

  else
  {
    sub_1D4EC9C38(a1);
    OUTLINED_FUNCTION_24_0(v9);
    return (*(v14 + 8))(v8, v9);
  }
}

uint64_t static Playlist.Collaboration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Playlist.Collaboration() + 20);

  return sub_1D5611A78();
}

uint64_t Playlist.Collaboration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Collaboration() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_64();
  sub_1D517FCAC(v4, v5);
  return sub_1D5614CB8();
}

uint64_t Playlist.Collaboration.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Playlist.Collaboration() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_64();
  sub_1D517FCAC(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D517DBE8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D517FCAC(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D517DC8C@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Collaboration.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Collaboration.subscript.getter(void *a1)
{
  return sub_1D517DCF4(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D517DCF4(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_7_71();
  sub_1D517FCAC(v5, v1);
  OUTLINED_FUNCTION_12_54(qword_1EDD5F0F8);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D517DCF4(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_7_71();
  sub_1D517FCAC(v5, v2);
  OUTLINED_FUNCTION_12_54(qword_1EDD5F0F8);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D517DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  v12 = sub_1D517FCAC(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D517E018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  v14 = sub_1D517FCAC(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D517E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  v14 = sub_1D517FCAC(qword_1EDD5D1C0, type metadata accessor for Playlist.Collaboration);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D517E2A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D517FC58();
  v0 = sub_1D560D138();

  qword_1EC87C258 = v0;
  return result;
}

uint64_t sub_1D517E364@<X0>(_BYTE *a1@<X8>)
{
  result = Playlist.Collaboration.collaboratorStatus.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D517E3A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C260 = v0;
  return result;
}

uint64_t sub_1D517E420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_66();
  sub_1D517FCAC(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C268 = v0;
  return result;
}

uint64_t sub_1D517E4C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D517FC04();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C270 = v0;
  return result;
}

uint64_t sub_1D517E540@<X0>(_BYTE *a1@<X8>)
{
  result = Playlist.Collaboration.invitationMode.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D517E57C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_3_92();
  sub_1D517FCAC(v0, v1);
  v2 = sub_1D560D138();

  qword_1EC7F0F78 = v2;
  return result;
}

uint64_t sub_1D517E684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D5615278();
  OUTLINED_FUNCTION_6_66();
  sub_1D517FCAC(v1, v2);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7F0F80 = v0;
  return result;
}

uint64_t sub_1D517E768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D517FCAC(qword_1EDD52A80, MEMORY[0x1E69773E0]);
  OUTLINED_FUNCTION_14_2();
  v0 = sub_1D560D0F8();

  qword_1EC7F0F88 = v0;
  return result;
}

uint64_t sub_1D517E860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  swift_getKeyPath();
  sub_1D5615278();
  OUTLINED_FUNCTION_6_66();
  sub_1D517FCAC(v1, v2);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7F0F90 = v0;
  return result;
}

uint64_t static Playlist.Collaboration.catalogFilterID(for:)()
{
  swift_getKeyPath();
  sub_1D56159B8();
  v0 = sub_1D5614D18();

  if (v0)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D517EA78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t Playlist.Collaboration.init(from:)(uint64_t *a1)
{
  type metadata accessor for Playlist.Collaboration();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_96();
  sub_1D517FCAC(v3, v4);
  OUTLINED_FUNCTION_10_65();
  sub_1D517FCAC(v5, v1);
  OUTLINED_FUNCTION_13_51(&qword_1EC7EC8B8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Collaboration.encode(to:)()
{
  type metadata accessor for Playlist.Collaboration();
  OUTLINED_FUNCTION_2_96();
  sub_1D517FCAC(v1, v2);
  OUTLINED_FUNCTION_10_65();
  sub_1D517FCAC(v3, v0);
  OUTLINED_FUNCTION_13_51(&qword_1EC7EC8B8);
  return sub_1D5612688();
}

unint64_t Playlist.Collaboration.description.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_32_33();
  v6 = sub_1D560C0A8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v15 = *v0;
  v16 = v0[1];
  v17 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v17);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  if (qword_1EC7E8FA0 != -1)
  {
    OUTLINED_FUNCTION_17_52();
  }

  sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v18, type metadata accessor for Playlist.Collaboration);
  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    sub_1D4E7661C(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    (*(v9 + 32))(v14, v1, v6);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24 = 0xD000000000000011;
    v25 = v19;
    OUTLINED_FUNCTION_3_92();
    sub_1D517FCAC(v20, v21);
    v22 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v22);

    MEMORY[0x1DA6EAC70](0xD000000000000011, v25);

    (*(v9 + 8))(v14, v6);
  }

  if (qword_1EC7E8F98 != -1)
  {
    OUTLINED_FUNCTION_15_52();
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (v24 != 2)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5686290);
    OUTLINED_FUNCTION_34_30();
    MEMORY[0x1DA6EAC70](v24, v25);
  }

  if (qword_1EC7E8F80 != -1)
  {
    OUTLINED_FUNCTION_16_52();
  }

  OUTLINED_FUNCTION_14_2();
  sub_1D560EC28();
  if (v24 != 4)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D5686270);
    OUTLINED_FUNCTION_34_30();
    MEMORY[0x1DA6EAC70](v24, v25);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

unint64_t Playlist.Collaboration.debugDescription.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_32_33();
  v7 = sub_1D560C328();
  v8 = OUTLINED_FUNCTION_4(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v55 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = sub_1D560C0A8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_9_0();
  v60 = 0xD000000000000017;
  v61 = v29;
  v58 = 0x22203A646920200ALL;
  v59 = 0xE800000000000000;
  v30 = *v0;
  v31 = v0[1];
  v32 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v32);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v58, v59);

  if (qword_1EC7E8FA0 != -1)
  {
    OUTLINED_FUNCTION_17_52();
  }

  OUTLINED_FUNCTION_8_64();
  sub_1D517FCAC(v33, v1);
  OUTLINED_FUNCTION_0_117();
  sub_1D517FCAC(v34, v1);
  OUTLINED_FUNCTION_20_48();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1D4E7661C(v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    (*(v23 + 32))(v28, v19, v20);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_29_33();
    v58 = v36;
    v59 = v35;
    OUTLINED_FUNCTION_3_92();
    sub_1D517FCAC(v37, v38);
    v39 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v39);

    MEMORY[0x1DA6EAC70](v58, v59);

    (*(v23 + 8))(v28, v20);
  }

  if (qword_1EC7E8F90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_48();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_1D4E7661C(v2, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v41 = v55;
    v40 = v56;
    (*(v56 + 32))(v55, v2, v7);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_29_33();
    v58 = v43 + 11;
    v59 = v42;
    OUTLINED_FUNCTION_11_66();
    sub_1D517FCAC(v44, v45);
    v46 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v46);

    MEMORY[0x1DA6EAC70](v58, v59);

    (*(v40 + 8))(v41, v7);
  }

  if (qword_1EC7E8F98 != -1)
  {
    OUTLINED_FUNCTION_15_52();
  }

  OUTLINED_FUNCTION_20_48();
  v47 = v58;
  if (v58 != 2)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    OUTLINED_FUNCTION_29_33();
    MEMORY[0x1DA6EAC70](v48 + 1, v49 | 0x8000000000000000);
    v57 = v47 & 1;
    OUTLINED_FUNCTION_34_30();
    MEMORY[0x1DA6EAC70](v58, v59);
  }

  if (qword_1EC7E8F80 != -1)
  {
    OUTLINED_FUNCTION_16_52();
  }

  OUTLINED_FUNCTION_20_48();
  v50 = v58;
  if (v58 != 4)
  {
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_9();
    OUTLINED_FUNCTION_29_33();
    MEMORY[0x1DA6EAC70](v51 + 5, v52 | 0x8000000000000000);
    v57 = v50;
    OUTLINED_FUNCTION_34_30();
    MEMORY[0x1DA6EAC70](v58, v59);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v60;
}

uint64_t sub_1D517F708()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD0], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F0F98 = v4;
  return result;
}

uint64_t sub_1D517F864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6975200], v0);
  qword_1EC7F0FA0 = v4;
  return result;
}

uint64_t sub_1D517F978()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F0FA8);
  __swift_project_value_buffer(v0, qword_1EC7F0FA8);
  type metadata accessor for Playlist.Collaboration();
  sub_1D517FCAC(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
  return sub_1D560D978();
}

uint64_t sub_1D517FA50()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F0FC0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F0FC0);
  if (qword_1EC7E8FD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F0FA8);
  OUTLINED_FUNCTION_24_0(v0);
  v3 = *(v2 + 16);

  return v3(v1);
}

unint64_t sub_1D517FC04()
{
  result = qword_1EC7F0FD8;
  if (!qword_1EC7F0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0FD8);
  }

  return result;
}

unint64_t sub_1D517FC58()
{
  result = qword_1EC7F0FE0;
  if (!qword_1EC7F0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0FE0);
  }

  return result;
}

uint64_t sub_1D517FCAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_48()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_34_30()
{

  return sub_1D5615D48();
}

uint64_t sub_1D517FD2C(void *a1)
{
  v2 = sub_1D560F0F8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = [a1 value];
  sub_1D5614D68();

  sub_1D560EED8();
  v14 = [a1 kind];
  v15 = MEMORY[0x1E69755D0];
  switch(v14)
  {
    case 0uLL:
      goto LABEL_9;
    case 1uLL:
      v15 = MEMORY[0x1E69755E0];
      goto LABEL_9;
    case 2uLL:
      v15 = MEMORY[0x1E69755B0];
      goto LABEL_9;
    case 3uLL:
      v15 = MEMORY[0x1E69755C8];
      goto LABEL_9;
    case 4uLL:
      v15 = MEMORY[0x1E69755B8];
      goto LABEL_9;
    case 5uLL:
      v15 = MEMORY[0x1E69755A8];
      goto LABEL_9;
    case 6uLL:
      v15 = MEMORY[0x1E69755C0];
      goto LABEL_9;
    case 7uLL:
      v15 = MEMORY[0x1E69755A0];
LABEL_9:
      (*(v5 + 104))(v12, *v15, v2);
      (*(v5 + 16))(v10, v12, v2);
      sub_1D560F118();

      return (*(v5 + 8))(v12, v2);
    case 8uLL:
      OUTLINED_FUNCTION_6_3();
      v17 = 49;
      OUTLINED_FUNCTION_11_28();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_6_3();
      v17 = 51;
      OUTLINED_FUNCTION_11_28();
LABEL_12:
      result = sub_1D5615E08();
      __break(1u);
      return result;
  }
}

id sub_1D517FFC8()
{
  v0 = sub_1D560F0F8();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560F108();
  v8 = (*(v3 + 88))(v7, v0);
  v9 = 0;
  if (v8 == *MEMORY[0x1E69755D0])
  {
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x1E69755E0])
  {
    v9 = 1;
LABEL_16:
    sub_1D5180210();
    v10 = sub_1D560F138();
    return sub_1D5180254(v10, v11, v9);
  }

  if (v8 == *MEMORY[0x1E69755B0])
  {
    v9 = 2;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x1E69755C8])
  {
    v9 = 3;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x1E69755B8])
  {
    v9 = 4;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x1E69755A8])
  {
    v9 = 5;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x1E69755C0])
  {
    v9 = 6;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x1E69755A0])
  {
    v9 = 7;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x1E69755D8])
  {
    OUTLINED_FUNCTION_6_3();
    v13 = 79;
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    v13 = 82;
    OUTLINED_FUNCTION_11_28();
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

unint64_t sub_1D5180210()
{
  result = qword_1EDD52650;
  if (!qword_1EDD52650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52650);
  }

  return result;
}

id sub_1D5180254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D5614D38();

  v6 = [v4 initWithValue:v5 kind:a3];

  return v6;
}

uint64_t sub_1D51802D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1D5615618();
  if (!v26)
  {
    return sub_1D56151C8();
  }

  v48 = v26;
  v52 = sub_1D5615D08();
  v39 = sub_1D5615D18();
  sub_1D5615CA8();
  result = sub_1D5615608();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1D5615688();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1D5615CF8();
      result = sub_1D5615658();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MusicLibraryMapping.Request.init(mappingItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  v13[6] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v6 = sub_1D56152D8();
  v7 = _s10FrozenItemVMa();

  OUTLINED_FUNCTION_1_11();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1D51802D0(sub_1D51808AC, v13, v6, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  v12 = v14;
  *a4 = a1;
  *(a4 + 8) = v12;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_1D51807CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  return sub_1D5015F48(v9, a2, a3, a4);
}

uint64_t MusicLibraryMapping.Request.response()(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  v4 = *v2;
  *(v3 + 128) = *(v2 + 8);
  v5 = v2[2];
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D5180938, 0, 0);
}

uint64_t sub_1D5180938()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  *(v0 + 56) = *(v0 + 96);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1D51809F8;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return sub_1D5180B48(v4, v0 + 16, v5);
}

uint64_t sub_1D51809F8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(*v1 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v6;
  *(v6 + 120) = v0;

  sub_1D51813C0(v6 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5180B24, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t sub_1D5180B24()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 120);
  return v2();
}

uint64_t sub_1D5180B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  v6 = sub_1D560DF28();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = *(a3 + 24);
  *(v4 + 88) = *(a3 + 16);
  *(v4 + 96) = swift_getAssociatedTypeWitness();
  *(v4 + 104) = swift_getAssociatedConformanceWitness();
  v9 = sub_1D560CB18();
  *(v4 + 112) = v9;
  v10 = *(v9 - 8);
  *(v4 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *v3;
  *(v4 + 128) = v12;
  *(v4 + 136) = v13;
  *(v4 + 176) = *(v3 + 8);
  *(v4 + 144) = v3[2];

  return MEMORY[0x1EEE6DFA0](sub_1D5180CF4, 0, 0);
}

uint64_t sub_1D5180CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 144);
  *(v12 + 16) = v13;
  v14 = *(v12 + 176);
  v15 = *(v12 + 136);
  v16 = *(v12 + 96);
  v54 = *(v12 + 104);
  v18 = *(v12 + 80);
  v17 = *(v12 + 88);
  v19 = *(v12 + 48);
  v20 = swift_task_alloc();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v15;
  *(v20 + 40) = v14;
  *(v20 + 48) = v13;
  *(v20 + 56) = v19;
  _s10FrozenItemVMa();
  sub_1D56152D8();
  sub_1D560CAE8();

  OUTLINED_FUNCTION_0_1();
  swift_getWitnessTable();
  v21 = sub_1D5615028();

  v22 = objc_opt_self();
  v23 = [v22 sharedCloudController];
  v24 = [v23 isUpdateInProgress];

  if (v24 && (v25 = [v22 sharedCloudController], v26 = objc_msgSend(v25, sel_isInitialImport), v25, v26))
  {
    v28 = *(v12 + 80);
    v27 = *(v12 + 88);
    v29 = *(v12 + 40);
    *(v12 + 32) = v21;
    v30 = swift_task_alloc();
    *(v30 + 16) = v27;
    *(v30 + 24) = v28;
    sub_1D56152D8();
    type metadata accessor for MusicLibraryMapping.MappedItem();
    OUTLINED_FUNCTION_0_1();
    swift_getWitnessTable();
    v31 = sub_1D5615028();

    OUTLINED_FUNCTION_39_1(v31, 0, v29);
    v32 = *(v12 + 128);
    v33 = *(v12 + 72);

    OUTLINED_FUNCTION_55();

    return v34();
  }

  else
  {
    v36 = *(v12 + 128);
    v37 = *(v12 + 96);
    v38 = *(v12 + 104);
    v39 = *(v12 + 88);
    v41 = *(v12 + 64);
    v40 = *(v12 + 72);
    v42 = *(v12 + 56);
    sub_1D560CB08();
    (*(v41 + 104))(v40, *MEMORY[0x1E6975110], v42);
    v43 = *(MEMORY[0x1E6974C70] + 4);
    v44 = swift_task_alloc();
    *(v12 + 152) = v44;
    *v44 = v12;
    v44[1] = sub_1D5181028;
    v51 = *(v12 + 128);
    v52 = *(v12 + 112);
    v53 = *(v12 + 72);

    return MEMORY[0x1EEDCE158](v53, v52, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t sub_1D5181028(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v7 = v4[19];
  v8 = v4[8];
  *v6 = *v2;
  v5[20] = v1;

  v9 = (v8 + 8);
  v10 = v4[9];
  v11 = v4[7];
  if (v1)
  {
    (*v9)(v10, v11);
    v12 = sub_1D518133C;
  }

  else
  {
    v5[21] = a1;
    (*v9)(v10, v11);
    v12 = sub_1D51811AC;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1D51811AC()
{
  v23 = v0;
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[13];
  v18 = v0[14];
  v19 = v0[16];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  v20 = v0[5];
  v0[3] = v0[21];
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  sub_1D560CA58();
  v8 = sub_1D56152D8();
  v9 = type metadata accessor for MusicLibraryMapping.MappedItem();
  OUTLINED_FUNCTION_1_11();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1D51802D0(sub_1D5181DE0, v7, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  (*(v2 + 8))(v19, v18);

  OUTLINED_FUNCTION_39_1(v12, 1, &v21);
  v13 = v22;
  *v20 = v21;
  *(v20 + 8) = v13;
  v14 = v0[16];
  v15 = v0[9];

  OUTLINED_FUNCTION_55();

  return v16();
}

uint64_t sub_1D518133C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[9];
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_55();
  v3 = v0[20];

  return v2();
}

uint64_t sub_1D51813C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0FE8, &qword_1D5652AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}