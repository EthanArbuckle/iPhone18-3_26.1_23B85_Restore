uint64_t sub_10034C864(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v117 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_132:
    v10 = *v117;
    if (!*v117)
    {
      goto LABEL_170;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_134:
      v106 = *(v9 + 16);
      if (v106 >= 2)
      {
        while (1)
        {
          v107 = *v6;
          if (!*v6)
          {
            goto LABEL_168;
          }

          v6 = (v106 - 1);
          v108 = *(v9 + 16 * v106);
          v109 = v9;
          v110 = *(v9 + 16 * (v106 - 1) + 32);
          v9 = *(v9 + 16 * (v106 - 1) + 40);
          sub_10034D17C((v107 + 8 * v108), (v107 + 8 * v110), (v107 + 8 * v9), v10);
          if (v5)
          {
          }

          if (v9 < v108)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_10024C200(v109);
          }

          if (v106 - 2 >= *(v109 + 2))
          {
            goto LABEL_158;
          }

          v111 = &v109[16 * v106];
          *v111 = v108;
          *(v111 + 1) = v9;
          result = sub_10024C174(v106 - 1);
          v9 = v109;
          v106 = *(v109 + 2);
          v6 = a3;
          if (v106 <= 1)
          {
          }
        }
      }
    }

LABEL_164:
    result = sub_10024C200(v9);
    v9 = result;
    goto LABEL_134;
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  v10 = &selRef_bundleWithURL_;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    v118 = v8;
    if (v8 + 1 < v7)
    {
      v13 = *v6;
      v14 = v8 + 1;
      v15 = *(v13 + 8 * v12);
      v16 = *(v13 + 8 * v8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v15 classification] == 1)
      {
        v17 = -1;
      }

      else
      {
        v17 = [v15 classification];
      }

      if ([v16 classification] == 1)
      {
        v18 = -1;
      }

      else
      {
        v18 = [v16 classification];
      }

      v120 = v7;
      v113 = v9;
      v115 = v5;
      if (v17 == v18)
      {
        sub_10034B444();
        v20 = v19;
        sub_10034B444();
        v22 = v21;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v122 = v22 < v20;
      }

      else
      {
        if ([v15 classification] == 1)
        {
          v23 = -1;
        }

        else
        {
          v23 = [v15 classification];
        }

        if ([v16 classification] == 1)
        {
          v24 = -1;
        }

        else
        {
          v24 = [v16 classification];
        }

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v122 = v24 < v23;
        v7 = v120;
      }

      v9 = 8 * v118;
      v25 = (v13 + 8 * v118 + 16);
      v26 = 8 * v118 + 8;
      v12 = v14;
      while (1)
      {
        v6 = v12;
        v32 = v26;
        if (++v12 >= v7)
        {
LABEL_38:
          if (v122)
          {
            v38 = v118;
            v5 = v115;
            if (v12 < v118)
            {
              goto LABEL_161;
            }

            if (v118 >= v12)
            {
              v6 = a3;
              v9 = v113;
              v11 = v118;
              break;
            }

            do
            {
              if (v38 != v6)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_167;
                }

                v39 = *(v41 + v9);
                *(v41 + v9) = *(v41 + v32);
                *(v41 + v32) = v39;
              }

              v38 = (v38 + 1);
              v32 -= 8;
              v9 += 8;
              v40 = v38 < v6;
              v6 = (v6 - 1);
            }

            while (v40);
          }

          else
          {
            v5 = v115;
          }

          v11 = v118;
          v6 = a3;
          v9 = v113;
          break;
        }

        v124 = v12;
        v33 = *(v25 - 1);
        v34 = *v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if ([v34 classification] == 1)
        {
          v35 = -1;
        }

        else
        {
          v35 = [v34 classification];
        }

        if ([v33 classification] == 1)
        {
          if (v35 != -1)
          {
            goto LABEL_31;
          }
        }

        else if (v35 != [v33 classification])
        {
LABEL_31:
          if ([v34 classification] == 1)
          {
            v36 = -1;
          }

          else
          {
            v36 = [v34 classification];
          }

          if ([v33 classification] == 1)
          {
            v37 = -1;
          }

          else
          {
            v37 = [v33 classification];
          }

          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          v31 = v37 < v36;
          v7 = v120;
          goto LABEL_22;
        }

        sub_10034B444();
        v28 = v27;
        sub_10034B444();
        v30 = v29;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v31 = v30 < v28;
LABEL_22:
        ++v25;
        v26 = v32 + 8;
        v12 = v124;
        if (v122 != v31)
        {
          goto LABEL_38;
        }
      }
    }

    v42 = v6[1];
    if (v12 < v42)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_160;
      }

      if (v12 - v11 < a4)
      {
        break;
      }
    }

LABEL_81:
    if (v12 < v11)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v59 = *(v9 + 16);
    v58 = *(v9 + 24);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_10024A7E0((v58 > 1), v59 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v60;
    v61 = v9 + 16 * v59;
    *(v61 + 32) = v118;
    *(v61 + 40) = v12;
    v126 = v12;
    v62 = *v117;
    if (!*v117)
    {
      goto LABEL_169;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v9 + 32);
          v65 = *(v9 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_101:
          if (v67)
          {
            goto LABEL_148;
          }

          v80 = (v9 + 16 * v60);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_151;
          }

          v86 = (v9 + 32 + 16 * v63);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_154;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_155;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        v90 = (v9 + 16 * v60);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_115:
        if (v85)
        {
          goto LABEL_150;
        }

        v93 = v9 + 16 * v63;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_153;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_122:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
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
LABEL_149:
          __break(1u);
LABEL_150:
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
          goto LABEL_163;
        }

        if (!*v6)
        {
          goto LABEL_166;
        }

        v102 = v9;
        v103 = *(v9 + 32 + 16 * v101);
        v104 = *(v9 + 32 + 16 * v63);
        v9 = *(v9 + 32 + 16 * v63 + 8);
        sub_10034D17C((*v6 + 8 * v103), (*v6 + 8 * v104), (*v6 + 8 * v9), v62);
        if (v5)
        {
        }

        if (v9 < v103)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10024C200(v102);
        }

        if (v101 >= *(v102 + 2))
        {
          goto LABEL_145;
        }

        v105 = &v102[16 * v101];
        *(v105 + 4) = v103;
        *(v105 + 5) = v9;
        result = sub_10024C174(v63);
        v9 = v102;
        v60 = *(v102 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v9 + 32 + 16 * v60;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_146;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_147;
      }

      v75 = (v9 + 16 * v60);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_149;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_152;
      }

      if (v79 >= v71)
      {
        v97 = (v9 + 32 + 16 * v63);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_156;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_101;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v126;
    if (v126 >= v7)
    {
      goto LABEL_132;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_162;
  }

  if (v11 + a4 < v42)
  {
    v42 = v11 + a4;
  }

  if (v42 < v11)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v12 == v42)
  {
    goto LABEL_81;
  }

  v121 = v42;
  v114 = v9;
  v116 = v5;
  v43 = *v6;
  v44 = *v6 + 8 * v12 - 8;
  v45 = v11 - v12;
LABEL_60:
  v123 = v44;
  v125 = v12;
  v46 = *(v43 + 8 * v12);
  v47 = v45;
  while (1)
  {
    v48 = *v44;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v49 = [v46 classification] == 1 ? -1 : objc_msgSend(v46, "classification");
    if ([v48 classification] == 1)
    {
      if (v49 != -1)
      {
        goto LABEL_66;
      }
    }

    else if (v49 != [v48 classification])
    {
LABEL_66:
      if ([v46 classification] == 1)
      {
        v50 = -1;
      }

      else
      {
        v50 = [v46 classification];
      }

      if ([v48 classification] == 1)
      {
        v55 = -1;
      }

      else
      {
        v55 = [v48 classification];
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v55 < v50)
      {
        goto LABEL_76;
      }

LABEL_59:
      v12 = v125 + 1;
      v44 = v123 + 8;
      --v45;
      if (v125 + 1 == v121)
      {
        v6 = a3;
        v12 = v121;
        v9 = v114;
        v5 = v116;
        v11 = v118;
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    sub_10034B444();
    v52 = v51;
    sub_10034B444();
    v54 = v53;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v54 >= v52)
    {
      goto LABEL_59;
    }

LABEL_76:
    if (!v43)
    {
      break;
    }

    v56 = *v44;
    v46 = *(v44 + 8);
    *v44 = v46;
    *(v44 + 8) = v56;
    v44 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_59;
    }
  }

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
  return result;
}

uint64_t sub_10034D17C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 < 8 || v6 <= v7)
    {
      goto LABEL_67;
    }

    v30 = &selRef_bundleWithURL_;
LABEL_41:
    v45 = v6;
    v31 = v6 - 1;
    v32 = v5;
    v33 = v14;
    v47 = v31;
    while (1)
    {
      v35 = *--v33;
      v34 = v35;
      v36 = *v31;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v35 v30[57]] == 1)
      {
        v37 = -1;
      }

      else
      {
        v37 = [v34 v30[57]];
      }

      if ([v36 v30[57]] == 1)
      {
        if (v37 != -1)
        {
          goto LABEL_48;
        }
      }

      else if (v37 != [v36 v30[57]])
      {
LABEL_48:
        if ([v34 v30[57]] == 1)
        {
          v38 = -1;
        }

        else
        {
          v38 = [v34 v30[57]];
        }

        if ([v36 v30[57]] == 1)
        {
          v43 = -1;
        }

        else
        {
          v43 = [v36 v30[57]];
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v5 = v32 - 1;
        v29 = v43 < v38;
        v30 = &selRef_bundleWithURL_;
        if (v29)
        {
LABEL_60:
          if (v32 != v45)
          {
            *v5 = *v47;
          }

          if (v14 <= v4 || (v6 = v47, v47 <= v7))
          {
            v6 = v47;
            goto LABEL_67;
          }

          goto LABEL_41;
        }

        goto LABEL_58;
      }

      sub_10034B444();
      v40 = v39;
      sub_10034B444();
      v42 = v41;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v5 = v32 - 1;
      if (v42 < v40)
      {
        goto LABEL_60;
      }

LABEL_58:
      v31 = v47;
      if (v14 != v32)
      {
        *v5 = *v33;
      }

      v14 = v33;
      v32 = v5;
      if (v33 <= v4)
      {
        v14 = v33;
        v6 = v45;
        goto LABEL_67;
      }
    }
  }

  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v14 = &v4[v10];
  if (v8 >= 8 && v6 < v5)
  {
    v15 = &selRef_bundleWithURL_;
    v46 = v14;
    do
    {
      v16 = *v6;
      v17 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v16 v15[57]] == 1)
      {
        v18 = -1;
      }

      else
      {
        v18 = [v16 v15[57]];
      }

      if ([v17 v15[57]] == 1)
      {
        if (v18 == -1)
        {
          goto LABEL_20;
        }
      }

      else if (v18 == [v17 v15[57]])
      {
LABEL_20:
        sub_10034B444();
        v22 = v21;
        sub_10034B444();
        v24 = v23;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v24 >= v22)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      v19 = v4;
      if ([v16 v15[57]] == 1)
      {
        v20 = -1;
      }

      else
      {
        v20 = [v16 v15[57]];
      }

      v27 = v6;
      if ([v17 v15[57]] == 1)
      {
        v28 = -1;
      }

      else
      {
        v28 = [v17 v15[57]];
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v29 = v28 < v20;
      v6 = v27;
      v15 = &selRef_bundleWithURL_;
      v4 = v19;
      v14 = v46;
      if (!v29)
      {
LABEL_21:
        v25 = v4;
        v26 = v7 == v4++;
        if (v26)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v7 = *v25;
        goto LABEL_23;
      }

LABEL_32:
      v25 = v6;
      v26 = v7 == v6++;
      if (!v26)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v7;
    }

    while (v4 < v14 && v6 < v5);
  }

  v6 = v7;
LABEL_67:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_10034D5F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000462C(&unk_100527530, &qword_100527528, &unk_100459190);
          for (i = 0; i != v6; ++i)
          {
            sub_1001BC5A8(&qword_100527528, &unk_100459190);
            v9 = sub_10034D7A4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1001BC5A8(&qword_100525EE0, &qword_100458100);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10034D7A4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_10034D824;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10034D8D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10034D94C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10034D9A4(Swift::UInt32 *a1, Swift::UInt32 a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
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
    sub_10034DCEC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10034DA9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005275F0, &qword_1004591D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_10034DCEC(Swift::UInt32 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10034DA9C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10034DE48();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10034DF88(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for MRAVOutputDeviceType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10034DE48()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005275F0, &qword_1004591D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

uint64_t sub_10034DF88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005275F0, &qword_1004591D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

char *sub_10034E1A8(char *a1, int64_t a2, char a3)
{
  result = sub_10034E1C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034E1C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005275F8, &unk_1004591D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10034E2CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MRAVOutputDeviceType(0);
  sub_10034E8B8(&qword_1005275E8);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10034D9A4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_10034E364(void *a1)
{
  v1 = (*((swift_isaMask & *a1) + 0x70))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 outputDevices];

    if (v3)
    {
      sub_100013424();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
LABEL_15:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        if (!v5)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_15;
    }
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_7:
  result = sub_10034E1A8(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [specialized _ArrayBuffer._getElementSlowPath(_:)() deviceType];
      swift_unknownObjectRelease();
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10034E1A8((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v8;
    }
  }

  else
  {
    v11 = 32;
    do
    {
      v12 = [*(v4 + v11) deviceType];
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        v15 = v12;
        sub_10034E1A8((v13 > 1), v14 + 1, 1);
        v12 = v15;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v12;
      v11 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_21:

  v16 = sub_10034E2CC(_swiftEmptyArrayStorage);

  if (*(v16 + 16))
  {
    v17 = v16 + 56;
    v18 = *(v16 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(2u);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v16 + 32);
    v21 = v19 & ~v20;
    if ((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      v23 = 0x746F6F7465756C62;
      while (*(*(v16 + 48) + 4 * v21) != 2)
      {
        v21 = (v21 + 1) & v22;
        if (((*(v17 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v35 = 0xE900000000000068;
      goto LABEL_42;
    }

LABEL_26:
    if (*(v16 + 16))
    {
      v24 = *(v16 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(5u);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v16 + 32);
      v27 = v25 & ~v26;
      if ((*(v17 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        v23 = 0x6465726977;
        while (*(*(v16 + 48) + 4 * v27) != 5)
        {
          v27 = (v27 + 1) & v28;
          if (((*(v17 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v35 = 0xE500000000000000;
        goto LABEL_42;
      }

LABEL_31:
      if (*(v16 + 16))
      {
        v29 = *(v16 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(3u);
        v30 = Hasher._finalize()();
        v31 = -1 << *(v16 + 32);
        v32 = v30 & ~v31;
        if ((*(v17 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          v33 = ~v31;
          v23 = 0x79616C50726143;
          while (*(*(v16 + 48) + 4 * v32) != 3)
          {
            v32 = (v32 + 1) & v33;
            if (((*(v17 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v35 = 0xE700000000000000;
LABEL_42:

          type metadata accessor for RouteRecommendationSuppressionPolicy();
          v36 = sub_10038122C(v23, v35);
          v38 = v37;

          v39 = sub_1003810DC(v36, v38);

          return v39;
        }
      }
    }
  }

LABEL_36:

  v34 = *sub_10038108C();

  return v34;
}

uint64_t sub_10034E8B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MRAVOutputDeviceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10034E8FC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MRDRouteRecommendationSuppressionController_suppressors] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_10034E970(uint64_t *a1, uint64_t *a2)
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004508A0;
  type metadata accessor for RouteRecommendationPlayingStateSuppressor();
  sub_10034EA70(a2, v8);
  *(v5 + 32) = sub_100359E04(v8);
  type metadata accessor for RouteRecommendationLocalOutputContextSuppressor();
  *(v5 + 40) = sub_100230078();
  type metadata accessor for RouteRecommendationDisplayMonitorSuppressor();
  sub_10034EA70(a1, v8);
  *(v5 + 48) = sub_100359E04(v8);
  v6 = (*(v2 + 88))(v5);
  sub_100026A44(a2);
  sub_100026A44(a1);
  return v6;
}

uint64_t sub_10034EA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_BYTE *sub_10034EAD4(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR___MRDRouteRecommendationSuppressionController_suppressors);
  if (v4 >> 62)
  {
LABEL_15:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
            return v2;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        v2 = [v7 suppressionPolicyWithContext:a1];
        swift_unknownObjectRelease();
        if (v2[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress])
        {
          return v2;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  v10 = *sub_10038108C();

  return v10;
}

id sub_10034ECB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RouteRecommendationSuppressionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10034ED20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034ED14();
  *a2 = result;
  return result;
}

void sub_10034ED4C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice) = *a1;
  v3 = v2;
}

id sub_10034EDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034ED9C();
  *a2 = result;
  return result;
}

void sub_10034EDD4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice) = *a1;
  v3 = v2;
}

id sub_10034EE30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034EE24();
  *a2 = result;
  return result;
}

void sub_10034EE5C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10034EEB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034EEAC();
  *a2 = result;
  return result;
}

void sub_10034EEE4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = *a1;
  v3 = v2;
}

id sub_10034F164(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_eventName];
  *v6 = 0xD000000000000030;
  v6[1] = 0x8000000100441570;
  v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v7 = &v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10034F228(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_eventName];
  *v6 = 0xD000000000000030;
  v6[1] = 0x8000000100441570;
  v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10034F3F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_10034F43C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_10034F490())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10034F510()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004592D0;
  *(v2 + 32) = sub_10034ED14();
  *(v2 + 40) = sub_10034ED9C();
  *(v2 + 48) = sub_10034EE24();
  *(v2 + 56) = sub_10034EEAC();
  return v2;
}

id sub_10034F5A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034F59C();
  *a2 = result;
  return result;
}

void sub_10034F5D4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy) = *a1;
  v3 = v2;
}

id sub_10034F630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034F624();
  *a2 = result;
  return result;
}

void sub_10034F65C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10034F6B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034F6AC();
  *a2 = result;
  return result;
}

void sub_10034F6E4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10034F740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034F734();
  *a2 = result;
  return result;
}

void sub_10034F76C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext) = *a1;
  v3 = v2;
}

id sub_10034F7C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10034F7BC();
  *a2 = result;
  return result;
}

void sub_10034F7F4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = *a1;
  v3 = v2;
}

id sub_10034FB44(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics_eventName];
  *v6 = 0xD00000000000002ALL;
  v6[1] = 0x80000001004415F0;
  v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics_tracked] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10034FD2C()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateHostedEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_10034FD74(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateHostedEndpointAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_10034FDC8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_10034FE48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = 0x4974736575716572;
  *(inited + 40) = 0xE900000000000044;
  v7 = (v5 + *a3);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v8;

  v10 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
  return v10;
}

uint64_t sub_10034FF30()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10044F440;
  *(v2 + 32) = sub_10034F59C();
  *(v2 + 40) = sub_10034F624();
  *(v2 + 48) = sub_10034F6AC();
  *(v2 + 56) = sub_10034F734();
  *(v2 + 64) = sub_10034F7BC();
  return v2;
}

id sub_100350084@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350078();
  *a2 = result;
  return result;
}

void sub_1003500B0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10035010C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350100();
  *a2 = result;
  return result;
}

void sub_100350138(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_100350194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350188();
  *a2 = result;
  return result;
}

void sub_1003501C0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext) = *a1;
  v3 = v2;
}

id sub_10035021C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350210();
  *a2 = result;
  return result;
}

void sub_100350248(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID) = *a1;
  v3 = v2;
}

id sub_1003502A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350298();
  *a2 = result;
  return result;
}

void sub_1003502D0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent) = *a1;
  v3 = v2;
}

unint64_t sub_100350320()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4974736575716572;
  *(inited + 16) = xmmword_10044F530;
  *(inited + 40) = 0xE900000000000044;
  v3 = (v0 + OBJC_IVAR___MRDCreateEndpointAnalytics_requestID);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "operationType");
  *(inited + 94) = -4864;
  v6 = OBJC_IVAR___MRDCreateEndpointAnalytics_operationType;
  swift_beginAccess();
  v13 = *(v1 + v6);

  *(inited + 96) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000100441680;
  v8 = (v1 + OBJC_IVAR___MRDCreateEndpointAnalytics_operationTypeString);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v10;
  *(inited + 152) = v9;

  v11 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v11;
}

id sub_1003507DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics_operationType] = 0;
  v6 = &v2[OBJC_IVAR___MRDCreateEndpointAnalytics_operationTypeString];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = &v2[OBJC_IVAR___MRDCreateEndpointAnalytics_eventName];
  *v7 = 0xD000000000000024;
  v7[1] = 0x8000000100441650;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointAnalytics_tracked] = 0;
  v8 = &v2[OBJC_IVAR___MRDCreateEndpointAnalytics_requestID];
  *v8 = a1;
  v8[1] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1003509F8()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_100350A40(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateEndpointAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_100350A94())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100350B2C()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10044F440;
  *(v2 + 32) = sub_100350078();
  *(v2 + 40) = sub_100350100();
  *(v2 + 48) = sub_100350298();
  *(v2 + 56) = sub_100350188();
  *(v2 + 64) = sub_100350210();
  return v2;
}

id sub_100350DA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350D94();
  *a2 = result;
  return result;
}

void sub_100350DCC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices) = *a1;
  v3 = v2;
}

id sub_100350E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350E1C();
  *a2 = result;
  return result;
}

void sub_100350E54(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice) = *a1;
  v3 = v2;
}

id sub_100350EB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350EA4();
  *a2 = result;
  return result;
}

void sub_100350EDC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint) = *a1;
  v3 = v2;
}

id sub_100350F38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350F2C();
  *a2 = result;
  return result;
}

void sub_100350F64(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion) = *a1;
  v3 = v2;
}

id sub_100350FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100350FB4();
  *a2 = result;
  return result;
}

void sub_100350FEC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification) = *a1;
  v3 = v2;
}

id sub_100351048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10035103C();
  *a2 = result;
  return result;
}

void sub_100351074(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification) = *a1;
  v3 = v2;
}

uint64_t sub_1003510C4()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004592E0;
  *(v0 + 32) = sub_100350D94();
  *(v0 + 40) = sub_100350E1C();
  *(v0 + 48) = sub_100350EA4();
  *(v0 + 56) = sub_100350FB4();
  *(v0 + 64) = sub_100350F2C();
  *(v0 + 72) = sub_10035103C();
  return v0;
}

unint64_t sub_100351144()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4974736575716572;
  *(inited + 16) = xmmword_10044F530;
  *(inited + 40) = 0xE900000000000044;
  v2 = (v0 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100441700;
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal;
  swift_beginAccess();
  *(inited + 96) = *(v0 + v5);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x8000000100441720;
  v6 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfUndesiredDevices;
  swift_beginAccess();
  v11 = *(v0 + v6);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  v9 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v9;
}

id sub_10035167C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfUndesiredDevices] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfDevicesOnLocal] = 0;
  v6 = &v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_eventName];
  *v6 = 0xD00000000000002DLL;
  v6[1] = 0x80000001004416D0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification] = 0;
  v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_tracked] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1003518A4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1003518EC(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_100351940())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_100351BF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100351BE8();
  *a2 = result;
  return result;
}

void sub_100351C20(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader) = *a1;
  v3 = v2;
}

id sub_100351C7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100351C70();
  *a2 = result;
  return result;
}

void sub_100351CA8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint) = *a1;
  v3 = v2;
}

id sub_100351D04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100351CF8();
  *a2 = result;
  return result;
}

void sub_100351D30(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint) = *a1;
  v3 = v2;
}

id sub_100351D8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100351D80();
  *a2 = result;
  return result;
}

void sub_100351DB8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup) = *a1;
  v3 = v2;
}

unint64_t sub_100351E08()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4974736575716572;
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 40) = 0xE900000000000044;
  v2 = (v0 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_requestID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001004417B0;
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo;
  swift_beginAccess();
  *(inited + 96) = *(v0 + v5);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000001004417D0;
  v6 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader;
  swift_beginAccess();
  *(inited + 144) = *(v0 + v6);
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "airlayActive");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v7 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive;
  swift_beginAccess();
  v8 = *(v0 + v7);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = v8;

  v9 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v9;
}

id sub_100352254(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive] = 0;
  v6 = &v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_eventName];
  *v6 = 0xD000000000000037;
  v6[1] = 0x8000000100441770;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_tracked] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100352444()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_10035248C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_1003524E0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100352578()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004592D0;
  *(v2 + 32) = sub_100351BE8();
  v3 = sub_100351C70();
  v4 = *(v1 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint);
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v5 = v4;
  *(v2 + 56) = sub_100351D80();
  return v2;
}

id sub_100352BB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100352BA8();
  *a2 = result;
  return result;
}

void sub_100352BE0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint) = *a1;
  v3 = v2;
}

id sub_100352C3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100352C30();
  *a2 = result;
  return result;
}

void sub_100352C68(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology) = *a1;
  v3 = v2;
}

id sub_100352CC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100352CB8();
  *a2 = result;
  return result;
}

void sub_100352CF0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint) = *a1;
  v3 = v2;
}

id sub_100352D4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100352D40();
  *a2 = result;
  return result;
}

void sub_100352D78(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect) = *a1;
  v3 = v2;
}

id sub_100352DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100352DC8();
  *a2 = result;
  return result;
}

void sub_100352E00(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand) = *a1;
  v3 = v2;
}

uint64_t sub_100352E50()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  strcpy((inited + 32), "commandString");
  *(inited + 16) = xmmword_10044F550;
  *(inited + 46) = -4864;
  v3 = (v0 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_commandString);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x646E616D6D6F63;
  *(inited + 88) = 0xE700000000000000;
  v6 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  v26[19] = *(v1 + v6);

  *(inited + 96) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000100441860;
  v8 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(inited + 144) = *(v1 + v8);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000100441880;
  v9 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(inited + 192) = *(v1 + v9);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000015;
  *(inited + 232) = 0x80000001004418A0;
  v10 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(inited + 240) = *(v1 + v10);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000019;
  *(inited + 280) = 0x80000001004418C0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(inited + 288) = *(v1 + v11);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0xD000000000000021;
  *(inited + 328) = 0x80000001004418E0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  v13 = *(v1 + v12);
  *(inited + 360) = &type metadata for Int;
  *(inited + 336) = v13;
  v14 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v15 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_100353208();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = v14;
  sub_100356C10(v17, sub_100355B68, 0, isUniquelyReferenced_nonNull_native, v26);

  v19 = v26[0];
  v20 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = sub_1003534F8();

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v19;
  sub_100356C10(v22, sub_100355B68, 0, v23, &v25);

  return v25;
}

__CFString *sub_100353208()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100459300;
  *(inited + 32) = 0x7469736F706D6F63;
  *(inited + 40) = 0xEB000000006E6F69;
  v3 = MRAnalyticsCompositionForDeviceInfo();
  type metadata accessor for MRAnalyticsDeviceComposition(0);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000100441910;
  MRAnalyticsCompositionForDeviceInfo();
  v5 = MRAnalyticsDeviceCompositionDescription();
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v6;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x8000000100441930;
  v7 = [(__CFString *)v1 deviceUID];
  v8 = v7;
  if (v7)
  {
  }

  *(inited + 144) = v8 != 0;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x616C707269417369;
  *(inited + 184) = 0xEF65766974634179;
  *(inited + 192) = [(__CFString *)v1 isAirPlayActive];
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000010043C7A0;
  *(inited + 240) = [(__CFString *)v1 groupContainsDiscoverableGroupLeader];
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD00000000000001DLL;
  *(inited + 280) = 0x8000000100441950;
  *(inited + 288) = [(__CFString *)v1 parentGroupContainsDiscoverableGroupLeader];
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0x5472657473756C63;
  *(inited + 328) = 0xEB00000000657079;
  v9 = [(__CFString *)v1 clusterType];
  type metadata accessor for MRAVOutputDeviceClusterType(0);
  *(inited + 336) = v9;
  *(inited + 360) = v10;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000100441970;
  v11 = [(__CFString *)v1 clusterType];
  if (v11 <= 3)
  {
    v1 = off_1004CF118[v11];
    v12 = off_1004CF0F8[v11];
  }

  result = v1;
  if (result)
  {
    v14 = result;

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(inited + 408) = &type metadata for String;
    *(inited + 384) = v15;
    *(inited + 392) = v17;
    v18 = sub_10021F050(inited);
    swift_setDeallocating();
    sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
    swift_arrayDestroy();
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003534F8()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F530;
  *(inited + 32) = 0x4974736575716572;
  *(inited + 40) = 0xE900000000000044;
  v2 = [v0 requestID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  v6 = [v0 reason];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
  *(inited + 96) = v8;
  *(inited + 104) = v10;
  *(inited + 120) = v11;
  strcpy((inited + 128), "userInitiated");
  *(inited + 142) = -4864;
  v12 = [v0 userInitiated];
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v12;
  v13 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v13;
}

id sub_100353960(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002BLL;
  v13[1] = 0x8000000100441830;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details] = a1;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v9[v11] = a3;
  swift_beginAccess();
  *&v9[v12] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100353AF4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002BLL;
  v13[1] = 0x8000000100441830;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details] = a1;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v4[v11] = a3;
  swift_beginAccess();
  *&v4[v12] = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_100353DF4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_100353E3C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_100353E90())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100353F28()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10044F440;
  *(v2 + 32) = sub_100352BA8();
  *(v2 + 40) = sub_100352C30();
  *(v2 + 48) = sub_100352CB8();
  *(v2 + 56) = sub_100352D40();
  *(v2 + 64) = sub_100352DC8();
  return v2;
}

id sub_1003541A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t sub_100354228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

id sub_100354B28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100354B1C();
  *a2 = result;
  return result;
}

void sub_100354B54(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices) = *a1;
  v3 = v2;
}

id sub_100354BB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100354BA4();
  *a2 = result;
  return result;
}

void sub_100354BDC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands) = *a1;
  v3 = v2;
}

uint64_t sub_100354C2C()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  strcpy((inited + 32), "commandString");
  *(inited + 16) = xmmword_100459310;
  *(inited + 46) = -4864;
  v3 = (v0 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_commandString);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x646E616D6D6F63;
  *(inited + 88) = 0xE700000000000000;
  v6 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  v40[46] = *(v1 + v6);

  *(inited + 96) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000100441860;
  v8 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(inited + 144) = *(v1 + v8);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000100441880;
  v9 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(inited + 192) = *(v1 + v9);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000015;
  *(inited + 232) = 0x80000001004418A0;
  v10 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(inited + 240) = *(v1 + v10);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000019;
  *(inited + 280) = 0x80000001004418C0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(inited + 288) = *(v1 + v11);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0xD000000000000021;
  *(inited + 328) = 0x80000001004418E0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  *(inited + 336) = *(v1 + v12);
  *(inited + 360) = &type metadata for Int;
  *(inited + 368) = 0xD000000000000022;
  *(inited + 376) = 0x8000000100441A10;
  v13 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs;
  swift_beginAccess();
  *(inited + 384) = *(v1 + v13);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD00000000000001FLL;
  *(inited + 424) = 0x8000000100441A40;
  v14 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs;
  swift_beginAccess();
  *(inited + 432) = *(v1 + v14);
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = 0x8000000100441A60;
  v15 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints;
  swift_beginAccess();
  *(inited + 480) = *(v1 + v15);
  *(inited + 504) = &type metadata for Int;
  *(inited + 512) = 0xD000000000000018;
  *(inited + 520) = 0x8000000100441A80;
  v16 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout;
  swift_beginAccess();
  v17 = *(v1 + v16);
  *(inited + 552) = &type metadata for Int;
  *(inited + 528) = v17;
  *(inited + 560) = 0xD000000000000017;
  *(inited + 568) = 0x8000000100441AA0;
  v18 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout;
  swift_beginAccess();
  v19 = *(v1 + v18);
  *(inited + 600) = &type metadata for Int;
  *(inited + 576) = v19;
  *(inited + 608) = 0xD00000000000001ALL;
  *(inited + 616) = 0x8000000100441AC0;
  v20 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion;
  swift_beginAccess();
  v21 = *(v1 + v20);
  *(inited + 648) = &type metadata for Int;
  *(inited + 624) = v21;
  *(inited + 656) = 0xD000000000000018;
  *(inited + 664) = 0x8000000100441AE0;
  v22 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout;
  swift_beginAccess();
  v23 = *(v1 + v22);
  *(inited + 696) = &type metadata for Int;
  *(inited + 672) = v23;
  *(inited + 704) = 0xD00000000000001BLL;
  *(inited + 712) = 0x8000000100441B00;
  v24 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion;
  swift_beginAccess();
  v25 = *(v1 + v24);
  *(inited + 744) = &type metadata for Int;
  *(inited + 720) = v25;
  *(inited + 752) = 0x74756F656D6974;
  *(inited + 760) = 0xE700000000000000;
  v26 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  v27 = *(v1 + v26);
  *(inited + 792) = &type metadata for Double;
  *(inited + 768) = v27;
  v28 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v29 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v30 = *(v1 + v29);
  v31 = sub_100353208();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = v28;
  sub_100356C10(v31, sub_100355B68, 0, isUniquelyReferenced_nonNull_native, v40);

  v33 = v40[0];
  v34 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v35 = *(v1 + v34);
  v36 = sub_1003534F8();

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v33;
  sub_100356C10(v36, sub_100355B68, 0, v37, &v39);

  return v39;
}

id sub_1003553F8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002CLL;
  v13[1] = 0x80000001004419E0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details] = a1;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v9[v11] = a3;
  swift_beginAccess();
  *&v9[v12] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_1003555C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002CLL;
  v13[1] = 0x80000001004419E0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details] = a1;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v4[v11] = a3;
  swift_beginAccess();
  *&v4[v12] = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_1003558D4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_10035591C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_100355970())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_1003559E0()
{
  v0 = sub_10003D4B4(_swiftEmptyArrayStorage, &qword_100527A10, &unk_100459878, &qword_100527A08, &qword_100459870);
  KeyPath = swift_getKeyPath();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100355FE4(0xD000000000000015, 0x8000000100459300, KeyPath, isUniquelyReferenced_nonNull_native);

  v3 = swift_getKeyPath();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100355FE4(0x6D6D6F43646E6573, 0xEC00000073646E61, v3, v4);

  return v0;
}

uint64_t sub_100355B04()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004508B0;
  *(v2 + 32) = sub_100354B1C();
  *(v2 + 40) = sub_100354BA4();
  return v2;
}

uint64_t sub_100355B68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100020E0C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_100355BB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100527A10, &unk_100459878);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v37 = *v23;
      if ((v36 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_1001BC5A8(&qword_100527A08, &qword_100459870);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v37;
      v17[1] = v24;
      ++*(v8 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_100355E74()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527A10, &unk_100459878);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_100355FE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003D6A4(a3, &qword_100527A08, &qword_100459870);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100355BB4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10003D6A4(a3, &qword_100527A08, &qword_100459870);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1001BC5A8(&qword_100527A08, &qword_100459870);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100355E74();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  *(v22[6] + 8 * v11) = a3;
  v26 = (v22[7] + 16 * v11);
  *v26 = a1;
  v26[1] = a2;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_100356184@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100020E0C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1001C4088(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_1000038A4(v22, &qword_100527A18, &qword_100459888);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1003562E4()
{
  sub_1001BC5A8(&qword_100527AC0, &qword_100459D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x8000000100459460;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000020;
  *(inited + 72) = 0x8000000100459480;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001004594B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001004594D0;
  v1 = sub_10003D4B4(inited, &qword_100527AD0, &qword_100459DC8, &qword_100527AD8, &unk_100459DD0);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527AC8, &qword_100459DC0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356440()
{
  sub_1001BC5A8(&qword_100527AA0, &qword_100459C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "searchForBuddy");
  *(inited + 55) = -18;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD00000000000001ALL;
  *(inited + 72) = 0x8000000100459530;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001004594B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000013;
  *(inited + 120) = 0x8000000100459550;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000011;
  *(inited + 144) = 0x80000001004594D0;
  v1 = sub_10003D4B4(inited, &qword_100527AB0, &qword_100459D08, &qword_100527AB8, &qword_100459D10);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527AA8, &qword_100459D00);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1003565D0()
{
  sub_1001BC5A8(&qword_100527A80, &qword_100459B48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001004594B0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD00000000000001ALL;
  *(inited + 72) = 0x8000000100459530;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x8000000100459550;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001004594D0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000100459590;
  v1 = sub_10003D4B4(inited, &qword_100527A90, &qword_100459C20, &qword_100527A98, &qword_100459C28);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A88, &qword_100459C18);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356758()
{
  sub_1001BC5A8(&qword_100527A60, &qword_100459A38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x8000000100459300;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD00000000000001DLL;
  *(inited + 72) = 0x80000001004595D0;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "createEndpoint");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x8000000100459600;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD00000000000002FLL;
  *(inited + 144) = 0x8000000100459620;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000021;
  *(inited + 168) = 0x8000000100459650;
  v1 = sub_10003D4B4(inited, &qword_100527A70, &qword_100459B38, &qword_100527A78, &qword_100459B40);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A68, &qword_100459B30);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356910()
{
  sub_1001BC5A8(&qword_100527A40, &qword_100459978);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001004596B0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000017;
  *(inited + 72) = 0x80000001004596D0;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "createEndpoint");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "discoverGroup");
  *(inited + 126) = -4864;
  v1 = sub_10003D4B4(inited, &qword_100527A50, &qword_100459A28, &qword_100527A58, &qword_100459A30);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A48, &qword_100459A20);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356A84()
{
  sub_1001BC5A8(&qword_100527A20, &qword_100459890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001004596D0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000021;
  *(inited + 72) = 0x8000000100459730;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x8000000100442590;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656E6E6F63;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6D6D6F43646E6573;
  *(inited + 144) = 0xEB00000000646E61;
  v1 = sub_10003D4B4(inited, &qword_100527A30, &qword_100459968, &qword_100527A38, &qword_100459970);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A28, &qword_100459960);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_100356184(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_1001C4088(v46, v44);
  v14 = *a5;
  result = sub_10000698C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10022D3B0(v20, a4 & 1);
    v22 = *a5;
    result = sub_10000698C(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_10022DB84();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_100026A44(v26);
    sub_1001C4088(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1001C4088(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_100356184(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_1001C4088(v46, v44);
        v33 = *a5;
        result = sub_10000698C(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_10022D3B0(v37, 1);
          v38 = *a5;
          result = sub_10000698C(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_100026A44(v32);
          sub_1001C4088(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1001C4088(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_100356184(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_100045960();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003570C4()
{
  if (*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForCallToAction))
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForAutoRoute))
  {
    return 1;
  }

  return *(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForOneTapSuggestion);
}

id sub_100357378()
{
  result = [objc_allocWithZone(type metadata accessor for MRDMediaBundleManager()) init];
  qword_1005385A8 = result;
  return result;
}

uint64_t *sub_1003573A8()
{
  if (qword_100535B10 != -1)
  {
    swift_once();
  }

  return &qword_1005385A8;
}

uint64_t sub_10035750C(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDMediaBundleManager_bundles;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  static os_log_type_t.default.getter();
  v5 = *sub_1000045DC();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10044EC70;
  v7 = *(*(v1 + v3) + 16);
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  v8 = v5;
  os_log(_:dso:log:_:_:)();
}

void (*sub_100357608(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MRDMediaBundleManager_bundles;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100357690;
}

void sub_100357690(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    static os_log_type_t.default.getter();
    v6 = *sub_1000045DC();
    sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10044EC70;
    v8 = *(*(v5 + v4) + 16);
    *(v7 + 56) = &type metadata for Int;
    *(v7 + 64) = &protocol witness table for Int;
    *(v7 + 32) = v8;
    v9 = v6;
    os_log(_:dso:log:_:_:)();
  }

  free(v3);
}

uint64_t sub_1003577E4()
{
  v1 = *(v0 + OBJC_IVAR___MRDMediaBundleManager_mediaBundlesLock);
  os_unfair_lock_lock(v1 + 4);
  sub_100006EA4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_100357928()
{
  v1 = v0[24];

  v2 = v0[27];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100357A04()
{
  v1 = v0[28];

  v2 = v0[36];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100357AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001BC5A8(&qword_100527B38, &qword_100459DE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for IRMBBundle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1000038A4(a1, &qword_100527B38, &qword_100459DE8);
    sub_100358604(a2, a3, v10);

    return sub_1000038A4(v10, &qword_100527B38, &qword_100459DE8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1003592CC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100357CB8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100357FA4;
  }

  else
  {
    v3 = sub_100357DCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100357DCC()
{
  v20 = v0[14];
  v21 = v0[16];
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v17 = v0[6];
  v18 = v0[13];
  v19 = *(v2 + 16);
  v19(v4);
  (*(v2 + 56))(v4, 0, 1, v1);
  v6 = *((swift_isaMask & *v3) + 0xB0);

  v7 = v6(v0 + 2);
  sub_100357AE0(v4, v17, v5);
  v7(v0 + 2, 0);
  (v19)(v20, v18, v1);
  v8 = objc_allocWithZone(type metadata accessor for MRDBundleMediaRecommendationEligibility());
  v9 = sub_100008EC8(v20);

  (*(v2 + 8))(v18, v1);
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15(v9);
}

uint64_t sub_100357FA4()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  v6 = *(v0 + 8);
  v7 = *(v0 + 144);

  return v6();
}

uint64_t sub_1003581D0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001CDEF0;

  return sub_1000095F4(v5, v7);
}

void *sub_1003582A4(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x70))();
  if (*(v5 + 16) && (v6 = sub_10000698C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100358358(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003583EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100004E30();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100358774(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100358954(v21 + 1);
    }

    v19 = v8;
    sub_1001E45EC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100004E30();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100359668(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100358604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000698C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100006ABC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for IRMBBundle();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1003590E0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for IRMBBundle();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

Swift::Int sub_100358774(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100004E30();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100358954(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100358954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t *sub_100358B7C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100007BC4(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_100358D60(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for IRMBBundle();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100527BB0, &qword_100459F18);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_1003590E0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

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
      v19 = *(*(type metadata accessor for IRMBBundle() - 8) + 72);
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

uint64_t sub_1003592CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000698C(a2, a3);
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
      sub_100006ABC();
      goto LABEL_7;
    }

    sub_100358D60(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10000698C(a2, a3);
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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for IRMBBundle();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10035944C(v12, a2, a3, a1, v18);
}

uint64_t sub_10035944C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for IRMBBundle();
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

id sub_1003594FC()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527BA8, &qword_100459F10);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_100359668(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100358954(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1003597C8();
      goto LABEL_12;
    }

    sub_100359918(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100004E30();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1003597C8()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_100359918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

unint64_t sub_100359B2C(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100527BC8, &qword_100459F28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1001BC5A8(&qword_100527BB0, &qword_100459F18);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001D9AC(v10, v6, &qword_100527BC8, &qword_100459F28);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10000698C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for IRMBBundle();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100359D50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F34;

  return sub_1003581D0(v2, v3, v4);
}

uint64_t sub_100359E04(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_100359E48(a1, v2 + 16);
  return v2;
}

uint64_t sub_100359E48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_100359E60(void *a1)
{
  v3 = *((swift_isaMask & *a1) + 0x88);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v6 = v1[5];
    v7 = v1[6];
    sub_1000326D8(v1 + 2, v6);
    if ((*(v7 + 8))(v5, v6, v7) & 1) != 0 && ((*((swift_isaMask & *a1) + 0xB8))())
    {
      goto LABEL_8;
    }
  }

  v8 = (*((swift_isaMask & *a1) + 0x70))();
  if (v8)
  {
    v5 = v8;
    v9 = v1[5];
    v10 = v1[6];
    sub_1000326D8(v1 + 2, v9);
    if ((*(v10 + 8))(v5, v9, v10))
    {
      if ((*((swift_isaMask & *a1) + 0xA0))())
      {
LABEL_8:
        v11 = *sub_10038108C();

        return v11;
      }

      type metadata accessor for RouteRecommendationSuppressionPolicy();
      v21 = sub_100381214();
      v22 = *v21;
      v23 = v21[1];

      v11 = sub_1003810DC(v22, v23);

LABEL_18:

      return v11;
    }
  }

  v12 = v3();
  if (v12)
  {
    v13 = v12;
    v14 = v1[5];
    v15 = v1[6];
    sub_1000326D8(v1 + 2, v14);
    if ((*(v15 + 8))(v13, v14, v15))
    {
      type metadata accessor for RouteRecommendationSuppressionPolicy();
      v16 = sub_100381220();
      v17 = *v16;
      v18 = v16[1];

      v11 = sub_1003810DC(v17, v18);

      goto LABEL_18;
    }
  }

  v19 = *sub_10038108C();

  return v19;
}

uint64_t sub_10035A174()
{
  sub_100026A44((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10035A1D0()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100535BA8);
  sub_100015AFC(v0, qword_100535BA8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_10035A338(uint64_t a1)
{
  v30 = a1;
  v28[1] = swift_getObjectType();
  v29 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v28[2] = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session] = 0;
  v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_publicAssertion] = 0;
  v11 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer;
  v12 = *sub_1001D8C64();
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() bufferWithCapacity:10 category:v12 loggingPrefix:v13];

  *&v1[v11] = v14;
  swift_unknownObjectWeakAssign();
  sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for NearbySessionsAdvertiserImplementation();
  v31.receiver = v1;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, "init");
  v17 = qword_100535BA0;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100015AFC(v19, qword_100535BA8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    v24 = _typeName(_:qualified:)();
    v26 = sub_10002C9C8(v24, v25, &v32);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Initialize", v22, 0xCu);
    sub_100026A44(v23);
  }

  swift_unknownObjectRelease();
  return v18;
}

id sub_10035A83C()
{
  v1 = v0;
  swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask])
  {
    v2 = *&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask];

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask])
  {
    v3 = *&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask];

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100535BA8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Deinit", v7, 0xCu);
    sub_100026A44(v8);
  }

  v12 = type metadata accessor for NearbySessionsAdvertiserImplementation();
  v15.receiver = v1;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, "dealloc");
}

void sub_10035AB80(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v57 - v8;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100015AFC(v10, qword_100535BA8);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v58 = v9;
    v13 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v13 = 136315650;
    v57 = a3;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10002C9C8(v14, v15, &v61);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10002C9C8(0xD00000000000001DLL, 0x8000000100442ED0, &v61);
    *(v13 + 22) = 2080;
    if (a1)
    {
      v17 = [a1 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_10002C9C8(v18, v20, &v61);

    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] %s - %s", v13, 0x20u);
    swift_arrayDestroy();

    a3 = v57;
    v9 = v58;
  }

  else
  {
  }

  v22 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session;
  if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session))
  {
    sub_100360994();
    v23 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask;
    if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask))
    {
      v24 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask);

      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      Task.cancel()();

      v25 = *(a2 + v23);
    }

    *(a2 + v23) = 0;

    v26 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask;
    if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask))
    {
      v27 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask);

      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      Task.cancel()();

      v28 = *(a2 + v26);
    }

    *(a2 + v26) = 0;

    v29 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask;
    if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask))
    {
      v30 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask);

      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      Task.cancel()();

      v31 = *(a2 + v29);
    }

    *(a2 + v29) = 0;

    v32 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser);
    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser) = 0;

    v33 = *(a2 + v22);
  }

  *(a2 + v22) = a1;
  swift_unknownObjectRelease();
  v34 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  v59 = 0;
  v60 = 0xE000000000000000;
  swift_unknownObjectRetain();
  _StringGuts.grow(_:)(27);

  v61 = 91;
  v62 = 0xE100000000000000;
  v35._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v35);

  v36._object = 0x8000000100442E70;
  v36._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v36);
  if (a1)
  {
    v37 = [a1 identifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42 = String._bridgeToObjectiveC()();

    [v34 logInterpolatedString:v42];

    v43 = [swift_unknownObjectRetain() nearbyInvitation];
    if (v43)
    {
      v44 = *&v43[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];
      v45 = v43;

      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v44;
      v48[5] = v47;
      v48[6] = a3;

      v49 = sub_1001CB290(0, 0, v9, &unk_10045A180, v48);

      swift_unknownObjectRelease();
      v50 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask);
      *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask) = v49;
    }

    else
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v53._countAndFlagsBits = 91;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      v54._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 0xD000000000000032;
      v55._object = 0x8000000100442E90;
      String.append(_:)(v55);
      v59 = a1;
      sub_1001BC5A8(&qword_100527E88, &qword_10045A170);
      _print_unlocked<A, B>(_:_:)();
      v56 = String._bridgeToObjectiveC()();

      [v34 logErrorWithInterpolatedString:v56];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v51._countAndFlagsBits = 7104878;
    v51._object = 0xE300000000000000;
    String.append(_:)(v51);

    v58 = String._bridgeToObjectiveC()();

    [v34 logInterpolatedString:v58];
    v52 = v58;
  }
}

uint64_t sub_10035B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v13 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v6[23] = *(v14 + 64);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v15 = sub_1001BC5A8(&qword_100527E90, &qword_10045A188);
  v6[26] = v15;
  v16 = *(v15 - 8);
  v6[27] = v16;
  v17 = *(v16 + 64) + 15;
  v6[28] = swift_task_alloc();
  v18 = sub_1001BC5A8(&qword_100527E98, &qword_10045A190);
  v6[29] = v18;
  v19 = *(v18 - 8);
  v6[30] = v19;
  v20 = *(v19 + 64) + 15;
  v6[31] = swift_task_alloc();
  v21 = sub_1001BC5A8(&qword_100527EA0, &qword_10045A198);
  v6[32] = v21;
  v22 = *(v21 - 8);
  v6[33] = v22;
  v23 = *(v22 + 64) + 15;
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_10035B58C, 0, 0);
}

uint64_t sub_10035B58C()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[12];
  v9 = v0[13];
  dispatch thunk of NearbyInvitation.$pendingMembers.getter();
  sub_10000462C(&qword_100527EA8, &qword_100527E98, &qword_10045A190);
  Publisher<>.values.getter();
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  swift_beginAccess();
  v0[35] = &_swiftEmptySetSingleton;
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_10035B718;
  v11 = v0[34];

  return sub_10035BEF8(0, 0);
}

uint64_t sub_10035B718(uint64_t a1)
{
  v3 = *(*v2 + 288);
  v5 = *v2;
  *(*v2 + 296) = a1;

  if (!v1)
  {

    return _swift_task_switch(sub_10035B82C, 0, 0);
  }

  return result;
}

uint64_t sub_10035B82C()
{
  v62 = v0;
  v1 = v0[37];
  if (!v1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);
LABEL_7:
    v6 = v0[34];
    v5 = v0[35];
    v7 = v0[31];
    v8 = v0[28];
    v10 = v0[24];
    v9 = v0[25];
    v11 = v0[20];
    v12 = v0[17];

    v13 = v0[1];

    return v13();
  }

  v2 = v0[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);

    goto LABEL_7;
  }

  v3 = v0[35];
  if (*(v3 + 16) <= v1[2] >> 3)
  {
    v61 = v1;

    sub_1003679A4(v3);

    v4 = v1;
  }

  else
  {

    v4 = sub_100367DEC(v3, v1);
  }

  if (qword_100535BA0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_100535BA8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v48 = v1;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[21];
    v19 = v0[14];
    v20 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, &v61);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80);
    v24 = Set.description.getter();
    v26 = sub_10002C9C8(v24, v25, &v61);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] New pending members: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v27 = 0;
  v53 = v4;
  v29 = *(v4 + 56);
  v4 += 56;
  v28 = v29;
  v30 = -1;
  v31 = -1 << *(v4 - 24);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v32 = v30 & v28;
  v51 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue;
  v33 = (63 - v31) >> 6;
  v49 = v4;
  v50 = v33;
  if ((v30 & v28) != 0)
  {
    while (1)
    {
      v34 = v27;
LABEL_22:
      v36 = v0[24];
      v35 = v0[25];
      v37 = v0[22];
      v38 = v0[21];
      v54 = v0[20];
      v59 = v0[19];
      v60 = v0[18];
      v58 = v0[16];
      v56 = v0[17];
      v57 = v0[15];
      v39 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      (*(v37 + 16))(v35, *(v53 + 48) + *(v37 + 72) * (v39 | (v34 << 6)), v38);
      v55 = *&Strong[v51];
      v40 = *(v37 + 32);
      v40(v36, v35, v38);
      v41 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = Strong;
      v40(v42 + v41, v36, v38);
      v0[6] = sub_10036C2A0;
      v0[7] = v42;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100003D98;
      v0[5] = &unk_1004CF928;
      v43 = _Block_copy(v0 + 2);
      v44 = Strong;
      static DispatchQoS.unspecified.getter();
      v0[11] = _swiftEmptyArrayStorage;
      v4 = sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v1 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v43);
      (*(v58 + 8))(v56, v57);
      (*(v59 + 8))(v54, v60);
      v45 = v0[7];

      v33 = v50;
      if (!v32)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v34 >= v33)
    {
      break;
    }

    v32 = *(v49 + 8 * v34);
    ++v27;
    if (v32)
    {
      v27 = v34;
      goto LABEL_22;
    }
  }

  v0[35] = v48;
  v46 = swift_task_alloc();
  v0[36] = v46;
  *v46 = v0;
  v46[1] = sub_10035B718;
  v47 = v0[34];

  return (sub_10035BEF8)(0, 0);
}

uint64_t sub_10035BEF8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100527EA0, &qword_10045A198);
  v4 = sub_10000462C(&qword_100527ED0, &qword_100527EA0, &qword_10045A198);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1001CABFC;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_10035BFF0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100527E50, &qword_10045A150);
  v4 = sub_10000462C(&qword_100527E80, &qword_100527E50, &qword_10045A150);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_10035C0E8;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_10035C0E8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_10036C38C;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_10036C390;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_10035C278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10001D9AC(a3, v24 - v10, &qword_100521B60, &qword_10044F1A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000038A4(v11, &qword_100521B60, &qword_10044F1A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1001BC5A8(&qword_100527E30, &qword_10045A100);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  sub_1001BC5A8(&qword_100527E30, &qword_10045A100);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10035C5B4()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = ObjectType;
  aBlock[4] = sub_10036C064;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF810;
  v12 = _Block_copy(aBlock);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v16);
}

void sub_10035C890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v68 - v6);
  v8 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  if (v8)
  {
    v9 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
    v10 = [swift_unknownObjectRetain() nearbyInvitation];
    if (v10)
    {
      v73 = v7;
      v11 = v10;
      v12 = *&v10[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];

      v13 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
      v74[0] = 91;
      v74[1] = 0xE100000000000000;
      v14._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 8285;
      v15._object = 0xE200000000000000;
      String.append(_:)(v15);
      v16._object = 0x8000000100442DB0;
      v16._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 2108704;
      v17._object = 0xE300000000000000;
      String.append(_:)(v17);
      v18 = [v8 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23 = String._bridgeToObjectiveC()();

      [v13 logInterpolatedString:v23];

      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising) = 1;
      if (MSVDeviceIsAudioAccessory())
      {
        v24 = objc_allocWithZone(type metadata accessor for NearbyInvitationParameters());
        LOBYTE(v74[0]) = 0;
        v25 = NearbyInvitationParameters.init(serviceName:browserType:route:)();
      }

      else
      {
        v25 = 0;
      }

      v39 = [v8 routeType];
      v72 = a2;
      v40 = v8;
      if (v39 <= 0xB)
      {
        v41 = byte_10045A1C2[v39];
      }

      v42 = sub_1001BC5A8(&qword_100527E38, &qword_10045A108);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v71 = v25;
      v45 = v12;

      v46 = NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:params:)();
      v47 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser);
      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser) = v46;

      v74[0] = v46;
      v48 = String.init<A>(describing:)();
      v50 = v49;
      v51 = type metadata accessor for TaskPriority();
      v52 = *(v51 - 8);
      v69 = *(v52 + 56);
      v70 = v52 + 56;
      v53 = v73;
      v69(v73, 1, 1, v51);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v55[2] = 0;
      v55[3] = 0;
      v55[4] = v54;
      v55[5] = v46;
      v55[6] = v48;
      v55[7] = v50;
      v56 = v72;
      v55[8] = v45;
      v55[9] = v56;

      v57 = sub_1001CB290(0, 0, v53, &unk_10045A128, v55);
      v58 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask);
      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask) = v57;

      v59 = [v40 identifier];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v69(v53, 1, 1, v51);
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      v64[2] = 0;
      v64[3] = 0;
      v64[4] = v60;
      v64[5] = v62;
      v64[6] = v46;
      v64[7] = v63;
      v64[8] = v56;

      v65 = sub_1001CB290(0, 0, v53, &unk_10045A138, v64);

      swift_unknownObjectRelease();
      v66 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask);
      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask) = v65;

      return;
    }

    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100015AFC(v32, qword_100535BA8);
    v73 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v74[0] = v35;
      *v34 = 136315138;
      v36 = _typeName(_:qualified:)();
      v38 = sub_10002C9C8(v36, v37, v74);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v73, v33, "[%s] No invitation to begin advertising.", v34, 0xCu);
      sub_100026A44(v35);

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100015AFC(v26, qword_100535BA8);
    v73 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v27))
    {
      v28 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = _typeName(_:qualified:)();
      v31 = sub_10002C9C8(v29, v30, v74);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10002C9C8(0xD000000000000012, 0x8000000100442DB0, v74);
      _os_log_impl(&_mh_execute_header, v73, v27, "[%s] %s - No session to begin advertising.", v28, 0x16u);
      swift_arrayDestroy();

LABEL_13:

      return;
    }
  }

  v67 = v73;
}

uint64_t sub_10035D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v10;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  return _swift_task_switch(sub_10035D054, 0, 0);
}

uint64_t sub_10035D054()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    static Task<>.checkCancellation()();
    v5 = *(&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start() + 1);
    v8 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start());
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10035D180;
    v7 = v0[11];

    return v8();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10035D180()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10035D81C;
  }

  else
  {
    v3 = sub_10035D294;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10035D294()
{
  v21 = v0;
  if (static Task<>.isCancelled.getter())
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v1 = v0[13];
    v2 = type metadata accessor for Logger();
    sub_100015AFC(v2, qword_100535BA8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[16];
    if (v5)
    {
      v7 = v0[15];
      v9 = v0[12];
      v8 = v0[13];
      v10 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v10 = 136315394;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10002C9C8(v11, v12, &v20);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_10002C9C8(v9, v8, &v20);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Start advertising task was cancelled before completing with %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = *(&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:) + 1);
    v19 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:) + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:));
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_10035D508;
    v18 = v0[11];

    return v19(2);
  }
}

uint64_t sub_10035D508(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_10035DA44;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_10035D630;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10035D630()
{
  v1 = v0[16];
  v2 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_publicAssertion);
  *(v1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_publicAssertion) = v0[21];

  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  v8 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  _StringGuts.grow(_:)(45);

  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  v10._object = 0x8000000100442E00;
  v10._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v10);
  v0[9] = v6;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 544108320;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v7;
  v13._object = v5;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v8 logInterpolatedString:{v14, 91, 0xE100000000000000}];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10035D81C()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v19 = v0[13];
  v5 = v0[12];
  v6 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  _StringGuts.grow(_:)(57);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v7._countAndFlagsBits = 91;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v8);

  v9._object = 0x8000000100442DD0;
  v9._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v9);
  v0[7] = v4;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 544108320;
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = v19;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8250;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v0[8] = v1;
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  _print_unlocked<A, B>(_:_:)();
  v14 = v0[5];
  v15 = v0[6];
  v16 = String._bridgeToObjectiveC()();

  [v6 logErrorWithInterpolatedString:v16];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10035DA44()
{
  v34 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100535BA8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = v0[15];
    v9 = v0[12];
    v31 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v32);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10002C9C8(v9, v31, &v32);
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v11 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to make public advertiser assertion for %s: %@", v10, 0x20u);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[14];
  v20 = v0[12];
  v21 = *&v17[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  v32 = 0;
  v33 = 0xE000000000000000;
  v22 = v21;
  _StringGuts.grow(_:)(45);

  v32 = 91;
  v33 = 0xE100000000000000;
  v23._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v23);

  v24._object = 0x8000000100442E00;
  v24._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v24);
  v0[9] = v19;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 544108320;
  v26._object = 0xE400000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v20;
  v27._object = v18;
  String.append(_:)(v27);
  v28 = String._bridgeToObjectiveC()();

  [v22 logInterpolatedString:v28];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10035DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = sub_1001BC5A8(&qword_100527E40, &qword_10045A140);
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v15 = sub_1001BC5A8(&qword_100527E48, &qword_10045A148);
  v8[16] = v15;
  v16 = *(v15 - 8);
  v8[17] = v16;
  v17 = *(v16 + 64) + 15;
  v8[18] = swift_task_alloc();
  v18 = sub_1001BC5A8(&qword_100527E50, &qword_10045A150);
  v8[19] = v18;
  v19 = *(v18 - 8);
  v8[20] = v19;
  v20 = *(v19 + 64) + 15;
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10035E004, 0, 0);
}

uint64_t sub_10035E004()
{
  v25 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[22] = sub_100015AFC(v2, qword_100535BA8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v24);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(v7, v6, &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Started observing invitations for: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[7];
  v20 = v0[8];
  dispatch thunk of NearbyInvitationAdvertiser.$pendingMembers.getter();
  sub_10000462C(&qword_100527E58, &qword_100527E48, &qword_10045A148);
  Publisher<>.values.getter();
  (*(v14 + 8))(v13, v15);
  AsyncPublisher.makeAsyncIterator()();
  (*(v18 + 8))(v16, v17);
  swift_beginAccess();
  v0[23] = &_swiftEmptySetSingleton;
  v21 = swift_task_alloc();
  v0[24] = v21;
  *v21 = v0;
  v21[1] = sub_10035E2EC;
  v22 = v0[21];

  return sub_10035BFF0(0, 0);
}

uint64_t sub_10035E2EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v6 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (!v1)
  {

    return _swift_task_switch(sub_10035E400, 0, 0);
  }

  return result;
}

void sub_10035E400()
{
  v44 = v0;
  v1 = v0[25];
  if (!v1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
LABEL_5:
    v8 = v0[23];
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[15];
    v12 = v0[12];

    v7 = v0[1];
    goto LABEL_6;
  }

  v2 = v0[26];
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = v0[23];
    v4 = v0[18];
    v5 = v0[15];
    v6 = v0[12];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v7 = v0[1];
LABEL_6:

    v7();
    return;
  }

  v13 = v0[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    goto LABEL_5;
  }

  v14 = v0[23];
  if (*(v14 + 16) <= v1[2] >> 3)
  {
    v43[0] = v1;

    sub_100367BC8(v14);

    v15 = v1;
  }

  else
  {

    v15 = sub_100368854(v14, v1);
  }

  v16 = v0[22];

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[9];
    v19 = v0[10];
    v21 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = sub_10002C9C8(v22, v23, v43);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88);
    v25 = Set.description.getter();
    v27 = sub_10002C9C8(v25, v26, v43);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] New connection requests: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v28 = 0;
  v41 = v15;
  v29 = v15 + 7;
  v30 = -1;
  v31 = -1 << *(v15 + 32);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v32 = v30 & v15[7];
  v33 = (63 - v31) >> 6;
  if (v32)
  {
    while (1)
    {
      v34 = v28;
LABEL_24:
      v35 = v0[11];
      v36 = v0[12];
      v37 = v0[10];
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      (*(v35 + 16))(v36, v41[6] + *(v35 + 72) * (v38 | (v34 << 6)), v37);
      sub_100362664(v36);
      (*(v35 + 8))(v36, v37);
      if (!v32)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
LABEL_20:
    v34 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return;
    }

    if (v34 >= v33)
    {
      break;
    }

    v32 = v29[v34];
    ++v28;
    if (v32)
    {
      v28 = v34;
      goto LABEL_24;
    }
  }

  v0[23] = v1;
  v39 = swift_task_alloc();
  v0[24] = v39;
  *v39 = v0;
  v39[1] = sub_10035E2EC;
  v40 = v0[21];

  sub_10035BFF0(0, 0);
}

uint64_t sub_10035E900(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v1;
  v13[4] = ObjectType;
  aBlock[4] = sub_10036BF9C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF798;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v19);
}

void sub_10035EBE8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v42 - v8;
  v10 = [a1 invitationData];
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
    v42[0] = 91;
    v42[1] = 0xE100000000000000;
    v16._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18._object = 0x8000000100442D20;
    v18._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v15 logInterpolatedString:v19];

    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising) = 1;
    v20 = sub_1001BC5A8(&qword_100527E38, &qword_10045A108);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1001C3FE0(v12, v14);
    v23 = NearbyInvitationAdvertiser.init(remoteInvitationData:provider:activityType:route:params:)();
    v30 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser);
    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser) = v23;
    v31 = v23;

    v42[0] = v31;
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v36;
    v37[5] = v31;
    v37[6] = v32;
    v37[7] = v34;
    v37[8] = a3;

    v38 = sub_1001CB290(0, 0, v9, &unk_10045A118, v37);
    sub_1001C4034(v12, v14);
    v39 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask);
    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask) = v38;
  }

  else
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100015AFC(v24, qword_100535BA8);
    v41 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v25))
    {
      v26 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = _typeName(_:qualified:)();
      v29 = sub_10002C9C8(v27, v28, v42);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_10002C9C8(0xD00000000000001CLL, 0x8000000100442D20, v42);
      _os_log_impl(&_mh_execute_header, v41, v25, "[%s] %s - No remote invitation to begin advertising.", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = v41;
    }
  }
}

uint64_t sub_10035F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return _swift_task_switch(sub_10035F254, 0, 0);
}

uint64_t sub_10035F254()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    static Task<>.checkCancellation()();
    v5 = *(&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start() + 1);
    v8 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start());
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_10035F380;
    v7 = v0[9];

    return v8();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10035F380()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10035F748;
  }

  else
  {
    v3 = sub_10035F494;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10035F494()
{
  v26 = v0;
  if (static Task<>.isCancelled.getter())
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v1 = v0[11];
    v2 = type metadata accessor for Logger();
    sub_100015AFC(v2, qword_100535BA8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[13];
    if (v5)
    {
      v8 = v0[11];
      v7 = v0[12];
      v9 = v0[10];
      v10 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v10 = 136315394;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10002C9C8(v11, v12, v25);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_10002C9C8(v9, v8, v25);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Start advertising task was cancelled before completing with %s", v10, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v14 = v0[12];
    v15 = v0[13];
    v17 = v0[10];
    v16 = v0[11];
    v18 = *&v15[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
    _StringGuts.grow(_:)(48);

    v25[0] = 91;
    v25[1] = 0xE100000000000000;
    v19._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v19);

    v20._object = 0x8000000100442D80;
    v20._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v17;
    v21._object = v16;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    [v18 logInterpolatedString:v22];
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10035F748()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = *&v3[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  _StringGuts.grow(_:)(60);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v7._countAndFlagsBits = 91;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v8);

  v9._object = 0x8000000100442D40;
  v9._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v5;
  v10._object = v4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v0[7] = v1;
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  _print_unlocked<A, B>(_:_:)();
  v12 = v0[5];
  v13 = v0[6];
  v14 = String._bridgeToObjectiveC()();

  [v6 logErrorWithInterpolatedString:v14];

  v15 = v0[1];

  return v15();
}

void sub_10035F944()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v12;
  v16[5] = v14;
  v16[6] = v1;
  v16[7] = ObjectType;

  v17 = v1;
  v18 = sub_10035C278(0, 0, v6, &unk_10045A0E8, v16);
  v19 = swift_allocObject();
  v19[2] = v12;
  v19[3] = v14;
  v19[4] = v18;
  v19[5] = ObjectType;
  v20 = objc_allocWithZone(MRGroupSessionAssertion);
  aBlock[4] = sub_10036BEE4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF720;
  v21 = _Block_copy(aBlock);

  v22 = [v20 initWithCancellationHandler:v21];
  _Block_release(v21);
  if (v22)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10035FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_10035FC30, 0, 0);
}

uint64_t sub_10035FC30()
{
  v19 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100535BA8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(v7, v6, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Asserting public advertisement with ID: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(*(v0 + 40) + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser);
  *(v0 + 56) = v12;
  if (v12)
  {
    v13 = *(&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:) + 1);
    v17 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:) + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:));

    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_10035FEB8;

    return v17(1);
  }

  else
  {
    **(v0 + 16) = 0;
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10035FEB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10036000C;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_10035FFE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10036000C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100360070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;

  sub_1001CB290(0, 0, v11, &unk_10045A0F8, v13);
}

uint64_t sub_10036019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_1003601C0, 0, 0);
}

uint64_t sub_1003601C0()
{
  v19 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100535BA8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(v7, v6, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Cancelling public advertisement assertion with ID: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = async function pointer to Task.value.getter[1];
  v13 = swift_task_alloc();
  v0[7] = v13;
  v14 = sub_1001BC5A8(&qword_100527E30, &qword_10045A100);
  v15 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  *v13 = v0;
  v13[1] = sub_100360410;
  v16 = v0[5];

  return Task.value.getter(v0 + 2, v16, v14, v15, &protocol self-conformance witness table for Error);
}

uint64_t sub_100360410()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100360598;
  }

  else
  {
    v3 = sub_100360524;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100360524()
{
  if (*(v0 + 16))
  {
    AnyCancellable.cancel()();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

void sub_100360994()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v55 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session;
  v16 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session];
  v17 = &unk_100535000;
  if (!v16)
  {
LABEL_13:
    if (v17[372] == -1)
    {
LABEL_14:
      v47 = type metadata accessor for Logger();
      sub_100015AFC(v47, qword_100535BA8);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v59 = v51;
        *v50 = 136315138;
        v52 = _typeName(_:qualified:)();
        v54 = sub_10002C9C8(v52, v53, &v59);

        *(v50 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v48, v49, "[%s] No invitation to end advertising.", v50, 0xCu);
        sub_100026A44(v51);
      }

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_14;
  }

  v18 = qword_100535BA0;
  v19 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session];
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100015AFC(v20, qword_100535BA8);
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v56 = v6;
    v59 = v24;
    *v23 = 136315650;
    v25 = _typeName(_:qualified:)();
    v57 = ObjectType;
    v27 = sub_10002C9C8(v25, v26, &v59);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10002C9C8(0xD000000000000017, 0x8000000100442CA0, &v59);
    *(v23 + 22) = 2080;
    v28 = [v16 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10002C9C8(v29, v31, &v59);

    *(v23 + 24) = v32;
    ObjectType = v57;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%s] %s - %s", v23, 0x20u);
    swift_arrayDestroy();
    v6 = v56;

    v17 = &unk_100535000;

    swift_unknownObjectRelease();
    v33 = *&v1[v15];
    if (!v33)
    {
      goto LABEL_13;
    }
  }

  else
  {
    swift_unknownObjectRelease();

    v33 = *&v1[v15];
    if (!v33)
    {
      goto LABEL_13;
    }
  }

  v34 = [v33 nearbyInvitation];
  if (!v34)
  {
    goto LABEL_13;
  }

  v35 = *&v34[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];
  v36 = v34;

  v37 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v59 = 91;
  v60 = 0xE100000000000000;
  v38._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0xD00000000000001BLL;
  v39._object = 0x8000000100442C80;
  String.append(_:)(v39);
  v58 = v35;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8);
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v41 = String._bridgeToObjectiveC()();

  [v37 logInterpolatedString:v41];

  v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising] = 0;
  v42 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask];
  if (v42 && (v43 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser]) != 0)
  {
    v44 = type metadata accessor for TaskPriority();
    (*(*(v44 - 8) + 56))(v6, 1, 1, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v43;
    v45[5] = v42;
    v45[6] = v1;
    v45[7] = v35;
    v45[8] = ObjectType;

    v46 = v1;
    sub_1001BF864(0, 0, v6, &unk_10045A0D8, v45);
  }

  else
  {
  }
}

uint64_t sub_10036104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return _swift_task_switch(sub_100361074, 0, 0);
}

uint64_t sub_100361074()
{
  v18 = v0;
  v0[4] = v0[8];
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v0[13] = v1;
  v0[14] = v2;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[15] = sub_100015AFC(v4, qword_100535BA8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(v1, v3, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Waiting for existing advertise task on %s to finish", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = async function pointer to Task.value.getter[1];
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v0[17] = v14;
  *v13 = v0;
  v13[1] = sub_1003612D8;
  v15 = v0[9];

  return Task.value.getter(v14, v15, &type metadata for () + 8, v14, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003612D8()
{
  v2 = *(*v1 + 128);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10036C348;
  }

  else
  {
    v3 = sub_1003613F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003613F0()
{
  v18 = v0;
  v1 = v0[14];
  v2 = v0[15];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(v6, v5, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Stopping existing advertisement on %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop() + 1);
  v16 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop());
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1003615C4;
  v14 = v0[8];

  return v16();
}

uint64_t sub_1003615C4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100361894;
  }

  else
  {
    v3 = sub_1003616D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003616D8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = *(v0[10] + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(45);

  v6._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v6);

  v7._object = 0x8000000100442CF0;
  v7._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v7);
  v0[7] = v4;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 544108320;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v2;
  v10._object = v1;
  String.append(_:)(v10);

  v11 = String._bridgeToObjectiveC()();

  [v5 logInterpolatedString:v11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100361894()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  v7 = *(v6 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(51);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v8._countAndFlagsBits = 91;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  v10._object = 0x8000000100442CC0;
  v10._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v10);
  v0[5] = v5;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 2108704;
  v12._object = 0xE300000000000000;
  String.append(_:)(v12);
  v0[6] = v1;
  _print_unlocked<A, B>(_:_:)();
  v13 = v0[2];
  v14 = v0[3];
  v15 = String._bridgeToObjectiveC()();

  [v7 logErrorWithInterpolatedString:v15];

  v16 = v0[1];

  return v16();
}

void sub_100361A7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v23 = 91;
    v24 = 0xE100000000000000;
    v15._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v15);

    v16._object = 0x8000000100442BF0;
    v16._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v16);
    v17 = String._bridgeToObjectiveC()();

    [v14 logInterpolatedString:v17];

    v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising] = 0;
    v18 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask];
    if (v18)
    {
      v19 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser];
      if (v19)
      {
        v20 = type metadata accessor for TaskPriority();
        (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
        v21 = swift_allocObject();
        v21[2] = 0;
        v21[3] = 0;
        v21[4] = v19;
        v21[5] = v18;
        v21[6] = v1;
        v21[7] = ObjectType;

        v22 = v1;
        sub_1001BF864(0, 0, v6, &unk_10045A0C8, v21);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100361D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_100361D84, 0, 0);
}

uint64_t sub_100361D84()
{
  v18 = v0;
  v0[4] = v0[6];
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v0[10] = v1;
  v0[11] = v2;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[12] = sub_100015AFC(v4, qword_100535BA8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(v1, v3, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Waiting for existing advertise task on %s to finish", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = async function pointer to Task.value.getter[1];
  v13 = swift_task_alloc();
  v0[13] = v13;
  v14 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v0[14] = v14;
  *v13 = v0;
  v13[1] = sub_100361FE8;
  v15 = v0[7];

  return Task.value.getter(v14, v15, &type metadata for () + 8, v14, &protocol self-conformance witness table for Error);
}

uint64_t sub_100361FE8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10036C34C;
  }

  else
  {
    v3 = sub_100362100;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100362100()
{
  v18 = v0;
  v1 = v0[11];
  v2 = v0[12];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(v6, v5, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Stopping existing advertisement on %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop() + 1);
  v16 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop());
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_1003622D4;
  v14 = v0[6];

  return v16();
}

uint64_t sub_1003622D4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100362514;
  }

  else
  {
    v3 = sub_1003623E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003623E8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = *(v0[8] + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(48);

  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  v6._object = 0x8000000100442C50;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v2;
  v7._object = v1;
  String.append(_:)(v7);

  v8 = String._bridgeToObjectiveC()();

  [v4 logInterpolatedString:v8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100362514()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  v6 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(54);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v7._countAndFlagsBits = 91;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v8);

  v9._object = 0x8000000100442C10;
  v9._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v9);
  v0[5] = v1;
  _print_unlocked<A, B>(_:_:)();
  v10 = v0[2];
  v11 = v0[3];
  v12 = String._bridgeToObjectiveC()();

  [v6 logErrorWithInterpolatedString:v12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100362664(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v26);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v23 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  (*(v10 + 16))(&v21 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = v1;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_10036B568;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF428;
  v17 = _Block_copy(aBlock);
  v18 = v1;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v27 + 8))(v5, v19);
  (*(v24 + 8))(v8, v26);
}

void sub_100362A3C(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v10;
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100015AFC(v13, qword_100535BA8);
  v74 = *(v7 + 16);
  v75 = v7 + 16;
  v74(v12, a1, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = os_log_type_enabled(v15, v16);
  v72 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v73 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v71 = a1;
    aBlock = v20;
    *v19 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, &aBlock);
    v69 = v14;
    v24 = a3;
    v25 = v23;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_10002C9C8(0xD00000000000001BLL, 0x8000000100442BD0, &aBlock);
    *(v19 + 22) = 2080;
    sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v7 + 8))(v12, v6);
    v29 = sub_10002C9C8(v26, v28, &aBlock);
    a3 = v24;

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] %s - %s", v19, 0x20u);
    swift_arrayDestroy();
    a1 = v71;

    a2 = v73;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v30 = *&a2[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session];
  if (v30)
  {
    v31 = kMREventGroupSessionPreLMIRequestReceived;
    v81 = sub_1003631F8;
    v82 = 0;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_1001CDC04;
    v80 = &unk_1004CF450;
    v32 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v33 = v31;
    MRAnalyticsSendEvent();
    _Block_release(v32);

    v34 = v76;
    v74(v76, a1, v6);
    v35 = objc_allocWithZone(type metadata accessor for NearbySessionsPendingParticipant());
    v36 = sub_100367324(v34);
    v37 = objc_allocWithZone(MRDGroupSessionInvitationRequest);
    v69 = v36;
    v38 = [v37 initWithSession:v30 pendingParticipant:v36];
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    v41 = os_log_type_enabled(v39, v40);
    v68 = a3;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v71 = a1;
      v43 = v42;
      v44 = swift_slowAlloc();
      v73 = a2;
      v45 = v44;
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v43 = 136315394;
      v47 = _typeName(_:qualified:)();
      v49 = sub_10002C9C8(v47, v48, &aBlock);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v38;
      *v45 = v38;
      v50 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%s] Parsed invitation request: - %@", v43, 0x16u);
      sub_1000038A4(v45, &qword_100521870, &unk_10044EA70);
      a2 = v73;

      sub_100026A44(v46);

      a1 = v71;
    }

    v51 = v72;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v53 = Strong;
      v54 = v76;
      v74(v76, a1, v6);
      v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v56 = (v70 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      *(v57 + 16) = a2;
      *(v57 + 24) = v30;
      (*(v51 + 32))(v57 + v55, v54, v6);
      *(v57 + v56) = v68;
      v81 = sub_10036B60C;
      v82 = v57;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_100227ECC;
      v80 = &unk_1004CF4A0;
      v58 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v59 = a2;

      [v53 advertiser:v59 didReceiveInvitationRequest:v38 accessHandler:v58];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      _Block_release(v58);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 136315138;
      v64 = _typeName(_:qualified:)();
      v66 = sub_10002C9C8(v64, v65, &aBlock);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%s] Got connection request without active session. Ignoring", v62, 0xCu);
      sub_100026A44(v63);
    }
  }
}

uint64_t sub_100363238(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v28 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v33);
  v31 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v34);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27[-v16];
  v30 = *&a2[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  (*(v14 + 16))(&v27[-v16], a4, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = v18 + v15;
  v20 = (v18 + v15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v14 + 32))(v21 + v18, v17, v13);
  *(v21 + v19) = v28;
  *(v21 + v20 + 8) = v29;
  aBlock[4] = sub_10036B6B8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF4F0;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v24 = v31;
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v12, v34);
}

void sub_100363624(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = aBlock - v15;
  v17 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  if (v17)
  {
    v18 = v17 == a2;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v31 = *(v11 + 16);
    v30 = v11 + 16;
    v31(aBlock - v15, a3, v10);
    v32 = (*(v30 + 64) + 16) & ~*(v30 + 64);
    v33 = swift_allocObject();
    (*(v30 + 16))(v33 + v32, v16, v10);
    if (a4)
    {
      v34 = &unk_10045A0A0;
      v35 = 0x65766F72707061;
      v36 = v33;
      v37 = 0xE700000000000000;
    }

    else
    {
      v34 = &unk_10045A090;
      v35 = 0x7463656A6572;
      v36 = v33;
      v37 = 0xE600000000000000;
    }

    sub_100363AE8(v34, v36, v35, v37, a3, a5);

    v38 = kMREventGroupSessionPreLMIResponseSent;
    v39 = swift_allocObject();
    *(v39 + 16) = a4 & 1;
    aBlock[4] = sub_10036B830;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001CDC04;
    aBlock[3] = &unk_1004CF568;
    v40 = _Block_copy(aBlock);
    v41 = v38;

    MRAnalyticsSendEvent();
    _Block_release(v40);
  }

  else
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100015AFC(v19, qword_100535BA8);
    (*(v11 + 16))(v14, a3, v10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_10002C9C8(v23, v24, aBlock);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v11 + 8))(v14, v10);
      v29 = sub_10002C9C8(v26, v28, aBlock);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Attempted to approve connection request: %s but the requesting session is no longer active", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_100363AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v27 = a6;
  v25 = a3;
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a5, v9);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v25;
  *(v21 + 5) = a4;
  (*(v10 + 32))(&v21[v19], v13, v9);
  v22 = &v21[v20];
  *v22 = v26;
  *(v22 + 1) = a2;
  *&v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8] = v27;

  sub_1001BF864(0, 0, v17, &unk_10045A0B8, v21);
}

uint64_t sub_100363D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_100363E08, 0, 0);
}

uint64_t sub_100363E08()
{
  v32 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  v4 = v0[4];
  v6 = type metadata accessor for Logger();
  v0[12] = sub_100015AFC(v6, qword_100535BA8);
  v7 = *(v3 + 16);
  v0[13] = v7;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[9];
  if (v10)
  {
    v14 = v0[7];
    v28 = v0[2];
    v29 = v0[3];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136315650;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &v31);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10002C9C8(v28, v29, &v31);
    *(v15 + 22) = 2080;
    sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v11, v12);
    v23 = sub_10002C9C8(v19, v21, &v31);

    *(v15 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] %s connection request: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v11, v12);
  }

  v0[15] = v22;
  v30 = (v0[5] + *v0[5]);
  v24 = *(v0[5] + 4);
  v25 = swift_task_alloc();
  v0[16] = v25;
  *v25 = v0;
  v25[1] = sub_100364150;
  v26 = v0[6];

  return v30();
}

uint64_t sub_100364150()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100364294, 0, 0);
  }

  else
  {
    v5 = v3[10];
    v4 = v3[11];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100364294()
{
  v35 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 24);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 32), *(v0 + 64));

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v32 = *(v0 + 120);
    v33 = *(v0 + 136);
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v30 = *(v0 + 24);
    v31 = *(v0 + 72);
    v29 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v10 = 136315906;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v34);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10002C9C8(v29, v30, &v34);
    *(v10 + 22) = 2080;
    sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v32(v7, v8);
    v18 = sub_10002C9C8(v15, v17, &v34);

    *(v10 + 24) = v18;
    *(v10 + 32) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 34) = v19;
    *v11 = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Failed to %s: %s - error: %@", v10, 0x2Au);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
    v20 = *(v0 + 136);
    v21 = *(v0 + 120);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = *(v0 + 64);

    v21(v22, v24);
  }

  v26 = *(v0 + 80);
  v25 = *(v0 + 88);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100364584()
{
  v1 = async function pointer to NearbyInvitationAdvertiser.PendingMember.approve()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  *v2 = v0;
  v2[1] = sub_100009F30;

  return NearbyInvitationAdvertiser.PendingMember.approve()(v3);
}

uint64_t sub_100364630()
{
  v1 = async function pointer to NearbyInvitationAdvertiser.PendingMember.reject()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  *v2 = v0;
  v2[1] = sub_100009F30;

  return NearbyInvitationAdvertiser.PendingMember.reject()(v3);
}

void sub_1003646DC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v81 = &v74 - v11;
  v75 = v12;
  __chkstk_darwin(v10);
  v14 = &v74 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    if (qword_100535BA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  v23 = sub_100015AFC(v22, qword_100535BA8);
  v82 = *(v6 + 16);
  v82(v14, a1, v5);
  Strong = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v83 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v78 = v2;
    aBlock[0] = v28;
    *v27 = 136315394;
    v29 = _typeName(_:qualified:)();
    v31 = sub_10002C9C8(v29, v30, aBlock);
    v79 = ObjectType;
    v32 = v31;

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    sub_10000462C(&qword_100527E00, &qword_100527C80, &qword_100459F80);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v76 = *(v6 + 8);
    v76(v14, v5);
    v36 = sub_10002C9C8(v33, v35, aBlock);
    ObjectType = v79;

    *(v27 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Got join request: %s", v27, 0x16u);
    swift_arrayDestroy();
    v2 = v78;
  }

  else
  {

    v76 = *(v6 + 8);
    v76(v14, v5);
  }

  v37 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  v38 = v82;
  if (v37)
  {
    v39 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
    v40 = [swift_unknownObjectRetain() identifier];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    sub_100018D7C(0, &qword_100527E08, off_1004B30A0);
    v43 = v81;
    v38(v81, v83, v5);
    v44 = sub_100364FB8(v43);
    if (v44)
    {
      v45 = v44;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v46 = swift_allocObject();
        v78 = v2;
        v47 = v46;
        swift_unknownObjectWeakInit();
        v76 = v42;
        v48 = v81;
        v38(v81, v83, v5);
        v49 = (*(v6 + 80) + 24) & ~*(v6 + 80);
        v79 = ObjectType;
        v50 = (v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
        v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        v53 = v6;
        v54 = v52;
        *(v52 + 16) = v47;
        (*(v53 + 32))(v52 + v49, v48, v5);
        *(v54 + v50) = v37;
        v55 = (v54 + v51);
        v56 = v76;
        *v55 = v77;
        v55[1] = v56;
        *(v54 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) = v79;
        aBlock[4] = sub_10036B0C4;
        aBlock[5] = v54;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100227ECC;
        aBlock[3] = &unk_1004CF310;
        v57 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [Strong advertiser:v78 didReceiveJoinRequest:v45 accessHandler:v57];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        _Block_release(v57);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      v45 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        aBlock[0] = v70;
        *v69 = 136315138;
        v71 = _typeName(_:qualified:)();
        v73 = sub_10002C9C8(v71, v72, aBlock);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v45, v68, "[%s] Failed to parse join request information", v69, 0xCu);
        sub_100026A44(v70);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v58 = v77;
    v82(v77, v83, v5);
    v45 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v45, v59))
    {

      v76(v58, v5);
      return;
    }

    v60 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v60 = 136315394;
    v61 = _typeName(_:qualified:)();
    v63 = sub_10002C9C8(v61, v62, aBlock);

    *(v60 + 4) = v63;
    *(v60 + 12) = 2080;
    sub_10000462C(&qword_100527E00, &qword_100527C80, &qword_100459F80);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v76(v58, v5);
    v67 = sub_10002C9C8(v64, v66, aBlock);

    *(v60 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v45, v59, "[%s] Got join request with no active session: %s. Ignoring", v60, 0x16u);
    swift_arrayDestroy();
  }
}

id sub_100364FB8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v8 = NearbyInvitation.PendingMember.joinRequestUserInfo.getter();
  isa = 0;
  if (v9 >> 60 != 15)
  {
    v11 = v8;
    v12 = v9;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100045968(v11, v12);
  }

  v13 = [objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf) initWithData:isa];

  if (!v13)
  {
    (*(*(v7 - 8) + 8))(a1, v7);
    return 0;
  }

  v14 = [v13 identity];
  v15 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v14];

  if (!v15)
  {
    (*(*(v7 - 8) + 8))(a1, v7);

    return 0;
  }

  v23 = v3;
  v16 = [v13 oobKeys];
  if (!v16 || (v24 = 0, v17 = v16, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v17, !v24))
  {
  }

  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  NearbyInvitation.PendingMember.invitationID.getter();
  UUID.uuidString.getter();
  (*(v23 + 8))(v6, v2);
  v19 = String._bridgeToObjectiveC()();

  v20 = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v18 initWithIdentifier:v19 identity:v15 oobKeys:v20];

  (*(*(v7 - 8) + 8))(a1, v7);
  return v21;
}

char *sub_1003652DC(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v43 = a6;
  v41 = a5;
  v39 = a3;
  v40 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v45 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v46);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v35 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    result = [objc_allocWithZone(_MRGroupSessionJoinResponseProtobuf) init];
    if (result)
    {
      v22 = result;
      v36 = v14;
      v37 = v9;
      v38 = v8;
      v23 = [a4 joinToken];
      v24 = [v23 joinURLString];

      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      [v22 setJoinURL:v24];

      v35[1] = *&v21[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
      (*(v16 + 16))(v19, v39, v15);
      v25 = (*(v16 + 80) + 41) & ~*(v16 + 80);
      v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      v28 = v41;
      *(v27 + 16) = v21;
      *(v27 + 24) = v28;
      *(v27 + 32) = v43;
      *(v27 + 40) = v40 & 1;
      (*(v16 + 32))(v27 + v25, v19, v15);
      *(v27 + v26) = v22;
      *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
      aBlock[4] = sub_10036B18C;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CF360;
      v29 = _Block_copy(aBlock);
      v30 = v21;

      v31 = v22;
      v32 = v36;
      static DispatchQoS.unspecified.getter();
      v47 = _swiftEmptyArrayStorage;
      sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v33 = v45;
      v34 = v38;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v37 + 8))(v33, v34);
      (*(v44 + 8))(v32, v46);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003657C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v37 = a4;
  v33 = a6;
  v34 = a1;
  v35 = a3;
  v9 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v32 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a5 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    (*(v10 + 16))(v13, v33, v9);
    v27 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v34;
    *(v29 + 5) = a2;
    (*(v10 + 32))(&v29[v27], v13, v9);
    v30 = &v29[v28];
    v31 = v37;
    *v30 = v35;
    *(v30 + 1) = v31;
    *&v29[(v28 + 23) & 0xFFFFFFFFFFFFFFF8] = v36;

    sub_1001BF864(0, 0, v17, &unk_10045A078, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100365AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100365BC0, 0, 0);
}

uint64_t sub_100365BC0()
{
  v30 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[3];
  v4 = v0[4];
  v6 = type metadata accessor for Logger();
  v0[11] = sub_100015AFC(v6, qword_100535BA8);
  (*(v2 + 16))(v1, v4, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = v0[7];
    v26 = v0[2];
    v27 = v0[3];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10002C9C8(v15, v16, &v29);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10002C9C8(v26, v27, &v29);
    *(v14 + 22) = 2080;
    sub_10000462C(&qword_100527E00, &qword_100527C80, &qword_100459F80);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v11 + 8))(v10, v12);
    v21 = sub_10002C9C8(v18, v20, &v29);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] %s pending member: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v28 = (v0[5] + *v0[5]);
  v22 = *(v0[5] + 4);
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_100365EF8;
  v24 = v0[6];

  return v28();
}

uint64_t sub_100365EF8()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100366034, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}