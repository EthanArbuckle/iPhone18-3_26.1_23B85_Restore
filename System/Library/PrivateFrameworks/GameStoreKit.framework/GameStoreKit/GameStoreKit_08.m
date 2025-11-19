uint64_t sub_24E6C17E8()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesVisibilityTracker___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntriesVisibilityTracker()
{
  result = qword_27F217F10;
  if (!qword_27F217F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6C18E8()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E6C1994@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LeaderboardEntriesVisibilityTracker();
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

unint64_t sub_24E6C19DC()
{
  result = qword_27F217F20;
  if (!qword_27F217F20)
  {
    type metadata accessor for LeaderboardEntriesVisibilityTracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217F20);
  }

  return result;
}

void sub_24E6C1A64(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LeaderboardEntry();
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LeaderboardEntry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24E6C1D94(v8, v9, a1, v4);
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
    sub_24E6C1B90(0, v2, 1, a1);
  }
}

void sub_24E6C1B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v8);
  v36 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v30 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v35 = v17;
    v29 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v33 = v19;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    while (1)
    {
      sub_24E6C2DEC(v22, v16);
      sub_24E6C2DEC(v19, v12);
      v23 = *(v8 + 24);
      v24 = *&v16[v23];
      v25 = *&v12[v23];
      sub_24E6C2E50(v12);
      sub_24E6C2E50(v16);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v19 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_24E6C2F10(v22, v36);
      swift_arrayInitWithTakeFrontToBack();
      sub_24E6C2F10(v26, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24E6C1D94(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v112 = a1;
  v7 = type metadata accessor for LeaderboardEntry();
  v119 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v115 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v124 = &v108 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v108 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v108 - v16;
  v121 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_99:
    v4 = *v112;
    if (!*v112)
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v123;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_101:
      v126 = v20;
      v104 = *(v20 + 2);
      if (v104 >= 2)
      {
        while (*v121)
        {
          v105 = *&v20[16 * v104];
          v106 = *&v20[16 * v104 + 24];
          sub_24E6C25F4(*v121 + *(v119 + 72) * v105, *v121 + *(v119 + 72) * *&v20[16 * v104 + 16], *v121 + *(v119 + 72) * v106, v4);
          if (v13)
          {
            goto LABEL_109;
          }

          if (v106 < v105)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_24E86164C(v20);
          }

          if (v104 - 2 >= *(v20 + 2))
          {
            goto LABEL_125;
          }

          v107 = &v20[16 * v104];
          *v107 = v105;
          *(v107 + 1) = v106;
          v126 = v20;
          sub_24E8615C0(v104 - 1);
          v20 = v126;
          v104 = *(v126 + 2);
          if (v104 <= 1)
          {
            goto LABEL_109;
          }
        }

        goto LABEL_135;
      }

LABEL_109:

      return;
    }

LABEL_131:
    v20 = sub_24E86164C(v20);
    goto LABEL_101;
  }

  v125 = v15;
  v110 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v116 = v13;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v22 = *v121;
      v23 = *(v119 + 72);
      v4 = *v121 + v23 * (v19 + 1);
      sub_24E6C2DEC(v4, v17);
      sub_24E6C2DEC(v22 + v23 * v19, v13);
      v24 = *(v125 + 24);
      v25 = *&v17[v24];
      v117 = *&v13[v24];
      v118 = v25;
      sub_24E6C2E50(v13);
      sub_24E6C2E50(v17);
      v111 = v19;
      v26 = v19 + 2;
      v120 = v23;
      v27 = v22 + v23 * (v19 + 2);
      while (v18 != v26)
      {
        LODWORD(v122) = v118 < v117;
        sub_24E6C2DEC(v27, v17);
        v28 = v17;
        v29 = v116;
        sub_24E6C2DEC(v4, v116);
        v30 = *(v125 + 24);
        v31 = *(v28 + v30);
        v32 = v18;
        v33 = v20;
        v34 = *(v29 + v30);
        v35 = v29;
        v17 = v28;
        sub_24E6C2E50(v35);
        sub_24E6C2E50(v28);
        v36 = v31 < v34;
        v20 = v33;
        v18 = v32;
        v37 = !v36;
        ++v26;
        v27 += v120;
        v4 += v120;
        if (((v122 ^ v37) & 1) == 0)
        {
          v18 = v26 - 1;
          break;
        }
      }

      v13 = v116;
      v21 = v111;
      if (v118 < v117)
      {
        if (v18 < v111)
        {
          goto LABEL_128;
        }

        if (v111 < v18)
        {
          v109 = v20;
          v38 = v120 * (v18 - 1);
          v39 = v18 * v120;
          v40 = v18;
          v41 = v111 * v120;
          do
          {
            if (v21 != --v40)
            {
              v122 = v40;
              v4 = *v121;
              if (!*v121)
              {
                goto LABEL_134;
              }

              sub_24E6C2F10(v4 + v41, v115);
              if (v41 < v38 || v4 + v41 >= v4 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
                v40 = v122;
              }

              else
              {
                v40 = v122;
                if (v41 != v38)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              sub_24E6C2F10(v115, v4 + v38);
            }

            ++v21;
            v38 -= v120;
            v39 -= v120;
            v41 += v120;
          }

          while (v21 < v40);
          v20 = v109;
          v21 = v111;
        }
      }
    }

    v42 = v121[1];
    if (v18 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_127;
    }

    if (v18 - v21 >= v110)
    {
LABEL_35:
      v19 = v18;
      if (v18 < v21)
      {
        goto LABEL_126;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v21, v110))
    {
      goto LABEL_129;
    }

    if (v21 + v110 >= v42)
    {
      v43 = v121[1];
    }

    else
    {
      v43 = v21 + v110;
    }

    if (v43 < v21)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v18 == v43)
    {
      goto LABEL_35;
    }

    v109 = v20;
    v90 = v18;
    v91 = *v121;
    v92 = *(v119 + 72);
    v93 = *v121 + v92 * (v90 - 1);
    v94 = -v92;
    v111 = v21;
    v95 = v21 - v90;
    v122 = v90;
    v113 = v92;
    v114 = v43;
    v4 = v91 + v90 * v92;
    v96 = v125;
LABEL_89:
    v117 = v4;
    v118 = v95;
    v97 = v95;
    v120 = v93;
LABEL_90:
    sub_24E6C2DEC(v4, v17);
    sub_24E6C2DEC(v93, v13);
    v98 = *(v96 + 24);
    v99 = *&v17[v98];
    v100 = *&v13[v98];
    sub_24E6C2E50(v13);
    sub_24E6C2E50(v17);
    if (v99 < v100)
    {
      break;
    }

    v96 = v125;
LABEL_88:
    v19 = v114;
    v93 = v120 + v113;
    v95 = v118 - 1;
    v4 = v117 + v113;
    if (++v122 != v114)
    {
      goto LABEL_89;
    }

    v20 = v109;
    v21 = v111;
    if (v114 < v111)
    {
      goto LABEL_126;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_24E615ED8(0, *(v20 + 2) + 1, 1, v20);
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    v4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v20 = sub_24E615ED8((v44 > 1), v45 + 1, 1, v20);
    }

    *(v20 + 2) = v4;
    v46 = &v20[16 * v45];
    *(v46 + 4) = v21;
    *(v46 + 5) = v19;
    v47 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    if (v45)
    {
      while (2)
      {
        v48 = v4 - 1;
        if (v4 >= 4)
        {
          v53 = &v20[16 * v4 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_113;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_114;
          }

          v60 = &v20[16 * v4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_116;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v64 >= v56)
          {
            v82 = &v20[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_123;
            }

            if (v51 < v85)
            {
              v48 = v4 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v52)
            {
              goto LABEL_115;
            }

            v65 = &v20[16 * v4];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_118;
            }

            v71 = &v20[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_122;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_69;
            }

            if (v51 < v74)
            {
              v48 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_55;
          }

          v75 = &v20[16 * v4];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_69:
          if (v70)
          {
            goto LABEL_117;
          }

          v78 = &v20[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_120;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        v86 = v48 - 1;
        if (v48 - 1 >= v4)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_130;
        }

        if (!*v121)
        {
          goto LABEL_133;
        }

        v87 = *&v20[16 * v86 + 32];
        v4 = *&v20[16 * v48 + 40];
        v88 = v123;
        sub_24E6C25F4(*v121 + *(v119 + 72) * v87, *v121 + *(v119 + 72) * *&v20[16 * v48 + 32], *v121 + *(v119 + 72) * v4, v47);
        v123 = v88;
        if (v88)
        {
          goto LABEL_109;
        }

        if (v4 < v87)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24E86164C(v20);
        }

        if (v86 >= *(v20 + 2))
        {
          goto LABEL_112;
        }

        v89 = &v20[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v4;
        v126 = v20;
        sub_24E8615C0(v48);
        v20 = v126;
        v4 = *(v126 + 2);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = v121[1];
    if (v19 >= v18)
    {
      goto LABEL_99;
    }
  }

  if (v91)
  {
    v101 = v124;
    sub_24E6C2F10(v4, v124);
    v96 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_24E6C2F10(v101, v93);
    v93 += v94;
    v4 += v94;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
}

void sub_24E6C25F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = a2;
  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v13 != -1)
  {
    v16 = (a2 - a1) / v13;
    v58 = a1;
    v17 = a4;
    v57 = a4;
    if (v16 < v15 / v13)
    {
      v18 = v16 * v13;
      if (a4 < a1 || a1 + v18 <= a4)
      {
        v19 = v14;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        v19 = v14;
        swift_arrayInitWithTakeBackToFront();
      }

      v14 = v19;
      v17 = a4;
LABEL_17:
      v51 = v17 + v18;
      v56 = v17 + v18;
      if (v18 >= 1 && v14 < a3)
      {
        v50 = a3;
        do
        {
          v24 = v13;
          v25 = v54;
          v26 = v14;
          sub_24E6C2DEC(v14, v54);
          v27 = v55;
          sub_24E6C2DEC(v17, v55);
          v28 = v8;
          v29 = *(v8 + 24);
          v30 = *(v25 + v29);
          v31 = *(v27 + v29);
          sub_24E6C2E50(v27);
          sub_24E6C2E50(v25);
          if (v30 >= v31)
          {
            v53 = v26;
            v13 = v24;
            if (a1 < v17 || a1 >= v17 + v24)
            {
              v8 = v28;
              swift_arrayInitWithTakeFrontToBack();
              v32 = v50;
            }

            else
            {
              v32 = v50;
              v8 = v28;
              if (a1 != v17)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v57 = v17 + v24;
            v17 += v24;
            v14 = v53;
          }

          else
          {
            v52 = v17;
            v13 = v24;
            if (a1 < v26 || a1 >= v26 + v24)
            {
              v8 = v28;
              swift_arrayInitWithTakeFrontToBack();
              v14 = v26 + v24;
              v32 = v50;
            }

            else
            {
              v32 = v50;
              v8 = v28;
              if (a1 != v26)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v14 = v26 + v24;
            }

            v17 = v52;
          }

          a1 += v13;
          v58 = a1;
        }

        while (v17 < v51 && v14 < v32);
      }

LABEL_60:
      sub_24F8FB008(&v58, &v57, &v56);
      return;
    }

    v20 = v8;
    v21 = v15 / v13 * v13;
    if (a4 < v14 || v14 + v21 <= a4)
    {
      v22 = v14;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v14)
      {
LABEL_41:
        v33 = v17 + v21;
        if (v21 >= 1)
        {
          v34 = -v13;
          v35 = v17 + v21;
          v52 = v17;
          v48 = v34;
          v49 = a1;
          do
          {
            v47 = v33;
            v36 = v14 + v34;
            v53 = v14 + v34;
            v51 = v14;
            while (1)
            {
              if (v14 <= a1)
              {
                v58 = v14;
                v56 = v47;
                goto LABEL_60;
              }

              v37 = a3;
              v50 = v33;
              a3 += v34;
              v38 = v35 + v34;
              v39 = v54;
              sub_24E6C2DEC(v35 + v34, v54);
              v40 = v55;
              sub_24E6C2DEC(v36, v55);
              v41 = v20;
              v42 = *(v20 + 24);
              v43 = *(v39 + v42);
              v44 = *(v40 + v42);
              sub_24E6C2E50(v40);
              sub_24E6C2E50(v39);
              if (v43 < v44)
              {
                break;
              }

              v33 = v38;
              if (v37 < v35 || a3 >= v35)
              {
                v20 = v41;
                swift_arrayInitWithTakeFrontToBack();
                v34 = v48;
                a1 = v49;
              }

              else
              {
                v20 = v41;
                v34 = v48;
                a1 = v49;
                if (v37 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v35 = v38;
              v36 = v53;
              v14 = v51;
              if (v38 <= v52)
              {
                goto LABEL_58;
              }
            }

            if (v37 < v51 || a3 >= v51)
            {
              v46 = v53;
              v20 = v41;
              swift_arrayInitWithTakeFrontToBack();
              v14 = v46;
              a1 = v49;
              v33 = v50;
              v34 = v48;
            }

            else
            {
              v20 = v41;
              v14 = v53;
              a1 = v49;
              v33 = v50;
              v34 = v48;
              if (v37 != v51)
              {
                v45 = v53;
                swift_arrayInitWithTakeBackToFront();
                v14 = v45;
              }
            }
          }

          while (v35 > v52);
        }

LABEL_58:
        v58 = v14;
        v56 = v33;
        goto LABEL_60;
      }

      v22 = v14;
      swift_arrayInitWithTakeBackToFront();
    }

    v14 = v22;
    v17 = a4;
    goto LABEL_41;
  }

LABEL_63:
  __break(1u);
}

uint64_t sub_24E6C2B1C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for LeaderboardEntry();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_24E8E2524(a1, a2, *v2);
  if (!v3)
  {
    v43 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v35 = v12;
    v36 = v9;
    v34 = v2;
    v42 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v42;
      }

      v37 = v7;
      v38 = a2;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v25 = v24 * v19;
        v26 = v39;
        sub_24E6C2DEC(v23 + v24 * v19, v39);
        v27 = v43;
        v28 = v40(v26);
        result = sub_24E6C2E50(v26);
        v43 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          v7 = v37;
          v16 = v22;
        }

        else
        {
          v29 = v42;
          if (v19 == v42)
          {
            v7 = v37;
            v16 = v22;
          }

          else
          {
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v42 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v42;
            result = sub_24E6C2DEC(v23 + v24 * v42, v35);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            sub_24E6C2DEC(v23 + v25, v36);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_24ECDE1B0(v22);
            }

            v32 = v16 + v41;
            result = sub_24E6C2EAC(v36, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_24E6C2EAC(v35, v32 + v25);
            *v34 = v16;
            v7 = v37;
            v29 = v42;
          }

          v42 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v42;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24E6C2DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6C2E50(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6C2EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardEntry();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6C2F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6C2FA4()
{
  result = qword_27F217F28;
  if (!qword_27F217F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217F28);
  }

  return result;
}

uint64_t sub_24E6C2FF8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217F30);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ActivityFeedItem();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_24E6C3130;

  return sub_24E6C4C34(a2);
}

uint64_t sub_24E6C3130(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E6C328C, 0, 0);
  }
}

uint64_t sub_24E6C328C()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return sub_24F92CA88();
  }

  v2 = [*(v0 + 104) sections];
  if (!v2)
  {

    return sub_24F92CA88();
  }

  v3 = v2;
  sub_24E69A5C4(0, &qword_27F217F38);
  v4 = sub_24F92B5A8();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_48:
    v6 = sub_24F92C738();
    if (v6)
    {
LABEL_5:
      v7 = 0;
      v8 = v4 & 0xC000000000000001;
      v45 = *(v0 + 72);
      v9 = *(v0 + 112);
      v43 = MEMORY[0x277D84F90];
      do
      {
        v10 = v7;
        while (1)
        {
          if (v8)
          {
            v11 = MEMORY[0x253052270](v10, v4);
          }

          else
          {
            if (v10 >= *(v5 + 16))
            {
              goto LABEL_46;
            }

            v11 = *(v4 + 8 * v10 + 32);
          }

          v12 = v11;
          v7 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v13 = [v11 items];
          if (v13)
          {
            break;
          }

          ++v10;
          if (v7 == v6)
          {
            goto LABEL_50;
          }
        }

        v41 = v1;
        v14 = v13;
        v15 = sub_24F92B5A8();

        v16 = v15;
        v49 = *(v15 + 16);
        v40 = v4;
        if (v49)
        {
          v1 = 0;
          v17 = v16 + 32;
          v51 = MEMORY[0x277D84F90];
          v46 = v16;
          v48 = v8;
          v44 = v0;
          while (v1 < *(v16 + 16))
          {
            v18 = v6;
            v19 = *(v0 + 56);
            sub_24E643A9C(v17, v0 + 16);
            sub_24E6C3818(v0 + 16, v19);
            if (v9)
            {

              __swift_destroy_boxed_opaque_existential_1(v0 + 16);
            }

            v4 = *(v0 + 56);
            v20 = *(v0 + 64);
            __swift_destroy_boxed_opaque_existential_1(v0 + 16);
            if ((*(v45 + 48))(v4, 1, v20) == 1)
            {
              sub_24E601704(*(v0 + 56), &qword_27F217F30);
            }

            else
            {
              v22 = *(v0 + 80);
              v21 = *(v0 + 88);
              sub_24E6C5000(*(v0 + 56), v21, type metadata accessor for ActivityFeedItem);
              sub_24E6C5000(v21, v22, type metadata accessor for ActivityFeedItem);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v51 = sub_24E616A38(0, v51[2] + 1, 1, v51);
              }

              v4 = v51[2];
              v23 = v51[3];
              if (v4 >= v23 >> 1)
              {
                v51 = sub_24E616A38(v23 > 1, v4 + 1, 1, v51);
              }

              v0 = v44;
              v24 = *(v44 + 80);
              v51[2] = v4 + 1;
              sub_24E6C5000(v24, v51 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v4, type metadata accessor for ActivityFeedItem);
            }

            v6 = v18;
            v9 = 0;
            ++v1;
            v17 += 32;
            v8 = v48;
            v16 = v46;
            if (v49 == v1)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_47;
        }

        v51 = MEMORY[0x277D84F90];
LABEL_28:
        v1 = v41;

        v25 = [v12 title];
        if (v25)
        {
          v26 = v25;
          v47 = sub_24F92B0D8();
          v42 = v27;
        }

        else
        {
          v47 = 0;
          v42 = 0;
        }

        v50 = v5;
        v28 = [v12 instrumentationKey];
        if (v28)
        {
          v29 = v28;
          v39 = sub_24F92B0D8();
          v31 = v30;
        }

        else
        {

          v39 = 0;
          v31 = 0;
        }

        v32 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_24E616918(0, *(v43 + 2) + 1, 1, v43);
        }

        v34 = *(v32 + 2);
        v33 = *(v32 + 3);
        if (v34 >= v33 >> 1)
        {
          v32 = sub_24E616918((v33 > 1), v34 + 1, 1, v32);
        }

        *(v32 + 2) = v34 + 1;
        v43 = v32;
        v35 = &v32[40 * v34];
        v4 = v40;
        *(v35 + 4) = v47;
        *(v35 + 5) = v42;
        *(v35 + 6) = v51;
        *(v35 + 7) = v39;
        *(v35 + 8) = v31;
        v5 = v50;
      }

      while (v7 != v6);
      goto LABEL_50;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_50:
  v37 = *(v0 + 48);

  *v37 = v43;

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_24E6C3818@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v114[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v114[-v9];
  v127 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
  v120 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v114[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217F48);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = &v114[-v13];
  v129 = type metadata accessor for ActivityFeedItemRelationshipAchievement(0);
  v121 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v114[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ActivityFeedItemRelationshipPlayer(0);
  v125 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v123 = &v114[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v131 = &v114[-v18];
  sub_24E643A9C(a1, &v146);
  sub_24E69A5C4(0, &qword_27F217F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = type metadata accessor for ActivityFeedItem();
    return (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
  }

  v117 = v2;
  v19 = v139;
  sub_24F54B8EC([v139 activityType], &v146);
  v115 = v146;
  if (v146 == 7)
  {
    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  v20 = [v19 relationships];
  v21 = [v20 games];

  v116 = a2;
  v118 = v7;
  v124 = v19;
  v130 = v10;
  if (v21)
  {
    sub_24E69A5C4(0, &qword_27F217F70);
    v22 = sub_24F92B5A8();

    if (v22 >> 62)
    {
LABEL_26:
      v23 = sub_24F92C738();
      if (v23)
      {
LABEL_6:
        v24 = 0;
        v119 = MEMORY[0x277D84F90];
        do
        {
          v25 = v24;
          while (1)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x253052270](v25, v22);
            }

            else
            {
              if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v26 = *(v22 + 8 * v25 + 32);
            }

            v27 = v26;
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            sub_24F54B900(v26, &v146);

            if (*(&v146 + 1) != 1)
            {
              break;
            }

            v143 = v150;
            v144 = v151;
            v145 = v152;
            v139 = v146;
            v140 = v147;
            v141 = v148;
            v142 = v149;
            sub_24E601704(&v139, &qword_27F217F78);
            ++v25;
            if (v24 == v23)
            {
              goto LABEL_28;
            }
          }

          v143 = v150;
          v144 = v151;
          v145 = v152;
          v139 = v146;
          v140 = v147;
          v141 = v148;
          v142 = v149;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_24E616BE4(0, *(v119 + 2) + 1, 1, v119);
          }

          v29 = *(v119 + 2);
          v28 = *(v119 + 3);
          if (v29 >= v28 >> 1)
          {
            v119 = sub_24E616BE4((v28 > 1), v29 + 1, 1, v119);
          }

          v136 = v143;
          v137 = v144;
          v138 = v145;
          v134 = v141;
          v135 = v142;
          v30 = v139;
          v132 = v139;
          v133 = v140;
          v31 = v119;
          *(v119 + 2) = v29 + 1;
          v32 = &v31[104 * v29];
          v33 = v134;
          *(v32 + 3) = v133;
          *(v32 + 4) = v33;
          v34 = v135;
          v35 = v136;
          v36 = v137;
          *(v32 + 16) = v138;
          *(v32 + 6) = v35;
          *(v32 + 7) = v36;
          *(v32 + 5) = v34;
          *(v32 + 2) = v30;
        }

        while (v24 != v23);
        goto LABEL_28;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_6;
      }
    }

    v119 = MEMORY[0x277D84F90];
LABEL_28:

    v7 = v118;
    v19 = v124;
    v10 = v130;
    goto LABEL_29;
  }

  v119 = MEMORY[0x277D84F90];
LABEL_29:
  v39 = [v19 relationships];
  v40 = [v39 players];

  if (v40)
  {
    sub_24E69A5C4(0, &qword_27F217F68);
    v41 = sub_24F92B5A8();

    if (v41 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v43 = 0;
      v153 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x253052270](v43, v41);
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v45 = *(v41 + 8 * v43 + 32);
        }

        v46 = v45;
        v10 = (v43 + 1);
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v47 = [v45 playerInternal];
        if (v47)
        {
          v48 = v123;
          sub_24F3FAC70(v47, 0, 0, v123);

          sub_24E6C5000(v48, v131, type metadata accessor for ActivityFeedItemRelationshipPlayer);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_24E616BBC(0, v153[2] + 1, 1, v153);
          }

          v50 = v153[2];
          v49 = v153[3];
          if (v50 >= v49 >> 1)
          {
            v153 = sub_24E616BBC(v49 > 1, v50 + 1, 1, v153);
          }

          v51 = v153;
          v153[2] = v50 + 1;
          sub_24E6C5000(v131, v51 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v50, type metadata accessor for ActivityFeedItemRelationshipPlayer);
          v19 = v124;
        }

        else
        {
        }

        ++v43;
        v44 = v10 == i;
        v10 = v130;
        if (v44)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

    v153 = MEMORY[0x277D84F90];
LABEL_51:

    v7 = v118;
  }

  else
  {
    v153 = MEMORY[0x277D84F90];
  }

  v52 = [v19 relationships];
  v53 = [v52 achievements];

  if (v53)
  {
    sub_24E69A5C4(0, &qword_27F217F60);
    v54 = sub_24F92B5A8();

    if (v54 >> 62)
    {
      goto LABEL_72;
    }

    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (j = v122; v55; j = v122)
    {
      v57 = 0;
      v125 = v54 & 0xC000000000000001;
      v58 = (v121 + 48);
      v131 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v125)
        {
          v59 = MEMORY[0x253052270](v57, v54);
        }

        else
        {
          if (v57 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v59 = *(v54 + 8 * v57 + 32);
        }

        v60 = v59;
        v61 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        sub_24F54BC18(v59, j);

        if ((*v58)(j, 1, v129) == 1)
        {
          sub_24E601704(j, &qword_27F217F48);
        }

        else
        {
          sub_24E6C5000(j, v128, type metadata accessor for ActivityFeedItemRelationshipAchievement);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_24E616B94(0, v131[2] + 1, 1, v131);
          }

          v63 = v131[2];
          v62 = v131[3];
          if (v63 >= v62 >> 1)
          {
            v131 = sub_24E616B94(v62 > 1, v63 + 1, 1, v131);
          }

          v64 = v131;
          v131[2] = v63 + 1;
          sub_24E6C5000(v128, v64 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v63, type metadata accessor for ActivityFeedItemRelationshipAchievement);
          j = v122;
        }

        ++v57;
        if (v61 == v55)
        {
          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v55 = sub_24F92C738();
    }

    v131 = MEMORY[0x277D84F90];
LABEL_74:

    v7 = v118;
    v19 = v124;
    v10 = v130;
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  v65 = [v19 relationships];
  v66 = [v65 leaderboards];

  if (v66)
  {
    sub_24E69A5C4(0, &qword_27F217F58);
    v67 = sub_24F92B5A8();

    if (v67 >> 62)
    {
      goto LABEL_95;
    }

    for (k = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_24F92C738())
    {
      v69 = 0;
      v128 = (v67 & 0xFFFFFFFFFFFFFF8);
      v129 = v67 & 0xC000000000000001;
      v70 = (v120 + 48);
      v71 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v129)
        {
          v72 = MEMORY[0x253052270](v69, v67);
        }

        else
        {
          if (v69 >= *(v128 + 2))
          {
            goto LABEL_94;
          }

          v72 = *(v67 + 8 * v69 + 32);
        }

        v73 = v72;
        v74 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        sub_24F54BED4(v72, v10);

        if ((*v70)(v10, 1, v127) == 1)
        {
          sub_24E601704(v10, &qword_27F217F40);
        }

        else
        {
          sub_24E6C5000(v10, v126, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_24E616B6C(0, v71[2] + 1, 1, v71);
          }

          v76 = v71[2];
          v75 = v71[3];
          if (v76 >= v75 >> 1)
          {
            v71 = sub_24E616B6C(v75 > 1, v76 + 1, 1, v71);
          }

          v71[2] = v76 + 1;
          sub_24E6C5000(v126, v71 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v76, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
          v10 = v130;
        }

        ++v69;
        if (v74 == k)
        {
          goto LABEL_97;
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      ;
    }

    v71 = MEMORY[0x277D84F90];
LABEL_97:

    v7 = v118;
    v19 = v124;
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  v77 = [v19 message];
  if (v77)
  {
    v78 = v77;
    v79 = sub_24F92B0D8();
    v81 = v80;

    *&v146 = v119;
    *(&v146 + 1) = v153;
    *&v147 = v131;
    *(&v147 + 1) = v71;
    v82 = sub_24F5BC5B8(v79, v81, &v146, 0);
    v129 = v83;
    v130 = v82;
    v7 = v118;
  }

  else
  {
    v129 = 0;
    v130 = 0;
  }

  v84 = [v19 summaryMessage];
  if (v84)
  {
    v85 = v84;
    v86 = sub_24F92B0D8();
    v88 = v87;

    *&v146 = v119;
    *(&v146 + 1) = v153;
    *&v147 = v131;
    *(&v147 + 1) = v71;
    v89 = sub_24F5BC5B8(v86, v88, &v146, 0);
    v127 = v90;
    v128 = v89;
  }

  else
  {
    v127 = 0;
    v128 = 0;
  }

  v91 = [v19 uuid];
  v92 = sub_24F92B0D8();
  v94 = v93;

  v95 = [v19 timeStamp];
  if (v95)
  {
    v96 = v95;
    sub_24F91F608();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = sub_24F91F648();
  (*(*(v98 - 8) + 56))(v7, v97, 1, v98);
  v99 = [v19 instrumentationKey];
  v100 = v19;
  v101 = v7;
  v102 = sub_24F92B0D8();
  v104 = v103;

  v105 = v116;
  *v116 = v92;
  v105[1] = v94;
  *(v105 + 16) = v115;
  v106 = type metadata accessor for ActivityFeedItem();
  sub_24E6C4F90(v101, v105 + v106[6]);
  v107 = (v105 + v106[7]);
  v108 = v129;
  *v107 = v130;
  v107[1] = v108;
  v109 = (v105 + v106[8]);
  v110 = v127;
  *v109 = v128;
  v109[1] = v110;
  v111 = (v105 + v106[9]);
  v112 = v153;
  *v111 = v119;
  v111[1] = v112;
  v111[2] = v131;
  v111[3] = v71;
  v113 = (v105 + v106[10]);
  *v113 = v102;
  v113[1] = v104;
  return (*(*(v106 - 1) + 56))(v105, 0, 1, v106);
}

void sub_24E6C477C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F217F88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  if (!*(a3 + 8))
  {
    v10 = 0;
    if (*(a3 + 24))
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_24F92B098();
  if (!*(a3 + 24))
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_24F92B098();
LABEL_6:
  v12 = sub_24F92B098();

  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_24E6C5104;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);

  [a2 getPlayerActivityFeed:v10 bundleID:v11 continuation:0 gameCategoryFilter:v12 handler:v15];
  _Block_release(v15);
}

uint64_t sub_24E6C4A10(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F217F88);
    return sub_24F92B788();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F217F88);
    return sub_24F92B798();
  }
}

uint64_t sub_24E6C4A94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a2 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_24E6C4B40;

  return sub_24E6C2FF8(a1, v2 + 16);
}

uint64_t sub_24E6C4B40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24E6C4C54()
{
  v1 = v0[3];
  v2 = [objc_opt_self() proxyForLocalPlayer];
  v3 = [v2 friendServicePrivate];
  v0[4] = v3;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217F80);
  *v5 = v0;
  v5[1] = sub_24E6C4DA0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000024FA45CC0, sub_24E6C5068, v4, v6);
}

uint64_t sub_24E6C4DA0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24E6C4F24;
  }

  else
  {

    v2 = sub_24E6C4EBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6C4EBC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E6C4F24()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6C4F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6C5000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6C5070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F217F88);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E6C5104(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F217F88);

  return sub_24E6C4A10(a1, a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24E6C51B0()
{
  sub_24E6C55F8(319, &qword_27F218010, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x277D85048];
    sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      sub_24E6C55F8(319, &qword_27F218018, v1, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24E6C55F8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24E6C55F8(319, &qword_27F218020, MEMORY[0x277D839B0], MEMORY[0x277CDD7D8]);
          if (v5 <= 0x3F)
          {
            sub_24E6C55A0();
            if (v6 <= 0x3F)
            {
              sub_24E6C55F8(319, &qword_27F218028, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24E6C5648();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E6C53B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 80);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E6C5488(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 80);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24E6C5550()
{
  result = qword_27F22EB30;
  if (!qword_27F22EB30)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F22EB30);
  }

  return result;
}

void sub_24E6C55A0()
{
  if (!qword_27F2168D0)
  {
    sub_24F923F78();
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2168D0);
    }
  }
}

void sub_24E6C55F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24E6C5648()
{
  if (!qword_27F218030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
    sub_24E6C9414(&qword_27F223390);
    v0 = sub_24F9233B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218030);
    }
  }
}

uint64_t sub_24E6C5720()
{
  v1 = *(v0 + 2);
  v5 = *v0;
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2180B8);
  MEMORY[0x25304CAF0](&v4, v2);
  return v4;
}

uint64_t sub_24E6C57D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  result = sub_24F926F38();
  v2 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v0 + 64);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 != -1 || v5 != 0x8000000000000000)
  {
    return v5 % v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24E6C5870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  result = sub_24F926F38();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v0 + 64);
  if (!v2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 != 0x7FFFFFFFFFFFFFFFLL || v2 != -1)
  {
    return (v4 + 1) % v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24E6C58FC(uint64_t a1)
{
  v2 = *(v1 + 64);
  switch(v2)
  {
    case 0:
      return MEMORY[0x277D84F90];
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24F9479A0;
      *(v6 + 32) = sub_24E6C57D4();
      v13 = *(v1 + *(a1 + 84));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
      sub_24F926F38();
      *(v6 + 40) = v12;
      v7 = sub_24E6C5870();
      result = v6;
      *(v6 + 48) = v7;
      return result;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24F93DE60;
      v13 = *(v1 + *(a1 + 84));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
      sub_24F926F38();
      result = v4;
      *(v4 + 32) = v12;
      return result;
  }

  v13 = *(v1 + *(a1 + 84));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  result = sub_24F926F38();
  if (__OFADD__(v12, v2 / 2))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v12 + v2 / 2, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v9[1] = *(a1 + 16);
  v10 = v8;
  v11 = v1;
  return sub_24E76C5AC(sub_24E6C9E6C, v9, 0, v2);
}

uint64_t sub_24E6C5B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v140 = sub_24F924E98();
  MEMORY[0x28223BE20](v140);
  v139 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218038);
  MEMORY[0x28223BE20](v154);
  v153 = &v117 - v4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218040);
  v144 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v155 = &v117 - v5;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218048);
  v143 = *(v149 - 8);
  v6 = MEMORY[0x28223BE20](v149);
  v141 = &v117 - v7;
  v163 = *(a1 - 8);
  v158 = *(v163 + 64);
  MEMORY[0x28223BE20](v6);
  v138 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050);
  v152 = a1;
  v10 = *(a1 + 24);
  v161 = *(a1 + 16);
  v162 = v10;
  v11 = type metadata accessor for CarouselView.PageView();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x277D83B98];
  v15 = sub_24E6C9414(&qword_27F223390);
  *&v181 = v11;
  *(&v181 + 1) = v12;
  *&v182 = WitnessTable;
  *(&v182 + 1) = v15;
  swift_getOpaqueTypeMetadata2();
  sub_24F925658();
  v16 = sub_24F924038();
  v17 = sub_24E602068(&qword_27F218058, &qword_27F218050);
  *&v181 = v9;
  *(&v181 + 1) = MEMORY[0x277D83B88];
  *&v182 = v16;
  *(&v182 + 1) = v17;
  v183 = v14;
  sub_24F927248();
  *&v181 = v11;
  *(&v181 + 1) = v12;
  *&v182 = WitnessTable;
  *(&v182 + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_24E6C9640(&qword_27F2141E0, MEMORY[0x277CDE470]);
  v179 = OpaqueTypeConformance2;
  v180 = v19;
  v178 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  v20 = sub_24F924038();
  v176 = swift_getWitnessTable();
  v177 = MEMORY[0x277CE03D0];
  v174 = swift_getWitnessTable();
  v175 = MEMORY[0x277CDF748];
  v156 = v20;
  v157 = swift_getWitnessTable();
  sub_24F9242F8();
  v21 = sub_24F924038();
  v159 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v117 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218060);
  v24 = sub_24F924038();
  v122 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v121 = &v117 - v25;
  v26 = swift_getWitnessTable();
  v172 = MEMORY[0x277CE0F70];
  v173 = v26;
  v27 = swift_getWitnessTable();
  v147 = v27;
  v28 = sub_24E602068(&qword_27F218068, &qword_27F218060);
  v170 = v27;
  v171 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_24E6C9414(&qword_27F218070);
  *&v181 = v24;
  *(&v181 + 1) = v12;
  v31 = v24;
  *&v117 = v24;
  v120 = v12;
  *&v182 = v29;
  *(&v182 + 1) = v30;
  v32 = v29;
  v119 = v29;
  v33 = v30;
  v118 = v30;
  v34 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v151 = &v117 - v36;
  *&v181 = v31;
  *(&v181 + 1) = v12;
  *&v182 = v32;
  *(&v182 + 1) = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_24E602068(&qword_27F218078, &qword_27F218048);
  v123 = OpaqueTypeMetadata2;
  v39 = v149;
  *&v181 = OpaqueTypeMetadata2;
  *(&v181 + 1) = v149;
  *&v182 = v37;
  *(&v182 + 1) = v38;
  v40 = v37;
  v125 = v37;
  v41 = v38;
  v124 = v38;
  v42 = swift_getOpaqueTypeMetadata2();
  v136 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v148 = &v117 - v43;
  *&v181 = OpaqueTypeMetadata2;
  *(&v181 + 1) = v39;
  *&v182 = v40;
  *(&v182 + 1) = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v126 = v42;
  *&v181 = v42;
  *(&v181 + 1) = MEMORY[0x277D839B0];
  v45 = MEMORY[0x277D839B0];
  v46 = MEMORY[0x277D839C8];
  *&v182 = v44;
  *(&v182 + 1) = MEMORY[0x277D839C8];
  v47 = v44;
  v127 = v44;
  v132 = v34;
  v48 = swift_getOpaqueTypeMetadata2();
  v131 = v48;
  v137 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v150 = &v117 - v49;
  *&v181 = v42;
  *(&v181 + 1) = v45;
  *&v182 = v47;
  *(&v182 + 1) = v46;
  v130 = swift_getOpaqueTypeConformance2();
  *&v181 = v48;
  *(&v181 + 1) = MEMORY[0x277D83B88];
  *&v182 = v130;
  *(&v182 + 1) = MEMORY[0x277D83BA8];
  v134 = swift_getOpaqueTypeMetadata2();
  v135 = *(v134 - 8);
  v50 = MEMORY[0x28223BE20](v134);
  v128 = &v117 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v129 = &v117 - v52;
  *&v181 = sub_24F926C98();
  v53 = v161;
  v164 = v161;
  v54 = v162;
  v165 = v162;
  v55 = v160;
  v166 = v160;
  sub_24F927618();
  sub_24F926A08();

  v56 = *(v55 + 48);
  v181 = *(v55 + 32);
  v182 = v56;
  sub_24E6C948C();
  v57 = v121;
  sub_24F926268();
  (*(v159 + 8))(v23, v21);
  v58 = v152;
  v59 = v55 + *(v152 + 88);
  v60 = *(v59 + 8);
  v61 = *(v59 + 32);
  *&v181 = *v59;
  BYTE8(v181) = v60;
  v182 = *(v59 + 16);
  LOBYTE(v183) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218088);
  sub_24F923328();
  *&v181 = v167;
  BYTE8(v181) = v168;
  v62 = v163;
  v63 = v163 + 16;
  v157 = *(v163 + 16);
  v64 = v138;
  v157(v138, v55, v58);
  v159 = *(v62 + 80);
  v65 = (v159 + 32) & ~v159;
  v66 = swift_allocObject();
  *(v66 + 16) = v53;
  *(v66 + 24) = v54;
  v156 = *(v62 + 32);
  v163 = v62 + 32;
  v156(v66 + v65, v64, v58);
  v67 = v117;
  sub_24F926AB8();

  (*(v122 + 8))(v57, v67);
  sub_24F925228();
  v68 = v153;
  sub_24F923518();
  LODWORD(v140) = *(v55 + 144);
  v139 = *(v55 + 152);
  v122 = *(v55 + 160);
  v121 = *(v55 + 168);
  LOBYTE(v181) = v140;
  *(&v181 + 1) = v139;
  *&v182 = v122;
  *(&v182 + 1) = v121;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218090);
  sub_24F923748();
  LODWORD(v119) = v167;
  v118 = v168;
  v117 = v169;
  v69 = v58;
  v70 = v58;
  v71 = v157;
  v147 = v63;
  v157(v64, v55, v70);
  v146 = v65;
  v72 = swift_allocObject();
  v73 = v162;
  *(v72 + 16) = v161;
  *(v72 + 24) = v73;
  v74 = v72 + v65;
  v75 = v156;
  v156(v74, v64, v69);
  v76 = v154;
  v77 = &v68[*(v154 + 44)];
  *v77 = v119;
  *(v77 + 1) = v118;
  *(v77 + 1) = v117;
  v78 = &v68[*(v76 + 48)];
  *v78 = sub_24E6C9580;
  *(v78 + 1) = v72;
  v79 = v152;
  v71(v64, v160, v152);
  v80 = v146;
  v81 = swift_allocObject();
  v82 = v161;
  *(v81 + 16) = v161;
  *(v81 + 24) = v73;
  v75(v81 + v80, v64, v79);
  sub_24E602068(&qword_27F218098, &qword_27F218038);
  sub_24E6C9640(&qword_27F2180A0, MEMORY[0x277CDD708]);
  v83 = v153;
  sub_24F927278();

  sub_24E6C9688(v83);
  v84 = v160;
  v85 = v79;
  v157(v64, v160, v79);
  v86 = v146;
  v87 = swift_allocObject();
  v88 = v162;
  *(v87 + 16) = v82;
  *(v87 + 24) = v88;
  v75(v87 + v86, v64, v85);
  sub_24E602068(&qword_27F2180A8, &qword_27F218040);
  v89 = v141;
  v90 = v142;
  v91 = v155;
  sub_24F927268();

  (*(v144 + 8))(v91, v90);
  v92 = v123;
  v93 = v149;
  v94 = v151;
  sub_24E6C8AC4(v89, *(v84 + 64) > 1, v123, v149, v125, v124);
  (*(v143 + 8))(v89, v93);
  (*(v133 + 8))(v94, v92);
  LOBYTE(v181) = v140;
  *(&v181 + 1) = v139;
  *&v182 = v122;
  *(&v182 + 1) = v121;
  sub_24F923738();
  LOBYTE(v181) = v167;
  v95 = v157;
  v157(v64, v84, v85);
  v96 = v86;
  v97 = swift_allocObject();
  v98 = v161;
  v99 = v162;
  *(v97 + 16) = v161;
  *(v97 + 24) = v99;
  v100 = v96;
  v156(v97 + v96, v64, v85);
  v101 = v126;
  v102 = v148;
  sub_24F926AB8();

  (*(v136 + 8))(v102, v101);
  v103 = v160;
  *&v181 = sub_24E6C5720();
  v95(v64, v103, v85);
  v104 = swift_allocObject();
  v105 = v162;
  *(v104 + 16) = v98;
  *(v104 + 24) = v105;
  v156(v104 + v100, v64, v85);
  v106 = v128;
  v107 = v131;
  v108 = MEMORY[0x277D83B88];
  v109 = v130;
  v110 = MEMORY[0x277D83BA8];
  v111 = v150;
  sub_24F926AB8();

  (*(v137 + 8))(v111, v107);
  *&v181 = v107;
  *(&v181 + 1) = v108;
  *&v182 = v109;
  *(&v182 + 1) = v110;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v129;
  v114 = v134;
  sub_24E7896B8(v106, v134, v112);
  v115 = *(v135 + 8);
  v115(v106, v114);
  sub_24E7896B8(v113, v114, v112);
  return (v115)(v113, v114);
}

uint64_t sub_24E6C6FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v47 = a2;
  v54 = a1;
  v59 = a4;
  v58 = sub_24F923F78();
  v57 = *(v58 - 8);
  v4 = MEMORY[0x28223BE20](v58);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050);
  v8 = type metadata accessor for CarouselView.PageView();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x277D83B98];
  v12 = sub_24E6C9414(&qword_27F223390);
  v70 = v8;
  v71 = v9;
  v72 = WitnessTable;
  v73 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_24F925658();
  v13 = sub_24F924038();
  v14 = sub_24E602068(&qword_27F218058, &qword_27F218050);
  v70 = v7;
  v71 = MEMORY[0x277D83B88];
  v72 = v13;
  v73 = v14;
  v74 = v11;
  v15 = sub_24F927248();
  v70 = v8;
  v71 = v9;
  v72 = WitnessTable;
  v73 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24E6C9640(&qword_27F2141E0, MEMORY[0x277CDE470]);
  v68 = OpaqueTypeConformance2;
  v69 = v17;
  v67 = swift_getWitnessTable();
  v49 = v15;
  swift_getWitnessTable();
  v18 = sub_24F927018();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v22 = sub_24F924038();
  v52 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = sub_24F924038();
  v53 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v50 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v51 = &v46 - v28;
  v60 = v47;
  v61 = v48;
  v29 = v54;
  v62 = v54;
  sub_24F9249A8();
  sub_24F927008();
  v30 = swift_getWitnessTable();
  v49 = v24;
  v46 = v30;
  MEMORY[0x25304C420](v30, v18, MEMORY[0x277CE03D8], v30);
  v31 = v18;
  v32 = v29;
  (*(v19 + 8))(v21, v31);
  type metadata accessor for CarouselView();
  v33 = v55;
  sub_24F7699B0(v55);
  v34 = v57;
  v35 = v56;
  v36 = v58;
  (*(v57 + 104))(v56, *MEMORY[0x277CDFA88], v58);
  sub_24F923F68();
  v37 = *(v34 + 8);
  v37(v35, v36);
  v37(v33, v36);
  v38 = *(v32 + 120);
  v70 = *(v32 + 112);
  v71 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  v65 = v46;
  v66 = MEMORY[0x277CE03D0];
  v39 = swift_getWitnessTable();
  v40 = v50;
  v41 = v49;
  sub_24F926978();
  (*(v52 + 8))(v41, v22);
  v63 = v39;
  v64 = MEMORY[0x277CDF748];
  v42 = swift_getWitnessTable();
  v43 = v51;
  sub_24E7896B8(v40, v25, v42);
  v44 = *(v53 + 8);
  v44(v40, v25);
  sub_24E7896B8(v43, v25, v42);
  return (v44)(v43, v25);
}

uint64_t sub_24E6C7774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v43 = a4;
  v40 = a2;
  v41 = a3;
  v4 = type metadata accessor for CarouselView();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050);
  v38 = v7;
  v8 = type metadata accessor for CarouselView.PageView();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
  v35 = v8;
  v36 = v9;
  WitnessTable = swift_getWitnessTable();
  v34 = WitnessTable;
  v11 = MEMORY[0x277D83B98];
  v12 = sub_24E6C9414(&qword_27F223390);
  v48 = v8;
  v49 = v9;
  v50 = WitnessTable;
  v51 = v12;
  v32[2] = MEMORY[0x277CDEEB0];
  v33 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_24F925658();
  v13 = sub_24F924038();
  v37 = sub_24E602068(&qword_27F218058, &qword_27F218050);
  v48 = v7;
  v49 = MEMORY[0x277D83B88];
  v50 = v13;
  v51 = v37;
  v52 = v11;
  v14 = sub_24F927248();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v32 - v19;
  v21 = v42;
  v47 = sub_24E6C58FC(v4);
  v32[1] = swift_getKeyPath();
  v22 = v39;
  (*(v5 + 16))(v39, v21, v4);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = v41;
  *(v24 + 16) = v40;
  *(v24 + 24) = v25;
  (*(v5 + 32))(v24 + v23, v22, v4);
  v48 = v35;
  v49 = v36;
  v50 = v34;
  v51 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24E6C9640(&qword_27F2141E0, MEMORY[0x277CDE470]);
  v45 = OpaqueTypeConformance2;
  v46 = v27;
  v31 = swift_getWitnessTable();
  sub_24F927228();
  v44 = v31;
  v28 = swift_getWitnessTable();
  sub_24E7896B8(v18, v14, v28);
  v29 = *(v15 + 8);
  v29(v18, v14);
  sub_24E7896B8(v20, v14, v28);
  return (v29)(v20, v14);
}

uint64_t sub_24E6C7BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v48 = a2;
  v56 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CarouselView.PageView();
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
  v47 = v13;
  WitnessTable = swift_getWitnessTable();
  v46 = WitnessTable;
  v45 = sub_24E6C9414(&qword_27F223390);
  *&v62 = v10;
  *(&v62 + 1) = v13;
  *&v63 = WitnessTable;
  *(&v63 + 1) = v45;
  v51 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &v41 - v15;
  sub_24F925658();
  v52 = sub_24F924038();
  v55 = *(v52 - 8);
  v16 = MEMORY[0x28223BE20](v52);
  v44 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v41 - v18;
  v20 = v48;
  v21 = *(v48 + 72);
  v41 = *a1;
  v19 = v41;
  v21(v41);
  v22 = *(v20 + 24);
  v23 = v12;
  (*(v7 + 32))(v12, v9, a3);
  *&v12[*(v10 + 36)] = v22;
  v24 = type metadata accessor for CarouselView();
  v25 = v20 + *(v24 + 88);
  v26 = *(v25 + 8);
  v27 = *(v25 + 32);
  *&v62 = *v25;
  BYTE8(v62) = v26;
  v63 = *(v25 + 16);
  v64 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218088);
  sub_24F923348();
  v62 = v59;
  *&v63 = v60;
  BYTE8(v63) = v61;
  *&v59 = v19;
  BYTE8(v59) = 0;
  v28 = v47;
  v29 = v46;
  v30 = v45;
  sub_24F9269B8();

  (*(v54 + 8))(v23, v10);
  v62 = *(v20 + *(v24 + 84));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  sub_24F926F38();
  *&v62 = v10;
  *(&v62 + 1) = v28;
  *&v63 = v29;
  *(&v63 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = OpaqueTypeMetadata2;
  v34 = v42;
  sub_24F9265D8();
  (*(v53 + 8))(v34, v33);
  v35 = sub_24E6C9640(&qword_27F2141E0, MEMORY[0x277CDE470]);
  v57 = OpaqueTypeConformance2;
  v58 = v35;
  v36 = v52;
  v37 = swift_getWitnessTable();
  v38 = v50;
  sub_24E7896B8(v32, v36, v37);
  v39 = *(v55 + 8);
  v39(v32, v36);
  sub_24E7896B8(v38, v36, v37);
  return (v39)(v38, v36);
}

uint64_t sub_24E6C81A4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = type metadata accessor for CarouselView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  result = sub_24F926F38();
  if ((v3 & 1) != 0 || v9 != v2)
  {
    if (v2 == sub_24E6C5870())
    {
      v6 = v3;
    }

    else
    {
      v6 = 1;
    }

    if (v6 != 1)
    {
      v8 = 1;
      return sub_24E6C8280(v8, v4);
    }

    result = sub_24E6C57D4();
    if (v2 == result)
    {
      v7 = v3;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      v8 = -1;
      return sub_24E6C8280(v8, v4);
    }
  }

  return result;
}

uint64_t sub_24E6C8280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v5 = sub_24F925538();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v40[1] = v8;
  v41 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F923F78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v40 - v14;
  v16 = *(v2 + 112);
  v17 = *(v2 + 120);
  v48 = v16;
  v49 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  v18 = v47;
  sub_24F7699B0(v15);
  (*(v10 + 104))(v13, *MEMORY[0x277CDFA88], v9);
  v19 = sub_24F923F68();
  v20 = *(v10 + 8);
  v20(v13, v9);
  v21 = v15;
  v22 = v46;
  result = (v20)(v21, v9);
  v24 = v22;
  if ((v19 & 1) == 0)
  {
    v24 = -v22;
    if (__OFSUB__(0, v22))
    {
      goto LABEL_12;
    }
  }

  v47 = v18 + *(v3 + 24) * v24;
  v48 = v16;
  v49 = v17;
  sub_24F926F48();
  v25 = (v3 + *(a2 + 84));
  v26 = *v25;
  v27 = v25[1];
  v48 = *v25;
  v49 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  result = sub_24F926F38();
  v28 = *&v47 + v22;
  if (__OFADD__(*&v47, v22))
  {
    __break(1u);
    goto LABEL_10;
  }

  v29 = *(v3 + 64);
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v29)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v29 != -1 || v31 != 0x8000000000000000)
  {
    v48 = v26;
    v49 = v27;
    *&v47 = v31 % v29;
    v32 = sub_24F926F48();
    MEMORY[0x28223BE20](v32);
    v33 = *(a2 + 16);
    v34 = *(a2 + 24);
    v40[-4] = v33;
    v40[-3] = v34;
    v40[-2] = v3;
    v36 = v41;
    v35 = v42;
    (*(v42 + 16))(v41, v3, a2);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v33;
    *(v38 + 24) = v34;
    (*(v35 + 32))(v38 + v37, v36, a2);
    v39 = v43;
    sub_24F925528();
    sub_24F923B08();

    return (*(v44 + 8))(v39, v45);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_24E6C86EC()
{
  sub_24F923528();
  type metadata accessor for CarouselView();
  return sub_24E6C874C();
}

uint64_t sub_24E6C874C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  return sub_24F926F48();
}

uint64_t sub_24E6C87EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  sub_24F923548();
  v1 = v0;
  v2 = type metadata accessor for CarouselView();
  return sub_24E6C889C(v2, v1);
}

uint64_t sub_24E6C889C(uint64_t a1, double a2)
{
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = fabs(a2);
  if (*(v2 + 24) * *(v2 + 104) < v13)
  {
    v14 = a2 / v13;
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        v15 = -v14;
        if (!__OFSUB__(0, v14))
        {
          sub_24F7699B0(&v19 - v11);
          (*(v6 + 104))(v9, *MEMORY[0x277CDFA88], v5);
          v16 = sub_24F923F68();
          v17 = *(v6 + 8);
          v17(v9, v5);
          result = (v17)(v12, v5);
          if (v16)
          {
            return sub_24E6C8280(v15, a1);
          }

          v18 = __OFSUB__(0, v15);
          v15 = -v15;
          if (!v18)
          {
            return sub_24E6C8280(v15, a1);
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

  return sub_24E6C8BEC(a1);
}

uint64_t sub_24E6C8AC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = sub_24F9235A8();
  }

  else
  {
    v11 = sub_24F9235B8();
  }

  return MEMORY[0x2821330B8](a1, v11, a3, a4, a5, a6);
}

_BYTE *sub_24E6C8B4C(_BYTE *result, _BYTE *a2)
{
  if (*result == 1 && (*a2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    result = sub_24F926F38();
    if ((v3 & 1) == 0)
    {
      v2 = type metadata accessor for CarouselView();
      return sub_24E6C8BEC(v2);
    }
  }

  return result;
}

uint64_t sub_24E6C8BEC(uint64_t a1)
{
  v2 = v1;
  v16 = sub_24F925538();
  v4 = *(v16 - 8);
  v5 = MEMORY[0x28223BE20](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v15 = *(v2 + 96);
  v10 = *(a1 + 24);
  v17 = *(a1 + 16);
  v11 = v17;
  v18 = v10;
  v19 = v2;
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  (*(v8 + 32))(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_24F925528();
  sub_24F923B08();

  return (*(v4 + 8))(v7, v16);
}

uint64_t sub_24E6C8E08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  result = sub_24F926F38();
  if (v12 == 1)
  {
    v7 = type metadata accessor for CarouselView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
    result = sub_24F926F38();
    if (v5 != v12)
    {
      if (!v5 && v4 != 1)
      {
        v8 = 1;
        return sub_24E6C8280(v8, v7);
      }

      v9 = *(a3 + 64);
      if (__OFSUB__(v9, 1))
      {
        __break(1u);
      }

      else
      {
        if (v5 != v9 - 1)
        {
          goto LABEL_10;
        }

        v10 = __OFSUB__(v9, 2);
        v11 = v9 - 2;
        if (!v10)
        {
          if (v4 != v11)
          {
LABEL_13:
            v8 = -1;
            return sub_24E6C8280(v8, v7);
          }

LABEL_10:
          v8 = v5 - v4;
          if (!__OFSUB__(v5, v4))
          {
            return sub_24E6C8280(v8, v7);
          }

          __break(1u);
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24E6C8F94()
{
  type metadata accessor for CarouselView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218088);
  sub_24F923328();
  if ((v1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
    sub_24F926F38();
    sub_24F923328();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  sub_24F926F38();
  sub_24E6C5778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24E6C915C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277CE03D8];
  v5 = sub_24F924038();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_24F924038();
  v22 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v15 = *(a1 + 24);
  MEMORY[0x25304C420](v12, v3, v4, v15);
  sub_24F927618();
  v26 = v15;
  v27 = MEMORY[0x277CE03D0];
  WitnessTable = swift_getWitnessTable();
  sub_24F926938();
  (*(v21 + 8))(v7, v5);
  v24 = WitnessTable;
  v25 = MEMORY[0x277CDF678];
  v17 = swift_getWitnessTable();
  sub_24E7896B8(v11, v8, v17);
  v18 = *(v22 + 8);
  v18(v11, v8);
  sub_24E7896B8(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t sub_24E6C9414(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E6C948C()
{
  result = qword_27F218080;
  if (!qword_27F218080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218080);
  }

  return result;
}

uint64_t sub_24E6C94E4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for CarouselView();

  return sub_24E6C81A4(a1, a2);
}

uint64_t sub_24E6C9580(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for CarouselView();
  *a2 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24E6C9640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6C9688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6C9708(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for CarouselView() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

_BYTE *sub_24E6C97A8(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for CarouselView();

  return sub_24E6C8B4C(a1, a2);
}

uint64_t sub_24E6C9844(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for CarouselView() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_24E6C8E08(a1, a2, v6);
}

double sub_24E6C98E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  CGSizeMake(a1, a2, a3);
  sub_24F925B38();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 32) = v8;
  return result;
}

void (*sub_24E6C994C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24E6C99D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E6C948C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24E6C9A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E6C948C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24E6C9A9C(uint64_t a1)
{
  v2 = sub_24E6C948C();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24E6C9B98(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for CarouselView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for CarouselView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E6C9DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CarouselView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24E6C7BE4(a1, v8, v5, v6, a2);
}

void *sub_24E6C9E6C@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = __OFADD__(*result, v3);
  v5 = *result + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(*(v2 + 40) + 64);
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != 0x8000000000000000 || v6 != -1)
  {
    *a2 = v5 % v6;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24E6C9ECC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E6C9F44(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_24E6CA048(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_24E6CA1CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050);
  type metadata accessor for CarouselView.PageView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390);
  swift_getWitnessTable();
  sub_24E6C9414(&qword_27F223390);
  swift_getOpaqueTypeMetadata2();
  sub_24F925658();
  sub_24F924038();
  sub_24E602068(&qword_27F218058, &qword_27F218050);
  sub_24F927248();
  swift_getOpaqueTypeConformance2();
  sub_24E6C9640(&qword_27F2141E0, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218060);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F218068, &qword_27F218060);
  swift_getWitnessTable();
  sub_24E6C9414(&qword_27F218070);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218048);
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F218078, &qword_27F218048);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E6CA728()
{
  result = qword_27F218150;
  if (!qword_27F218150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218150);
  }

  return result;
}

unint64_t sub_24E6CA780()
{
  result = qword_27F218158;
  if (!qword_27F218158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218158);
  }

  return result;
}

uint64_t sub_24E6CA818()
{
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24E6CA90C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[14];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[17]];

  return v15(v16, a2, v14);
}

char *sub_24E6CAAA4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[17]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for OnboardingCrossUseConsentView()
{
  result = qword_27F218160;
  if (!qword_27F218160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6CAC74()
{
  sub_24E6CAFA0(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24E6CAE80();
    if (v1 <= 0x3F)
    {
      sub_24E6CAEE4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E6CAFA0(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F928FD8();
          if (v4 <= 0x3F)
          {
            sub_24F928818();
            if (v5 <= 0x3F)
            {
              sub_24E6CAEE4(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_24E6CAF48();
                if (v7 <= 0x3F)
                {
                  sub_24E6CAFA0(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_24E6CAE80()
{
  result = qword_27F218178;
  if (!qword_27F218178)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F218178);
  }

  return result;
}

void sub_24E6CAEE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24E6CAF48()
{
  if (!qword_27F2168C8)
  {
    sub_24F923E98();
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2168C8);
    }
  }
}

void sub_24E6CAFA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_24E6CB00C()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  v4 = sub_24F9258D8();
  xmmword_27F39A510 = xmmword_24F947C50;
  unk_27F39A520 = vdupq_n_s64(0x404E000000000000uLL);
  result = 0.0;
  xmmword_27F39A530 = xmmword_24F947C60;
  qword_27F39A540 = v0;
  unk_27F39A548 = v2;
  *&xmmword_27F39A550 = 0x4024000000000000;
  *(&xmmword_27F39A550 + 1) = v3;
  qword_27F39A560 = 0x4034000000000000;
  unk_27F39A568 = v4;
  return result;
}

double sub_24E6CB084()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  v4 = sub_24F9258D8();
  xmmword_27F39A570 = xmmword_24F947C70;
  unk_27F39A580 = vdupq_n_s64(0x404E000000000000uLL);
  result = 0.0;
  xmmword_27F39A590 = xmmword_24F947C60;
  qword_27F39A5A0 = v0;
  unk_27F39A5A8 = v2;
  *&xmmword_27F39A5B0 = 0x4024000000000000;
  *(&xmmword_27F39A5B0 + 1) = v3;
  qword_27F39A5C0 = 0x4034000000000000;
  unk_27F39A5C8 = v4;
  return result;
}

__n128 sub_24E6CB0FC@<Q0>(_OWORD *a1@<X8>)
{
  v71 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v58 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v55[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v57 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v55[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v55[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v55[-v23];
  v63 = type metadata accessor for OnboardingCrossUseConsentView();
  v65 = v1;
  sub_24F769764(v24);
  v25 = v3[13];
  v62 = *MEMORY[0x277CE0560];
  v61 = v25;
  v59 = v3 + 13;
  v25(v22);
  v60 = v3[7];
  v60(v22, 0, 1, v2);
  v64 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v24, v9, &qword_27F215598);
  v27 = v2;
  sub_24E60169C(v22, &v9[v26], &qword_27F215598);
  v70.n128_u64[0] = v3;
  v28 = v3[6];
  if (v28(v9, 1, v2) == 1)
  {
    *&v69 = v28;
    sub_24E601704(v22, &qword_27F215598);
    v27 = v2;
    sub_24E601704(v24, &qword_27F215598);
    if ((v69)(&v9[v26], 1, v2) != 1)
    {
LABEL_13:
      sub_24E601704(v9, &unk_27F254F20);
      goto LABEL_14;
    }

    sub_24E601704(v9, &qword_27F215598);
LABEL_6:
    v24 = v67;
    sub_24F769764(v67);
    v22 = v66;
    v61(v66, v62, v27);
    v60(v22, 0, 1, v27);
    v33 = *(v64 + 48);
    v34 = v68;
    sub_24E60169C(v24, v68, &qword_27F215598);
    sub_24E60169C(v22, &v34[v33], &qword_27F215598);
    v35 = v69;
    if ((v69)(v34, 1, v27) == 1)
    {
      sub_24E601704(v22, &qword_27F215598);
      sub_24E601704(v24, &qword_27F215598);
      if (v35(&v34[v33], 1, v27) == 1)
      {
        sub_24E601704(v34, &qword_27F215598);
LABEL_19:
        if (qword_27F20FDC0 != -1)
        {
          swift_once();
        }

        v37 = &xmmword_27F39A570;
        goto LABEL_17;
      }

      v9 = v34;
      goto LABEL_13;
    }

    v36 = v57;
    sub_24E60169C(v34, v57, &qword_27F215598);
    if (v35(&v34[v33], 1, v27) == 1)
    {
      v19 = v36;
      v9 = v34;
      goto LABEL_11;
    }

    v49 = v22;
    v50 = v24;
    v51 = v70.n128_u64[0];
    v52 = v58;
    (*(v70.n128_u64[0] + 32))(v58, &v34[v33], v27);
    sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570]);
    v53 = sub_24F92AFF8();
    v54 = *(v51 + 8);
    v54(v52, v27);
    sub_24E601704(v49, &qword_27F215598);
    sub_24E601704(v50, &qword_27F215598);
    v54(v36, v27);
    sub_24E601704(v34, &qword_27F215598);
    if (v53)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_24E60169C(v9, v19, &qword_27F215598);
  if (v28(&v9[v26], 1, v2) == 1)
  {
LABEL_11:
    sub_24E601704(v22, &qword_27F215598);
    sub_24E601704(v24, &qword_27F215598);
    (*(v70.n128_u64[0] + 8))(v19, v27);
    goto LABEL_13;
  }

  *&v69 = v28;
  v29 = v70.n128_u64[0];
  v30 = &v9[v26];
  v31 = v58;
  (*(v70.n128_u64[0] + 32))(v58, v30, v27);
  sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570]);
  v56 = sub_24F92AFF8();
  v32 = *(v29 + 8);
  v32(v31, v27);
  sub_24E601704(v22, &qword_27F215598);
  sub_24E601704(v24, &qword_27F215598);
  v32(v19, v27);
  sub_24E601704(v9, &qword_27F215598);
  if (v56)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (qword_27F20FDB8 != -1)
  {
    swift_once();
  }

  v37 = &xmmword_27F39A510;
LABEL_17:
  v38 = v37[5];
  v76 = v37[4];
  v77 = v38;
  v39 = v37[3];
  v74 = v37[2];
  v75 = v39;
  v40 = v37[1];
  v73[0] = *v37;
  v73[1] = v40;
  v41 = *(&v77 + 1);
  v42 = v77;
  v43 = *(&v76 + 1);
  v44 = v76;
  v45 = v75;
  v46 = v74;
  v70 = v40;
  v69 = v73[0];
  sub_24E6CED50(v73, v72);
  v47 = v71;
  result = v70;
  *v71 = v69;
  v47[1] = result;
  v47[2] = v46;
  v47[3] = v45;
  *(v47 + 8) = v44;
  *(v47 + 9) = v43;
  *(v47 + 10) = v42;
  *(v47 + 11) = v41;
  return result;
}

uint64_t sub_24E6CBA44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = v64 - v4;
  v82 = sub_24F929158();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = v64 - v7;
  v8 = type metadata accessor for OnboardingCrossUseConsentView();
  v70 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = v9;
  v72 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218188);
  MEMORY[0x28223BE20](v10);
  v12 = v64 - v11;
  v13 = *(v1 + 88);
  v75 = *(v1 + 80);
  v14 = *(v1 + 152);
  if (*(v1 + 152))
  {
    v15 = 0x6965576C61757165;
  }

  else
  {
    v15 = 0xD000000000000010;
  }

  if (*(v1 + 152))
  {
    v16 = 0xEE00676E69746867;
  }

  else
  {
    v16 = 0x800000024FA42F60;
  }

  v76 = *(v1 + 152);
  if (v16 == 0xEE00676E69746867)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v67) = v17;
  v74 = v13;
  v64[1] = v15;
  if (v17 == 1)
  {
  }

  else
  {
    v18 = sub_24F92CE08();

    if ((v18 & 1) == 0)
    {
      v73 = sub_24F926D18();
      goto LABEL_18;
    }
  }

  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v73 = qword_27F2431D0;

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93DE60;
  sub_24E615E00((v2 + 5), v19 + 32);
  v77 = v8;
  v20 = v2 + *(v8 + 72);
  v21 = *v20;
  v22 = *(v20 + 1);
  v65 = v21;
  LOBYTE(v85) = v21;
  v66 = v22;
  v86 = v22;
  v64[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v23 = v88;
  v24 = v89;
  *(&v89 + 1) = type metadata accessor for ProgressPerformAction();
  v90 = sub_24E6CF670(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
  sub_24F928A98();
  *boxed_opaque_existential_1 = v19;
  *(boxed_opaque_existential_1 + 1) = v23;
  *(boxed_opaque_existential_1 + 24) = v24;
  boxed_opaque_existential_1[5] = 0;
  boxed_opaque_existential_1[6] = 0;
  boxed_opaque_existential_1[4] = 0;
  sub_24E60169C((v2 + 12), &v85, qword_27F21B590);
  v26 = v87;
  sub_24E601704(&v85, qword_27F21B590);
  if (v26)
  {
    v27 = v2[18];
    v69 = v2[17];
    v68 = v27;
  }

  else
  {
    v69 = 0;
    v68 = 0;
  }

  if (v67)
  {
  }

  else
  {
    v28 = sub_24F92CE08();

    if ((v28 & 1) == 0)
    {
      v67 = sub_24F926D18();
      goto LABEL_28;
    }
  }

  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v67 = qword_27F2431D0;

LABEL_28:
  sub_24E60169C((v2 + 12), (v12 + 88), qword_27F21B590);
  LOBYTE(v85) = v65;
  v86 = v66;
  sub_24F926F38();
  v65 = v84;
  v29 = v2[22];
  v66 = 0x800000024FA45D10;
  v30 = v72;
  sub_24E6CE7D8(v2, v72);
  v31 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v32 = swift_allocObject();
  sub_24E6CE840(v30, v32 + v31);
  sub_24E6CE7D8(v2, v30);
  v33 = swift_allocObject();
  sub_24E6CE840(v30, v33 + v31);
  sub_24E6CE7D8(v2, v30);
  v34 = swift_allocObject();
  sub_24E6CE840(v30, v34 + v31);
  v35 = v10[34];
  v36 = type metadata accessor for HeaderPresentation(0);
  (*(*(v36 - 8) + 56))(&v12[v35], 1, 1, v36);
  v37 = &v12[v10[37]];
  LOBYTE(v84) = 0;

  sub_24F926F28();
  v38 = v86;
  *v37 = v85;
  *(v37 + 1) = v38;
  v39 = &v12[v10[38]];
  LOBYTE(v84) = 0;
  sub_24F926F28();
  v40 = v86;
  *v39 = v85;
  *(v39 + 1) = v40;
  v41 = &v12[v10[39]];
  v84 = 0;
  sub_24F926F28();
  v42 = v86;
  *v41 = v85;
  *(v41 + 1) = v42;
  v43 = v10[40];
  *&v12[v43] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v44 = v10[41];
  *&v12[v44] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v45 = v10[42];
  *&v12[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v46 = &v12[v10[43]];
  *v46 = sub_24F923398() & 1;
  *(v46 + 1) = v47;
  v46[16] = v48 & 1;
  v49 = v88;
  *(v12 + 40) = v89;
  v50 = v74;
  *v12 = v75;
  *(v12 + 1) = v50;
  *(v12 + 2) = v73;
  v51 = v90;
  *(v12 + 24) = v49;
  v52 = v69;
  *(v12 + 7) = v51;
  *(v12 + 8) = v52;
  v53 = v67;
  *(v12 + 9) = v68;
  *(v12 + 10) = v53;
  v12[128] = v76;
  v12[129] = v65;
  *(v12 + 17) = v29;
  *(v12 + 18) = 0xD000000000000013;
  *(v12 + 19) = v66;
  *(v12 + 20) = sub_24E6CE8A4;
  *(v12 + 21) = v32;
  *(v12 + 22) = sub_24E6CE924;
  *(v12 + 23) = v33;
  *(v12 + 24) = sub_24E6CECC8;
  *(v12 + 25) = v34;
  *(v12 + 26) = CGSizeMake;
  *(v12 + 27) = 0;
  v12[v10[35]] = 7;
  v12[v10[36]] = 0;
  v54 = *(v77 + 56);
  v55 = sub_24F928818();
  v56 = *(v55 - 8);
  v57 = v2 + v54;
  v58 = v78;
  (*(v56 + 16))(v78, v57, v55);
  (*(v56 + 56))(v58, 0, 1, v55);
  v59 = v79;
  v60 = v82;
  sub_24F928F28();
  v61 = sub_24F921B48();
  v62 = v81;
  (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
  sub_24E602068(&qword_27F218190, &qword_27F218188);
  sub_24F925E58();
  sub_24E601704(v62, &qword_27F2157E8);
  (*(v80 + 8))(v59, v60);
  sub_24E601704(v58, &qword_27F2157F0);
  return sub_24E601704(v12, &qword_27F218188);
}

void *sub_24E6CC4E4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24E6CC594(a1, __src);
  memcpy(__dst, __src, 0x171uLL);
  memcpy(v8, __src, 0x171uLL);
  sub_24E60169C(__dst, &v5, &qword_27F218198);
  sub_24E601704(v8, &qword_27F218198);
  return memcpy((a2 + 24), __dst, 0x171uLL);
}

uint64_t sub_24E6CC594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v32 = *a1;

  sub_24E6CB0FC(&v57);
  KeyPath = swift_getKeyPath();
  v65 = 0;
  v29 = sub_24F925818();
  sub_24E6CB0FC(&v63);
  sub_24E6CED90(&v63);
  sub_24F923318();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v65;
  v31 = v65;
  LOBYTE(v82[0]) = 0;
  v13 = a1[2];
  v14 = a1[4];
  v27 = a1[3];
  v28 = a1[1];
  v25 = a1[21];
  v26 = a1[20];

  sub_24E6CB0FC(&v51);
  v24 = sub_24F925818();
  sub_24E6CB0FC(v64);
  sub_24E6CED90(v64);
  sub_24F923318();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  *&v66 = KeyPath;
  BYTE8(v66) = v12;
  *v67 = v3;
  *&v67[40] = v59;
  *&v67[56] = v60;
  *&v67[72] = v61;
  *&v67[88] = v62;
  *&v67[8] = v57;
  *&v67[24] = v58;
  v67[104] = v29;
  *&v68 = v5;
  *(&v68 + 1) = v7;
  *&v69 = v9;
  *(&v69 + 1) = v11;
  v70 = 0;
  LOBYTE(__src[10]) = 0;
  __src[8] = v68;
  __src[9] = v69;
  __src[0] = v66;
  __src[1] = *v67;
  __src[6] = *&v67[80];
  __src[7] = *&v67[96];
  __src[4] = *&v67[48];
  __src[5] = *&v67[64];
  __src[2] = *&v67[16];
  __src[3] = *&v67[32];
  *&v71 = v28;
  *(&v71 + 1) = v13;
  *&v72 = v27;
  *(&v72 + 1) = v14;
  *&v73 = v26;
  *(&v73 + 1) = v25;
  v76 = v53;
  v77 = v54;
  v78 = v55;
  v79 = v56;
  v74 = v51;
  v75 = v52;
  LOBYTE(v80) = v24;
  *(&v80 + 1) = v15;
  *v81 = v17;
  *&v81[8] = v19;
  *&v81[16] = v21;
  v81[24] = 0;
  *(&__src[16] + 8) = v54;
  *(&__src[17] + 8) = v55;
  *(&__src[21] + 1) = *&v81[9];
  *(&__src[19] + 8) = v80;
  *(&__src[20] + 8) = *v81;
  *(&__src[18] + 8) = v56;
  *(&__src[10] + 8) = v71;
  *(&__src[11] + 8) = v72;
  *(&__src[12] + 8) = v73;
  *(&__src[15] + 8) = v53;
  *(&__src[14] + 8) = v52;
  *(&__src[13] + 8) = v51;
  v49 = 0;
  memcpy(a2, __src, 0x168uLL);
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  v82[0] = v28;
  v82[1] = v13;
  v82[2] = v27;
  v82[3] = v14;
  v82[4] = v26;
  v82[5] = v25;
  v85 = v53;
  v86 = v54;
  v87 = v55;
  v88 = v56;
  v83 = v51;
  v84 = v52;
  v89 = v24;
  v90 = v16;
  v91 = v18;
  v92 = v20;
  v93 = v22;
  v94 = 0;
  sub_24E60169C(&v66, &v34, &qword_27F2181A0);
  sub_24E60169C(&v71, &v34, &qword_27F2181A8);
  sub_24E601704(v82, &qword_27F2181A8);
  v39 = v59;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v37 = v57;
  v38 = v58;
  v34 = KeyPath;
  v35 = v31;
  v36 = v32;
  v43 = v29;
  v44 = v5;
  v45 = v7;
  v46 = v9;
  v47 = v11;
  v48 = 0;
  return sub_24E601704(&v34, &qword_27F2181A0);
}

double sub_24E6CC944@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  sub_24E6CB0FC(v9);
  KeyPath = swift_getKeyPath();
  v5 = v9[3];
  *(a2 + 56) = v9[2];
  *(a2 + 72) = v5;
  v6 = v9[5];
  *(a2 + 88) = v9[4];
  *(a2 + 104) = v6;
  result = *v9;
  v8 = v9[1];
  *(a2 + 24) = v9[0];
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 40) = v8;
  return result;
}

double sub_24E6CC9D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[20];
  v7 = a1[21];

  sub_24E6CB0FC(v13);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  v9 = v13[3];
  *(a2 + 80) = v13[2];
  *(a2 + 96) = v9;
  v10 = v13[5];
  *(a2 + 112) = v13[4];
  *(a2 + 128) = v10;
  result = *v13;
  v12 = v13[1];
  *(a2 + 48) = v13[0];
  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_24E6CCA70@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2181B0);
  MEMORY[0x28223BE20](v36);
  v3 = v33 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2181B8);
  v4 = MEMORY[0x28223BE20](v35);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2181C0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v12 = *(v1 + 64);
  v33[3] = *(v1 + 72);
  v33[2] = *(v1 + 80);
  *v3 = sub_24F9249A8();
  *(v3 + 1) = v12;
  v3[16] = 0;
  v33[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2181C8) + 44);
  v39 = *(v1 + 16);
  v40 = v39;
  swift_getKeyPath();
  v13 = swift_allocObject();
  v14 = *(v1 + 80);
  *(v13 + 80) = *(v1 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v1 + 96);
  *(v13 + 128) = *(v1 + 112);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  v16 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v16;
  sub_24E60169C(&v40, v38, &unk_27F2285F0);
  sub_24E6CF1CC(v1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2181D0);
  sub_24E602068(&qword_27F2181D8, &unk_27F2285F0);
  sub_24E6CF204();
  sub_24F927228();
  sub_24E602068(&qword_27F2181E8, &qword_27F2181B0);
  sub_24F9265E8();
  sub_24E601704(v3, &qword_27F2181B0);
  v17 = v34;
  sub_24F923FE8();
  sub_24E601704(v6, &qword_27F2181B8);
  sub_24F9242E8();
  sub_24E6009C8(v17, v11, &qword_27F2181B8);
  v18 = &v11[*(v9 + 44)];
  v19 = v38[5];
  *(v18 + 4) = v38[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v38[6];
  v20 = v38[1];
  *v18 = v38[0];
  *(v18 + 1) = v20;
  v21 = v38[3];
  *(v18 + 2) = v38[2];
  *(v18 + 3) = v21;
  LOBYTE(v12) = sub_24F925838();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v37;
  sub_24E6009C8(v11, v37, &qword_27F2181C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2181F0);
  v32 = v30 + *(result + 36);
  *v32 = v12;
  *(v32 + 8) = v23;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_24E6CCF1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2181F8);
  MEMORY[0x28223BE20](v50);
  v7 = v40 - v6;
  v46 = sub_24F929888();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24F926E08();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218200);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = v40 - v12;
  v13 = sub_24F924848();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v43 = v17;
  static SystemAppIcon.from(iconName:)(v17, v18, &v61);
  v19 = v61;
  if (v61 == 4 || ((v41 = v7, v67 = *(a2 + 8), v20 = *a2, v66 = *a2, v67 != 1) ? (, sub_24F92BDC8(), v40[0] = a2, v22 = sub_24F9257A8(), v40[1] = a3, v23 = v22, a2 = v40[0], sub_24F921FD8(), v23, sub_24F924838(), swift_getAtKeyPath(), sub_24E601704(&v66, &qword_27F218208), (*(v14 + 8))(v16, v13), v21 = v55) : (v21 = v20), v24 = *(a2 + 48), LOBYTE(v55) = v19, v25 = sub_24EFFE798(&v55, 0, v24, v24, v21), v7 = v41, !v25))
  {

    sub_24F926E98();
    v34 = v42;
    (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v42);
    *&v35 = COERCE_DOUBLE(sub_24F926E88());

    (*(v9 + 8))(v11, v34);
    sub_24F927618();
    sub_24F9238C8();
    v55 = *&v35;
    v56 = v61;
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v51 = 0u;
    v36 = v44;
    sub_24F9297A8();
    sub_24E601704(&v51, &qword_27F2129B0);
    sub_24E601704(&v53, &qword_27F2129B0);
    *&v37 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217338));
    v38 = sub_24E6A6234();
    v31 = v47;
    sub_24F925EE8();
    (*(v45 + 8))(v36, v46);

    v32 = v48;
    v33 = v49;
    (*(v48 + 16))(v7, v31, v49);
    swift_storeEnumTagMultiPayload();
    v55 = *&v37;
    v56 = v38;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
  }

  else
  {
    sub_24F926DE8();
    v26 = v42;
    (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v42);
    *&v27 = COERCE_DOUBLE(sub_24F926E88());
    (*(v9 + 8))(v11, v26);
    sub_24F927618();
    sub_24F9238C8();
    v55 = *&v27;
    v56 = v61;
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v51 = 0u;
    v28 = v44;
    sub_24F9297A8();
    sub_24E601704(&v51, &qword_27F2129B0);
    sub_24E601704(&v53, &qword_27F2129B0);
    *&v29 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217338));
    v30 = sub_24E6A6234();
    v31 = v47;
    sub_24F925EE8();
    (*(v45 + 8))(v28, v46);

    v32 = v48;
    v33 = v49;
    (*(v48 + 16))(v7, v31, v49);
    swift_storeEnumTagMultiPayload();
    v55 = *&v29;
    v56 = v30;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
  }

  return (*(v32 + 8))(v31, v33);
}

double sub_24E6CD7E0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v4 = *(v1 + 6);
  v5 = *(v1 + 4);
  v33 = *(v1 + 5);
  v34 = v4;
  v6 = *(v1 + 6);
  v7 = *(v1 + 8);
  v35 = *(v1 + 7);
  v36 = v7;
  v8 = *(v1 + 4);
  v32[0] = *(v1 + 3);
  v32[1] = v8;
  v9 = v35;
  v31 = 0;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v15 = v1[4];
  v14 = v1[5];
  v48 = v33;
  v49 = v6;
  v16 = *(v1 + 8);
  v50 = v35;
  v51 = v16;
  v46 = v32[0];
  v47 = v5;
  *&v37 = v12;
  *(&v37 + 1) = v13;
  *&v38 = v15;
  *(&v38 + 1) = v14;
  v41 = v33;
  v42 = v6;
  v43 = v35;
  v44 = v16;
  v39 = v32[0];
  v40 = v5;
  v26 = v33;
  v27 = v6;
  v28 = v35;
  v29 = v16;
  v22 = v37;
  v23 = v38;
  v24 = v32[0];
  v25 = v5;
  v45[0] = v12;
  v45[1] = v13;
  v45[2] = v15;
  v45[3] = v14;

  sub_24E6CED50(v32, v30);

  sub_24E6CF108(&v37, v30);
  sub_24E6CF140(v45);

  v17 = v31;
  sub_24F927628();
  sub_24F9242E8();
  *(a1 + 264) = v30[6];
  *(a1 + 104) = v26;
  *(a1 + 120) = v27;
  *(a1 + 136) = v28;
  *(a1 + 152) = v29;
  *(a1 + 40) = v22;
  *(a1 + 56) = v23;
  *(a1 + 72) = v24;
  *(a1 + 88) = v25;
  v18 = v30[2];
  *(a1 + 216) = v30[3];
  v19 = v30[5];
  *(a1 + 232) = v30[4];
  *(a1 + 248) = v19;
  result = *v30;
  v21 = v30[1];
  *(a1 + 168) = v30[0];
  *(a1 + 184) = v21;
  *a1 = v3;
  *(a1 + 8) = v9;
  *(a1 + 16) = v17;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  *(a1 + 200) = v18;
  return result;
}

uint64_t sub_24E6CDA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = sub_24F929888();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F925988();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_24E600B40(v10, v12, v14 & 1);

  *&v34 = v15;
  *(&v34 + 1) = v17;
  v19 &= 1u;
  LOBYTE(v35) = v19;
  *(&v35 + 1) = v21;
  v22 = MEMORY[0x277CE0BD8];
  v23 = MEMORY[0x277CE0BC8];
  sub_24F9268B8();
  sub_24E600B40(v15, v17, v19);

  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v24 = v27;
  sub_24F9297A8();
  sub_24E601704(v33, &qword_27F2129B0);
  sub_24E601704(&v34, &qword_27F2129B0);
  *&v34 = v22;
  *(&v34 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  sub_24F925EE8();
  (*(v30 + 8))(v24, v32);
  return (*(v29 + 8))(v9, v25);
}

uint64_t sub_24E6CDD00@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218250);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v61 - v6;
  v66 = sub_24F91F4A8();
  v65 = *(v66 - 8);
  v7 = MEMORY[0x28223BE20](v66);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218258);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v75 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v61 - v13;
  v69 = sub_24F929888();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370);
  v72 = *(v73 - 8);
  v16 = MEMORY[0x28223BE20](v73);
  v71 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  v20 = *a1;
  v21 = a1[1];
  v67 = a1;
  v81 = v20;
  v82 = v21;
  sub_24E600AEC();

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  v27 = sub_24F925C98();
  v29 = v28;
  LOBYTE(a1) = v30;
  sub_24E600B40(v22, v24, v26 & 1);

  LODWORD(v81) = sub_24F9251C8();
  v31 = sub_24F925C58();
  v33 = v32;
  LOBYTE(v22) = v34;
  v36 = v35;
  sub_24E600B40(v27, v29, a1 & 1);

  v81 = v31;
  v82 = v33;
  LOBYTE(v27) = v22 & 1;
  v83 = v22 & 1;
  v84 = v36;
  memset(v80, 0, sizeof(v80));
  memset(v79, 0, sizeof(v79));
  sub_24F9297A8();
  sub_24E601704(v79, &qword_27F2129B0);
  sub_24E601704(v80, &qword_27F2129B0);
  v70 = v19;
  sub_24F925EE8();
  v37 = v67;
  (*(v68 + 8))(v15, v69);
  sub_24E600B40(v31, v33, v27);

  if (*(v37 + 3))
  {
    v38 = v64;
    sub_24F91F488();
    v39 = v65;
    v40 = v66;
    if ((*(v65 + 48))(v38, 1, v66) != 1)
    {
      v45 = v62;
      (*(v39 + 32))(v62, v38, v40);
      v46 = (*(v39 + 16))(v61, v45, v40);
      MEMORY[0x28223BE20](v46);
      *(&v61 - 2) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218268);
      v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218270);
      v48 = sub_24E6CF768();
      v81 = v47;
      v82 = v48;
      swift_getOpaqueTypeConformance2();
      v49 = v63;
      sub_24F925A88();
      (*(v39 + 8))(v45, v40);
      v43 = v76;
      v50 = v77;
      v44 = v74;
      (*(v76 + 32))(v74, v49, v77);
      v42 = v50;
      v41 = 0;
      goto LABEL_6;
    }

    sub_24E601704(v38, &qword_27F228530);
  }

  v41 = 1;
  v43 = v76;
  v42 = v77;
  v44 = v74;
LABEL_6:
  (*(v43 + 56))(v44, v41, 1, v42);
  v51 = v72;
  v52 = *(v72 + 16);
  v53 = v71;
  v54 = v70;
  v55 = v73;
  v52(v71, v70, v73);
  v56 = v75;
  sub_24E6CF6F0(v44, v75);
  v57 = v78;
  v52(v78, v53, v55);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218260);
  sub_24E6CF6F0(v56, &v57[*(v58 + 48)]);
  sub_24E601704(v44, &qword_27F218258);
  v59 = *(v51 + 8);
  v59(v54, v55);
  sub_24E601704(v56, &qword_27F218258);
  return (v59)(v53, v55);
}

uint64_t sub_24E6CE500(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218270);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9._countAndFlagsBits = 0xD000000000000024;
  v9._object = 0x800000024FA45D30;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v9, v10);
  sub_24E600AEC();
  sub_24F926EB8();
  v11 = *(a1 + 120);
  KeyPath = swift_getKeyPath();
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = qword_27F211278;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_27F2431D0;
  v16 = swift_getKeyPath();
  v17 = &v8[*(v6 + 36)];
  *v17 = v16;
  v17[1] = v15;

  sub_24F9248B8();
  sub_24E6CF768();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F218270);
}

uint64_t sub_24E6CE75C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v11[4] = v1[4];
  v11[5] = v3;
  v4 = v1[7];
  v11[6] = v1[6];
  v12 = v4;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  v7 = sub_24F924C98();
  v8 = v12;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218248);
  return sub_24E6CDD00(v11, (a1 + *(v9 + 44)));
}

uint64_t sub_24E6CE7D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingCrossUseConsentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6CE840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingCrossUseConsentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24E6CE8A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnboardingCrossUseConsentView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24E6CC4E4(v4, a1);
}

double sub_24E6CE924@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnboardingCrossUseConsentView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24E6CC944(v4, a1);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for OnboardingCrossUseConsentView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 40);

  if (*(v2 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  }

  v3 = v1[14];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[16];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923E98();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24E6CECC8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnboardingCrossUseConsentView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24E6CC9D8(v4, a1);
}

uint64_t sub_24E6CEDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E6CEE08(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_24E6CEE9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_24E6CEEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24E6CEF84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24E6CEFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E6CF038()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218188);
  sub_24E602068(&qword_27F218190, &qword_27F218188);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E6CF170()
{
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_24E6CF204()
{
  result = qword_27F2181E0;
  if (!qword_27F2181E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2181D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217338);
    sub_24E6A6234();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2181E0);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_24E6CF2E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24E6CF330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E6CF3B4()
{
  result = qword_27F218210;
  if (!qword_27F218210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218218);
    sub_24E602068(&qword_27F218220, &qword_27F218228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218210);
  }

  return result;
}

unint64_t sub_24E6CF470()
{
  result = qword_27F218230;
  if (!qword_27F218230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2181F0);
    sub_24E6CF4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218230);
  }

  return result;
}

unint64_t sub_24E6CF4FC()
{
  result = qword_27F218238;
  if (!qword_27F218238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2181C0);
    sub_24E6CF588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218238);
  }

  return result;
}

unint64_t sub_24E6CF588()
{
  result = qword_27F218240;
  if (!qword_27F218240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2181B8);
    sub_24E602068(&qword_27F2181E8, &qword_27F2181B0);
    sub_24E6CF670(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218240);
  }

  return result;
}

uint64_t sub_24E6CF670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6CF6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6CF768()
{
  result = qword_27F218278;
  if (!qword_27F218278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218270);
    sub_24E6AFC48();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218278);
  }

  return result;
}

uint64_t sub_24E6CF874()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2128D0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E6CF924(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24E6CF9E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for UpdateChallengePlayersToInviteAction()
{
  result = qword_27F218290;
  if (!qword_27F218290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6CFAD4()
{
  sub_24E6CFC10(319, &qword_27F2182A0);
  if (v0 <= 0x3F)
  {
    sub_24E6CFBC0();
    if (v1 <= 0x3F)
    {
      sub_24E6CFC10(319, &qword_27F2182B0);
      if (v2 <= 0x3F)
      {
        sub_24E6CFC68();
        if (v3 <= 0x3F)
        {
          sub_24F928AD8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E6CFBC0()
{
  if (!qword_27F2182A8)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2182A8);
    }
  }
}

void sub_24E6CFC10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24F92AEA8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24E6CFC68()
{
  if (!qword_27F2182B8)
  {
    sub_24E678D94();
    v0 = sub_24F9280E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2182B8);
    }
  }
}

uint64_t sub_24E6CFCC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2182F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6D077C();
  sub_24F92D128();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2182D0);
  sub_24E6D094C(&qword_27F2182F8, sub_24E6D09D0);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
    sub_24E6D0A24(&qword_27F212FC8, sub_24E607EB8);
    sub_24F92CD48();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    sub_24E6D0A9C(&qword_27F218308);
    sub_24F92CD48();
    LOBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
    sub_24E6D0B08(&qword_27F218310);
    sub_24F92CD48();
    type metadata accessor for UpdateChallengePlayersToInviteAction();
    LOBYTE(v11) = 4;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E6D0030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_24F928AD8();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2182C0);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = v18 - v6;
  updated = type metadata accessor for UpdateChallengePlayersToInviteAction();
  MEMORY[0x28223BE20](updated);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6D077C();
  v22 = v7;
  v11 = v24;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v5;
  v12 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2182D0);
  v28 = 0;
  sub_24E6D094C(&qword_27F2182D8, sub_24E6D07D0);
  v13 = v22;
  sub_24F92CC68();
  v18[2] = v25;
  *v10 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
  v28 = 1;
  sub_24E6D0A24(&qword_27F212FE8, sub_24E607FD8);
  sub_24F92CC68();
  *(v10 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  v28 = 2;
  sub_24E6D0A9C(&qword_27F2182E8);
  v18[1] = 0;
  sub_24F92CC68();
  v14 = a1;
  *(v10 + 2) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
  v28 = 3;
  sub_24E6D0B08(&qword_27F243830);
  sub_24F92CC68();
  v15 = v26;
  *(v10 + 24) = v25;
  *(v10 + 40) = v15;
  *(v10 + 7) = v27;
  LOBYTE(v25) = 4;
  sub_24E674184(&qword_27F254CB0);
  v16 = v24;
  sub_24F92CC68();
  (*(v12 + 8))(v13, v23);
  (*(v19 + 32))(&v10[*(updated + 32)], v16, v3);
  sub_24E6D088C(v10, v20);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24E6D08F0(v10);
}

unint64_t sub_24E6D05E0()
{
  v1 = *v0;
  v2 = 0x5473726579616C70;
  v3 = 0xD000000000000016;
  v4 = 0x65756E69746E6F63;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_24E6D06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6D0C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6D06D4(uint64_t a1)
{
  v2 = sub_24E6D077C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6D0710(uint64_t a1)
{
  v2 = sub_24E6D077C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E6D077C()
{
  result = qword_27F2182C8;
  if (!qword_27F2182C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2182C8);
  }

  return result;
}

unint64_t sub_24E6D07D0()
{
  result = qword_27F2182E0;
  if (!qword_27F2182E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2182E0);
  }

  return result;
}

uint64_t sub_24E6D0824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6D088C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateChallengePlayersToInviteAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24E6D08F0(uint64_t a1)
{
  updated = type metadata accessor for UpdateChallengePlayersToInviteAction();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_24E6D094C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2182D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E6D09D0()
{
  result = qword_27F218300;
  if (!qword_27F218300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218300);
  }

  return result;
}

uint64_t sub_24E6D0A24(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6D0A9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227A20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6D0B08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E6D0B6C()
{
  result = qword_27F218318;
  if (!qword_27F218318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218318);
  }

  return result;
}

unint64_t sub_24E6D0BC4()
{
  result = qword_27F218320;
  if (!qword_27F218320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218320);
  }

  return result;
}

unint64_t sub_24E6D0C1C()
{
  result = qword_27F218328;
  if (!qword_27F218328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218328);
  }

  return result;
}

uint64_t sub_24E6D0C70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000024FA45D80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5473726579616C70 && a2 == 0xEF657469766E496FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA45DA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 4;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E6D0EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = type metadata accessor for RefreshableGameHighlightsShelfIntent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  sub_24E6D4464(v22, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RefreshableGameHighlightsShelfIntent);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v9 + 32))(v19 + v17, v12, v8);
  sub_24E6D41DC(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_24F1D3DA4(0, 0, v15, &unk_24F948488, v19);
}

uint64_t sub_24E6D1158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent();
  v6[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358);
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v10 = sub_24F91F6B8();
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E6D1424, 0, 0);
}

uint64_t sub_24E6D1424()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[11];
  v9 = type metadata accessor for RefreshableGameHighlightsShelfIntent();
  v0[32] = v9;
  sub_24E6D4464(v8 + *(v9 + 28), v4, type metadata accessor for GSKShelf);
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  v10 = *(v2 + 8);
  v0[34] = v10;
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  sub_24F91F6A8();
  v0[7] = sub_24F91F668();
  v0[8] = v11;
  v0[36] = v11;
  (*(v6 + 8))(v5, v7);
  refreshed = type metadata accessor for FeedRefreshNotifier();
  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_24E6D15B4;

  return MEMORY[0x28217F228](v0 + 9, refreshed, refreshed);
}

uint64_t sub_24E6D15B4()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = sub_24E6D249C;
  }

  else
  {
    *(v2 + 312) = *(v2 + 56);
    v3 = sub_24E6D16D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24E6D16D8()
{
  v1 = v0[39];
  v2 = v0[36];
  v4 = v0[19];
  v3 = v0[20];
  v15 = v0[18];
  v5 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  v6 = v0[9];
  v0[40] = v6;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v2;

  sub_24F92B898();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v1;
  v9[5] = v2;
  (*(v5 + 104))(v13, *MEMORY[0x277D85778], v14);
  sub_24F92B928();

  sub_24F92B8F8();
  (*(v4 + 8))(v3, v15);
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_24E6D18E4;
  v11 = v0[21];

  return MEMORY[0x2822003E8](v0 + 46, 0, 0, v11);
}

uint64_t sub_24E6D18E4()
{

  return MEMORY[0x2822009F8](sub_24E6D19E0, 0, 0);
}

uint64_t sub_24E6D19E0()
{
  if (*(v0 + 368) == 1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 88);
    v7 = *v5;
    v6 = v5[1];
    v9 = v5[2];
    v8 = v5[3];
    sub_24E6D4464(v5 + *(*(v0 + 256) + 24), &v3[*(v4 + 24)], type metadata accessor for Player);
    v10 = *(v4 + 28);
    v11 = sub_24F928388();
    (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
    *v3 = v7;
    *(v3 + 1) = v6;
    *(v3 + 2) = v9;
    *(v3 + 3) = v8;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);

    v13 = swift_task_alloc();
    *(v0 + 336) = v13;
    *v13 = v0;
    v13[1] = sub_24E6D1C24;

    return MEMORY[0x28217F228](v0 + 16, v12, v12);
  }
}

uint64_t sub_24E6D1C24()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24E6D1F48;
  }

  else
  {
    v2 = sub_24E6D1D38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6D1D38()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[44] = v3;
  v4 = sub_24E6D4534(&qword_27F218360, type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24E6D1E34;
  v5 = v0[27];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24E6D1E34()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_24E6D2298;
  }

  else
  {
    v2 = sub_24E6D2144;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6D1F48()
{
  v1 = v0[43];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Unable to refresh game highlight shelf %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  sub_24E6D457C(v0[14], type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_24E6D18E4;
  v11 = v0[21];

  return MEMORY[0x2822003E8](v0 + 46, 0, 0, v11);
}

uint64_t sub_24E6D2144()
{
  v1 = v0[34];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24E6D4464(v5, v4, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v2, v3);
  sub_24E6D457C(v5, type metadata accessor for GSKShelf);
  sub_24E6D457C(v0[14], type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_24E6D18E4;
  v7 = v0[21];

  return MEMORY[0x2822003E8](v0 + 46, 0, 0, v7);
}

uint64_t sub_24E6D2298()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[45];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Unable to refresh game highlight shelf %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  sub_24E6D457C(v0[14], type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_24E6D18E4;
  v11 = v0[21];

  return MEMORY[0x2822003E8](v0 + 46, 0, 0, v11);
}

uint64_t sub_24E6D249C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6D2568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshStreamCancellables;
  result = swift_beginAccess();
  if (*(*(a2 + v7) + 16))
  {

    sub_24E76D644(a3, a4);
    if (v9)
    {

      sub_24F922F78();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24E6D2614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E6D2758, 0, 0);
}

uint64_t sub_24E6D2758()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v11 = *(v0 + 16);
  *(swift_task_alloc() + 16) = *(v0 + 24);
  type metadata accessor for GSKShelf();
  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v7);
  sub_24F92B928();

  (*(v4 + 16))(v1, v2, v3);
  sub_24E613678();
  sub_24F9280F8();
  (*(v4 + 8))(v2, v3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v8 - 8) + 56))(v11, 0, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24E6D2928()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for RefreshableGameHighlightsShelfIntent();
  v105 = *(*(v5 - 8) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = v0 + ((v3 + v4 + v105) & ~v105);

  v7 = v6 + *(v5 + 24);

  v8 = type metadata accessor for Player(0);
  v9 = v8[6];
  v10 = sub_24F9289E8();
  v11 = (*(v10 - 8) + 8);
  v106 = *(v10 - 8);
  v107 = *v11;
  (*v11)(v7 + v9, v10);

  if (*(v7 + v8[9] + 8) != 1)
  {
  }

  v12 = v7 + v8[13];
  v13 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v102 = v5;
    v14 = type metadata accessor for CallProviderConversationHandle();
    v15 = *(*(v14 - 8) + 48);
    if (!v15(v12, 1, v14))
    {

      v16 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v106 + 48))(v12 + v16, 1, v10))
      {
        v107(v12 + v16, v10);
      }
    }

    v17 = v12 + *(v13 + 20);
    if (!v15(v17, 1, v14))
    {

      v18 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v106 + 48))(v17 + v18, 1, v10))
      {
        v107(v17 + v18, v10);
      }
    }

    v5 = v102;
  }

  if (*(v7 + v8[15] + 8))
  {
  }

  v19 = v7 + v8[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v19, 1, PlayedTogetherInfo))
  {
    v103 = v5;

    v21 = type metadata accessor for Game();
    v107(v19 + v21[18], v10);
    v22 = v21[19];
    if (!(*(v106 + 48))(v19 + v22, 1, v10))
    {
      v107(v19 + v22, v10);
    }

    v23 = v21[21];
    v24 = sub_24F920818();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v5 = v103;
  }

  v26 = v7 + v8[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v26, 1, ChallengeInfo))
  {

    v28 = type metadata accessor for Game();
    v107(v26 + v28[18], v10);
    v29 = v28[19];
    if (!(*(v106 + 48))(v26 + v29, 1, v10))
    {
      v107(v26 + v29, v10);
    }

    v30 = v28[21];
    v31 = sub_24F920818();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v26 + v30, 1, v31))
    {
      (*(v32 + 8))(v26 + v30, v31);
    }
  }

  v33 = v6 + *(v5 + 28);
  v34 = sub_24F92AA48();
  (*(*(v34 - 8) + 8))(v33, v34);
  v35 = type metadata accessor for GSKShelf();
  v36 = v35[5];
  v37 = sub_24F929608();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v33 + v36, 1, v37))
  {
    (*(v38 + 8))(v33 + v36, v37);
  }

  v39 = v33 + v35[6];
  v40 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v41 = *(*(v40 - 1) + 48);
  if (!v41(v39, 1, v40))
  {

    v42 = v39 + v40[5];
    v43 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43))
    {
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v107(v42, v10);
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_31:
          v44 = v39 + v40[7];
          v45 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v47 = sub_24F928388();
              (*(*(v47 - 8) + 8))(v44, v47);
            }
          }

          v48 = v39 + v40[10];
          if (*(v48 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v48);
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v83 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v84 = type metadata accessor for JSColor();
        if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
        {
          v85 = sub_24F928388();
          (*(*(v85 - 8) + 8))(v83, v85);
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        if (!(*(v106 + 48))(v42, 1, v10))
        {
          v107(v42, v10);
        }

        if (*(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_42:
  v49 = type metadata accessor for HeaderPresentation(0);
  v50 = v39 + v49[5];
  if (v41(v50, 1, v40))
  {
    goto LABEL_59;
  }

  v104 = v10;

  v51 = v50 + v40[5];
  v52 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v52 - 8) + 48))(v51, 1, v52))
  {
    goto LABEL_44;
  }

  v55 = swift_getEnumCaseMultiPayload();
  if (v55 <= 2)
  {
    if (!v55)
    {

      v86 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v87 = type metadata accessor for JSColor();
      if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
      {
        v88 = sub_24F928388();
        (*(*(v88 - 8) + 8))(v86, v88);
      }

      goto LABEL_44;
    }

    if (v55 == 1)
    {
      if (!(*(v106 + 48))(v51, 1, v10))
      {
        v107(v51, v10);
      }

      if (*(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_44;
    }

    if (v55 != 2)
    {
      goto LABEL_44;
    }

LABEL_72:

    goto LABEL_44;
  }

  switch(v55)
  {
    case 3:
      goto LABEL_72;
    case 4:
      v107(v51, v10);
      break;
    case 5:
      goto LABEL_72;
  }

LABEL_44:
  v53 = v50 + v40[7];
  v54 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v56 = sub_24F928388();
      (*(*(v56 - 8) + 8))(v53, v56);
    }
  }

  v57 = v50 + v40[10];
  v10 = v104;
  if (*(v57 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

LABEL_59:
  v58 = v39 + v49[6];
  if (v41(v58, 1, v40))
  {
    goto LABEL_76;
  }

  v59 = v10;

  v60 = v58 + v40[5];
  v61 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v61 - 8) + 48))(v60, 1, v61))
  {
    goto LABEL_61;
  }

  v64 = swift_getEnumCaseMultiPayload();
  if (v64 <= 2)
  {
    if (!v64)
    {

      v89 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v90 = type metadata accessor for JSColor();
      if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
      {
        v91 = sub_24F928388();
        (*(*(v91 - 8) + 8))(v89, v91);
      }

      goto LABEL_61;
    }

    if (v64 == 1)
    {
      if (!(*(v106 + 48))(v60, 1, v10))
      {
        v107(v60, v10);
      }

      if (*(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_61;
    }

    if (v64 != 2)
    {
      goto LABEL_61;
    }

LABEL_110:

    goto LABEL_61;
  }

  switch(v64)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v107(v60, v10);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_61:
  v62 = v58 + v40[7];
  v63 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v65 = sub_24F928388();
      (*(*(v65 - 8) + 8))(v62, v65);
    }
  }

  v66 = v58 + v40[10];
  v10 = v59;
  if (*(v66 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

LABEL_76:
  v67 = v39 + v49[7];
  if (*(v67 + 56) == 1)
  {
  }

  else if (!*(v67 + 56))
  {

    if (*(v67 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v67 + 16);
    }
  }

  v68 = v39 + v49[8];
  v69 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
  {
    v74 = swift_getEnumCaseMultiPayload();
    if (v74 == 2)
    {
      goto LABEL_151;
    }

    if (v74 != 1)
    {
      if (v74)
      {
        goto LABEL_82;
      }

      v75 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v75 - 8) + 48))(v68, 1, v75))
      {
        goto LABEL_82;
      }

      v76 = swift_getEnumCaseMultiPayload();
      if (v76 > 2)
      {
        if (v76 != 3)
        {
          if (v76 == 4)
          {
            v107(v68, v10);
            goto LABEL_82;
          }

          if (v76 != 5)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_151;
      }

      if (v76)
      {
        if (v76 == 1)
        {
          if (!(*(v106 + 48))(v68, 1, v10))
          {
            v107(v68, v10);
          }

          if (!*(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_82;
          }
        }

        else if (v76 != 2)
        {
          goto LABEL_82;
        }

LABEL_151:

        goto LABEL_82;
      }

      v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_170:
      v99 = v68 + v98;
      v100 = type metadata accessor for JSColor();
      if (!(*(*(v100 - 8) + 48))(v99, 1, v100))
      {
        v101 = sub_24F928388();
        (*(*(v101 - 8) + 8))(v99, v101);
      }

      goto LABEL_82;
    }

    v77 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v78 = *(*(v77 - 8) + 48);
    if (v78(v68, 1, v77))
    {
LABEL_101:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v80 = v68 + *(v79 + 48);
      if (!v78(v80, 1, v77))
      {
        v81 = swift_getEnumCaseMultiPayload();
        if (v81 <= 2)
        {
          switch(v81)
          {
            case 0:

              v92 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v93 = type metadata accessor for JSColor();
              if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
              {
                v94 = sub_24F928388();
                (*(*(v94 - 8) + 8))(v92, v94);
              }

              goto LABEL_169;
            case 1:
              if (!(*(v106 + 48))(v80, 1, v10))
              {
                v107(v80, v10);
              }

              if (!*(v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_169;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_169;
          }

LABEL_163:

          goto LABEL_169;
        }

        switch(v81)
        {
          case 3:
            goto LABEL_163;
          case 4:
            v107(v80, v10);
            break;
          case 5:
            goto LABEL_163;
        }
      }

LABEL_169:
      v98 = *(v79 + 80);
      goto LABEL_170;
    }

    v82 = swift_getEnumCaseMultiPayload();
    if (v82 > 2)
    {
      if (v82 != 3)
      {
        if (v82 == 4)
        {
          v107(v68, v10);
          goto LABEL_101;
        }

        if (v82 != 5)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (!v82)
      {

        v95 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v96 = type metadata accessor for JSColor();
        if (!(*(*(v96 - 8) + 48))(v95, 1, v96))
        {
          v97 = sub_24F928388();
          (*(*(v97 - 8) + 8))(v95, v97);
        }

        goto LABEL_101;
      }

      if (v82 == 1)
      {
        if (!(*(v106 + 48))(v68, 1, v10))
        {
          v107(v68, v10);
        }

        if (*(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_101;
      }

      if (v82 != 2)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_101;
  }

LABEL_82:
  v70 = v33 + v35[13];
  if (*(v70 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v71 = v33 + v35[14];
  if (*(v71 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  v72 = v33 + v35[16];
  if (*(v72 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
  }

  return swift_deallocObject();
}

uint64_t sub_24E6D41DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RefreshableGameHighlightsShelfIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6D4240(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RefreshableGameHighlightsShelfIntent() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24E6D1158(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_24E6D43D4()
{

  return swift_deallocObject();
}

uint64_t sub_24E6D4420()
{

  return swift_deallocObject();
}

uint64_t sub_24E6D4464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6D44CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6D4534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6D457C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OfferButtonInfo.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24F928388();
  v9 = *(v32 - 8);
  v10 = MEMORY[0x28223BE20](v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v31 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  type metadata accessor for OfferDisplayProperties();
  v34 = a1;
  sub_24F928398();
  (*(v6 + 16))(v8, a2, v5);
  v17 = v33;
  v18 = OfferDisplayProperties.__allocating_init(deserializing:using:)(v16, v8);
  if (v17)
  {
    (*(v6 + 8))(a2, v5);
    return (*(v9 + 8))(v34, v32);
  }

  else
  {
    v28 = v12;
    v29 = v6;
    v20 = v9;
    v33 = v5;
    v21 = v32;
    *v30 = v18;
    type metadata accessor for Action();
    v22 = v31;
    v23 = v34;
    sub_24F928398();
    v24 = static Action.makeInstance(byDeserializing:using:)(v22, a2);
    v25 = *(v20 + 8);
    v26 = v21;
    v25(v31, v21);
    v30[1] = v24;
    v27 = v28;
    sub_24F928398();
    type metadata accessor for OfferButtonInfo();
    sub_24F928268();
    (*(v29 + 8))(a2, v33);
    v25(v23, v26);
    return (v25)(v27, v26);
  }
}

uint64_t type metadata accessor for OfferButtonInfo()
{
  result = qword_27F218368;
  if (!qword_27F218368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6D49EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24E6D4ABC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E6D4B6C()
{
  type metadata accessor for OfferDisplayProperties();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Action();
    if (v1 <= 0x3F)
    {
      sub_24E6D4C08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E6D4C08()
{
  if (!qword_27F218378)
  {
    sub_24F91F4A8();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218378);
    }
  }
}

uint64_t sub_24E6D4C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ChallengesReviewBaseInfo(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E6D4DAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ChallengesReviewBaseInfo(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ChallengesCustomizeView()
{
  result = qword_27F218380;
  if (!qword_27F218380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6D4F1C()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameActivityDraft(319);
    if (v1 <= 0x3F)
    {
      sub_24E6D5010(319, &qword_27F218390);
      if (v2 <= 0x3F)
      {
        sub_24E6D5010(319, &qword_27F218398);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ChallengesReviewBaseInfo(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E6D5010(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24F92B6E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_24E6D5078()
{
  v1 = sub_24F91F648();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v39 = &v37 - v5;
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - v6;
  v7 = type metadata accessor for Leaderboard(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + *(type metadata accessor for ChallengesCustomizeView() + 20));
  swift_getKeyPath();
  *&v43 = v17;
  v18 = sub_24E6D6F58();
  sub_24F91FD88();

  v19 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  swift_beginAccess();
  sub_24E60169C(v17 + v19, v13, &qword_27F212890);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_24E601704(v13, &qword_27F212890);
    return 0;
  }

  else
  {
    v37 = v18;
    v22 = v40;
    v21 = v41;
    v23 = v42;
    sub_24E6D70C0(v13, v10, type metadata accessor for Leaderboard);
    sub_24E601704(v13, &qword_27F212890);
    sub_24E6D70C0(&v10[*(v7 + 24)], v16, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24E6D7128(v10, type metadata accessor for Leaderboard);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
    if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
    {
      swift_getKeyPath();
      *&v43 = v17;
      sub_24F91FD88();

      v25 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 48);
      v26 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 56);
      v43 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32);
      v44 = v25;
      v45 = v26;
      return sub_24E6EE2E0();
    }

    else
    {
      v27 = v23;
      (*(v21 + 32))(v22, v16, v23);
      if (qword_27F2112E0 != -1)
      {
        swift_once();
      }

      v28 = qword_27F39E608;
      v29 = v38;
      sub_24F91F638();
      v30 = sub_24F91F598();
      v31 = *(v21 + 8);
      v31(v29, v27);
      v32 = v39;
      if (v30)
      {
        sub_24F91F638();
      }

      else
      {
        (*(v21 + 16))(v39, v22, v27);
      }

      v33 = sub_24F91F578();
      v31(v32, v27);
      v34 = sub_24F91F578();
      v35 = [v28 stringFromDate:v33 toDate:v34];

      if (v35)
      {
        v36 = sub_24F92B0D8();
      }

      else
      {
        v36 = 0;
      }

      v31(v22, v27);
      return v36;
    }
  }
}

uint64_t sub_24E6D55E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v193 = type metadata accessor for GameActivityCustomizePlayersRowView();
  v3 = MEMORY[0x28223BE20](v193);
  v178 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v187 = &v153 - v5;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183A8);
  MEMORY[0x28223BE20](v184);
  v175 = &v153 - v6;
  v7 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v7 - 8);
  v156 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for Leaderboard(0);
  v169 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v155 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  MEMORY[0x28223BE20](v10 - 8);
  v168 = &v153 - v11;
  v165 = type metadata accessor for GameActivityDraftGameInfo(0);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v154 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183B0);
  MEMORY[0x28223BE20](v181);
  v183 = &v153 - v13;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183B8);
  MEMORY[0x28223BE20](v182);
  v174 = &v153 - v14;
  v167 = type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2();
  v15 = MEMORY[0x28223BE20](v167);
  v172 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v166 = &v153 - v18;
  MEMORY[0x28223BE20](v17);
  v180 = &v153 - v19;
  v161 = type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  v20 = MEMORY[0x28223BE20](v161);
  v170 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v185 = &v153 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v23 - 8);
  v160 = &v153 - v24;
  v25 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v25 - 8);
  v179 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for ChallengesCustomizeLeaderboardRowView();
  v27 = MEMORY[0x28223BE20](v163);
  v173 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v162 = &v153 - v30;
  MEMORY[0x28223BE20](v29);
  v189 = (&v153 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v159 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v153 - v35;
  v37 = type metadata accessor for ChallengeDefinitionDetail(0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v186 = &v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183C0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v176 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v192 = &v153 - v43;
  v44 = type metadata accessor for ChallengesCustomizeView();
  v45 = *(a1 + *(v44 + 20));
  swift_getKeyPath();
  v46 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  v195 = v45;
  v47 = sub_24E6D6F58();
  sub_24F91FD88();
  v48 = a1;

  v49 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  sub_24E60169C(v45 + v49, v36, &qword_27F212A08);
  v50 = *(v38 + 48);
  v158 = v38 + 48;
  v157 = v50;
  v51 = v50(v36, 1, v37);
  v194 = v48;
  v188 = v44;
  v191 = v46;
  v190 = v47;
  if (v51 == 1)
  {
    v186 = v37;
    sub_24E601704(v36, &qword_27F212A08);
    sub_24E6D70C0(v48, v179, type metadata accessor for Player);
    swift_getKeyPath();
    v195 = v45;
    sub_24F91FD88();

    v52 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    v53 = v45 + v52;
    v54 = v160;
    sub_24E60169C(v53, v160, &qword_27F212B28);
    v55 = (*(v164 + 48))(v54, 1, v165);
    v153 = v49;
    if (v55)
    {
      sub_24E601704(v54, &qword_27F212B28);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v79 = v154;
      sub_24E6D70C0(v54, v154, type metadata accessor for GameActivityDraftGameInfo);
      sub_24E601704(v54, &qword_27F212B28);
      v56 = *(v79 + 16);
      v57 = *(v79 + 24);

      sub_24E6D7128(v79, type metadata accessor for GameActivityDraftGameInfo);
    }

    swift_getKeyPath();
    v195 = v45;
    sub_24F91FD88();

    v80 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
    swift_beginAccess();
    v81 = v163;
    v82 = v162;
    sub_24E60169C(v45 + v80, &v162[*(v163 + 24)], &qword_27F212890);
    sub_24E6D7058(v179, v82, type metadata accessor for Player);
    v83 = (v82 + *(v81 + 20));
    *v83 = v56;
    v83[1] = v57;
    *(v82 + *(v81 + 28)) = 0x4044000000000000;
    sub_24E6D7058(v82, v189, type metadata accessor for ChallengesCustomizeLeaderboardRowView);
    swift_getKeyPath();
    v195 = v45;
    sub_24F91FD88();

    v84 = v168;
    sub_24E60169C(v45 + v80, v168, &qword_27F212890);
    v85 = v171;
    if ((*(v169 + 48))(v84, 1, v171))
    {
      sub_24E601704(v84, &qword_27F212890);
      v86 = v194;
      v87 = v186;
    }

    else
    {
      v106 = v155;
      sub_24E6D70C0(v84, v155, type metadata accessor for Leaderboard);
      sub_24E601704(v84, &qword_27F212890);
      v107 = v106 + *(v85 + 24);
      v108 = v156;
      sub_24E6D70C0(v107, v156, type metadata accessor for Leaderboard.LeaderboardType);
      sub_24E6D7128(v106, type metadata accessor for Leaderboard);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
      v110 = (*(*(v109 - 8) + 48))(v108, 1, v109);
      v86 = v194;
      v87 = v186;
      if (v110 == 1)
      {
        goto LABEL_25;
      }

      v111 = sub_24F91F648();
      (*(*(v111 - 8) + 8))(v108, v111);
    }

    swift_getKeyPath();
    v195 = v45;
    sub_24F91FD88();

    v112 = v159;
    sub_24E60169C(v45 + v153, v159, &qword_27F212A08);
    v113 = v157(v112, 1, v87);
    sub_24E601704(v112, &qword_27F212A08);
    if (v113 == 1)
    {
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = v188;
LABEL_26:
      v118 = *(v86 + *(v117 + 28));

      v119 = sub_24E6D5078();
      v121 = v120;
      v122 = v173;
      sub_24E6D70C0(v189, v173, type metadata accessor for ChallengesCustomizeLeaderboardRowView);
      v123 = v175;
      sub_24E6D70C0(v122, v175, type metadata accessor for ChallengesCustomizeLeaderboardRowView);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183C8);
      v125 = (v123 + *(v124 + 48));
      *v125 = v114;
      v125[1] = v115;
      v125[2] = v116;
      v126 = (v123 + *(v124 + 64));
      *v126 = v45;
      v126[1] = v118;
      v126[2] = v119;
      v126[3] = v121;
      v186 = v121;
      v126[4] = 0x4044000000000000;

      sub_24E6D6FC0(v114);
      sub_24E6D7000(v114);
      sub_24E6D7128(v122, type metadata accessor for ChallengesCustomizeLeaderboardRowView);
      sub_24E60169C(v123, v183, &qword_27F2183A8);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F2183D0, &qword_27F2183B8);
      sub_24E602068(&qword_27F2183D8, &qword_27F2183A8);
      sub_24F924E28();
      sub_24E6D7000(v114);

      sub_24E601704(v123, &qword_27F2183A8);
      v105 = v194;
      sub_24E6D7128(v189, type metadata accessor for ChallengesCustomizeLeaderboardRowView);
      v72 = v187;
      goto LABEL_27;
    }

LABEL_25:
    v117 = v188;
    v115 = *(v86 + *(v188 + 24));
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v116 = 0x4044000000000000;
    v114 = v45;
    goto LABEL_26;
  }

  v58 = v186;
  sub_24E6D7058(v36, v186, type metadata accessor for ChallengeDefinitionDetail);
  v59 = *(v58 + *(v37 + 48));
  v60 = v48 + *(v44 + 32);
  v61 = v60 + *(type metadata accessor for ChallengesReviewBaseInfo(0) + 52);
  v179 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v62 = *(v179 + 24);
  v63 = v161;
  v64 = *(v161 + 36);
  v189 = v61;
  v65 = v185;
  sub_24E60169C(v61 + v62, &v185[v64], &unk_27F212718);
  *v65 = swift_getKeyPath();
  v65[40] = 0;
  v66 = v63[5];
  *&v65[v66] = swift_getKeyPath();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  *&v65[v63[6]] = v45;
  *&v65[v63[7]] = v59;
  *&v65[v63[8]] = 0x4044000000000000;
  v67 = v37;
  v68 = *(v58 + *(v37 + 40));
  v69 = *(v68 + 16);
  if (v69)
  {
    v195 = MEMORY[0x277D84F90];
    swift_retain_n();

    sub_24F457D8C(0, v69, 0);
    v70 = v195;
    v71 = (v68 + 32);
    v72 = v187;
    do
    {
      v73 = *v71;
      v195 = v70;
      v75 = *(v70 + 16);
      v74 = *(v70 + 24);

      if (v75 >= v74 >> 1)
      {
        sub_24F457D8C((v74 > 1), v75 + 1, 1);
        v70 = v195;
      }

      *(v70 + 16) = v75 + 1;
      v76 = v70 + 16 * v75;
      *(v76 + 32) = v73;
      *(v76 + 40) = 0;
      ++v71;
      --v69;
    }

    while (v69);
    v77 = v185;
    v78 = v186;
  }

  else
  {
    v77 = v65;
    v78 = v58;
    swift_retain_n();

    v70 = MEMORY[0x277D84F90];
    v72 = v187;
  }

  v88 = *(v78 + *(v67 + 44));
  v89 = *(v88 + 16);
  v90 = MEMORY[0x277D84F90];
  if (v89)
  {
    v195 = MEMORY[0x277D84F90];
    sub_24F457D8C(0, v89, 0);
    v90 = v195;
    v91 = (v88 + 32);
    do
    {
      v92 = *v91;
      v195 = v90;
      v94 = *(v90 + 16);
      v93 = *(v90 + 24);

      if (v94 >= v93 >> 1)
      {
        sub_24F457D8C((v93 > 1), v94 + 1, 1);
        v90 = v195;
      }

      *(v90 + 16) = v94 + 1;
      v95 = v90 + 16 * v94;
      *(v95 + 32) = v92;
      *(v95 + 40) = 1;
      ++v91;
      --v89;
    }

    while (v89);
    v72 = v187;
    v77 = v185;
  }

  v195 = v70;
  sub_24EA0A7B8(v90);
  v96 = v195;
  v97 = v167;
  v98 = v166;
  sub_24E60169C(v189 + *(v179 + 28), &v166[*(v167 + 36)], &unk_27F212718);
  *v98 = swift_getKeyPath();
  *(v98 + 40) = 0;
  v99 = v97[5];
  *(v98 + v99) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v98 + v97[6]) = v45;
  *(v98 + v97[7]) = v96;
  *(v98 + v97[8]) = 0x4044000000000000;
  v100 = v180;
  sub_24E6D7058(v98, v180, type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  v101 = v170;
  sub_24E6D70C0(v77, v170, type metadata accessor for ChallengesCustomizeTryRuleRowViewV2);
  v102 = v172;
  sub_24E6D70C0(v100, v172, type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  v103 = v174;
  sub_24E6D70C0(v101, v174, type metadata accessor for ChallengesCustomizeTryRuleRowViewV2);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183E8);
  sub_24E6D70C0(v102, v103 + *(v104 + 48), type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  sub_24E6D7128(v102, type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  sub_24E6D7128(v101, type metadata accessor for ChallengesCustomizeTryRuleRowViewV2);
  sub_24E60169C(v103, v183, &qword_27F2183B8);
  swift_storeEnumTagMultiPayload();
  sub_24E602068(&qword_27F2183D0, &qword_27F2183B8);
  sub_24E602068(&qword_27F2183D8, &qword_27F2183A8);
  sub_24F924E28();
  sub_24E601704(v103, &qword_27F2183B8);
  sub_24E6D7128(v180, type metadata accessor for ChallengesCustomizeTimeRuleRowViewV2);
  sub_24E6D7128(v77, type metadata accessor for ChallengesCustomizeTryRuleRowViewV2);
  sub_24E6D7128(v186, type metadata accessor for ChallengeDefinitionDetail);
  v105 = v194;
LABEL_27:
  sub_24E6D70C0(v105, v72, type metadata accessor for Player);
  swift_getKeyPath();
  v195 = v45;
  sub_24F91FD88();

  v127 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v45 + v127, v72 + *(v193 + 20), &qword_27F212B28);
  v128 = sub_24F34F43C();
  swift_getKeyPath();
  v195 = v45;
  sub_24F91FD88();

  v195 = v128;

  sub_24EA0A6C0(v129);
  v130 = sub_24F45D8C0(v195);

  v131 = *(v130 + 16);
  if (v131)
  {
    v132 = sub_24EAE67A0(*(v130 + 16), 0);
    v133 = sub_24EAE7DDC(&v195, v132 + 32, v131, v130);
    sub_24E6586B4();
    if (v133 == v131)
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  v132 = MEMORY[0x277D84F90];
LABEL_31:
  v189 = v132;
  swift_getKeyPath();
  v195 = v45;
  sub_24F91FD88();

  v134 = *(v45 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite);
  v135 = *(v134 + 16);
  if (!v135)
  {
    v136 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v136 = sub_24EAE678C(*(v134 + 16), 0);
  v137 = sub_24EAEAC9C(&v195, v136 + 4, v135, v134);

  result = sub_24E6586B4();
  if (v137 == v135)
  {
    v105 = v194;
LABEL_35:
    v139 = v188;
    v140 = v105 + *(v188 + 32);
    v141 = type metadata accessor for ChallengesReviewBaseInfo(0);
    v142 = v193;
    sub_24E6D70C0(v140 + v141[8], v72 + *(v193 + 32), type metadata accessor for ChallengesPlayerPickerPageInfo);
    sub_24E60169C(v140 + v141[9], v72 + v142[10], &qword_27F2169E8);
    sub_24E60169C(v140 + v141[10], v72 + v142[11], &qword_27F2169E8);
    v143 = v140 + v141[13];
    v144 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
    sub_24E60169C(v143 + *(v144 + 32), v72 + v142[12], &unk_27F212718);
    v145 = (v105 + *(v139 + 36));
    *(v72 + v142[6]) = v189;
    *(v72 + v142[7]) = v136;
    *(v72 + v142[9]) = 0x4044000000000000;
    v146 = (v72 + v142[13]);
    v147 = v145[1];
    *v146 = *v145;
    v146[1] = v147;
    v148 = v192;
    v149 = v176;
    sub_24E60169C(v192, v176, &qword_27F2183C0);
    v150 = v178;
    sub_24E6D70C0(v72, v178, type metadata accessor for GameActivityCustomizePlayersRowView);
    v151 = v177;
    sub_24E60169C(v149, v177, &qword_27F2183C0);
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183E0);
    sub_24E6D70C0(v150, v151 + *(v152 + 48), type metadata accessor for GameActivityCustomizePlayersRowView);
    sub_24E6D7128(v72, type metadata accessor for GameActivityCustomizePlayersRowView);
    sub_24E601704(v148, &qword_27F2183C0);
    sub_24E6D7128(v150, type metadata accessor for GameActivityCustomizePlayersRowView);
    return sub_24E601704(v149, &qword_27F2183C0);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6D6EFC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2183A0);
  return sub_24E6D55E4(v1, a1 + *(v3 + 44));
}

unint64_t sub_24E6D6F58()
{
  result = qword_27F212898;
  if (!qword_27F212898)
  {
    type metadata accessor for GameActivityDraft(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212898);
  }

  return result;
}

uint64_t sub_24E6D6FC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E6D7000(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E6D7058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6D70C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6D7128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E6D71EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24E6D72D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ReportPlayerProblemView()
{
  result = qword_27F218400;
  if (!qword_27F218400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6D73E8()
{
  sub_24E6D753C(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E6D74E4();
    if (v1 <= 0x3F)
    {
      sub_24E6D753C(319, &qword_27F218410, &qword_27F218418, &unk_24F948730, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E6D74E4()
{
  if (!qword_27F22C060)
  {
    sub_24F921B58();
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22C060);
    }
  }
}

void sub_24E6D753C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24E6D75BC()
{
  v1 = v0;
  v2 = type metadata accessor for ReportPlayerProblemView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218420);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218428);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - v10);
  v18 = *(v1 + *(v3 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218430);
  sub_24F926F38();
  if (v17)
  {
    *v11 = v17;
    swift_storeEnumTagMultiPayload();
    sub_24E632AD0();
    sub_24E6D8630();
    return sub_24F924E28();
  }

  else
  {
    sub_24F923798();
    sub_24E6D8428(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    sub_24E6D8490(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    v15 = &v8[*(v6 + 36)];
    sub_24F923AD8();
    sub_24F92B818();
    *v15 = &unk_24F9487B0;
    *(v15 + 1) = v14;
    sub_24E6D85C0(v8, v11);
    swift_storeEnumTagMultiPayload();
    sub_24E632AD0();
    sub_24E6D8630();
    sub_24F924E28();
    return sub_24E601704(v8, &qword_27F218420);
  }
}

uint64_t sub_24E6D7870(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24F92B7F8();
  *(v1 + 24) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E6D7908, v3, v2);
}

uint64_t sub_24E6D7908()
{

  sub_24E6D796C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_24E6D796C()
{
  v1 = type metadata accessor for ReportPlayerProblemView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  v5 = sub_24F92B098();
  [v4 setPlayerID_];

  v6 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  sub_24E6D8428(v0, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_24E6D8490(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  aBlock[4] = sub_24E6D8778;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6D8A60;
  aBlock[3] = &block_descriptor_6;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  v11 = [objc_opt_self() controllerForProblemPlayer:v10 completionHandler:v9];
  _Block_release(v9);
}

void sub_24E6D7B74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReportPlayerProblemView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24E6D8428(a3, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v10 = swift_allocObject();
    sub_24E6D8490(v8, v10 + v9);
    v23 = sub_24E6D8914;
    v24 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_24E6D8A60;
    v22 = &block_descriptor_11;
    v11 = _Block_copy(&aBlock);
    v12 = a1;

    [v12 setCompletionHandler_];
    _Block_release(v11);
    v13 = [objc_allocWithZone(MEMORY[0x277D0C808]) initWithRemoteUIController_];

    if (v13)
    {
      v14 = (a3 + *(v5 + 24));
      v15 = v14[1];
      aBlock = *v14;
      v16 = aBlock;
      v20 = v15;
      v18[1] = v13;

      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218430);
      sub_24F926F48();
    }
  }
}

uint64_t sub_24E6D7D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F92A6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F921B58();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F9289E8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_24F928AD8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_24F92A638();
  v34 = *(v16 - 8);
  v35 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928A98();
  if (a2)
  {
    v33 = a3;
    v19 = sub_24F92A628();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    if (qword_27F211570 != -1)
    {
      swift_once();
    }

    v30 = v9;
    v32 = qword_27F39EBA8;
    v20 = qword_27F211578;

    if (v20 != -1)
    {
      swift_once();
    }

    v31 = qword_27F39EBB8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
    sub_24F92A618();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v21 = qword_27F211580;

    if (v21 != -1)
    {
      swift_once();
    }

    sub_24F92A5D8();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_24F92A5F8();
    sub_24F9289D8();
    sub_24F92A5E8();
    sub_24F7695C8(&v41);
    if (*(&v42 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v22 = v35;
      v39 = v35;
      v40 = MEMORY[0x277D223B8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
      v24 = v34;
      (*(v34 + 16))(boxed_opaque_existential_1, v18, v22);
      type metadata accessor for ReportPlayerProblemView();
      v25 = v36;
      sub_24F76973C(v36);
      sub_24F9218A8();
      (*(v37 + 8))(v25, v30);
      (*(v24 + 8))(v18, v22);
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v38);
      return __swift_destroy_boxed_opaque_existential_1(&v41);
    }

    (*(v34 + 8))(v18, v35);
  }

  else
  {
    sub_24F92A678();
    sub_24F92A668();
    sub_24F7695C8(&v41);
    if (*(&v42 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v39 = v5;
      v40 = MEMORY[0x277D223D8];
      v26 = __swift_allocate_boxed_opaque_existential_1(v38);
      (*(v6 + 16))(v26, v8, v5);
      type metadata accessor for ReportPlayerProblemView();
      v27 = v36;
      sub_24F76973C(v36);
      sub_24F9218A8();
      (*(v37 + 8))(v27, v9);
      (*(v6 + 8))(v8, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v8, v5);
  }

  return sub_24E601704(&v41, &unk_27F212740);
}

uint64_t sub_24E6D8428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportPlayerProblemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6D8490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportPlayerProblemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6D84F4()
{
  v2 = *(type metadata accessor for ReportPlayerProblemView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24E6D7870(v0 + v3);
}

uint64_t sub_24E6D85C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6D8630()
{
  result = qword_27F218438;
  if (!qword_27F218438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218420);
    sub_24E6D86BC();
    sub_24E6D8720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218438);
  }

  return result;
}

unint64_t sub_24E6D86BC()
{
  result = qword_27F255080;
  if (!qword_27F255080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255080);
  }

  return result;
}

unint64_t sub_24E6D8720()
{
  result = qword_27F211A48;
  if (!qword_27F211A48)
  {
    sub_24F923AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F211A48);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for ReportPlayerProblemView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E6D892C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ReportPlayerProblemView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_24E6D89C4()
{
  result = qword_27F218440;
  if (!qword_27F218440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218448);
    sub_24E632AD0();
    sub_24E6D8630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218440);
  }

  return result;
}

uint64_t sub_24E6D8A88(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24E6D8C20(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesGameSuggestionLockup()
{
  result = qword_27F218450;
  if (!qword_27F218450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6D8DF0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E6D8F1C();
    if (v1 <= 0x3F)
    {
      sub_24F9289E8();
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24E61C938();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24E6D8F1C()
{
  if (!qword_27F218460)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218460);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24E6D8F8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24E6D8FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E6D9038()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24E6D9070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA45E50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24E6D9158(uint64_t a1)
{
  v2 = sub_24E6DCBCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6D9194(uint64_t a1)
{
  v2 = sub_24E6DCBCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6D91D0()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x73726174617661;
  }
}

uint64_t sub_24E6D9214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73726174617661 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xEC00000074786554)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E6D92F4(uint64_t a1)
{
  v2 = sub_24E6DCC74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6D9330(uint64_t a1)
{
  v2 = sub_24E6DCC74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6D937C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E6D9404(uint64_t a1)
{
  v2 = sub_24E6DCC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6D9440(uint64_t a1)
{
  v2 = sub_24E6DCC20();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_24E6D947C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24E6DC5CC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_24E6D94B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = v39 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v42);
  v43 = v39 - v5;
  v47 = sub_24F9289E8();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218548);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v39 - v9;
  v11 = type metadata accessor for ChallengesGameSuggestionLockup();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 36)];
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = v15;
  sub_24E61DA68(&v53, v15, qword_27F21B590);
  v17 = v11[10];
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v52 = v17;
  v19(&v14[v17], 1, 1, v18);
  v20 = v11[11];
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v50 = v20;
  v23 = v14;
  v22(&v14[v20], 1, 1, v21);
  v24 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24E6DC404();
  v48 = v10;
  v25 = v49;
  sub_24F92D108();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_24E601704(v16, qword_27F24EC90);
    sub_24E601704(&v14[v52], &qword_27F215440);
    return sub_24E601704(&v14[v50], &qword_27F213E68);
  }

  else
  {
    v49 = v7;
    v39[2] = v21;
    v26 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v54;
    *v14 = v53;
    *(v14 + 1) = v27;
    *(v14 + 4) = v55;
    v57 = 1;
    sub_24E6DC4B0();
    sub_24F92CC18();
    v28 = *(&v53 + 1);
    v29 = v54;
    v30 = BYTE8(v54);
    v39[0] = v54;
    v39[1] = v53;
    *(v14 + 5) = v53;
    *(v14 + 6) = v28;
    *(v14 + 7) = v29;
    v56 = v30;
    v14[64] = v30;
    LOBYTE(v53) = 2;
    sub_24E6DCD7C(&qword_27F214018, MEMORY[0x277D21C48]);
    v31 = v49;
    sub_24F92CC68();
    (*(v44 + 32))(v23 + v11[6], v31, v26);
    LOBYTE(v53) = 3;
    v32 = sub_24F92CC28();
    v33 = v45;
    v34 = (v23 + v11[7]);
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v53) = 4;
    *(v23 + v11[8]) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v57 = 5;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v53, v16, qword_27F24EC90);
    LOBYTE(v53) = 6;
    sub_24E65CAA0();
    v36 = v43;
    sub_24F92CC68();
    sub_24E61DA68(v36, v23 + v52, &qword_27F215440);
    LOBYTE(v53) = 7;
    sub_24E6DCD7C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v37 = v41;
    sub_24F92CC18();
    v49 = 0;
    (*(v33 + 8))(v48, v46);
    sub_24E61DA68(v37, v23 + v50, &qword_27F213E68);
    sub_24E6DC504(v23, v40, type metadata accessor for ChallengesGameSuggestionLockup);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24E6DC56C(v23, type metadata accessor for ChallengesGameSuggestionLockup);
  }
}

unint64_t sub_24E6D9D98()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6564616372417369;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 2)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E6D9E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6DD3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6D9EB0(uint64_t a1)
{
  v2 = sub_24E6DC404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6D9EEC(uint64_t a1)
{
  v2 = sub_24E6DC404();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E6D9F28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 36), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E6D9F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

unint64_t sub_24E6DA0E0()
{
  result = qword_27F218468;
  if (!qword_27F218468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218468);
  }

  return result;
}

uint64_t sub_24E6DA134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218488);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218490);
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218498);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  *v5 = sub_24F9249A8();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184A0);
  sub_24E6DA464(a1, &v5[*(v12 + 44)]);
  v13 = type metadata accessor for ChallengesGameSuggestionLockup();
  sub_24E60169C(a1 + *(v13 + 36), v30, qword_27F24EC90);
  sub_24E601704(v30, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v14 = sub_24F9248C8();
  __swift_project_value_buffer(v14, qword_27F39F078);
  sub_24E602068(&qword_27F2184A8, &qword_27F218488);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v5, &qword_27F218488);
  v15 = sub_24F925868();
  sub_24F923318();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v6 + 32))(v11, v8, v28);
  v24 = &v11[*(v9 + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = v29;
  sub_24E6DBFC0(v11, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184B0);
  *(v25 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24E6DA464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184C0);
  v7 = MEMORY[0x28223BE20](v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v9);
  v55 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v52 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v19 = type metadata accessor for ChallengesGameSuggestionLockup();
  v20 = *(v19 + 24);
  v21 = sub_24F9289E8();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v18, a1 + v20, v21);
  (*(v22 + 56))(v18, 0, 1, v21);
  v23 = type metadata accessor for GameIcon(0);
  v24 = v23[8];
  *&v18[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v18[v23[5]] = 1;
  v18[v23[6]] = 1;
  v18[v23[7]] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v25 = &v18[*(v14 + 44)];
  v26 = v59;
  *v25 = v58;
  *(v25 + 1) = v26;
  *(v25 + 2) = v60;
  v27 = sub_24F924C98();
  v28 = *(a1 + 64);
  if (v28 == 255 || (v28 & 1) != 0)
  {
    v29 = 0x3FF0000000000000;
  }

  else
  {
    v30 = v27;
    sub_24E6DC12C(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0);

    v27 = v30;
    v29 = 0x4008000000000000;
  }

  *v5 = v27;
  *(v5 + 1) = v29;
  v5[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184C8);
  sub_24E6DAA54(a1, &v5[*(v31 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v5, v11, &qword_27F2184B8);
  v33 = &v11[*(v6 + 36)];
  *v33 = KeyPath;
  v33[8] = 0;
  sub_24E6009C8(v11, v55, &qword_27F2184C0);
  sub_24E60169C(a1 + *(v19 + 36), v56, qword_27F24EC90);
  v34 = v57;
  sub_24E601704(v56, qword_27F21B590);
  if (v34)
  {
    v35 = sub_24F926DF8();
    v36 = sub_24F925898();
    v37 = swift_getKeyPath();
    v38 = sub_24F926D38();
    v39 = swift_getKeyPath();
    v51 = v35;
  }

  else
  {
    v51 = 0;
    v37 = 0;
    v36 = 0;
    v39 = 0;
    v38 = 0;
  }

  v40 = v52;
  sub_24E60169C(v18, v52, &qword_27F216760);
  v50 = v18;
  v41 = v54;
  v42 = v55;
  sub_24E60169C(v55, v54, &qword_27F2184C0);
  v43 = v53;
  sub_24E60169C(v40, v53, &qword_27F216760);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184D0);
  sub_24E60169C(v41, v43 + v44[12], &qword_27F2184C0);
  v45 = v43 + v44[16];
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = (v43 + v44[20]);
  v47 = v51;
  sub_24E6DC040(v51);
  sub_24E6DC0B0(v47);
  *v46 = v47;
  v46[1] = v37;
  v46[2] = v36;
  v46[3] = v39;
  v46[4] = v38;
  sub_24E601704(v42, &qword_27F2184C0);
  sub_24E601704(v50, &qword_27F216760);
  sub_24E6DC0B0(v47);
  sub_24E601704(v41, &qword_27F2184C0);
  return sub_24E601704(v40, &qword_27F216760);
}

uint64_t sub_24E6DAA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v85 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184E0);
  MEMORY[0x28223BE20](v87);
  v89 = (&v85 - v7);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184E8);
  MEMORY[0x28223BE20](v97);
  v90 = &v85 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184F0);
  MEMORY[0x28223BE20](v88);
  v86 = (&v85 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2184F8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v85 - v14;
  v16 = type metadata accessor for ChallengesGameSuggestionLockup();
  v101 = 0;
  v100 = 0;
  v98 = 0;
  v99 = 0;
  v17 = *(a1 + *(v16 + 32)) == 1;
  v102 = v15;
  if (v17)
  {
    v95 = v16;
    v91 = v4;
    v92 = v6;
    v96 = v13;
    v93 = a2;
    if (qword_27F211498 != -1)
    {
      swift_once();
    }

    v104 = xmmword_27F39E9F8;
    sub_24E600AEC();

    v18 = sub_24F925E18();
    v20 = v19;
    v22 = v21;
    sub_24F925A08();
    v23 = sub_24F925C98();
    v25 = v24;
    v27 = v26;

    sub_24E600B40(v18, v20, v22 & 1);

    sub_24F925938();
    v28 = sub_24F925B78();
    v30 = v29;
    v32 = v31;
    sub_24E600B40(v23, v25, v27 & 1);

    LODWORD(v104) = sub_24F9251C8();
    v33 = sub_24F925C58();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_24E600B40(v28, v30, v32 & 1);

    v101 = v33;
    v100 = v35;
    v98 = v37 & 1;
    sub_24E5FD138(v33, v35, v37 & 1);
    v99 = v39;

    a2 = v93;
    v13 = v96;
    v15 = v102;
    v6 = v92;
    v4 = v91;
    v16 = v95;
  }

  v40 = (a1 + *(v16 + 28));
  v41 = v40[1];
  *&v104 = *v40;
  *(&v104 + 1) = v41;
  sub_24E600AEC();

  v95 = sub_24F925E18();
  v94 = v42;
  LODWORD(v44) = v43;
  v96 = v45;
  v46 = *(a1 + 64);
  if (v46 == 255)
  {
    swift_storeEnumTagMultiPayload();
    sub_24E6DC16C();
    sub_24F924E28();
  }

  else
  {
    v47 = *(a1 + 40);
    v48 = *(a1 + 48);
    v49 = *(a1 + 56);
    if (v46)
    {
      *&v104 = v47;
      *(&v104 + 1) = v48;
      sub_24E6DC12C(v47, v48, v49, 1);
      v50 = sub_24F925E18();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      KeyPath = swift_getKeyPath();
      v91 = v4;
      v58 = KeyPath;
      v59 = sub_24F925A18();
      v92 = v6;
      v60 = v15;
      v61 = v13;
      v62 = v59;
      v63 = swift_getKeyPath();
      v93 = a2;
      v64 = v63;
      v54 &= 1u;
      LOBYTE(v104) = v54;
      v103[0] = 0;
      v65 = sub_24F9251C8();
      *&v104 = v50;
      *(&v104 + 1) = v52;
      LOBYTE(v105) = v54;
      *(&v105 + 1) = v56;
      *&v106 = v58;
      *(&v106 + 1) = 1;
      v107[0] = 0;
      *&v107[8] = v64;
      *&v107[16] = v62;
      v13 = v61;
      v15 = v60;
      *&v107[24] = v65;
      v66 = *v107;
      v67 = v89;
      v89[2] = v106;
      v67[3] = v66;
      *(v67 + 60) = *&v107[12];
      v68 = v105;
      *v67 = v104;
      v67[1] = v68;
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(&v104, v103, &qword_27F218518);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218518);
      sub_24E602068(&qword_27F218508, &qword_27F2184F0);
      sub_24E6DC224();
      v69 = v90;
      sub_24F924E28();
      sub_24E60169C(v69, v92, &qword_27F2184E8);
      swift_storeEnumTagMultiPayload();
      sub_24E6DC16C();
      sub_24F924E28();
      sub_24E601704(&v104, &qword_27F218518);
      v70 = v69;
      v71 = &qword_27F2184E8;
      a2 = v93;
    }

    else
    {
      sub_24E6DC12C(v47, v48, v49, 0);
      v72 = sub_24F9249A8();
      LODWORD(v93) = v44;
      v44 = v86;
      *v86 = v72;
      *(v44 + 8) = 0x4018000000000000;
      *(v44 + 16) = 0;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218538);
      sub_24E6DB470(v47, v48, v49, v44 + *(v73 + 44));

      sub_24E60169C(v44, v89, &qword_27F2184F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218518);
      sub_24E602068(&qword_27F218508, &qword_27F2184F0);
      sub_24E6DC224();
      v74 = v90;
      sub_24F924E28();
      sub_24E60169C(v74, v6, &qword_27F2184E8);
      swift_storeEnumTagMultiPayload();
      sub_24E6DC16C();
      sub_24F924E28();
      sub_24E601704(v74, &qword_27F2184E8);
      v70 = v44;
      LOBYTE(v44) = v93;
      v71 = &qword_27F2184F0;
    }

    sub_24E601704(v70, v71);
  }

  sub_24E60169C(v15, v13, &qword_27F2184F8);
  v75 = v101;
  v76 = v100;
  *a2 = v101;
  *(a2 + 8) = v76;
  v77 = v98;
  v78 = v99;
  *(a2 + 16) = v98;
  *(a2 + 24) = v78;
  v79 = v95;
  v80 = v94;
  *(a2 + 32) = v95;
  *(a2 + 40) = v80;
  *(a2 + 48) = v44 & 1;
  v81 = v13;
  v82 = v77;
  *(a2 + 56) = v96;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218530);
  sub_24E60169C(v81, a2 + *(v83 + 64), &qword_27F2184F8);
  sub_24E65D2B4(v75, v76, v82, v78);
  sub_24E5FD138(v79, v80, v44 & 1);

  sub_24E65D2F8(v75, v76, v82, v78);
  sub_24E601704(v102, &qword_27F2184F8);
  sub_24E601704(v81, &qword_27F2184F8);
  sub_24E600B40(v79, v80, v44 & 1);

  return sub_24E65D2F8(v75, v76, v82, v78);
}