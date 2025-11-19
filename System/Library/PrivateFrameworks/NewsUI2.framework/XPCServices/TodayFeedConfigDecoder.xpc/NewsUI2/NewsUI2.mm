int main(int argc, const char **argv, const char **envp)
{
  qword_1000109B0 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1000109B8 = [objc_opt_self() serviceListener];
  [qword_1000109B8 setDelegate:qword_1000109B0];
  [qword_1000109B8 resume];
  return 0;
}

id sub_1000019B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001B34()
{
  sub_1000041BC(0, &qword_100010618, &type metadata accessor for FormatContentSlotItemAuxiliary, &type metadata accessor for Optional);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v104 - v2;
  v130 = sub_100007D6C();
  v151 = *(v130 - 8);
  v4 = *(v151 + 64);
  (__chkstk_darwin)();
  v129 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007D3C();
  v128 = *(v6 - 8);
  v7 = *(v128 + 64);
  v8 = (__chkstk_darwin)();
  v145 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v137 = &v104 - v10;
  v143 = sub_100007CFC();
  v139 = *(v143 - 8);
  v11 = *(v139 + 64);
  __chkstk_darwin(v143);
  v138 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100007CBC();
  v122 = *(v125 - 8);
  v13 = *(v122 + 64);
  __chkstk_darwin(v125);
  v124 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100007D2C();
  v113 = *(v115 - 8);
  v15 = *(v113 + 64);
  __chkstk_darwin(v115);
  v114 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for CuratedTodayFeedGroupConfigDataLite();
  v17 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000041BC(0, &qword_1000105E8, sub_100003F28, &type metadata accessor for Optional);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20 - 8);
  v23 = &v104 - v22;
  v24 = sub_100007C8C();
  v112 = *(v24 - 8);
  v25 = *(v112 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v104 - v29;
  sub_100004270(v23);
  sub_100003F28();
  v32 = v31;
  v33 = *(v31 - 8);
  if ((*(v33 + 48))(v23, 1, v31) == 1)
  {
    sub_10000403C(v23, &qword_1000105E8, sub_100003F28);
    return &_swiftEmptyArrayStorage;
  }

  sub_100007BFC();
  (*(v33 + 8))(v23, v32);
  v35 = v112;
  (*(v112 + 16))(v28, &v19[*(v152 + 20)], v24);
  sub_100003E2C(v19, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
  (*(v35 + 32))(v30, v28, v24);
  result = sub_100007C7C();
  v108 = *(result + 16);
  if (!v108)
  {
    v103 = v35;

    v116 = &_swiftEmptyArrayStorage;
    goto LABEL_81;
  }

  v104 = v30;
  v105 = v24;
  v36 = 0;
  v110 = result + ((*(v113 + 80) + 32) & ~*(v113 + 80));
  v109 = v113 + 16;
  v119 = v122 + 16;
  v136 = v139 + 16;
  v37 = (v128 + 88);
  LODWORD(v152) = enum case for FormatContentSlotItemObject.article(_:);
  v147 = (v128 + 8);
  v146 = (v128 + 96);
  v135 = (v151 + 48);
  v132 = (v151 + 32);
  v150 = v128 + 16;
  v131 = (v151 + 8);
  v134 = (v139 + 8);
  v117 = (v122 + 8);
  v107 = (v113 + 8);
  v116 = &_swiftEmptyArrayStorage;
  v38 = v130;
  v39 = v129;
  v148 = (v128 + 88);
  v149 = v6;
  v40 = v138;
  v127 = v3;
  v106 = result;
LABEL_5:
  if (v36 >= *(result + 16))
  {
    goto LABEL_92;
  }

  v41 = *(v113 + 72);
  v111 = v36;
  (*(v113 + 16))(v114, v110 + v41 * v36, v115);
  result = sub_100007D1C();
  v121 = *(result + 16);
  if (!v121)
  {

    v93 = &_swiftEmptyArrayStorage;
    goto LABEL_65;
  }

  v42 = 0;
  v120 = result + ((*(v122 + 80) + 32) & ~*(v122 + 80));
  v43 = &_swiftEmptyArrayStorage;
  v118 = result;
  while (1)
  {
    if (v42 >= *(result + 16))
    {
      goto LABEL_87;
    }

    v126 = v43;
    v46 = *(v122 + 72);
    v123 = v42;
    (*(v122 + 16))(v124, v120 + v46 * v42, v125);
    result = sub_100007CAC();
    v141 = *(result + 16);
    if (v141)
    {
      break;
    }

    v48 = &_swiftEmptyArrayStorage;
LABEL_51:

    (*v117)(v124, v125);
    v85 = *(v48 + 2);
    result = v126;
    v86 = *(v126 + 2);
    v87 = v86 + v85;
    if (__OFADD__(v86, v85))
    {
      goto LABEL_88;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v88 = v126;
    if ((result & 1) == 0 || v87 > *(v126 + 3) >> 1)
    {
      if (v86 <= v87)
      {
        v89 = v86 + v85;
      }

      else
      {
        v89 = v86;
      }

      result = sub_1000036B0(result, v89, 1, v126);
      v88 = result;
    }

    if (*(v48 + 2))
    {
      if ((*(v88 + 3) >> 1) - *(v88 + 2) < v85)
      {
        goto LABEL_90;
      }

      v90 = v88;
      swift_arrayInitWithCopy();

      v43 = v90;
      result = v118;
      v45 = v123;
      if (v85)
      {
        v91 = *(v90 + 2);
        v83 = __OFADD__(v91, v85);
        v92 = v91 + v85;
        if (v83)
        {
          goto LABEL_91;
        }

        *(v90 + 2) = v92;
      }
    }

    else
    {
      v44 = v88;

      v43 = v44;
      result = v118;
      v45 = v123;
      if (v85)
      {
        goto LABEL_89;
      }
    }

    v42 = v45 + 1;
    if (v42 == v121)
    {
      v93 = v43;

LABEL_65:
      (*v107)(v114, v115);
      v94 = *(v93 + 2);
      result = v116;
      v95 = *(v116 + 2);
      v96 = v95 + v94;
      if (__OFADD__(v95, v94))
      {
        goto LABEL_93;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v97 = v116;
      if (!result || v96 > *(v116 + 3) >> 1)
      {
        if (v95 <= v96)
        {
          v98 = v95 + v94;
        }

        else
        {
          v98 = v95;
        }

        result = sub_1000036B0(result, v98, 1, v116);
        v97 = result;
      }

      v99 = *(v93 + 2);
      v116 = v97;
      if (v99)
      {
        if ((*(v97 + 3) >> 1) - *(v97 + 2) < v94)
        {
          goto LABEL_95;
        }

        swift_arrayInitWithCopy();

        result = v106;
        v100 = v111;
        if (v94)
        {
          v101 = *(v116 + 2);
          v83 = __OFADD__(v101, v94);
          v102 = v101 + v94;
          if (v83)
          {
            goto LABEL_96;
          }

          *(v116 + 2) = v102;
        }
      }

      else
      {

        result = v106;
        v100 = v111;
        if (v94)
        {
          goto LABEL_94;
        }
      }

      v36 = v100 + 1;
      if (v36 == v108)
      {

        v24 = v105;
        v103 = v112;
        v30 = v104;
LABEL_81:
        (*(v103 + 8))(v30, v24);
        return v116;
      }

      goto LABEL_5;
    }
  }

  v47 = 0;
  v48 = &_swiftEmptyArrayStorage;
  v140 = result;
  while (v47 < *(result + 16))
  {
    v144 = v48;
    v49 = result + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v50 = *(v139 + 72);
    v142 = v47;
    (*(v139 + 16))(v40, v49 + v50 * v47, v143);
    v51 = v137;
    sub_100007CDC();
    v151 = *v37;
    v52 = (v151)(v51, v6);
    if (v52 == v152)
    {
      (*v146)(v51, v6);
      v53 = *v51;
      v54 = sub_100007C5C();
      v56 = v55;
      v57 = sub_1000036B0(0, 1, 1, &_swiftEmptyArrayStorage);
      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1000036B0((v58 > 1), v59 + 1, 1, v57);
      }

      *(v57 + 2) = v59 + 1;
      v60 = &v57[16 * v59];
      *(v60 + 4) = v54;
      *(v60 + 5) = v56;
      v37 = v148;
      v6 = v149;
      v40 = v138;
    }

    else
    {
      (*v147)(v51, v6);
      v57 = &_swiftEmptyArrayStorage;
    }

    sub_100007CEC();
    if ((*v135)(v3, 1, v38) == 1)
    {
      sub_10000403C(v3, &qword_100010618, &type metadata accessor for FormatContentSlotItemAuxiliary);
    }

    else
    {
      (*v132)(v39, v3, v38);
      v61 = sub_100007D5C();
      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = *(v128 + 80);
        v133 = v61;
        v64 = v61 + ((v63 + 32) & ~v63);
        v65 = *(v128 + 72);
        v66 = *(v128 + 16);
        v67 = v145;
        v66(v145, v64, v6);
        while (1)
        {
          v68 = (v151)(v67, v6);
          if (v68 == v152)
          {
            (*v146)(v67, v6);
            v69 = *v67;
            v70 = sub_100007C5C();
            v72 = v71;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = sub_1000036B0(0, *(v57 + 2) + 1, 1, v57);
            }

            v74 = *(v57 + 2);
            v73 = *(v57 + 3);
            if (v74 >= v73 >> 1)
            {
              v57 = sub_1000036B0((v73 > 1), v74 + 1, 1, v57);
            }

            *(v57 + 2) = v74 + 1;
            v75 = &v57[16 * v74];
            *(v75 + 4) = v70;
            *(v75 + 5) = v72;
            v37 = v148;
            v6 = v149;
            v67 = v145;
          }

          else
          {
            (*v147)(v67, v6);
          }

          v64 += v65;
          if (!--v62)
          {
            break;
          }

          v66(v67, v64, v6);
        }

        v3 = v127;
        v38 = v130;
        v39 = v129;
      }

      else
      {
      }

      (*v131)(v39, v38);
      v40 = v138;
    }

    (*v134)(v40, v143);
    v76 = *(v57 + 2);
    result = v144;
    v77 = *(v144 + 2);
    v78 = v77 + v76;
    if (__OFADD__(v77, v76))
    {
      goto LABEL_83;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v79 = v144;
    if ((result & 1) != 0 && v78 <= *(v144 + 3) >> 1)
    {
      if (*(v57 + 2))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v77 <= v78)
      {
        v80 = v77 + v76;
      }

      else
      {
        v80 = v77;
      }

      result = sub_1000036B0(result, v80, 1, v144);
      v79 = result;
      if (*(v57 + 2))
      {
LABEL_46:
        if ((*(v79 + 3) >> 1) - *(v79 + 2) < v76)
        {
          goto LABEL_85;
        }

        v81 = v79;
        swift_arrayInitWithCopy();

        v48 = v81;
        if (v76)
        {
          v82 = *(v81 + 2);
          v83 = __OFADD__(v82, v76);
          v84 = v82 + v76;
          if (v83)
          {
            goto LABEL_86;
          }

          *(v81 + 2) = v84;
        }

        goto LABEL_14;
      }
    }

    v48 = v79;

    if (v76)
    {
      goto LABEL_84;
    }

LABEL_14:
    v47 = v142 + 1;
    result = v140;
    if (v142 + 1 == v141)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
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
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

void *sub_100002A94()
{
  sub_1000041BC(0, &qword_1000105C8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v75 = &v70 - v5;
  v84 = sub_100007B6C();
  v87 = *(v84 - 8);
  v6 = *(v87 + 64);
  v7 = __chkstk_darwin(v84);
  v83 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v70 - v9;
  v82 = sub_100007D2C();
  v86 = *(v82 - 8);
  v10 = *(v86 + 64);
  __chkstk_darwin(v82);
  v81 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E8C(0, &qword_1000105D0, &type metadata accessor for FormatFileReference);
  v79 = v12;
  v85 = *(v12 - 8);
  v13 = *(v85 + 64);
  __chkstk_darwin(v12);
  v15 = &v70 - v14;
  sub_100003E8C(0, &qword_1000105E0, &type metadata accessor for FormatFileReferenceCollection);
  v78 = v16;
  v76 = *(v16 - 8);
  v17 = *(v76 + 64);
  __chkstk_darwin(v16);
  v77 = &v70 - v18;
  v74 = type metadata accessor for CuratedTodayFeedGroupConfigDataLite();
  v19 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000041BC(0, &qword_1000105E8, sub_100003F28, &type metadata accessor for Optional);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v70 - v24;
  v26 = sub_100007C8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v73 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v70 - v31;
  sub_100004270(v25);
  sub_100003F28();
  v34 = v33;
  v35 = *(v33 - 8);
  if ((*(v35 + 48))(v25, 1, v33) == 1)
  {
    sub_10000403C(v25, &qword_1000105E8, sub_100003F28);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100007BFC();
    (*(v35 + 8))(v25, v34);
    v37 = v73;
    (*(v27 + 16))(v73, &v21[*(v74 + 20)], v26);
    sub_100003E2C(v21, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
    (*(v27 + 32))(v32, v37, v26);
    v88 = &_swiftEmptyArrayStorage;
    v38 = v77;
    sub_100007C6C();
    v39 = v78;
    v40 = sub_100007D4C();
    (*(v76 + 8))(v38, v39);
    KeyPath = swift_getKeyPath();
    v42 = *(v40 + 16);
    v74 = v4;
    v71 = v27;
    v72 = v26;
    v70 = v32;
    if (v42)
    {
      v43 = v84;
      v77 = *(v85 + 16);
      v78 = KeyPath;
      v44 = *(v85 + 80);
      v73 = v40;
      v45 = v40 + ((v44 + 32) & ~v44);
      v76 = *(v85 + 72);
      v85 += 16;
      v46 = (v85 - 8);
      v47 = (v87 + 48);
      v48 = (v87 + 32);
      v49 = &_swiftEmptyArrayStorage;
      v50 = v75;
      do
      {
        v51 = v79;
        (v77)(v15, v45, v79);
        swift_getAtKeyPath();
        (*v46)(v15, v51);
        if ((*v47)(v50, 1, v43) == 1)
        {
          sub_10000403C(v50, &qword_1000105C8, &type metadata accessor for URL);
        }

        else
        {
          v52 = *v48;
          (*v48)(v80, v50, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1000037B0(0, *(v49 + 2) + 1, 1, v49);
          }

          v54 = *(v49 + 2);
          v53 = *(v49 + 3);
          if (v54 >= v53 >> 1)
          {
            v49 = sub_1000037B0(v53 > 1, v54 + 1, 1, v49);
          }

          *(v49 + 2) = v54 + 1;
          v43 = v84;
          v52(&v49[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v54], v80, v84);
          v50 = v75;
        }

        v45 += v76;
        --v42;
      }

      while (v42);

      v4 = v74;
      v27 = v71;
      v26 = v72;
      v32 = v70;
    }

    else
    {

      v49 = &_swiftEmptyArrayStorage;
      v43 = v84;
    }

    sub_1000034E8(v49);
    v55 = sub_100007C7C();
    v56 = swift_getKeyPath();
    v57 = *(v55 + 16);
    if (v57)
    {
      v58 = *(v86 + 16);
      v59 = *(v86 + 80);
      v78 = v55;
      v60 = v55 + ((v59 + 32) & ~v59);
      v79 = *(v86 + 72);
      v80 = v58;
      v85 = v56;
      v86 += 16;
      v61 = (v86 - 8);
      v62 = (v87 + 48);
      v63 = (v87 + 32);
      v64 = &_swiftEmptyArrayStorage;
      v65 = v81;
      do
      {
        v66 = v82;
        (v80)(v65, v60, v82);
        swift_getAtKeyPath();
        (*v61)(v65, v66);
        if ((*v62)(v4, 1, v43) == 1)
        {
          sub_10000403C(v4, &qword_1000105C8, &type metadata accessor for URL);
        }

        else
        {
          v67 = *v63;
          (*v63)(v83, v4, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_1000037B0(0, *(v64 + 2) + 1, 1, v64);
          }

          v69 = *(v64 + 2);
          v68 = *(v64 + 3);
          if (v69 >= v68 >> 1)
          {
            v64 = sub_1000037B0(v68 > 1, v69 + 1, 1, v64);
          }

          *(v64 + 2) = v69 + 1;
          v43 = v84;
          v67(&v64[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v69], v83, v84);
          v4 = v74;
        }

        v60 += v79;
        --v57;
      }

      while (v57);

      v27 = v71;
      v26 = v72;
      v32 = v70;
    }

    else
    {

      v64 = &_swiftEmptyArrayStorage;
    }

    sub_1000034E8(v64);
    (*(v27 + 8))(v32, v26);
    return v88;
  }
}

uint64_t sub_1000034E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1000037B0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100007B6C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100003654()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000036B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004220();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_1000037B0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000041BC(0, &qword_100010608, &type metadata accessor for URL, &type metadata accessor for _ContiguousArrayStorage);
  v10 = *(sub_100007B6C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100007B6C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_1000039AC()
{
  sub_1000041BC(0, &qword_1000105B8, &type metadata accessor for Date, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_100007BAC();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayConfigLite();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007C4C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_100007C3C();
  sub_100003FF4(&qword_1000105C0, type metadata accessor for TodayConfigLite);
  sub_100007BBC();

  if (!v0)
  {
    sub_100003D98(v12, v4);
    v17 = v28;
    v18 = *(v28 + 48);
    v19 = v18(v4, 1, v5);
    v27 = v5;
    if (v19 == 1)
    {
      sub_100007B9C();
      if (v18(v4, 1, v5) != 1)
      {
        sub_10000403C(v4, &qword_1000105B8, &type metadata accessor for Date);
      }
    }

    else
    {
      (*(v17 + 32))(v8, v4, v5);
    }

    sub_100001B34();
    sub_100002A94();
    v20 = objc_allocWithZone(NDTodayFeedConfig);
    v21 = v8;
    isa = sub_100007B8C().super.isa;
    v23 = sub_100007DBC().super.isa;

    sub_100007B6C();
    v24 = sub_100007DBC().super.isa;

    v16 = [v20 initWithPublishDate:isa topStoriesArticleIDs:v23 topStoriesPackageURLs:v24];

    (*(v28 + 8))(v21, v27);
    sub_100003E2C(v12, type metadata accessor for TodayConfigLite);
  }

  return v16;
}

uint64_t sub_100003D44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003D98(uint64_t a1, uint64_t a2)
{
  sub_1000041BC(0, &qword_1000105B8, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100003E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100007C9C();
    v7 = sub_100003FF4(&qword_1000105D8, &type metadata accessor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100003F28()
{
  if (!qword_1000105F0)
  {
    type metadata accessor for CuratedTodayFeedGroupConfigDataLite();
    sub_100003FF4(&qword_1000105F8, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
    sub_100003FF4(&qword_100010600, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
    v0 = sub_100007C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000105F0);
    }
  }
}

uint64_t sub_100003FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000403C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000041BC(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000041BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100004220()
{
  if (!qword_100010620)
  {
    v0 = sub_100007E3C();
    if (!v1)
    {
      atomic_store(v0, &qword_100010620);
    }
  }
}

uint64_t sub_100004270@<X0>(char *a1@<X8>)
{
  v3 = *(*(type metadata accessor for CuratedTodayFeedGroupConfigDataLite() - 8) + 64);
  __chkstk_darwin();
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(type metadata accessor for TodayFeedGroupConfigLite() - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F28();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TodayFeedConfigLite();
  v17 = *(v1 + *(result + 20));
  v28 = *(v17 + 16);
  if (v28)
  {
    v26 = v12;
    v27 = a1;
    v18 = 0;
    v29 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v30 = v6;
    v19 = (v12 + 32);
    v20 = (v12 + 8);
    while (v18 < *(v17 + 16))
    {
      sub_1000054B4(v29 + *(v30 + 72) * v18, v9, type metadata accessor for TodayFeedGroupConfigLite);
      v21 = *v19;
      (*v19)(v15, v9, v11);
      sub_100007BFC();
      if (*v5 == 0x69726F7453706F74 && v5[1] == 0xEA00000000007365)
      {
        sub_100005454(v5, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
LABEL_13:
        a1 = v27;
        v21(v27, v15, v11);
        v24 = 0;
LABEL_14:
        v12 = v26;
        return (*(v12 + 56))(a1, v24, 1, v11);
      }

      v23 = sub_100007E4C();
      sub_100005454(v5, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
      if (v23)
      {
        goto LABEL_13;
      }

      ++v18;
      result = (*v20)(v15, v11);
      if (v28 == v18)
      {
        v24 = 1;
        a1 = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 1;
    return (*(v12 + 56))(a1, v24, 1, v11);
  }

  return result;
}

uint64_t sub_10000457C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TodayFeedConfigLite()
{
  result = qword_100010680;
  if (!qword_100010680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000046E0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_100004728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000046E0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_1000047E0()
{
  sub_1000046E0(319);
  if (v0 <= 0x3F)
  {
    sub_100004894(319, &unk_100010690, type metadata accessor for TodayFeedGroupConfigLite, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000048F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for TodayFeedConfigLite();
  v3 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005270(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000046E0(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005580(0, &qword_1000106E0, &type metadata accessor for SafeishKeyedDecodingContainer);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v31 - v17;
  v19 = a1[4];
  sub_1000053C4(a1, a1[3]);
  sub_100005370();
  v20 = v34;
  sub_100007E8C();
  if (!v20)
  {
    v21 = v15;
    sub_100007BAC();
    v36 = 0;
    sub_10000457C(&qword_1000106F0, &type metadata accessor for Date);
    sub_100007BEC();
    sub_1000052A4();
    v23 = v22;
    v35 = 1;
    sub_10000457C(&qword_1000106F8, sub_1000052A4);
    v24 = v23;
    sub_100007BEC();
    v34 = v18;
    v25 = *(v23 - 8);
    if ((*(v25 + 48))(v8, 1, v23) == 1)
    {
      sub_100005454(v8, sub_100005270);
      v26 = v12;
      v27 = v31;
      sub_1000054B4(v12, v31, sub_1000046E0);
      v28 = v32;
    }

    else
    {
      v29 = sub_100007BCC();
      (*(v25 + 8))(v8, v24);
      v26 = v12;
      v27 = v31;
      sub_1000054B4(v12, v31, sub_1000046E0);
      v28 = v32;
      if (v29)
      {
LABEL_6:
        sub_100005454(v26, sub_1000046E0);
        (*(v21 + 8))(v34, v14);
        *(v27 + *(v33 + 20)) = v29;
        sub_10000551C(v27, v28);
        return sub_100005408(a1);
      }
    }

    v29 = &_swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  return sub_100005408(a1);
}

Swift::Int sub_100004DC4()
{
  v1 = *v0;
  sub_100007E5C();
  sub_100007E6C(v1);
  return sub_100007E7C();
}

Swift::Int sub_100004E38()
{
  v1 = *v0;
  sub_100007E5C();
  sub_100007E6C(v1);
  return sub_100007E7C();
}

uint64_t sub_100004E7C()
{
  if (*v0)
  {
    result = 0x7370756F7267;
  }

  else
  {
    result = 0x446873696C627570;
  }

  *v0;
  return result;
}

uint64_t sub_100004EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
  if (v6 || (sub_100007E4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100007E4C();

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

uint64_t sub_100004FB0(uint64_t a1)
{
  v2 = sub_100005370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004FEC(uint64_t a1)
{
  v2 = sub_100005370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005028(void *a1)
{
  v3 = v1;
  sub_100005580(0, &qword_100010700, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_1000053C4(a1, a1[3]);
  sub_100005370();
  sub_100007EAC();
  v15 = 0;
  sub_100007BAC();
  sub_10000457C(&qword_100010708, &type metadata accessor for Date);
  sub_100007E0C();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for TodayFeedConfigLite() + 20));
    v13[15] = 1;
    sub_100004894(0, &unk_100010690, type metadata accessor for TodayFeedGroupConfigLite, &type metadata accessor for Array);
    sub_1000055E4();
    sub_100007E2C();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1000052A4()
{
  if (!qword_1000106C8)
  {
    type metadata accessor for TodayFeedGroupConfigLite();
    sub_10000457C(&qword_1000106D0, type metadata accessor for TodayFeedGroupConfigLite);
    sub_10000457C(&qword_1000106D8, type metadata accessor for TodayFeedGroupConfigLite);
    v0 = sub_100007BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000106C8);
    }
  }
}

unint64_t sub_100005370()
{
  result = qword_1000106E8;
  if (!qword_1000106E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000106E8);
  }

  return result;
}

void *sub_1000053C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005408(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000054B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedConfigLite();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100005580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100005370();
    v7 = a3(a1, &type metadata for TodayFeedConfigLite.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000055E4()
{
  result = qword_100010710;
  if (!qword_100010710)
  {
    sub_100004894(255, &unk_100010690, type metadata accessor for TodayFeedGroupConfigLite, &type metadata accessor for Array);
    sub_10000457C(&qword_1000106D8, type metadata accessor for TodayFeedGroupConfigLite);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010710);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayFeedConfigLite.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayFeedConfigLite.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005838()
{
  result = qword_100010718;
  if (!qword_100010718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010718);
  }

  return result;
}

unint64_t sub_100005890()
{
  result = qword_100010720;
  if (!qword_100010720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010720);
  }

  return result;
}

unint64_t sub_1000058E8()
{
  result = qword_100010728;
  if (!qword_100010728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010728);
  }

  return result;
}

uint64_t sub_100005950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedConfigLite();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000059D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedConfigLite();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TodayConfigLite()
{
  result = qword_100010788;
  if (!qword_100010788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005A8C()
{
  result = type metadata accessor for TodayFeedConfigLite();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100005AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for TodayFeedConfigLite();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v19 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000614C(0, &qword_1000107C0, &type metadata accessor for KeyedDecodingContainer);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_1000053C4(a1, a1[3]);
  sub_1000060F8();
  sub_100007E9C();
  if (!v2)
  {
    v14 = v18;
    sub_1000061B0(&qword_1000107D0);
    v15 = v19;
    sub_100007DEC();
    (*(v9 + 8))(v12, v8);
    sub_10000551C(v15, v14);
  }

  return sub_100005408(a1);
}

Swift::Int sub_100005D10()
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

Swift::Int sub_100005D94()
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

uint64_t sub_100005DF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C648;
  v7._object = v3;
  v5 = sub_100007DCC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100005E90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10000C680;
  v8._object = a2;
  v6 = sub_100007DCC(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100005EF4(uint64_t a1)
{
  v2 = sub_1000060F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005F30(uint64_t a1)
{
  v2 = sub_1000060F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005F84(void *a1)
{
  sub_10000614C(0, &qword_1000107D8, &type metadata accessor for KeyedEncodingContainer);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000053C4(a1, a1[3]);
  sub_1000060F8();
  sub_100007EAC();
  type metadata accessor for TodayFeedConfigLite();
  sub_1000061B0(&qword_1000107E0);
  sub_100007E2C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000060F8()
{
  result = qword_1000107C8;
  if (!qword_1000107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107C8);
  }

  return result;
}

void sub_10000614C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000060F8();
    v7 = a3(a1, &type metadata for TodayConfigLite.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000061B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayFeedConfigLite();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayConfigLite.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TodayConfigLite.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000062E0()
{
  result = qword_1000107E8;
  if (!qword_1000107E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107E8);
  }

  return result;
}

unint64_t sub_100006338()
{
  result = qword_1000107F0;
  if (!qword_1000107F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107F0);
  }

  return result;
}

unint64_t sub_100006390()
{
  result = qword_1000107F8;
  if (!qword_1000107F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107F8);
  }

  return result;
}

uint64_t sub_1000063E4(uint64_t a1, uint64_t a2)
{
  sub_100003F28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100006450(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CuratedTodayFeedGroupConfigDataLite();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003F28();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for TodayFeedGroupConfigLite()
{
  result = qword_100010870;
  if (!qword_100010870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000655C(uint64_t a1)
{
  sub_100003F28();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_100006600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_100003F28();
  v5 = v4;
  v18 = *(v4 - 8);
  v6 = *(v18 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D40();
  v10 = v9;
  v21 = *(v9 - 8);
  v11 = *(v21 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000053C4(a1, a1[3]);
  sub_100006D9C();
  sub_100007E9C();
  if (!v2)
  {
    v15 = v21;
    v17 = v5;
    sub_100006DF0();
    sub_100007DEC();
    sub_100006E44(a1, v20);
    type metadata accessor for CuratedTodayFeedGroupConfigDataLite();
    sub_100006450(&qword_1000105F8);
    sub_100006450(&qword_100010600);
    sub_100007C0C();
    (*(v15 + 8))(v13, v10);
    (*(v18 + 32))(v19, v8, v17);
  }

  return sub_100005408(a1);
}

uint64_t sub_1000068F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10000C6F0;
  v8._object = a2;
  v6 = sub_100007DCC(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10000694C(uint64_t a1)
{
  v2 = sub_100006D9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006988(uint64_t a1)
{
  v2 = sub_100006D9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000069DC()
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

Swift::Int sub_100006A5C()
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

uint64_t sub_100006AB4@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_100007DCC(a2, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100006BE8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_100003F28();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v9);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006EA8(v4, v14);
  (*(v7 + 32))(v11, v14, v6);
  sub_100007C1C();
  return (*(v7 + 8))(v11, v6);
}

void sub_100006D40()
{
  if (!qword_1000108A0)
  {
    sub_100006D9C();
    v0 = sub_100007DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000108A0);
    }
  }
}

unint64_t sub_100006D9C()
{
  result = qword_1000108A8;
  if (!qword_1000108A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108A8);
  }

  return result;
}

unint64_t sub_100006DF0()
{
  result = qword_1000108B0;
  if (!qword_1000108B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108B0);
  }

  return result;
}

uint64_t sub_100006E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedGroupConfigLite();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006F38()
{
  result = qword_1000108B8;
  if (!qword_1000108B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108B8);
  }

  return result;
}

unint64_t sub_100006F90()
{
  result = qword_1000108C0;
  if (!qword_1000108C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108C0);
  }

  return result;
}

unint64_t sub_100006FE8()
{
  result = qword_1000108C8;
  if (!qword_1000108C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108C8);
  }

  return result;
}

unint64_t sub_100007040()
{
  result = qword_1000108D0;
  if (!qword_1000108D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108D0);
  }

  return result;
}

unint64_t sub_100007094()
{
  result = qword_1000108D8;
  if (!qword_1000108D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108D8);
  }

  return result;
}

uint64_t sub_100007104(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000071C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CuratedTodayFeedGroupConfigDataLite()
{
  result = qword_100010938;
  if (!qword_100010938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000072B4()
{
  result = sub_100007C8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100007330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = sub_100007C8C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000799C(0, &qword_100010970, &type metadata accessor for KeyedDecodingContainer);
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = a1[4];
  sub_1000053C4(a1, a1[3]);
  sub_100007948();
  sub_100007E9C();
  if (!v2)
  {
    v14 = v9;
    v15 = v26;
    v29 = 1;
    sub_100007A00(&qword_100010980);
    v16 = v27;
    sub_100007DEC();
    v28 = 0;
    v18 = sub_100007DDC();
    v19 = v12;
    v21 = v20;
    (*(v14 + 8))(v19, v16);
    v22 = type metadata accessor for CuratedTodayFeedGroupConfigDataLite();
    v23 = v25;
    (*(v15 + 32))(v25 + *(v22 + 20), v7, v4);
    *v23 = v18;
    v23[1] = v21;
  }

  return sub_100005408(a1);
}

uint64_t sub_1000075DC(void *a1)
{
  v3 = v1;
  sub_10000799C(0, &qword_100010988, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v16[-v9];
  v11 = a1[4];
  sub_1000053C4(a1, a1[3]);
  sub_100007948();
  sub_100007EAC();
  v12 = *v3;
  v13 = v3[1];
  v16[15] = 0;
  sub_100007E1C();
  if (!v2)
  {
    v14 = *(type metadata accessor for CuratedTodayFeedGroupConfigDataLite() + 20);
    v16[14] = 1;
    sub_100007C8C();
    sub_100007A00(&qword_100010990);
    sub_100007E2C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100007790()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x65707974627573;
  }
}

uint64_t sub_1000077C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65707974627573 && a2 == 0xE700000000000000;
  if (v6 || (sub_100007E4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100007E4C();

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

uint64_t sub_1000078A0(uint64_t a1)
{
  v2 = sub_100007948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000078DC(uint64_t a1)
{
  v2 = sub_100007948();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100007948()
{
  result = qword_100010978;
  if (!qword_100010978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010978);
  }

  return result;
}

void sub_10000799C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100007948();
    v7 = a3(a1, &type metadata for CuratedTodayFeedGroupConfigDataLite.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100007A00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100007C8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100007A58()
{
  result = qword_100010998;
  if (!qword_100010998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010998);
  }

  return result;
}

unint64_t sub_100007AB0()
{
  result = qword_1000109A0;
  if (!qword_1000109A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109A0);
  }

  return result;
}

unint64_t sub_100007B08()
{
  result = qword_1000109A8;
  if (!qword_1000109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109A8);
  }

  return result;
}