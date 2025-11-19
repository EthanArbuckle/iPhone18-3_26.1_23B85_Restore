uint64_t sub_100323AAC(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v23[1] = a5;
  v25 = a4;
  v24 = type metadata accessor for HostedRoutingItem(0);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v24);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = 0;
  v14 = *(a2 + 16);
  do
  {
    v15 = v13;
    v16 = v14 == v13;
    if (v14 == v13)
    {
      break;
    }

    sub_10002ADF8(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v12, type metadata accessor for HostedRoutingItem);
    if (*v12 == *a1 && v12[1] == a1[1])
    {
      v10 = sub_10002AC54(v12, type metadata accessor for HostedRoutingItem);
      break;
    }

    ++v13;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = sub_10002AC54(v12, type metadata accessor for HostedRoutingItem);
  }

  while ((v18 & 1) == 0);
  if (sub_1000325DC(v10))
  {
    v19 = (v14 == v15) & (v25 ^ 1);
    if (v14 == v15 && (v25 & 1) != 0)
    {
      v19 = !sub_100032ED8();
    }

    return v19 & 1;
  }

  if (sub_100032ED8())
  {
    v20 = *(a1 + *(v24 + 44));
    v27 = *sub_10025774C();
    v26 = v20;
    sub_100248690();
    v16 = (v14 == v15) & dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  if (v25)
  {
LABEL_17:
    v19 = 0;
    return v19 & 1;
  }

  if (!sub_1000328F4())
  {
    if (v16)
    {
      v19 = sub_100032ED8();
      return v19 & 1;
    }

    goto LABEL_17;
  }

  v22 = *(a3 + *(type metadata accessor for HostedRoutingSourceSession(0) + 52));
  v19 = v22 & v16;
  if ((v22 & 1) == 0 && ((v16 ^ 1) & 1) == 0)
  {
    if (sub_100032ED8())
    {
      v19 = 1;
    }

    else
    {
      v19 = *(a1 + *(v24 + 68));
    }
  }

  return v19 & 1;
}

uint64_t sub_100323D24(uint64_t a1, uint64_t a2, void **a3, void *a4, uint64_t a5)
{
  v151 = a5;
  v155 = a4;
  v159 = a2;
  v7 = type metadata accessor for HostedRoutingItem(0);
  v8 = *(v7 - 8);
  v168 = v7;
  v169 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v156 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v165 = &v149 - v13;
  v14 = __chkstk_darwin(v12);
  v150 = &v149 - v15;
  v16 = __chkstk_darwin(v14);
  v160 = &v149 - v17;
  v18 = __chkstk_darwin(v16);
  v158 = (&v149 - v19);
  v20 = __chkstk_darwin(v18);
  v157 = &v149 - v21;
  v22 = __chkstk_darwin(v20);
  v166 = &v149 - v23;
  v24 = __chkstk_darwin(v22);
  v162 = &v149 - v25;
  v26 = __chkstk_darwin(v24);
  v170 = &v149 - v27;
  v28 = __chkstk_darwin(v26);
  v153 = &v149 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v149 - v31;
  __chkstk_darwin(v30);
  v34 = (&v149 - v33);
  v152 = a1;
  v35 = *(a1 + 16);
  v161 = a3;
  v167 = v35;
  if (v35)
  {
    v36 = v169;
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v163 = v152 + v37;
    v164 = v37;
    swift_beginAccess();
    v38 = 0;
    v39 = *(v36 + 72);
    v154 = v32;
    do
    {
      v40 = v39;
      sub_10002ADF8(v163 + v39 * v38, v34, type metadata accessor for HostedRoutingItem);
      if (sub_100032ED8() && (*(v34 + *(v168 + 36)) & 1) == 0)
      {
        v41 = *(v159 + 16);
        if (*(v41 + 16))
        {
          v43 = *v34;
          v42 = v34[1];
          v44 = *(v41 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v45 = Hasher._finalize()();
          v46 = -1 << *(v41 + 32);
          v47 = v45 & ~v46;
          if ((*(v41 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (1)
            {
              v49 = (*(v41 + 48) + 16 * v47);
              v50 = *v49 == v43 && v49[1] == v42;
              if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v47 = (v47 + 1) & v48;
              if (((*(v41 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            sub_10002ADF8(v34, v153, type metadata accessor for HostedRoutingItem);
            v57 = v155;
            swift_beginAccess();
            v58 = *v57;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v57 = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v58 = sub_100026868(0, v58[2] + 1, 1, v58, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
              *v155 = v58;
            }

            a3 = v161;
            v32 = v154;
            v39 = v40;
            v61 = v58[2];
            v60 = v58[3];
            if (v61 >= v60 >> 1)
            {
              v58 = sub_100026868(v60 > 1, v61 + 1, 1, v58, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
              *v155 = v58;
            }

            v58[2] = v61 + 1;
            v55 = v58 + v164 + v61 * v40;
            v56 = v153;
            goto LABEL_20;
          }

LABEL_14:

          a3 = v161;
          v32 = v154;
        }
      }

      sub_10002ADF8(v34, v32, type metadata accessor for HostedRoutingItem);
      swift_beginAccess();
      v51 = *a3;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v51;
      if ((v52 & 1) == 0)
      {
        v51 = sub_100026868(0, v51[2] + 1, 1, v51, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        *a3 = v51;
      }

      v54 = v51[2];
      v53 = v51[3];
      v39 = v40;
      if (v54 >= v53 >> 1)
      {
        v51 = sub_100026868(v53 > 1, v54 + 1, 1, v51, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        *a3 = v51;
      }

      v51[2] = v54 + 1;
      v55 = v51 + v164 + v54 * v40;
      v56 = v32;
LABEL_20:
      sub_10002AF68(v56, v55, type metadata accessor for HostedRoutingItem);
      swift_endAccess();
      ++v38;
      sub_10002AC54(v34, type metadata accessor for HostedRoutingItem);
    }

    while (v38 != v167);
  }

  swift_beginAccess();
  v62 = *a3;
  v63 = v62[2];

  v65 = _swiftEmptyArrayStorage;
  if (v63)
  {
    v66 = 0;
    v67 = v170;
    while (v66 < v62[2])
    {
      v68 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v69 = *(v169 + 72);
      sub_10002ADF8(v62 + v68 + v69 * v66, v67, type metadata accessor for HostedRoutingItem);
      v70 = sub_100032ED8();
      v67 = v170;
      if (!v70 || (*(v170 + *(v168 + 68)) & 1) != 0)
      {
        result = sub_10002AC54(v170, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        sub_10002AF68(v170, v162, type metadata accessor for HostedRoutingItem);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v171 = v65;
        if ((v71 & 1) == 0)
        {
          sub_10002A42C(0, v65[2] + 1, 1);
          v67 = v170;
          v65 = v171;
        }

        v73 = v65[2];
        v72 = v65[3];
        if (v73 >= v72 >> 1)
        {
          sub_10002A42C(v72 > 1, v73 + 1, 1);
          v67 = v170;
          v65 = v171;
        }

        v65[2] = v73 + 1;
        result = sub_10002AF68(v162, v65 + v68 + v73 * v69, type metadata accessor for HostedRoutingItem);
      }

      if (v63 == ++v66)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

LABEL_39:

  v74 = v65[2];

  v75 = v155;
  result = swift_beginAccess();
  v76 = *(*v75 + 16);
  v77 = __OFADD__(v74, v76);
  v78 = v74 + v76;
  if (v77)
  {
LABEL_113:
    __break(1u);
    return result;
  }

  if (v78 <= 3)
  {
    swift_beginAccess();

    sub_100030DE8(v91, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
    swift_endAccess();
LABEL_108:
    v147 = v155;
    swift_beginAccess();
    v148 = *v147;
    *v147 = _swiftEmptyArrayStorage;
  }

  v79 = v161;
  swift_beginAccess();
  v80 = *v79;
  v81 = *(*v79 + 16);

  v82 = _swiftEmptyArrayStorage;
  if (v81)
  {
    v83 = 0;
    v84 = v166;
    while (v83 < *(v80 + 16))
    {
      v85 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v86 = *(v169 + 72);
      sub_10002ADF8(v80 + v85 + v86 * v83, v84, type metadata accessor for HostedRoutingItem);
      v87 = sub_100032ED8();
      v84 = v166;
      if (!v87 || (*(v166 + *(v168 + 68)) & 1) != 0)
      {
        result = sub_10002AC54(v166, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        sub_10002AF68(v166, v157, type metadata accessor for HostedRoutingItem);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v171 = v82;
        if ((v88 & 1) == 0)
        {
          sub_10002A42C(0, v82[2] + 1, 1);
          v84 = v166;
          v82 = v171;
        }

        v90 = v82[2];
        v89 = v82[3];
        if (v90 >= v89 >> 1)
        {
          sub_10002A42C(v89 > 1, v90 + 1, 1);
          v84 = v166;
          v82 = v171;
        }

        v82[2] = v90 + 1;
        result = sub_10002AF68(v157, v82 + v85 + v90 * v86, type metadata accessor for HostedRoutingItem);
      }

      if (v81 == ++v83)
      {
        goto LABEL_54;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

LABEL_54:

  v92 = v82[2];

  v93 = v161;
  v94 = v158;
  if (!v92)
  {
    swift_beginAccess();
    v106 = *v93;
    *v93 = _swiftEmptyArrayStorage;

    v107 = v155;
    swift_beginAccess();
    v108 = *v107;
    *v107 = _swiftEmptyArrayStorage;

    if (v167)
    {
      v109 = v169;
      v110 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v111 = v152 + v110;
      swift_beginAccess();
      swift_beginAccess();
      v112 = 0;
      v113 = *(v109 + 72);
      v170 = v111;
      do
      {
        sub_10002ADF8(v111 + v113 * v112, v94, type metadata accessor for HostedRoutingItem);
        if (sub_100032ED8() && (*(v94 + *(v168 + 36)) & 1) == 0)
        {
          v114 = *(v159 + 16);
          if (*(v114 + 16))
          {
            v116 = *v94;
            v115 = v94[1];
            v117 = *(v114 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v118 = Hasher._finalize()();
            v119 = -1 << *(v114 + 32);
            v120 = v118 & ~v119;
            if ((*(v114 + 56 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
            {
              v121 = ~v119;
              while (1)
              {
                v122 = (*(v114 + 48) + 16 * v120);
                v123 = *v122 == v116 && v122[1] == v115;
                if (v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v120 = (v120 + 1) & v121;
                if (((*(v114 + 56 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
                {
LABEL_90:
                  v94 = v158;
                  v111 = v170;
                  goto LABEL_92;
                }
              }

              v124 = *(v151 + 16);
              v94 = v158;
              v111 = v170;
              if (!*(v124 + 16))
              {
                goto LABEL_93;
              }

              v125 = *(v124 + 40);
              Hasher.init(_seed:)();

              String.hash(into:)();
              v126 = Hasher._finalize()();
              v127 = -1 << *(v124 + 32);
              v128 = v126 & ~v127;
              if ((*(v124 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128))
              {
                v129 = ~v127;
                while (1)
                {
                  v130 = (*(v124 + 48) + 16 * v128);
                  v131 = *v130 == v116 && v130[1] == v115;
                  if (v131 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v128 = (v128 + 1) & v129;
                  if (((*(v124 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
                  {
                    goto LABEL_90;
                  }
                }

                sub_10002ADF8(v158, v150, type metadata accessor for HostedRoutingItem);
                v138 = v155;
                swift_beginAccess();
                v139 = *v138;
                v140 = swift_isUniquelyReferenced_nonNull_native();
                *v138 = v139;
                if ((v140 & 1) == 0)
                {
                  v139 = sub_100026868(0, v139[2] + 1, 1, v139, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                  *v155 = v139;
                }

                v93 = v161;
                v111 = v170;
                v142 = v139[2];
                v141 = v139[3];
                if (v142 >= v141 >> 1)
                {
                  v139 = sub_100026868(v141 > 1, v142 + 1, 1, v139, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                  *v155 = v139;
                }

                v139[2] = v142 + 1;
                v136 = v139 + v110 + v142 * v113;
                v137 = v150;
                goto LABEL_98;
              }
            }

            v94 = v158;
LABEL_92:
          }
        }

LABEL_93:
        sub_10002ADF8(v94, v160, type metadata accessor for HostedRoutingItem);
        v93 = v161;
        swift_beginAccess();
        v132 = *v93;
        v133 = swift_isUniquelyReferenced_nonNull_native();
        *v93 = v132;
        if ((v133 & 1) == 0)
        {
          v132 = sub_100026868(0, v132[2] + 1, 1, v132, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
          *v93 = v132;
        }

        v135 = v132[2];
        v134 = v132[3];
        if (v135 >= v134 >> 1)
        {
          v132 = sub_100026868(v134 > 1, v135 + 1, 1, v132, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
          *v93 = v132;
        }

        v132[2] = v135 + 1;
        v136 = v132 + v110 + v135 * v113;
        v137 = v160;
LABEL_98:
        sub_10002AF68(v137, v136, type metadata accessor for HostedRoutingItem);
        swift_endAccess();
        ++v112;
        v94 = v158;
        sub_10002AC54(v158, type metadata accessor for HostedRoutingItem);
      }

      while (v112 != v167);
    }
  }

  swift_beginAccess();
  v95 = *v93;
  v96 = (*v93)[2];

  if (v96)
  {
    v97 = 0;
    v98 = _swiftEmptyArrayStorage;
    v99 = v165;
    while (v97 < v95[2])
    {
      v100 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v101 = *(v169 + 72);
      sub_10002ADF8(v95 + v100 + v101 * v97, v99, type metadata accessor for HostedRoutingItem);
      v102 = sub_100032ED8();
      v99 = v165;
      if (!v102 || (*(v165 + *(v168 + 68)) & 1) != 0)
      {
        result = sub_10002AC54(v165, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        sub_10002AF68(v165, v156, type metadata accessor for HostedRoutingItem);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v172 = v98;
        if ((v103 & 1) == 0)
        {
          sub_10002A42C(0, v98[2] + 1, 1);
          v99 = v165;
          v98 = v172;
        }

        v105 = v98[2];
        v104 = v98[3];
        if (v105 >= v104 >> 1)
        {
          sub_10002A42C(v104 > 1, v105 + 1, 1);
          v99 = v165;
          v98 = v172;
        }

        v98[2] = v105 + 1;
        result = sub_10002AF68(v156, v98 + v100 + v105 * v101, type metadata accessor for HostedRoutingItem);
      }

      if (v96 == ++v97)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_112;
  }

  v98 = _swiftEmptyArrayStorage;
LABEL_106:

  v143 = v98[2];

  if (!v143)
  {
    v144 = v155;
    swift_beginAccess();
    v145 = *v144;
    swift_beginAccess();

    sub_100030DE8(v146, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
    swift_endAccess();
    goto LABEL_108;
  }

  return result;
}

void sub_100324E64(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v100 = a6;
  v98 = a5;
  v85 = a4;
  v89 = a3;
  v99 = type metadata accessor for RoutingSessionConfiguration.Context();
  v97 = *(v99 - 8);
  v10 = *(v97 + 64);
  __chkstk_darwin(v99);
  v96 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RoutingItem.Action.Kind();
  v90 = *(v12 - 8);
  v91 = v12;
  v13 = *(v90 + 64);
  v14 = __chkstk_darwin(v12);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v80 - v16;
  v17 = type metadata accessor for Features.MediaRemote();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v84 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v83 = &v80 - v27;
  v28 = __chkstk_darwin(v26);
  v88 = &v80 - v29;
  __chkstk_darwin(v28);
  v31 = &v80 - v30;
  v92 = a1;
  sub_10002ADF8(a1, a7, type metadata accessor for HostedRoutingItem);
  v32 = *a2;
  v33 = a2[1];
  v93 = a2;
  v34 = *(a7 + 24);

  *(a7 + 16) = v32;
  *(a7 + 24) = v33;
  v35 = type metadata accessor for HostedRoutingItem(0);
  v94 = v35[8];
  v95 = a7;
  sub_10001D9AC(a7 + v94, v31, &unk_100524E90, &unk_1004519B0);
  v36 = type metadata accessor for RoutingItem.SelectionIndicator();
  v37 = *(v36 - 8);
  LODWORD(v34) = (*(v37 + 48))(v31, 1, v36);
  sub_1000038A4(v31, &unk_100524E90, &unk_1004519B0);
  if (v34 != 1)
  {
    v43 = v35;
    v39 = v17;
    v44 = v95;
    (*(v18 + 104))(v21, enum case for Features.MediaRemote.cayenneMultiItemActions(_:), v39);
    goto LABEL_24;
  }

  v81 = *(v18 + 104);
  v81(v21, enum case for Features.MediaRemote.cayenneConditionalIndicators(_:), v17);
  v38 = Features.MediaRemote.isEnabled.getter();
  v82 = v18;
  v39 = v17;
  (*(v18 + 8))(v21, v17);
  if ((v38 & 1) == 0)
  {
    if (*(v92 + v35[9]))
    {
      v45 = v88;
      (*(v37 + 104))(v88, enum case for RoutingItem.SelectionIndicator.selected(_:), v36);
    }

    else
    {
      v45 = v88;
      if (v89)
      {
        v46 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      }

      else
      {
        v46 = &enum case for RoutingItem.SelectionIndicator.selectable(_:);
      }

      (*(v37 + 104))(v88, *v46, v36);
    }

    v48 = v35;
    (*(v37 + 56))(v45, 0, 1, v36);
    v44 = v95;
    sub_10001CECC(v45, &v95[v94], &unk_100524E90, &unk_1004519B0);
    goto LABEL_22;
  }

  if ((*(v92 + v35[9]) & 1) == 0)
  {
    if (v89)
    {
      v41 = v94;
      v40 = v95;
      sub_1000038A4(&v95[v94], &unk_100524E90, &unk_1004519B0);
      v42 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      goto LABEL_10;
    }

    v47 = (v85 >> 8) & 6 | (v85 >> 7) & 1;
    v48 = v35;
    if (v47 == 2)
    {
      v49 = v35;
      v44 = v95;
      v76 = v95[v35[11]];
      v102 = *sub_100257764();
      v101 = v76;
      sub_100248690();
      v77 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v52 = *(v37 + 104);
      v78 = &enum case for RoutingItem.SelectionIndicator.selectable(_:);
      if ((v77 & 1) == 0)
      {
        v78 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      }

      v54 = *v78;
      v55 = v84;
      goto LABEL_52;
    }

    v44 = v95;
    if (v47 == 1)
    {
      v49 = v35;
      v50 = v95[v35[11]];
      v102 = *sub_10025774C();
      v101 = v50;
      sub_100248690();
      v51 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v52 = *(v37 + 104);
      v53 = &enum case for RoutingItem.SelectionIndicator.selectable(_:);
      if ((v51 & 1) == 0)
      {
        v53 = &enum case for RoutingItem.SelectionIndicator.none(_:);
      }

      v54 = *v53;
      v55 = v83;
LABEL_52:
      v52(v55, v54, v36);
      (*(v37 + 56))(v55, 0, 1, v36);
      v43 = v49;
      sub_10001CECC(v55, &v44[v94], &unk_100524E90, &unk_1004519B0);
      goto LABEL_11;
    }

    v79 = v94;
    sub_1000038A4(&v95[v94], &unk_100524E90, &unk_1004519B0);
    (*(v37 + 104))(&v44[v79], enum case for RoutingItem.SelectionIndicator.none(_:), v36);
    (*(v37 + 56))(&v44[v79], 0, 1, v36);
LABEL_22:
    v18 = v82;
    v43 = v48;
    goto LABEL_23;
  }

  v41 = v94;
  v40 = v95;
  sub_1000038A4(&v95[v94], &unk_100524E90, &unk_1004519B0);
  v42 = &enum case for RoutingItem.SelectionIndicator.selected(_:);
LABEL_10:
  (*(v37 + 104))(&v40[v41], *v42, v36);
  (*(v37 + 56))(&v40[v41], 0, 1, v36);
  v43 = v35;
  v44 = v40;
LABEL_11:
  v18 = v82;
LABEL_23:
  v81(v21, enum case for Features.MediaRemote.cayenneMultiItemActions(_:), v39);
LABEL_24:
  v56 = Features.MediaRemote.isEnabled.getter();
  v57 = (*(v18 + 8))(v21, v39);
  if (v56)
  {
    v58 = sub_1000325DC(v57);
    v59 = v100;
    if (v58 & 1) != 0 && v44[v43[9]] == 1 && (v60 = v44[v43[11]], v102 = *sub_100257764(), v101 = v60, sub_100248690(), (dispatch thunk of SetAlgebra.isSuperset(of:)()))
    {
      v61 = v86;
      (*(v90 + 104))(v86, enum case for RoutingItem.Action.Kind.shareAudio(_:), v91);
      v62 = sub_100026868(0, 1, 1, _swiftEmptyArrayStorage, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_100026868(v63 > 1, v64 + 1, 1, v62, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      }

      v62[2] = v64 + 1;
      (*(v90 + 32))(v62 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v64, v61, v91);
    }

    else
    {
      v62 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v62 = _swiftEmptyArrayStorage;
    v59 = v100;
  }

  v65 = v96;
  RoutingSessionConfiguration.context.getter();
  v66 = sub_100265DF0();
  (*(v97 + 8))(v65, v99);
  if ((v66 & 1) != 0 && (v44[v43[9]] & 1) == 0 && sub_100032ED8())
  {
    v67 = v44[v43[11]];
    v102 = *sub_100257758();
    v101 = v67;
    sub_100248690();
    if (dispatch thunk of SetAlgebra.isSuperset(of:)())
    {
      (*(v90 + 104))(v87, enum case for RoutingItem.Action.Kind.remoteControl(_:), v91);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_100026868(0, v62[2] + 1, 1, v62, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      }

      v69 = v62[2];
      v68 = v62[3];
      if (v69 >= v68 >> 1)
      {
        v62 = sub_100026868(v68 > 1, v69 + 1, 1, v62, &qword_100526758, &qword_100458540, &type metadata accessor for RoutingItem.Action.Kind);
      }

      v62[2] = v69 + 1;
      (*(v90 + 32))(v62 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v69, v87, v91);
    }
  }

  v70 = v43[12];
  v71 = *&v44[v70];

  *&v44[v70] = v62;
  v72 = *v44;
  v73 = *(v44 + 1);
  swift_beginAccess();
  v74 = *(v59 + 24);
  if (v74 && (v72 == *(v59 + 16) && v74 == v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    type metadata accessor for Preferences();
    if (static Preferences.enableFlaggedSuggestedItem.getter())
    {
      v75._countAndFlagsBits = 2241389088;
      v75._object = 0xA400000000000000;
      String.append(_:)(v75);
    }
  }
}

uint64_t sub_10032595C(void *a1, void *a2)
{
  v5 = *v2;
  v6 = type metadata accessor for HostedRoutingSourceSession(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 deviceUID];
  if (!v11 || (v11, ([a2 groupContainsDiscoverableGroupLeader] & 1) != 0))
  {

    return a1;
  }

  v12 = a1[2];
  if (*(v12 + 16))
  {
    v13 = sub_10002ADF8(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v10, type metadata accessor for HostedRoutingSourceSession);
    if (sub_1000325DC(v13))
    {
      v14 = a1[4];
      v23 = a1[3];
      v24 = v14;
      __chkstk_darwin(v14);
      v22[-4] = a2;
      v22[-3] = &v23;
      v20 = v10;
      v21 = v5;

      v15 = sub_10031D5DC(sub_100331580, &v22[-6], v12);
      type metadata accessor for RoutingSourceSessionState();
      a1 = sub_10025E9E4(v15, v23, v24);
      sub_10002AC54(v10, type metadata accessor for HostedRoutingSourceSession);
      return a1;
    }

    sub_10002AC54(v10, type metadata accessor for HostedRoutingSourceSession);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  v17._countAndFlagsBits = 91;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v18);

  v19._object = 0x8000000100440540;
  v19._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v19);
  v22[1] = a1;
  type metadata accessor for RoutingSourceSessionState();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100325C48(void *a1, uint64_t a2)
{
  v45 = *v2;
  v5 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v46 = v41 - v7;
  v8 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v41 - v10;
  v12 = type metadata accessor for HostedRoutingSourceSession(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v41 - v18;
  v20 = a1[2];
  if (v20[2])
  {
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = sub_10002ADF8(v20 + v21, v41 - v18, type metadata accessor for HostedRoutingSourceSession);
    if (sub_1000325DC(v22))
    {
      if (v19[*(v12 + 44)] == 1)
      {
        sub_10002AC54(v19, type metadata accessor for HostedRoutingSourceSession);
LABEL_7:

        return a1;
      }

      (*(*a1 + 128))(a2);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_10002AC54(v19, type metadata accessor for HostedRoutingSourceSession);
        sub_1000038A4(v11, &qword_100523B88, &unk_100451A50);
        goto LABEL_7;
      }

      sub_10002ADF8(v19, v17, type metadata accessor for HostedRoutingSourceSession);
      v17[*(v12 + 44)] = 1;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10032CC8C(v20);
      }

      v23 = v46;
      if (v20[2])
      {
        sub_10033151C(v17, v20 + v21);
        v24 = sub_100015A78();
        sub_10001D9AC(v24, v23, &qword_100525C00, &unk_1004511A0);
        v25 = type metadata accessor for Logger();
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v23, 1, v25) == 1)
        {
          sub_1000038A4(v23, &qword_100525C00, &unk_1004511A0);
        }

        else
        {
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.info.getter();
          v44 = v27;
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v43 = v28;
            v30 = v29;
            v42 = swift_slowAlloc();
            v48[0] = v42;
            *v30 = 136315138;
            v31 = _typeName(_:qualified:)();
            v33 = sub_10002C9C8(v31, v32, v48);
            v23 = v46;

            v41[1] = v30;
            *(v30 + 4) = v33;
            v34 = v44;
            _os_log_impl(&_mh_execute_header, v44, v43, "[%s] validateLimitedRoutingSessions - local session demoted to limitedRouting due to missing discoverable remote session containing local device", v30, 0xCu);
            sub_100026A44(v42);
          }

          else
          {
          }

          (*(v26 + 8))(v23, v25);
        }

        type metadata accessor for RoutingSourceSessionState();
        v36 = a1[3];
        v35 = a1[4];

        a1 = sub_10025E9E4(v20, v36, v35);
        sub_10002AC54(v17, type metadata accessor for HostedRoutingSourceSession);
        sub_10002AC54(v19, type metadata accessor for HostedRoutingSourceSession);
        sub_1000038A4(v11, &qword_100523B88, &unk_100451A50);
        return a1;
      }

      __break(1u);
    }

    sub_10002AC54(v19, type metadata accessor for HostedRoutingSourceSession);
  }

  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v38._countAndFlagsBits = 91;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v39);

  v40._object = 0x8000000100440500;
  v40._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v40);
  v47 = a1;
  type metadata accessor for RoutingSourceSessionState();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10032625C(void *a1, uint64_t a2)
{
  v84 = *v2;
  v5 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v85 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v72 - v9;
  v11 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for HostedRoutingSourceSession(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v83 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v86 = (&v72 - v21);
  v22 = __chkstk_darwin(v20);
  v24 = &v72 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = (&v72 - v26);
  __chkstk_darwin(v25);
  v29 = (&v72 - v28);
  if (RoutingSessionConfiguration.alwaysWantsLocalSession.getter())
  {
    goto LABEL_4;
  }

  (*(*a1 + 128))(a2);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000038A4(v14, &qword_100523B88, &unk_100451A50);
LABEL_4:

    return a1;
  }

  sub_10002AF68(v14, v29, type metadata accessor for HostedRoutingSourceSession);
  v30 = a1[4];
  v31 = a1[2];
  if (v31[2])
  {
    v82 = a1[3];
    sub_10002ADF8(v31 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v27, type metadata accessor for HostedRoutingSourceSession);

    if ((sub_1000325DC(v32) & 1) == 0)
    {
      sub_10002AC54(v27, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_32;
    }

    v81 = sub_100015A78();
    sub_10001D9AC(v81, v10, &qword_100525C00, &unk_1004511A0);
    v33 = type metadata accessor for Logger();
    a1 = *(v33 - 8);
    v79 = a1[6];
    v80 = a1 + 6;
    if (v79(v10, 1, v33) == 1)
    {
      sub_1000038A4(v10, &qword_100525C00, &unk_1004511A0);
    }

    else
    {
      sub_10002ADF8(v29, v24, type metadata accessor for HostedRoutingSourceSession);
      v34 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v77))
      {
        v35 = swift_slowAlloc();
        v78 = a1;
        v36 = v35;
        v76 = v35;
        v74 = swift_slowAlloc();
        v88[0] = v74;
        *v36 = 136315394;
        v37 = _typeName(_:qualified:)();
        v73 = v34;
        v39 = sub_10002C9C8(v37, v38, v88);
        v75 = v30;
        v40 = v33;
        v41 = v39;

        v30 = v75;
        v42 = v76;
        *(v76 + 4) = v41;
        v33 = v40;
        a1 = v78;
        *(v42 + 12) = 2080;
        sub_100004930(&qword_100525778, type metadata accessor for HostedRoutingSourceSession);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        sub_10002AC54(v24, type metadata accessor for HostedRoutingSourceSession);
        v46 = sub_10002C9C8(v43, v45, v88);

        v47 = v76;
        *(v76 + 14) = v46;
        v48 = v73;
        _os_log_impl(&_mh_execute_header, v73, v77, "[%s] filterRedundantLocalSession - removing local session because local device found in remote session: %s", v47, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10002AC54(v24, type metadata accessor for HostedRoutingSourceSession);
      }

      (a1[1])(v10, v33);
    }

    v49 = v86;
    v50 = v31[2];
    if (v50)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88[0] = v31;
      if (!isUniquelyReferenced_nonNull_native || (v50 - 1) > v31[3] >> 1)
      {
        v31 = sub_100026868(isUniquelyReferenced_nonNull_native, v50, 1, v31, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession);
        v88[0] = v31;
      }

      sub_10032F554(0, 1, 0);
      v52 = v82;
      if (*v27 == v82 && v27[1] == v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v53 = v85;
        sub_10001D9AC(v81, v85, &qword_100525C00, &unk_1004511A0);
        if (v79(v53, 1, v33) == 1)
        {
          sub_1000038A4(v53, &qword_100525C00, &unk_1004511A0);
        }

        else
        {
          v78 = a1;
          sub_10002ADF8(v27, v49, type metadata accessor for HostedRoutingSourceSession);
          v54 = v83;
          sub_10002ADF8(v29, v83, type metadata accessor for HostedRoutingSourceSession);
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            LODWORD(v81) = v56;
            v58 = v57;
            v82 = swift_slowAlloc();
            v87 = v82;
            *v58 = 136315650;
            v59 = _typeName(_:qualified:)();
            v86 = v33;
            v61 = sub_10002C9C8(v59, v60, &v87);

            *(v58 + 4) = v61;
            *(v58 + 12) = 2080;
            v62 = *v49;
            v63 = v49[1];

            sub_10002AC54(v49, type metadata accessor for HostedRoutingSourceSession);
            v64 = sub_10002C9C8(v62, v63, &v87);

            *(v58 + 14) = v64;
            *(v58 + 22) = 2080;
            v65 = *v54;
            v66 = v54[1];

            v53 = v85;
            sub_10002AC54(v54, type metadata accessor for HostedRoutingSourceSession);
            v67 = sub_10002C9C8(v65, v66, &v87);

            *(v58 + 24) = v67;
            v33 = v86;
            _os_log_impl(&_mh_execute_header, v55, v81, "[%s] filterRedundantLocalSession - updating activeSessionIdentifier from: %s to: %s", v58, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10002AC54(v54, type metadata accessor for HostedRoutingSourceSession);
            sub_10002AC54(v49, type metadata accessor for HostedRoutingSourceSession);
          }

          (v78[1])(v53, v33);
        }

        v52 = *v29;
        v30 = v29[1];
      }

      type metadata accessor for RoutingSourceSessionState();
      a1 = sub_10025E9E4(v31, v52, v30);
      sub_10002AC54(v29, type metadata accessor for HostedRoutingSourceSession);
      sub_10002AC54(v27, type metadata accessor for HostedRoutingSourceSession);
      return a1;
    }

    __break(1u);
  }

LABEL_32:
  v88[0] = 0;
  v88[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v69._countAndFlagsBits = 91;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  v70._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v70);

  v71._object = 0x80000001004404C0;
  v71._countAndFlagsBits = 0xD00000000000003BLL;
  String.append(_:)(v71);
  v87 = a1;
  type metadata accessor for RoutingSourceSessionState();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100326CB0(void *a1, uint64_t a2)
{
  v38 = *v2;
  v39 = a2;
  v40 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v40);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v41 = &v37 - v10;
  v11 = type metadata accessor for HostedRoutingSourceSession(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v37 - v21;
  v23 = a1[2];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    while (1)
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      v26 = sub_10002ADF8(v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v16, type metadata accessor for HostedRoutingSourceSession);
      if (sub_1000325DC(v26))
      {
        break;
      }

      ++v25;
      result = sub_10002AC54(v16, type metadata accessor for HostedRoutingSourceSession);
      if (v24 == v25)
      {
        goto LABEL_6;
      }
    }

    sub_10002AF68(v16, v19, type metadata accessor for HostedRoutingSourceSession);
    result = sub_10002AF68(v19, v22, type metadata accessor for HostedRoutingSourceSession);
    v27 = *(v22 + 4);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = 0;
      while (v29 < *(v27 + 16))
      {
        sub_10002ADF8(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v7, type metadata accessor for HostedRoutingItem);
        if (sub_100032ED8())
        {
          v31 = v41;
          sub_10002AF68(v7, v41, type metadata accessor for HostedRoutingItem);
          (*(v4 + 56))(v31, 0, 1, v40);
          v32 = a1[4];
          v42 = a1[3];
          v43 = v32;
          __chkstk_darwin(v32);
          *(&v37 - 4) = v39;
          *(&v37 - 3) = &v42;
          v33 = v38;
          *(&v37 - 2) = v22;
          *(&v37 - 1) = v33;

          v34 = sub_10031D5DC(sub_1003314D8, (&v37 - 6), v23);
          type metadata accessor for RoutingSourceSessionState();
          v35 = v42;
          v36 = v43;

          a1 = sub_10025E9E4(v34, v35, v36);
          sub_1000038A4(v31, &qword_100523C18, &qword_100451AF0);

          goto LABEL_14;
        }

        ++v29;
        result = sub_10002AC54(v7, type metadata accessor for HostedRoutingItem);
        if (v28 == v29)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_17;
    }

LABEL_12:
    v30 = v41;
    (*(v4 + 56))(v41, 1, 1, v40);
    sub_1000038A4(v30, &qword_100523C18, &qword_100451AF0);

LABEL_14:
    sub_10002AC54(v22, type metadata accessor for HostedRoutingSourceSession);
  }

  else
  {
LABEL_6:
  }

  return a1;
}

uint64_t sub_100327150(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v80 = a6;
  v83 = a5;
  v12 = type metadata accessor for HostedRoutingSourceSession(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v82 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v81 = (&v71 - v17);
  __chkstk_darwin(v16);
  v19 = &v71 - v18;
  v20 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v71 - v25;
  v27 = a1[3];
  if (!v27)
  {
    return 1;
  }

  v77 = a7;
  v78 = a4;
  v28 = a1[2];
  v29 = [a2 groupUID];
  if (!v29)
  {
    return 1;
  }

  v30 = v29;
  v79 = a3;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (v28 == v31 && v27 == v33)
  {

    goto LABEL_7;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    return 1;
  }

LABEL_7:
  v35 = sub_100015A78();
  sub_10001D9AC(v35, v26, &qword_100525C00, &unk_1004511A0);
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v26, 1, v36) == 1)
  {
    sub_1000038A4(v26, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v74 = v35;
    sub_10002ADF8(a1, v19, type metadata accessor for HostedRoutingSourceSession);
    v40 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v73))
    {
      v41 = swift_slowAlloc();
      v75 = v37;
      v42 = v41;
      v72 = swift_slowAlloc();
      v84 = v72;
      *v42 = 136315394;
      v43 = _typeName(_:qualified:)();
      v76 = v36;
      v45 = sub_10002C9C8(v43, v44, &v84);
      v71 = v40;
      v46 = v45;

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      sub_100004930(&qword_100525778, type metadata accessor for HostedRoutingSourceSession);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_10002AC54(v19, type metadata accessor for HostedRoutingSourceSession);
      v50 = sub_10002C9C8(v47, v49, &v84);

      *(v42 + 14) = v50;
      v36 = v76;
      v51 = v71;
      _os_log_impl(&_mh_execute_header, v71, v73, v80, v42, 0x16u);
      swift_arrayDestroy();

      v37 = v75;
    }

    else
    {

      sub_10002AC54(v19, type metadata accessor for HostedRoutingSourceSession);
    }

    (*(v37 + 8))(v26, v36);
    v35 = v74;
  }

  if (*a1 == *v79 && a1[1] == v79[1] || (v52 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v52 & 1) != 0))
  {
    sub_10001D9AC(v35, v24, &qword_100525C00, &unk_1004511A0);
    if (v38(v24, 1, v36) == 1)
    {
      sub_1000038A4(v24, &qword_100525C00, &unk_1004511A0);
      v54 = v78;
      v53 = v79;
    }

    else
    {
      v75 = v37;
      v76 = v36;
      v55 = v81;
      sub_10002ADF8(a1, v81, type metadata accessor for HostedRoutingSourceSession);
      v54 = v78;
      v56 = v82;
      sub_10002ADF8(v78, v82, type metadata accessor for HostedRoutingSourceSession);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v59 = 136315650;
        v60 = _typeName(_:qualified:)();
        v62 = sub_10002C9C8(v60, v61, &v84);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2080;
        v63 = *v55;
        v64 = v55[1];

        sub_10002AC54(v55, type metadata accessor for HostedRoutingSourceSession);
        v65 = sub_10002C9C8(v63, v64, &v84);

        *(v59 + 14) = v65;
        *(v59 + 22) = 2080;
        v66 = *v56;
        v67 = v56[1];

        v54 = v78;
        sub_10002AC54(v56, type metadata accessor for HostedRoutingSourceSession);
        v68 = sub_10002C9C8(v66, v67, &v84);

        *(v59 + 24) = v68;
        _os_log_impl(&_mh_execute_header, v57, v58, v77, v59, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10002AC54(v56, type metadata accessor for HostedRoutingSourceSession);
        sub_10002AC54(v55, type metadata accessor for HostedRoutingSourceSession);
      }

      v53 = v79;
      (*(v75 + 8))(v24, v76);
    }

    v69 = v54[1];
    v70 = v53[1];
    *v53 = *v54;
    v53[1] = v69;

    return 0;
  }

  return result;
}

unint64_t sub_100327878(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100021264();
  v10 = *v9;
  *v8 = *v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    result = (*(*a1 + 112))(v12);
    v14 = *(result + 24);
    if (v14)
    {
      if (v14 < 1)
      {
        __break(1u);
        goto LABEL_22;
      }

      v15 = *(result + 32);
      v16 = *(result + 16);
      if (v15 < v16)
      {
        v16 = 0;
      }

      v17 = *(result + 8 * (v15 - v16) + 40);

      v19 = (*(*v17 + 104))(v18);
      if (v19 == 2)
      {
        sub_1001BC5A8(&qword_100525748, &unk_100457D90);
        v23 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
        v24 = *(v23 + 72);
        v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_10044EC70;
        v27 = *sub_100028BB8();
        (*(v27 + 888))(0, 0, 3);
        v29 = v28;

        ObjectType = swift_getObjectType();
        v31 = (*(v29 + 56))(ObjectType, v29);
        swift_unknownObjectRelease();
        sub_100024BB0(v31, 0, 0, 0, (v26 + v25));

        v32 = *(**(v2 + 88) + 440);

        v34 = v32(v33);

        v41 = v26;
        sub_100030DE8(v34, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession, type metadata accessor for HostedRoutingSourceSession);
        v35 = v41;
        v36 = sub_1000321BC();
        (*(*v36 + 288))(v17 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent, v35);
      }

      else
      {
        sub_1002FB794(v19, v20, v21, v22);
      }
    }

    result = sub_10002107C();
    v4 = result;
    if (!(result >> 62))
    {
      v37 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_12;
      }

LABEL_20:

      return sub_10031B8F4();
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v37 = result;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v37 >= 1)
  {
    for (i = 0; i != v37; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v4 + 8 * i + 32);
      }

      sub_100028D64(v39);
    }

    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_100327D5C()
{
  v212 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v205 = *(v212 - 8);
  v1 = *(v205 + 64);
  v2 = __chkstk_darwin(v212);
  v211 = (&v200 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v2);
  v210 = &v200 - v5;
  v6 = __chkstk_darwin(v4);
  v232 = (&v200 - v7);
  __chkstk_darwin(v6);
  v223 = &v200 - v8;
  v9 = sub_1001BC5A8(&qword_100525F70, &unk_100458170);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v214 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v213 = &v200 - v13;
  v230 = type metadata accessor for RoutingSessionConfiguration();
  v14 = *(v230 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v230);
  v229 = &v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v228 = &v200 - v19;
  v20 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v209 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v200 - v24;
  v227 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v26 = *(v227 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v227);
  v30 = &v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v206 = &v200 - v31;
  v32 = sub_1001BC5A8(&qword_100525F80, &qword_100458180);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = (&v200 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v38 = (&v200 - v37);
  v241 = 0xD00000000000002CLL;
  v242 = 0x800000010043FEF0;
  v39 = sub_100030790();
  v40 = 0;
  v41 = v39[8];
  v203 = (v39 + 8);
  v208 = v39;
  v42 = 1 << *(v39 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v41;
  v202 = (v42 + 63) >> 6;
  v201 = "Client snapshot: ";
  v226 = 0x800000010043FF40;
  v207 = v26;
  v224 = (v14 + 16);
  v225 = (v26 + 56);
  v204 = v0;
  v219 = v25;
  v233 = v30;
  v217 = v36;
  v216 = v38;
  if ((v43 & v41) != 0)
  {
    while (1)
    {
      v45 = v0;
      v46 = v40;
LABEL_13:
      v48 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v49 = v48 | (v46 << 6);
      v50 = *(v208[6] + 8 * v49);
      v51 = v206;
      sub_10002ADF8(v208[7] + *(v207 + 72) * v49, v206, type metadata accessor for HostedRoutingSessionSnapshot);
      v52 = sub_1001BC5A8(&qword_100525F88, &qword_100458188);
      v53 = *(v52 + 48);
      *v36 = v50;
      sub_10002AF68(v51, v36 + v53, type metadata accessor for HostedRoutingSessionSnapshot);
      (*(*(v52 - 8) + 56))(v36, 0, 1, v52);

      v231 = v46;
LABEL_14:
      sub_10003AEF0(v36, v38, &qword_100525F80, &qword_100458180);
      v54 = sub_1001BC5A8(&qword_100525F88, &qword_100458188);
      if ((*(*(v54 - 8) + 48))(v38, 1, v54) == 1)
      {
        break;
      }

      v55 = *v38;
      sub_10002AF68(v38 + *(v54 + 48), v233, type metadata accessor for HostedRoutingSessionSnapshot);
      v234._countAndFlagsBits = 0x203A746E65696C43;
      v234._object = 0xE800000000000000;
      v56._countAndFlagsBits = sub_100036B00();
      String.append(_:)(v56);

      v57._countAndFlagsBits = 10;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      String.append(_:)(v234);

      v234._countAndFlagsBits = *(*(v55 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);
      type metadata accessor for RoutingClientEventContext(0);
      sub_100004930(&qword_100525F98, type metadata accessor for RoutingClientEventContext);
      v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v58);

      v59 = v45;
      v60 = sub_100300F7C();
      if (v60[2])
      {
        v61 = sub_100031588(v55);
        v62 = v219;
        if (v63)
        {
          v64 = *(v60[7] + 8 * v61);

          v65 = v233;
          if (*(v64 + 16))
          {
            v215 = v55;
            v66._countAndFlagsBits = 0xD000000000000016;
            v66._object = (v201 | 0x8000000000000000);
            String.append(_:)(v66);
            v67 = 0;
            v218 = v64;
            v68 = v64 + 56;
            v69 = 1 << *(v64 + 32);
            if (v69 < 64)
            {
              v70 = ~(-1 << v69);
            }

            else
            {
              v70 = -1;
            }

            v71 = v70 & *(v64 + 56);
            for (i = (v69 + 63) >> 6; v71; v36 = v217)
            {
              v73 = v67;
LABEL_28:
              v74 = *(v218 + 48) + 56 * (__clz(__rbit64(v71)) | (v73 << 6));
              v76 = *v74;
              v75 = *(v74 + 8);
              v71 &= v71 - 1;
              v77 = *(v74 + 16);
              v78 = *(v74 + 24);
              v222 = v77;
              v221 = v78;
              v79 = *(v74 + 32);
              v80 = *(v74 + 40);
              v81 = *(v74 + 48);
              v240._countAndFlagsBits = 538976288;
              v240._object = 0xE400000000000000;
              v234._countAndFlagsBits = v76;
              v234._object = v75;
              v220 = v75;
              v235 = v77;
              v236 = v78;
              v237 = v79;
              v238 = v80;
              v239 = v81;

              sub_10026D0B8(v77, v78, v79, v80, v81);
              sub_1002856A4();
              v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v82);

              v83._countAndFlagsBits = 10;
              v83._object = 0xE100000000000000;
              String.append(_:)(v83);
              String.append(_:)(v240);

              sub_1002485A4(v222, v221, v79, v80, v81);
              v65 = v233;
            }

            v59 = v204;
            while (1)
            {
              v73 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_75;
              }

              if (v73 >= i)
              {

                v62 = v219;
                v55 = v215;
                goto LABEL_35;
              }

              v71 = *(v68 + 8 * v73);
              ++v67;
              if (v71)
              {
                v67 = v73;
                goto LABEL_28;
              }
            }
          }
        }

        else
        {

          v65 = v233;
        }
      }

      else
      {

        v65 = v233;
        v62 = v219;
      }

LABEL_35:
      v85 = sub_100301014();
      if (v85[2] && (v86 = sub_100031588(v55), (v87 & 1) != 0))
      {
        v215 = v55;
        v88 = *(v85[7] + 8 * v86);

        if (*(v88 + 16))
        {
          v89._countAndFlagsBits = 0x20676E69646E6550;
          v89._object = 0xEF0A3A736D657469;
          String.append(_:)(v89);
          v90 = 0;
          v91 = 1 << *(v88 + 32);
          if (v91 < 64)
          {
            v92 = ~(-1 << v91);
          }

          else
          {
            v92 = -1;
          }

          v93 = v92 & *(v88 + 56);
          v94 = (v91 + 63) >> 6;
          while (v93)
          {
            v95 = v90;
LABEL_47:
            v96 = (*(v88 + 48) + ((v95 << 10) | (16 * __clz(__rbit64(v93)))));
            v97 = *v96;
            v98 = v96[1];
            v93 &= v93 - 1;
            v234._countAndFlagsBits = 538976288;
            v234._object = 0xE400000000000000;

            v99._countAndFlagsBits = v97;
            v99._object = v98;
            String.append(_:)(v99);

            v100._countAndFlagsBits = 10;
            v100._object = 0xE100000000000000;
            String.append(_:)(v100);
            String.append(_:)(v234);
          }

          while (1)
          {
            v95 = v90 + 1;
            if (__OFADD__(v90, 1))
            {
              goto LABEL_76;
            }

            if (v95 >= v94)
            {

              v59 = v204;
              v62 = v219;
              v36 = v217;
              goto LABEL_52;
            }

            v93 = *(v88 + 56 + 8 * v95);
            ++v90;
            if (v93)
            {
              v90 = v95;
              goto LABEL_47;
            }
          }
        }

LABEL_52:
        v55 = v215;
      }

      else
      {
      }

      v102 = v59;
      v234._countAndFlagsBits = 0x746F687370616E53;
      v234._object = 0xEA0000000000203ALL;
      v103._countAndFlagsBits = sub_100264AAC(v101);
      String.append(_:)(v103);

      String.append(_:)(v234);

      v234._countAndFlagsBits = 0;
      v234._object = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v234._countAndFlagsBits = 0xD000000000000011;
      v234._object = v226;
      v104 = v228;
      sub_10002ADF8(v65, v228, type metadata accessor for HostedRoutingSessionSnapshot);
      (*v225)(v104, 0, 1, v227);
      v105 = v229;
      (*v224)(v229, v55 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v230);
      sub_100265398(v104, v105, v62);
      v106 = type metadata accessor for RoutingSessionSnapshot();
      v107 = v62;
      v108 = *(v106 - 8);
      if ((*(v108 + 48))(v107, 1, v106) == 1)
      {
        goto LABEL_78;
      }

      v109 = RoutingSessionSnapshot.debugDescription.getter();
      v111 = v110;
      (*(v108 + 8))(v107, v106);
      v112._countAndFlagsBits = v109;
      v112._object = v111;
      String.append(_:)(v112);

      String.append(_:)(v234);

      sub_10002AC54(v65, type metadata accessor for HostedRoutingSessionSnapshot);
      v40 = v231;
      v38 = v216;
      v0 = v102;
      if (!v44)
      {
        goto LABEL_6;
      }
    }

    v113._countAndFlagsBits = 0xD000000000000014;
    v113._object = 0x800000010043FF20;
    String.append(_:)(v113);
    v114 = sub_1003010FC();
    v115 = 0;
    v116 = v114[8];
    v221 = v114 + 8;
    v222 = v114;
    v117 = 1 << *(v114 + 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v119 = v118 & v116;
    v120 = (v117 + 63) >> 6;
    v121 = v232;
    v122 = v214;
    v231 = v120;
    if ((v118 & v116) != 0)
    {
      while (1)
      {
        v123 = v115;
LABEL_67:
        v126 = __clz(__rbit64(v119));
        v119 &= v119 - 1;
        v127 = v126 | (v123 << 6);
        v128 = (v222[6] + 16 * v127);
        v130 = *v128;
        v129 = v128[1];
        v131 = v223;
        sub_10001D9AC(v222[7] + *(v205 + 72) * v127, v223, &qword_100525F28, &qword_100458120);
        v132 = sub_1001BC5A8(&qword_100525F90, &qword_100458190);
        v133 = *(v132 + 48);
        *v122 = v130;
        v122[1] = v129;
        sub_10003AEF0(v131, v122 + v133, &qword_100525F28, &qword_100458120);
        (*(*(v132 - 8) + 56))(v122, 0, 1, v132);

        v125 = v123;
        v121 = v232;
LABEL_68:
        v134 = v213;
        sub_10003AEF0(v122, v213, &qword_100525F70, &unk_100458170);
        v135 = sub_1001BC5A8(&qword_100525F90, &qword_100458190);
        if ((*(*(v135 - 8) + 48))(v134, 1, v135) == 1)
        {
          break;
        }

        v233 = v125;
        v136 = *(v134 + 8);

        v137 = (v134 + *(v135 + 48));
        v138 = *v137;
        v139 = v212;
        v140 = *(v212 + 48);
        v141 = v210;
        sub_10002AF68(v137 + v140, &v210[v140], type metadata accessor for HostedRoutingSessionSnapshot);
        v142 = *(v139 + 48);
        *v121 = v138;
        sub_10002AF68(&v141[v140], v121 + v142, type metadata accessor for HostedRoutingSessionSnapshot);
        v234._countAndFlagsBits = 0x203A746E65696C43;
        v234._object = 0xE800000000000000;
        v143._countAndFlagsBits = sub_1003001B8();
        String.append(_:)(v143);

        v144._countAndFlagsBits = 10;
        v144._object = 0xE100000000000000;
        String.append(_:)(v144);
        String.append(_:)(v234);

        v145 = v223;
        sub_10001D9AC(v121, v223, &qword_100525F28, &qword_100458120);
        v146 = *(v139 + 48);
        v147 = *(*v145 + 32);

        v148 = *(v147 + 96);

        v234._countAndFlagsBits = v148;
        type metadata accessor for RoutingClientEventContext(0);
        sub_100004930(&qword_100525F98, type metadata accessor for RoutingClientEventContext);
        v149 = dispatch thunk of CustomStringConvertible.description.getter();
        v151 = v150;

        sub_10002AC54(v145 + v146, type metadata accessor for HostedRoutingSessionSnapshot);
        v152._countAndFlagsBits = v149;
        v152._object = v151;
        String.append(_:)(v152);

        v234._countAndFlagsBits = 0x746F687370616E53;
        v234._object = 0xEA0000000000203ALL;
        sub_10001D9AC(v232, v145, &qword_100525F28, &qword_100458120);
        v153 = *v145;

        v155 = *(v139 + 48);
        v156 = sub_100264AAC(v154);
        v158 = v157;
        v159 = v145 + v155;
        v121 = v232;
        sub_10002AC54(v159, type metadata accessor for HostedRoutingSessionSnapshot);
        v160._countAndFlagsBits = v156;
        v160._object = v158;
        String.append(_:)(v160);

        String.append(_:)(v234);

        v234._countAndFlagsBits = 0;
        v234._object = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v234._countAndFlagsBits = 0xD000000000000011;
        v234._object = v226;
        sub_10001D9AC(v121, v145, &qword_100525F28, &qword_100458120);
        v161 = *v145;

        v162 = v145 + *(v139 + 48);
        v163 = v209;
        v164 = v228;
        sub_10002AF68(v162, v228, type metadata accessor for HostedRoutingSessionSnapshot);
        (*v225)(v164, 0, 1, v227);
        v165 = v211;
        sub_10001D9AC(v121, v211, &qword_100525F28, &qword_100458120);
        v166 = *(v139 + 48);
        v167 = v229;
        (*v224)(v229, *v165 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_configuration, v230);

        sub_100265398(v164, v167, v163);
        sub_10002AC54(v165 + v166, type metadata accessor for HostedRoutingSessionSnapshot);
        v168 = type metadata accessor for RoutingSessionSnapshot();
        v169 = *(v168 - 8);
        if ((*(v169 + 48))(v163, 1, v168) == 1)
        {
          goto LABEL_79;
        }

        v170 = RoutingSessionSnapshot.debugDescription.getter();
        v172 = v171;
        (*(v169 + 8))(v163, v168);
        v173._countAndFlagsBits = v170;
        v173._object = v172;
        String.append(_:)(v173);

        v174._countAndFlagsBits = 10;
        v174._object = 0xE100000000000000;
        String.append(_:)(v174);
        String.append(_:)(v234);

        sub_1000038A4(v121, &qword_100525F28, &qword_100458120);
        v115 = v233;
        v122 = v214;
        v120 = v231;
        if (!v119)
        {
          goto LABEL_60;
        }
      }

      v176._countAndFlagsBits = 10;
      v176._object = 0xE100000000000000;
      String.append(_:)(v176);
      sub_100028BB8();
      sub_1002C9EE8();
      v178 = v177;
      v180 = v179;

      v181._countAndFlagsBits = v178;
      v181._object = v180;
      String.append(_:)(v181);

      v182._countAndFlagsBits = 10;
      v182._object = 0xE100000000000000;
      String.append(_:)(v182);
      sub_100030F88();
      v183 = sub_10033C42C();
      v185 = v184;

      v186._countAndFlagsBits = v183;
      v186._object = v185;
      String.append(_:)(v186);

      v187._countAndFlagsBits = 10;
      v187._object = 0xE100000000000000;
      String.append(_:)(v187);
      sub_100301054();
      v188 = sub_10024E44C();
      v190 = v189;

      v191._countAndFlagsBits = v188;
      v191._object = v190;
      String.append(_:)(v191);

      v192._countAndFlagsBits = 10;
      v192._object = 0xE100000000000000;
      String.append(_:)(v192);
      type metadata accessor for Preferences();
      v193._countAndFlagsBits = static Preferences.diagnosticDescription.getter();
      String.append(_:)(v193);

      v194._countAndFlagsBits = 10;
      v194._object = 0xE100000000000000;
      String.append(_:)(v194);
      sub_1000321BC();
      v195 = sub_1002FD9D4();
      v197 = v196;

      v198._countAndFlagsBits = v195;
      v198._object = v197;
      String.append(_:)(v198);

      v199._countAndFlagsBits = 10;
      v199._object = 0xE100000000000000;
      String.append(_:)(v199);
      return;
    }

LABEL_60:
    if (v120 <= v115 + 1)
    {
      v124 = v115 + 1;
    }

    else
    {
      v124 = v120;
    }

    v125 = v124 - 1;
    while (1)
    {
      v123 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        break;
      }

      if (v123 >= v120)
      {
        v175 = sub_1001BC5A8(&qword_100525F90, &qword_100458190);
        (*(*(v175 - 8) + 56))(v122, 1, 1, v175);
        v119 = 0;
        goto LABEL_68;
      }

      v119 = v221[v123];
      ++v115;
      if (v119)
      {
        goto LABEL_67;
      }
    }
  }

  else
  {
LABEL_6:
    if (v202 <= v40 + 1)
    {
      v47 = v40 + 1;
    }

    else
    {
      v47 = v202;
    }

    while (1)
    {
      v46 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v46 >= v202)
      {
        v231 = v47 - 1;
        v45 = v0;
        v84 = sub_1001BC5A8(&qword_100525F88, &qword_100458188);
        (*(*(v84 - 8) + 56))(v36, 1, 1, v84);
        v44 = 0;
        goto LABEL_14;
      }

      v44 = *&v203[8 * v46];
      ++v40;
      if (v44)
      {
        v45 = v0;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_1003293A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_10002ADF8(v14, v11, type metadata accessor for HostedRoutingSession);
        sub_10002ADF8(v15, v8, type metadata accessor for HostedRoutingSession);
        sub_100004930(&qword_100523CE0, type metadata accessor for HostedRoutingSession);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10002AC54(v8, type metadata accessor for HostedRoutingSession);
        sub_10002AC54(v11, type metadata accessor for HostedRoutingSession);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1003295AC()
{
  v1 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  return (*(**(v0 + 16) + 504))(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), 1);
}

unint64_t sub_10032970C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1[1];
  v30 = a1[2];
  v31 = *(a1 + 48);
  v28 = *a1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_10028BE34();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = result & ~v7;
  v9 = 0uLL;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    sub_100276B34();
    while (1)
    {
      v11 = *(v4 + 48) + 56 * v8;
      v22 = *v11;
      v24 = *(v11 + 8);
      v25 = *(v11 + 16);
      v26 = *(v11 + 32);
      v27 = *(v11 + 48);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        break;
      }

      v8 = (v8 + 1) & v10;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0uLL;
        v9 = 0uLL;
        goto LABEL_10;
      }
    }

    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v23 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003298C0();
      v18 = v23;
    }

    v19 = *(v18 + 48) + 56 * v8;
    v12 = *v19;
    v13 = *(v19 + 8);
    v20 = *(v19 + 32);
    v21 = *(v19 + 16);
    v14 = *(v19 + 48);
    result = sub_100329FF4(v8);
    v15 = v20;
    v9 = v21;
    *v2 = v23;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

LABEL_10:
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v9;
  *(a2 + 32) = v15;
  *(a2 + 48) = v14;
  return result;
}

void *sub_1003298C0()
{
  sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
  v23 = v0;
  v1 = *v0;
  v24 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    result = (v24 + 56);
    v3 = ((1 << *(v24 + 32)) + 63) >> 6;
    if (v24 != v1 || result >= v1 + 56 + 8 * v3)
    {
      result = memmove(result, (v1 + 56), 8 * v3);
    }

    v5 = 0;
    *(v24 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 56);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = 56 * (v11 | (v5 << 6));
        v15 = *(v1 + 48) + v14;
        v16 = *(v15 + 8);
        v17 = *(v15 + 16);
        v18 = *(v15 + 24);
        v19 = *(v15 + 32);
        v20 = *(v15 + 40);
        v21 = *(v24 + 48) + v14;
        v22 = *(v15 + 48);
        *v21 = *v15;
        *(v21 + 8) = v16;
        *(v21 + 16) = v17;
        *(v21 + 24) = v18;
        *(v21 + 32) = v19;
        *(v21 + 40) = v20;
        *(v21 + 48) = v22;

        result = sub_10026D0B8(v17, v18, v19, v20, v22);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v23 = v24;
  }

  return result;
}

uint64_t sub_100329A74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v37 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = v3 + 56;
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
    v31 = v2;
    v32 = (v8 + 63) >> 6;
    v11 = result + 56;
    v33 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_17:
      v17 = *(v3 + 48) + 56 * (v14 | (v6 << 6));
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v17 + 40);
      v22 = *(v17 + 48);
      v34 = *(v17 + 8);
      v35 = *v17;
      v23 = *(v37 + 40);

      sub_10026D0B8(v18, v19, v20, v21, v22);
      sub_10028BE34();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v37 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v37 + 48) + 56 * v12;
      *v13 = v35;
      *(v13 + 8) = v34;
      *(v13 + 16) = v18;
      v3 = v33;
      *(v13 + 24) = v19;
      *(v13 + 32) = v20;
      *(v13 + 40) = v21;
      *(v13 + 48) = v22;
      ++*(v37 + 16);
      v10 = v36;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v32)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
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
    *v2 = v37;
  }

  return result;
}

uint64_t sub_100329D40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 16);
      v37 = *(v19 + 8);
      v35 = *(v19 + 32);
      v36 = *(v19 + 24);
      v34 = *(v19 + 40);
      v33 = *(v19 + 48);
      v22 = *(v6 + 40);
      sub_10028BE34();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      *v15 = v20;
      *(v15 + 8) = v37;
      *(v15 + 16) = v21;
      *(v15 + 24) = v36;
      *(v15 + 32) = v35;
      *(v15 + 40) = v34;
      *(v15 + 48) = v33;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100329FF4(unint64_t result)
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

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_10028BE34();
      do
      {
        v14 = 56 * v6;
        v15 = *(v3 + 48) + 56 * v6;
        v26 = *v15;
        v27 = *(v15 + 8);
        v28 = *(v15 + 16);
        v29 = *(v15 + 32);
        v30 = *(v15 + 48);
        v16 = *(v3 + 40);
        v17 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v17 >= v10 && v2 >= v17)
          {
LABEL_16:
            v20 = *(v3 + 48);
            v21 = v20 + 56 * v2;
            v22 = (v20 + v14);
            if (56 * v2 < v14 || v21 >= v22 + 56 || v2 != v6)
            {
              v11 = *v22;
              v12 = v22[1];
              v13 = v22[2];
              *(v21 + 48) = *(v22 + 6);
              *(v21 + 16) = v12;
              *(v21 + 32) = v13;
              *v21 = v11;
              v2 = v6;
            }
          }
        }

        else if (v17 >= v10 || v2 >= v17)
        {
          goto LABEL_16;
        }

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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10032A1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100031588(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100039510();
      v11 = v22;
    }

    v12 = *(*(v11 + 48) + 8 * v8);

    v13 = *(v11 + 56);
    v14 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    v21 = *(v14 - 8);
    sub_10002AF68(v13 + *(v21 + 72) * v8, a2, type metadata accessor for HostedRoutingSessionSnapshot);
    sub_10032B314(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_10032A358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
      sub_10032C754();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
    v22 = *(v15 - 8);
    sub_10003AEF0(v14 + *(v22 + 72) * v9, a3, &qword_100525F28, &qword_100458120);
    sub_10032B510(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10032A4E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_100031588(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v17 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10032C9B8(a2, a3);
    v13 = v17;
  }

  v14 = *(*(v13 + 48) + 8 * v10);

  v15 = *(*(v13 + 56) + 8 * v10);
  sub_10032B714(v10, v13);
  *v6 = v13;
  return v15;
}

uint64_t sub_10032A5AC()
{
  v1 = *(sub_1001BC5A8(&qword_100525F38, &unk_100458130) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10030494C(v2, v3, v4, v5);
}

uint64_t sub_10032A620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000698C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10032CB0C();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_10021A064(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_10032A6D0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6 - 8);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1001BC5A8(&qword_100526720, &qword_1004584E8);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v40 = v3;
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
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v41 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v42)
      {
        sub_10002AF68(v27, v43, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      else
      {
        sub_10002ADF8(v27, v43, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      v28 = *(v12 + 40);
      Hasher.init(_seed:)();
      v29 = *(v25 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
      v30 = *(v25 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier + 8);
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_10002AF68(v43, *(v12 + 56) + v26 * v20, type metadata accessor for HostedRoutingSessionSnapshot);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10032AA44(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100526718, &qword_1004584E0);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v2;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_10003AEF0(v31, v45, &qword_100525F28, &qword_100458120);
      }

      else
      {
        sub_10001D9AC(v31, v45, &qword_100525F28, &qword_100458120);
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
      *v21 = v28;
      v21[1] = v29;
      result = sub_10003AEF0(v45, *(v12 + 56) + v30 * v20, &qword_100525F28, &qword_100458120);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
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

uint64_t sub_10032ADC0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1001BC5A8(a3, a4);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      v26 = *(v23 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
      v27 = *(v23 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier + 8);
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10032B05C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005266E0, &unk_100458490);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
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
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_10032B314(unint64_t result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v11 = *(v10 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
      v12 = *(v10 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier + 8);

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
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8) + 72);
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

unint64_t sub_10032B510(unint64_t result, uint64_t a2)
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
      v19 = *(*(sub_1001BC5A8(&qword_100525F28, &qword_100458120) - 8) + 72);
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

uint64_t sub_10032B714(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v11 = *(v10 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
      v12 = *(v10 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier + 8);

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10032B8D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000698C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
      return sub_10001CECC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_100525F28, &qword_100458120);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_10032C754();
    goto LABEL_7;
  }

  sub_10032AA44(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_10000698C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_10032C698(v12, a2, a3, a1, v18);
}

unint64_t sub_10032BA48()
{
  result = qword_100525F48;
  if (!qword_100525F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525F48);
  }

  return result;
}

uint64_t sub_10032BAF8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  ObjectType = swift_getObjectType();
  return (*(v2 + 56))(v3, v4, v5, ObjectType, v2);
}

uint64_t sub_10032BB64()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  ObjectType = swift_getObjectType();
  return (*(v2 + 56))(v4, v3, 0, ObjectType, v2);
}

uint64_t sub_10032BBC4()
{
  v1 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RoutingSessionConfiguration.Attribution() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1003072F4(v0 + 16, *(v0 + 72), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v7), v0 + v9, *(v0 + v10), *(v0 + v10 + 8), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10032BD68()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10032BE1C()
{
  v1 = *(type metadata accessor for RoutingDialog.Action() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(**(v0 + 16) + 536))(*(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), 1);
}

uint64_t sub_10032BEE0()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 544))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032BFA0()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = (*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v5 = *v4;
  v6 = v4[1];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 64);
  swift_unknownObjectRetain();
  v8(v0 + v2, v3, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_10032C09C(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_10031031C(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10032C148()
{
  v1 = *(type metadata accessor for RoutingControls.TVRemoteControl.Context() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 40);
  swift_unknownObjectRetain();
  v7(v0 + v2, ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10032C214()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 64);
  swift_unknownObjectRetain();
  v7(v0 + v2, 0, ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10032C2E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_100031588(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_10032ADC0(v18, a3 & 1, a4, a5);
      v22 = *v8;
      v13 = sub_100031588(a2);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        type metadata accessor for RoutingSessionServer.Client(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10032C9B8(a4, a5);
      v13 = v21;
    }
  }

  v24 = *v8;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  *(v24[6] + 8 * v13) = a2;
  *(v24[7] + 8 * v13) = a1;
  v28 = v24[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v29;
}

uint64_t sub_10032C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000698C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10032B05C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10000698C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10032CB0C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_10032C5F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  result = sub_10002AF68(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for HostedRoutingSessionSnapshot);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_10032C698(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  result = sub_10003AEF0(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_100525F28, &qword_100458120);
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

void *sub_10032C754()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v4;
  sub_1001BC5A8(&qword_100526718, &qword_1004584E0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v35 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v32;
        v27 = *(v33 + 72) * v21;
        sub_10001D9AC(*(v5 + 56) + v27, v32, &qword_100525F28, &qword_100458120);
        v28 = v34;
        v29 = (*(v34 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10003AEF0(v26, *(v28 + 56) + v27, &qword_100525F28, &qword_100458120);

        v16 = v35;
      }

      while (v35);
    }

    v19 = v11;
    v7 = v34;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v35 = (v20 - 1) & v20;
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

void *sub_10032C9B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001BC5A8(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10032CB0C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005266E0, &unk_100458490);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t (*sub_10032CCD8(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10032D4AC(v6);
  v6[9] = sub_10032CF28(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10032CD7C;
}

uint64_t (*sub_10032CD80(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10032D4E0(v6);
  v6[9] = sub_10032D098(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_100331924;
}

uint64_t (*sub_10032CE24(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10032D4E0(v6);
  v6[9] = sub_10032D340(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_100331924;
}

void sub_10032CEC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_10032CF28(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100031588(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10032C9B8(&qword_1005266D8, &qword_100458488);
      v11 = v19;
      goto LABEL_11;
    }

    sub_10032ADC0(v16, a3 & 1, &qword_1005266D8, &qword_100458488);
    v20 = *v4;
    v11 = sub_100031588(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_10032D094;
}

uint64_t (*sub_10032D098(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100031588(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10032C9B8(&qword_1005266F8, &qword_1004584B8);
      v11 = v19;
      goto LABEL_11;
    }

    sub_10032ADC0(v16, a3 & 1, &qword_1005266F8, &qword_1004584B8);
    v20 = *v4;
    v11 = sub_100031588(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_100331928;
}

void sub_10032D204(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if ((*a1)[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v15 = v2[1];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v10 = v2[3];
      v11 = *v2[2];
      v12 = *(*(v11 + 48) + 8 * v10);

      sub_10032B714(v10, v11);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v13 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v13;
    *(v6[7] + 8 * v5) = v3;
    v14 = v6[2];
    v9 = __OFADD__(v14, 1);
    v4 = v14 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v16 = *v2;

  free(v2);
}

uint64_t (*sub_10032D340(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100031588(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10032C9B8(&qword_100526700, &unk_1004584C8);
      v11 = v19;
      goto LABEL_11;
    }

    sub_10032ADC0(v16, a3 & 1, &qword_100526700, &unk_1004584C8);
    v20 = *v4;
    v11 = sub_100031588(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_100331928;
}

uint64_t (*sub_10032D4AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10032D4D4;
}

uint64_t (*sub_10032D4E0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100331894;
}

uint64_t sub_10032D508(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *a2;
  v39[0] = *(a2 + 16);
  v39[1] = v5;
  v40 = *(a2 + 48);
  v38 = v6;
  v35 = v39[0];
  v36 = v5;
  v37 = v40;
  v34 = v6;
  v7 = *v2;
  v8 = *(*v2 + 40);
  sub_10028BE34();
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_100276B34();
    while (1)
    {
      v13 = *(v7 + 48) + 56 * v11;
      v14 = *(v13 + 8);
      v15 = *(v13 + 48);
      v16 = *(v13 + 16);
      v17 = *(v13 + 32);
      v30[0] = *v13;
      v30[1] = v14;
      v31 = v16;
      v32 = v17;
      v33 = v15;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001E6204(&v38);
    sub_100238E4C(v39);
    v22 = *(v7 + 48) + 56 * v11;
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v26 = *(v22 + 32);
    v27 = *(v22 + 40);
    *a1 = *v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 24) = v25;
    *(a1 + 32) = v26;
    *(a1 + 40) = v27;
    v28 = *(v22 + 48);
    *(a1 + 48) = v28;

    sub_10026D0B8(v24, v25, v26, v27, v28);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v2;
    sub_10028BC98(&v38, v30);
    sub_10026D080(v39, v30);
    sub_10032DE94(a2, v11, isUniquelyReferenced_nonNull_native);
    *v2 = v29;
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return 1;
  }
}

uint64_t sub_10032D700()
{
  v1 = *(type metadata accessor for ContinuousRoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 552))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032D7C4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_100300FBC(v12);
      v8 = sub_10030D88C(v11, v6);
      if (*v9)
      {
        sub_10032970C((v1 + 32), v13);
        (v8)(v11, 0);
        result = (v7)(v12, 0);
        if (v14)
        {
          sub_1000038A4(v13, &qword_1005266C8, &unk_100458470);
          v10 = *(v1 + 80);
          if (v10 <= 6 && ((1 << v10) & 0x47) != 0)
          {
            sub_10031C9DC(v6);
          }
        }
      }

      else
      {
        (v8)(v11, 0);
        result = (v7)(v12, 0);
      }

      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_10032D94C()
{
  v1 = *(type metadata accessor for RoutingSession.Action() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 568))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032DA0C()
{
  v1 = *(type metadata accessor for RoutingItem.Action() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 576))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032DACC()
{
  v1 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v2 = (*(v1 + 80) + 65) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);
  v9 = *(v0 + v7);
  v10 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003165A0(v0 + 16, v0 + v2, v0 + v5, v8, v9);
}

uint64_t sub_10032DBF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 32))(ObjectType, v2);
}

uint64_t sub_10032DC40(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);
  v8 = *(v1 + v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_10032DD20()
{
  v1 = *(type metadata accessor for RoutingMode() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 592))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032DE94(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v27 = *(result + 48);
  v25 = *(result + 16);
  v26 = *(result + 32);
  v24 = *result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100329D40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1003298C0();
      goto LABEL_12;
    }

    sub_100329A74(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_10028BE34();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100276B34();
    do
    {
      v12 = *(v8 + 48) + 56 * a2;
      v19 = *v12;
      v20 = *(v12 + 8);
      v21 = *(v12 + 16);
      v22 = *(v12 + 32);
      v23 = *(v12 + 48);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 56 * a2;
  v15 = *(v5 + 16);
  *v14 = *v5;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v5 + 32);
  *(v14 + 48) = *(v5 + 48);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

size_t sub_10032E068(size_t a1, int64_t a2, char a3)
{
  result = sub_1000313AC(a1, a2, a3, *v3, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession);
  *v3 = result;
  return result;
}

unint64_t sub_10032E0AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100026868(isUniquelyReferenced_nonNull_native, v15, 1, v5, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
    *v3 = v5;
  }

  result = sub_10032F3C8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_10032E1A4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a4;
  v144 = a5;
  v131 = a1;
  v136 = type metadata accessor for HostedRoutingItem(0);
  v141 = *(v136 - 8);
  v10 = *(v141 + 64);
  v11 = __chkstk_darwin(v136);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v120 - v17;
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v120 - v21;
  v23 = __chkstk_darwin(v20);
  result = __chkstk_darwin(v23);
  v142 = a3;
  if (a3[1] < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_99:
    v22 = *v131;
    if (*v131)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v29 = a3[1];
  v126 = &v120 - v25;
  v127 = v28;
  v137 = v27;
  v134 = v26;
  v125 = a6;
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v124 = v18;
  while (1)
  {
    if (v30 + 1 >= v29)
    {
      v44 = v30 + 1;
    }

    else
    {
      v129 = v29;
      v32 = *v142;
      v33 = *(v141 + 72);
      v34 = v30;
      v35 = *v142 + v33 * (v30 + 1);
      v36 = v126;
      sub_10002ADF8(v35, v126, type metadata accessor for HostedRoutingItem);
      v140 = v32;
      v37 = v32 + v33 * v34;
      v38 = v127;
      sub_10002ADF8(v37, v127, type metadata accessor for HostedRoutingItem);
      LODWORD(v139) = v143(v36, v38);
      if (v7)
      {
        sub_10002AC54(v38, type metadata accessor for HostedRoutingItem);
        v119 = v36;
        goto LABEL_112;
      }

      sub_10002AC54(v38, type metadata accessor for HostedRoutingItem);
      result = sub_10002AC54(v36, type metadata accessor for HostedRoutingItem);
      v123 = v129 - 1;
      v138 = v129 - 2;
      v39 = v140 + v33 * (v34 + 2);
      v128 = v34;
      v40 = v33;
      v140 = v33;
      while (v138 != v34)
      {
        sub_10002ADF8(v39, v22, type metadata accessor for HostedRoutingItem);
        v41 = v22;
        v42 = v137;
        sub_10002ADF8(v35, v137, type metadata accessor for HostedRoutingItem);
        v43 = v143(v41, v42);
        sub_10002AC54(v42, type metadata accessor for HostedRoutingItem);
        result = sub_10002AC54(v41, type metadata accessor for HostedRoutingItem);
        ++v34;
        v40 = v140;
        v39 += v140;
        v35 += v140;
        v22 = v41;
        if ((v139 ^ v43))
        {
          v44 = v34 + 1;
          goto LABEL_12;
        }
      }

      v34 = v123;
      v44 = v129;
LABEL_12:
      v30 = v128;
      if ((v139 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v44 < v128)
      {
        goto LABEL_136;
      }

      if (v128 <= v34)
      {
        v45 = v44;
        v46 = v40 * (v44 - 1);
        v47 = v45 * v40;
        v129 = v45;
        v130 = v22;
        v48 = v45;
        v49 = v128;
        v50 = v128 * v40;
        do
        {
          if (v49 != --v48)
          {
            v51 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            sub_10002AF68(v51 + v50, v133, type metadata accessor for HostedRoutingItem);
            if (v50 < v46 || v51 + v50 >= (v51 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10002AF68(v133, v51 + v46, type metadata accessor for HostedRoutingItem);
            v22 = v130;
            v40 = v140;
          }

          ++v49;
          v46 -= v40;
          v47 -= v40;
          v50 += v40;
        }

        while (v49 < v48);
        v18 = v124;
        v30 = v128;
        v44 = v129;
      }

      else
      {
LABEL_15:
        v18 = v124;
      }
    }

    v52 = v142[1];
    if (v44 >= v52)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v44, v30))
    {
      goto LABEL_132;
    }

    if (v44 - v30 >= v125)
    {
LABEL_36:
      v54 = v44;
      if (v44 < v30)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v30, v125))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v30 + v125 >= v52)
    {
      v53 = v142[1];
    }

    else
    {
      v53 = v30 + v125;
    }

    if (v53 < v30)
    {
      goto LABEL_135;
    }

    if (v44 == v53)
    {
      goto LABEL_36;
    }

    v130 = v22;
    v102 = *v142;
    v103 = *(v141 + 72);
    v104 = *v142 + v103 * (v44 - 1);
    v139 = -v103;
    v140 = v102;
    v128 = v30;
    v105 = v30 - v44;
    v121 = v103;
    v106 = v102 + v44 * v103;
    v138 = v53;
    v132 = v31;
    do
    {
      v122 = v106;
      v123 = v105;
      v129 = v104;
      while (1)
      {
        sub_10002ADF8(v106, v18, type metadata accessor for HostedRoutingItem);
        v107 = v18;
        v108 = v134;
        sub_10002ADF8(v104, v134, type metadata accessor for HostedRoutingItem);
        v109 = v143(v107, v108);
        if (v7)
        {
          sub_10002AC54(v108, type metadata accessor for HostedRoutingItem);
          v119 = v107;
LABEL_112:
          sub_10002AC54(v119, type metadata accessor for HostedRoutingItem);
        }

        v110 = v109;
        v111 = v44;
        sub_10002AC54(v108, type metadata accessor for HostedRoutingItem);
        result = sub_10002AC54(v107, type metadata accessor for HostedRoutingItem);
        v18 = v107;
        if ((v110 & 1) == 0)
        {
          break;
        }

        if (!v140)
        {
          goto LABEL_138;
        }

        v112 = v135;
        sub_10002AF68(v106, v135, type metadata accessor for HostedRoutingItem);
        swift_arrayInitWithTakeFrontToBack();
        sub_10002AF68(v112, v104, type metadata accessor for HostedRoutingItem);
        v104 += v139;
        v106 += v139;
        v113 = __CFADD__(v105++, 1);
        v44 = v111;
        v7 = 0;
        v31 = v132;
        if (v113)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v31 = v132;
LABEL_95:
      ++v44;
      v104 = v129 + v121;
      v105 = v123 - 1;
      v106 = v122 + v121;
      v54 = v138;
    }

    while (v44 != v138);
    v22 = v130;
    v30 = v128;
    if (v138 < v128)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v56 = *(v31 + 2);
    v55 = *(v31 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_10024A7E0((v55 > 1), v56 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v57;
    v58 = &v31[16 * v56];
    *(v58 + 4) = v30;
    *(v58 + 5) = v54;
    v138 = v54;
    v59 = *v131;
    if (!*v131)
    {
      goto LABEL_141;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v29 = v142[1];
    v30 = v138;
    if (v138 >= v29)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v60 = v57 - 1;
    if (v57 >= 4)
    {
      v65 = &v31[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_118;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_119;
      }

      v72 = &v31[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_121;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_124;
      }

      if (v76 >= v68)
      {
        v94 = &v31[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v64)
        {
          goto LABEL_120;
        }

        v77 = &v31[16 * v57];
        v79 = *v77;
        v78 = *(v77 + 1);
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_123;
        }

        v83 = &v31[16 * v60 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v81, v86))
        {
          goto LABEL_127;
        }

        if (v81 + v86 < v63)
        {
          goto LABEL_70;
        }

        if (v63 < v86)
        {
          v60 = v57 - 2;
        }
      }
    }

    else
    {
      if (v57 == 3)
      {
        v61 = *(v31 + 4);
        v62 = *(v31 + 5);
        v71 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        v64 = v71;
        goto LABEL_56;
      }

      v87 = &v31[16 * v57];
      v89 = *v87;
      v88 = *(v87 + 1);
      v71 = __OFSUB__(v88, v89);
      v81 = v88 - v89;
      v82 = v71;
LABEL_70:
      if (v82)
      {
        goto LABEL_122;
      }

      v90 = &v31[16 * v60];
      v92 = *(v90 + 4);
      v91 = *(v90 + 5);
      v71 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v71)
      {
        goto LABEL_125;
      }

      if (v93 < v81)
      {
        goto LABEL_3;
      }
    }

    v98 = v60 - 1;
    if (v60 - 1 < v57)
    {
      if (!*v142)
      {
        goto LABEL_137;
      }

      v99 = *&v31[16 * v98 + 32];
      v100 = *&v31[16 * v60 + 40];
      sub_10032EC9C(*v142 + *(v141 + 72) * v99, *v142 + *(v141 + 72) * *&v31[16 * v60 + 32], *v142 + *(v141 + 72) * v100, v59, v143, v144);
      if (v7)
      {
      }

      if (v100 < v99)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_10024C200(v31);
      }

      if (v98 >= *(v31 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v31[16 * v98];
      *(v101 + 4) = v99;
      *(v101 + 5) = v100;
      v145 = v31;
      result = sub_10024C174(v60);
      v31 = v145;
      v57 = *(v145 + 2);
      if (v57 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_10024C200(v31);
  v31 = result;
LABEL_101:
  v145 = v31;
  v114 = *(v31 + 2);
  if (v114 < 2)
  {
  }

  v115 = v143;
  while (*v142)
  {
    v116 = *&v31[16 * v114];
    v117 = *&v31[16 * v114 + 24];
    sub_10032EC9C(*v142 + *(v141 + 72) * v116, *v142 + *(v141 + 72) * *&v31[16 * v114 + 16], *v142 + *(v141 + 72) * v117, v22, v115, v144);
    if (v7)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_10024C200(v31);
    }

    if (v114 - 2 >= *(v31 + 2))
    {
      goto LABEL_129;
    }

    v118 = &v31[16 * v114];
    *v118 = v116;
    *(v118 + 1) = v117;
    v145 = v31;
    result = sub_10024C174(v114 - 1);
    v31 = v145;
    v114 = *(v145 + 2);
    if (v114 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

unint64_t sub_10032EC9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v56 = a5;
  v57 = a3;
  v54 = type metadata accessor for HostedRoutingItem(0);
  v11 = *(*(v54 - 8) + 64);
  v12 = __chkstk_darwin(v54);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - v19;
  result = __chkstk_darwin(v18);
  v23 = &v46 - v22;
  v53 = *(v24 + 72);
  if (!v53)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_66;
  }

  v25 = v57 - a2;
  if (v57 - a2 != 0x8000000000000000 || v53 != -1)
  {
    v26 = (a2 - a1) / v53;
    v60 = a1;
    v59 = a4;
    v52 = a1;
    if (v26 < v25 / v53)
    {
      v27 = v26 * v53;
      if (a4 < result || result + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v52;
LABEL_17:
      v52 = a4 + v27;
      v58 = a4 + v27;
      if (v27 >= 1 && a2 < v57)
      {
        while (1)
        {
          v30 = result;
          sub_10002ADF8(a2, v23, type metadata accessor for HostedRoutingItem);
          sub_10002ADF8(a4, v20, type metadata accessor for HostedRoutingItem);
          v31 = v56(v23, v20);
          if (v7)
          {
            break;
          }

          v32 = v31;
          v33 = a4;
          sub_10002AC54(v20, type metadata accessor for HostedRoutingItem);
          sub_10002AC54(v23, type metadata accessor for HostedRoutingItem);
          if (v32)
          {
            v34 = v53;
            v35 = v30;
            if (v30 < a2 || v30 >= a2 + v53)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              a2 += v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }

              a2 += v34;
            }
          }

          else
          {
            v36 = a4;
            v34 = v53;
            a4 += v53;
            v35 = v30;
            if (v30 < v33 || v30 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }
            }

            v59 = a4;
          }

          result = v35 + v34;
          v60 = result;
          if (a4 >= v52 || a2 >= v57)
          {
            goto LABEL_64;
          }
        }

        sub_10002AC54(v20, type metadata accessor for HostedRoutingItem);
        sub_10002AC54(v23, type metadata accessor for HostedRoutingItem);
      }

LABEL_64:
      sub_10032F2E4(&v60, &v59, &v58);
      return 1;
    }

    v28 = v25 / v53 * v53;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v37 = a4 + v28;
        if (v28 >= 1)
        {
          v38 = -v53;
          v39 = v37;
          v48 = v17;
          v49 = v14;
          do
          {
            v46 = v37;
            v40 = a2;
            v50 = a2;
            v51 = a2 + v38;
            while (1)
            {
              v41 = v57;
              if (v40 <= result)
              {
                v60 = v40;
                v58 = v46;
                goto LABEL_64;
              }

              v47 = v37;
              v53 = v39;
              v42 = v39 + v38;
              sub_10002ADF8(v39 + v38, v17, type metadata accessor for HostedRoutingItem);
              sub_10002ADF8(v51, v14, type metadata accessor for HostedRoutingItem);
              v43 = v56(v17, v14);
              if (v7)
              {
                sub_10002AC54(v14, type metadata accessor for HostedRoutingItem);
                sub_10002AC54(v17, type metadata accessor for HostedRoutingItem);
                v60 = v50;
                v58 = v47;
                goto LABEL_64;
              }

              v44 = v43;
              v57 = v41 + v38;
              sub_10002AC54(v14, type metadata accessor for HostedRoutingItem);
              sub_10002AC54(v17, type metadata accessor for HostedRoutingItem);
              if (v44)
              {
                break;
              }

              v37 = v42;
              if (v41 < v53 || v57 >= v53)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v41 != v53)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v39 = v42;
              result = v52;
              v17 = v48;
              v14 = v49;
              v40 = v50;
              if (v42 <= a4)
              {
                a2 = v50;
                goto LABEL_63;
              }
            }

            if (v41 < v50 || v57 >= v50)
            {
              a2 = v51;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v37 = v47;
            }

            else
            {
              v45 = v41 == v50;
              a2 = v51;
              v7 = 0;
              v37 = v47;
              if (!v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v52;
            v39 = v53;
            v17 = v48;
            v14 = v49;
          }

          while (v53 > a4);
        }

LABEL_63:
        v60 = a2;
        v58 = v37;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v52;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_10032F2E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HostedRoutingItem(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_10032F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for HostedRoutingItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
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

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000038A4(a4, &qword_100526740, &unk_100458520);
  }

  if (v17 < 1)
  {
    return sub_1000038A4(a4, &qword_100526740, &unk_100458520);
  }

  result = sub_10002ADF8(a4, v15, type metadata accessor for HostedRoutingItem);
  if (v12 >= v17)
  {
    return sub_1000038A4(a4, &qword_100526740, &unk_100458520);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_10032F554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
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
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10032F69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v26 = a1 + 32;
    v27 = v1;
    while (1)
    {
      v7 = (v26 + 56 * v4);
      v8 = v7[2];
      v9 = v7[3];
      v11 = v7[4];
      v10 = v7[5];
      v12 = *(v7 + 48);
      v28 = *v7;
      v29 = v7[1];
      v13 = *(v3 + 40);

      v31 = v9;
      v30 = v11;
      sub_10026D0B8(v8, v9, v11, v10, v12);
      sub_10028BE34();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if (((1 << v16) & v18) != 0)
      {
        v20 = ~v15;
        sub_100276B34();
        do
        {
          v21 = *(v3 + 48) + 56 * v16;
          v32 = *v21;
          v33 = *(v21 + 8);
          v34 = *(v21 + 16);
          v35 = *(v21 + 32);
          v36 = *(v21 + 48);
          result = dispatch thunk of static Equatable.== infix(_:_:)();
          if (result)
          {

            sub_1002485A4(v8, v31, v30, v10, v12);
            v6 = v27;
            goto LABEL_4;
          }

          v16 = (v16 + 1) & v20;
          v17 = v16 >> 6;
          v18 = *(v5 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while (((1 << v16) & v18) != 0);
        v6 = v27;
      }

      else
      {
        v6 = v27;
      }

      *(v5 + 8 * v17) = v19 | v18;
      v22 = *(v3 + 48) + 56 * v16;
      *v22 = v28;
      *(v22 + 8) = v29;
      *(v22 + 16) = v8;
      *(v22 + 24) = v31;
      *(v22 + 32) = v30;
      *(v22 + 40) = v10;
      *(v22 + 48) = v12;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v4 == v6)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_10032F8C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v76 = a3;
  v73 = *v4;
  v70 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v70 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v70);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v77 = *(v68 - 8);
  v11 = *(v77 + 64);
  __chkstk_darwin(v68);
  v67 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for RoutingSessionConfiguration.Context();
  v79 = *(v85 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v85);
  v84 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for RoutingSessionConfiguration();
  v66 = *(v83 - 8);
  v15 = v66[8];
  __chkstk_darwin(v83);
  v82 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Logger();
  v17 = *(v81 - 1);
  v18 = *(v17 + 64);
  __chkstk_darwin(v81);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_100021264();
  v26 = *v75;
  *v25 = *v75;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  v28 = _dispatchPreconditionTest(_:)();
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v25, v21);
  if (v28)
  {
    v65 = v8;
    v31 = sub_100028D40();
    (*(v17 + 16))(v20, v31, v81);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v78 = a4;
    v74 = a1;
    if (v34)
    {
      v35 = a1;
      v36 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v36 = 136315650;
      v37 = _typeName(_:qualified:)();
      v39 = sub_10002C9C8(v37, v38, aBlock);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_10002C9C8(v35, a2, aBlock);
      *(v36 + 22) = 2082;
      *(v36 + 24) = sub_10002C9C8(v76, v78, aBlock);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%s] dataSourceWillTransition - from: %{public}s to: %{public}s", v36, 0x20u);
      swift_arrayDestroy();
      v28 = v78;
    }

    else
    {
      v28 = a4;
    }

    (*(v17 + 8))(v20, v81);
    a4 = a2;
    result = sub_10002107C();
    v29 = result;
    if (!(result >> 62))
    {
      v41 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v41 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = v29 & 0xC000000000000001;
    v80 = (v66 + 1);
    v81 = (v66 + 2);
    v79 += 8;
    v66 = v88;
    ++v65;
    v64 = (v77 + 8);
    v77 = a4;
    v73 = v29;
    v72 = v41;
    v71 = v29 & 0xC000000000000001;
    do
    {
      if (v43)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v29 + 8 * v42 + 32);
      }

      v45 = v82;
      v46 = v83;
      (*v81)(v82, v44 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v83);
      v47 = v84;
      RoutingSessionConfiguration.context.getter();
      (*v80)(v45, v46);
      LOBYTE(v46) = sub_100265DF0();
      (*v79)(v47, v85);
      if (v46)
      {
        v48 = swift_allocObject();
        v49 = v74;
        v48[2] = v44;
        v48[3] = v49;
        v50 = v76;
        v48[4] = a4;
        v48[5] = v50;
        v48[6] = v28;
        v51 = *(v44 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
        if (v51 == *v75)
        {
          v59 = *(v44 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
          v60 = *(v44 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
          ObjectType = swift_getObjectType();
          v62 = *(v60 + 72);

          swift_unknownObjectRetain();
          v63 = ObjectType;
          a4 = v77;
          v62(v49, v77, v50, v78, v63, v60);
          v28 = v78;

          swift_unknownObjectRelease();
        }

        else
        {
          v52 = swift_allocObject();
          *(v52 + 16) = sub_10033093C;
          *(v52 + 24) = v48;
          v88[2] = sub_1002253D8;
          v88[3] = v52;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v88[0] = sub_100003D98;
          v88[1] = &unk_1004CE1D0;
          v53 = _Block_copy(aBlock);

          v54 = v51;

          v55 = v67;
          static DispatchQoS.unspecified.getter();
          v86 = _swiftEmptyArrayStorage;
          sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
          v56 = v69;
          v57 = v70;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v53);

          a4 = v77;
          (*v65)(v56, v57);
          v58 = v55;
          v28 = v78;
          (*v64)(v58, v68);
        }

        v29 = v73;
        v41 = v72;
        v43 = v71;
      }

      else
      {
      }

      ++v42;
    }

    while (v41 != v42);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003302B8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100021264();
  v10 = *v9;
  *v8 = *v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = sub_100037234();
  if (*v12 == a1 && *(v12 + 1) == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    result = sub_10002107C();
    a2 = result;
    if (!(result >> 62))
    {
      v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_7:
        if (v14 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v14; ++i)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = *(a2 + 8 * i + 32);
          }

          sub_100028D64(v16);
        }
      }

LABEL_15:

      return sub_10031B8F4();
    }

LABEL_14:
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1003304C8()
{
  result = type metadata accessor for RoutingSessionConfiguration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for RoutingMode();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003305C0()
{
  result = type metadata accessor for RoutingSessionConfiguration();
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

uint64_t sub_1003306F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100330740(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10033079C()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v4 = *v2;
  v3 = v2[1];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v3 + 16);
  swift_unknownObjectRetain();

  v7(v8, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100330844(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_100330870()
{
  v1 = *(type metadata accessor for RoutingDialog() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  swift_unknownObjectRetain();
  v7(v0 + v2, ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10033093C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = (v1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v7 = *v6;
  v8 = v6[1];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 72);
  swift_unknownObjectRetain();
  v10(v2, v3, v4, v5, ObjectType, v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003309EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 104))
    {
      *(result + 81) = 1;
      sub_1002FFF30();
    }
  }

  return result;
}

uint64_t sub_100330A84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100330AE4()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = (*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v5 = *v4;
  v6 = v4[1];
  v7 = *v3;
  if (*v3)
  {
    v15 = *(v3 + 8);
    v16 = *(v3 + 24);
    sub_1002D3DE8();
    v8 = swift_allocError();
    *v9 = v7;
    v10 = v15;
    *(v9 + 24) = v16;
    *(v9 + 8) = v10;
  }

  else
  {
    v8 = 0;
  }

  ObjectType = swift_getObjectType();
  v12 = *(v6 + 64);
  swift_unknownObjectRetain();
  sub_100330C4C(v3, v14);
  v12(v0 + v2, v8, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_100330D3C(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100330D98()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for InternalRoutingError();
  sub_100004930(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v8 = swift_allocError();
  (*(*(v7 - 8) + 104))(v9, enum case for InternalRoutingError.cancelled(_:), v7);
  v10 = *(v5 + 56);
  swift_unknownObjectRetain();
  v10(v1, v2, v8, ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_100330ED0(__int128 *a1)
{
  v3 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for RoutingSessionConfiguration.Attribution() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100307DE8(a1, *(v1 + 16), *(v1 + 24), v1 + 32, *(v1 + 88), *(v1 + 96), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100330FFC()
{
  v1 = v0 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient;
  v3 = *(v0 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 48);
  swift_unknownObjectRetain();
  v5(ObjectType, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10033107C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = (*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v6 = *v4;
  v5 = v4[1];
  if (v2)
  {
    v14 = *(v0 + 48);
    v15 = *(v0 + 64);
    sub_1002D3DE8();
    v7 = swift_allocError();
    *v8 = v2;
    v9 = v14;
    *(v8 + 24) = v15;
    *(v8 + 8) = v9;
  }

  else
  {
    v7 = 0;
  }

  ObjectType = swift_getObjectType();
  v11 = *(v5 + 56);
  swift_unknownObjectRetain();
  sub_100330C4C(v0 + 40, v13);
  v11(v1, v3, v7, ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10033118C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

void sub_1003311E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_10026D0B8(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_100331258()
{
  v1 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10031B6A0(v2, v3);
}

uint64_t sub_1003312BC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

BOOL sub_100331388(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10031F678(a1, a2, v6, v7);
}

unint64_t sub_100331484()
{
  result = qword_100526750;
  if (!qword_100526750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100526750);
  }

  return result;
}

uint64_t sub_10033151C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1003315C4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_14;
  }

  v1 = v0;
  v13 = kMRNowPlayingPlayerPathUserInfoKey;
  v2 = kMRNowPlayingPlayerPathUserInfoKey;
  sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
  sub_100037570();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v3 = sub_10001BF64(v14), (v4 & 1) == 0))
  {

    sub_10001BF10(v14);
LABEL_14:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_15;
  }

  sub_100020E0C(*(v1 + 56) + 32 * v3, &v15);
  sub_10001BF10(v14);

  if (!*(&v16 + 1))
  {
LABEL_15:
    sub_1000038A4(&v15, &qword_100522890, &qword_100450610);
    return;
  }

  sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v5 = v14[0];
  v6 = [v14[0] origin];
  if (!v6)
  {
LABEL_22:

    return;
  }

  v7 = v6;
  if (([v6 isLocal] & 1) == 0)
  {

    goto LABEL_22;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v8 = sub_10002107C();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_25:

    sub_10031B8F4();

    return;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_11:
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      sub_100028D64(v12);
    }

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_100331930()
{
  sub_1001DFBCC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100331968(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6C6C65636E61632ELL;
      }

      goto LABEL_8;
    }

    return 0x646565636375732ELL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x737365636F72702ELL;
      }

LABEL_8:
      sub_10023DD70();
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 0x2864656C6961662ELL;
    }

    return 0x65756575716E652ELL;
  }
}

BOOL sub_100331A84(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }

    return v3 > 3;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    return v3 > 3;
  }

  return v3 == 2;
}

uint64_t sub_100331B00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_100331968(*v0);
}

uint64_t sub_100331B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100331B74()
{
  v1 = v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  swift_beginAccess();
  v2 = *v1;
  sub_100331BF0(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

unint64_t sub_100331BF0(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result >= 4)
  {
    swift_errorRetain();

    return sub_10023DC40(a2, a3, a4);
  }

  return result;
}

unint64_t sub_100331C4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = *(v9 + 24);
  *(v9 + 24) = a4;
  return sub_1002FB794(v10, v11, v12, v13);
}

uint64_t sub_100331D2C()
{
  v1 = (v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100331D8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100331E54()
{
  v1 = *v0;
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 60;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = (*(*v0 + 160))();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8254;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6 = (*(*v0 + 104))();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13._countAndFlagsBits = sub_100331968(v6);
  String.append(_:)(v13);

  sub_1002FB794(v6, v8, v10, v12);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  (*(*v0 + 168))(&v18);
  sub_10023DCC8();
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);
  sub_100238E4C(&v18);

  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 60;
}

double sub_100332068@<D0>(uint64_t a1@<X8>)
{
  sub_10026D074(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1003320B8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent;
  v5 = *(v1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  v4 = *(v1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);

  result = sub_10026D0B8(v6, v7, v8, v9, v10);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_10033213C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = v5 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 24) = 0;
  v7 = (v5 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  *v7 = 0;
  v7[1] = _swiftEmptyArrayStorage;
  sub_1003321B8(a1, v5 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  return v5;
}

uint64_t sub_1003321B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033221C()
{
  type metadata accessor for RoutingEvent(0);
  sub_100339ABC(&qword_100526788, type metadata accessor for RoutingEvent);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1003322A0()
{
  sub_100339480(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  sub_1002FB794(*(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state), *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state + 8), *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state + 16), *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state + 24));
  v2 = *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  v1 = *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_100332344()
{
  Hasher.init(_seed:)();
  (*(*v0 + 192))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100332470()
{
  Hasher.init(_seed:)();
  (*(**v0 + 192))(v2);
  return Hasher._finalize()();
}

uint64_t sub_1003324DC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = (*(*v0 + 120))(v4);
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    swift_beginAccess();
    v9 = v0[4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100332620()
{
  _StringGuts.grow(_:)(25);

  v43[0] = 0x1000000000000016;
  v43[1] = 0x80000001004405C0;
  swift_beginAccess();
  v39 = *(*(v0 + 32) + 24);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x1000000000000016;
  v3._object = 0x80000001004405C0;
  String.append(_:)(v3);

  v4 = *(v0 + 32);
  v5 = v4[4];
  if (v4[2] >= v4[3] + v5)
  {
    v6 = v4[3] + v5;
  }

  else
  {
    v6 = v4[2];
  }

  v40 = v4;
  v41 = v4[4];
  v42 = v6;

  while (1)
  {
    if (v5 != v6)
    {
      v7 = v40;
      goto LABEL_6;
    }

    v36 = sub_1002FB688();
    v7 = v40;
    if ((v36 & 1) == 0)
    {
      break;
    }

LABEL_6:
    v8 = v41;
    v5 = ++v41;
    v9 = v7[v8 + 5];

    v10._object = 0x80000001004405E0;
    v10._countAndFlagsBits = 0x1000000000000010;
    String.append(_:)(v10);
    _StringGuts.grow(_:)(30);

    v12._countAndFlagsBits = (*(*v9 + 160))(v11);
    String.append(_:)(v12);

    v13._countAndFlagsBits = 10;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x100000000000001BLL;
    v14._object = 0x8000000100440600;
    String.append(_:)(v14);

    _StringGuts.grow(_:)(26);

    (*(*v9 + 168))(v43, v15);
    sub_10023DCC8();
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);
    sub_100238E4C(v43);

    v17._countAndFlagsBits = 10;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x1000000000000017;
    v18._object = 0x8000000100440620;
    String.append(_:)(v18);

    _StringGuts.grow(_:)(34);

    (*(*v9 + 128))(v19);
    sub_1001BC5A8(&qword_100526790, qword_1004585A0);
    sub_1003394DC();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 2653;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0x100000000000001ELL;
    v25._object = 0x8000000100440640;
    String.append(_:)(v25);

    _StringGuts.grow(_:)(25);

    v27 = (*(*v9 + 104))(v26);
    v29 = v28;
    v31 = v30;
    LOBYTE(v22) = v32;
    v33._countAndFlagsBits = sub_100331968(v27);
    String.append(_:)(v33);

    sub_1002FB794(v27, v29, v31, v22);
    v34._countAndFlagsBits = 10;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0x1000000000000016;
    v35._object = 0x8000000100440660;
    String.append(_:)(v35);

    v6 = v42;
  }

  v37._countAndFlagsBits = 0xE2B095E220202020;
  v37._object = 0xAF0A899F80F48094;
  String.append(_:)(v37);
  return 0x100000000000002FLL;
}

uint64_t sub_100332B0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = (*(*v2 + 120))(v8);
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for RoutingTimeline.Observer();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100332CE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = (*(*v2 + 120))(v8);
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    if (result >= a2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  a2 = sub_100339564(v2 + 5, a1);
  result = swift_unknownObjectRelease();
  v13 = v2[5];
  if (v13 >> 62)
  {
    goto LABEL_6;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14 >= a2)
  {
LABEL_4:
    sub_100339948(a2, v14);
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100332EAC(uint64_t a1)
{
  v2 = v1;
  v89 = a1;
  v3 = *v1;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v91 = &v83 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RoutingEvent(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v85 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v83 - v16;
  __chkstk_darwin(v15);
  v19 = &v83 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = (&v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = v3;
  *v25 = (*(v3 + 120))(v23);
  (*(v21 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v20);
  LOBYTE(v3) = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v25, v20);
  if ((v3 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v87 = v11;
  v27 = v89;
  sub_100331B10(v89, v19);
  v28 = type metadata accessor for RoutingTimeline.Event();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = v31 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *v32 = 0;
  *(v32 + 24) = 0;
  v33 = (v31 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  *v33 = 0;
  v33[1] = _swiftEmptyArrayStorage;
  sub_1003321B8(v19, v31 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  v34 = sub_100333B9C(v31);
  v36 = v35;
  v37 = (v31 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  *v37 = v34;
  v37[1] = v36;

  v40 = sub_100028D40();
  (*(v8 + 16))(v90, v40, v7);
  sub_100331B10(v27, v17);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v7;
  v88 = v8;
  if (v43)
  {
    v45 = v27;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v84 = v44;
    v92[0] = v47;
    *v46 = 136315394;
    v48 = _typeName(_:qualified:)();
    v50 = sub_10002C9C8(v48, v49, v92);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    v51 = sub_10026D044();
    v53 = v52;
    sub_100339480(v17);
    v54 = sub_10002C9C8(v51, v53, v92);

    *(v46 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "[%s] addEvent<%{public}s>", v46, 0x16u);
    swift_arrayDestroy();
    v44 = v84;

    v27 = v45;
    v8 = v88;
  }

  else
  {

    sub_100339480(v17);
  }

  v55 = *(v8 + 8);
  v55(v90, v44);
  swift_beginAccess();
  result = v2[4];
  v56 = *(result + 24);
  v57 = v56 + 1;
  if (__OFADD__(v56, 1))
  {
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v2[4];
  if (*(v59 + 16) < v57 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10033871C(isUniquelyReferenced_nonNull_native, v57, 0);
    v59 = v2[4];
  }

  sub_1003388D8((v59 + 16), v59 + 40, v31);
  swift_endAccess();
  v60 = *(v27 + *(v87 + 28));
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v31;
  v63 = *(*v60 + 168);

  v63(sub_100339A6C, v62);

  v64 = sub_1001D93CC();
  v65 = v91;
  sub_100015B34(v64, v91);
  if ((*(v8 + 48))(v65, 1, v44) == 1)
  {
    sub_1000038A4(v91, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v66 = v85;
    sub_100331B10(v27, v85);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v92[0] = v90;
      *v69 = 136315650;
      v70 = _typeName(_:qualified:)();
      v72 = v55;
      v73 = v66;
      v74 = sub_10002C9C8(v70, v71, v92);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v75 = sub_10026D044();
      v77 = v76;
      sub_100339480(v73);
      v78 = sub_10002C9C8(v75, v77, v92);

      *(v69 + 14) = v78;
      *(v69 + 22) = 2080;
      v80 = (*(*v2 + 216))(v79);
      v82 = sub_10002C9C8(v80, v81, v92);

      *(v69 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v67, v68, "[%s] addEvent<%s> - updated timeline: %s", v69, 0x20u);
      swift_arrayDestroy();

      v72(v91, v44);
    }

    else
    {

      sub_100339480(v66);
      v55(v91, v44);
    }
  }

  sub_100337CF8();
  sub_100338148();
}

uint64_t sub_1003336E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v9 = (*(*result + 120))(result);
    (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
    v15 = _dispatchPreconditionTest(_:)();
    result = (*(v6 + 8))(v9, v5);
    if (v15)
    {
      sub_10033509C(a3, v10, v11, v12, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100333878(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  (*(*a1 + 112))(1, 0, 0, 0);
  v8 = sub_1001D93CC();
  sub_100015B34(v8, v7);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    return sub_1000038A4(v7, &qword_100525C00, &unk_1004511A0);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 136315650;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10002C9C8(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v19 = (*(*a1 + 160))(v18);
    v21 = sub_10002C9C8(v19, v20, &v27);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2080;
    v23 = (*(*v1 + 216))(v22);
    v25 = sub_10002C9C8(v23, v24, &v27);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] willBeginProcessingEvent<%s> - updated timeline: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  return (*(v10 + 8))(v7, v9);
}

uint64_t sub_100333B9C(uint64_t a1)
{
  v218 = a1;
  v203 = sub_1001BC5A8(&qword_100526AE8, &qword_100458840);
  v2 = *(*(v203 - 8) + 64);
  __chkstk_darwin(v203);
  v210 = &v191 - v3;
  v205 = type metadata accessor for RoutingControl.Target();
  v4 = *(v205 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v205);
  v191 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v194 = &v191 - v9;
  v10 = __chkstk_darwin(v8);
  v202 = &v191 - v11;
  __chkstk_darwin(v10);
  v201 = &v191 - v12;
  v212 = type metadata accessor for RoutingControl.RoutingControlType();
  v13 = *(v212 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v212);
  v211 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for RoutingControl();
  v16 = *(v215 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v215);
  v209 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v216 = &v191 - v21;
  __chkstk_darwin(v20);
  v214 = &v191 - v22;
  v222 = 0;
  v223 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v23 = *(v1 + 32);
  v24 = v23[4];
  if (v23[2] >= v23[3] + v24)
  {
    v25 = v23[3] + v24;
  }

  else
  {
    v25 = v23[2];
  }

  v219 = v23;
  v220 = v24;
  v221 = v25;
  v26 = (v16 + 16);
  v213 = (v16 + 8);
  v200 = (v4 + 32);
  v204 = (v4 + 88);
  v199 = enum case for RoutingControl.Target.session(_:);
  v196 = enum case for RoutingControl.Target.item(_:);
  v195 = (v4 + 16);
  v193 = (v4 + 8);
  v208 = (v13 + 88);
  v207 = enum case for RoutingControl.RoutingControlType.play(_:);
  v197 = (v13 + 8);

  v217 = (v16 + 16);
  v198 = (v4 + 96);
  while (1)
  {
    if (v24 != v25)
    {
      v28 = v219;
      goto LABEL_11;
    }

    v27 = sub_1002FB688();
    v28 = v219;
    if ((v27 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v29 = v220;
    v24 = ++v220;
    v30 = v28[v29 + 5];
    v31 = *(*v218 + 168);

    v31(v224, v32);
    v33 = v224[0];
    if (v225 > 5u)
    {
      v39 = v216;
      if (v225 > 8u)
      {
        if (v225 == 9)
        {
          v88 = sub_100238E4C(v224);
          v72 = (*(*v30 + 160))(v88);
          v74 = v89;
          v75 = v222;
          v76 = v223;
          v77 = v223[2];
          if (!v222)
          {
            if (v77)
            {
              v90 = v223 + 5;
              do
              {
                v91 = *(v90 - 1) == v72 && *v90 == v74;
                if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_115;
                }

                v90 += 2;
              }

              while (--v77);
            }

LABEL_5:
            sub_100338C5C(v72, v74);
            goto LABEL_6;
          }

LABEL_96:

          sub_100339074(v72, v74, (v76 + 4), v77, (v75 + 16));
          v103 = v102;

          if (v103)
          {
            goto LABEL_5;
          }

LABEL_6:

          v26 = v217;
          v25 = v221;
        }

        else
        {
          if (v225 != 10)
          {
            sub_100238E4C(v224);
            goto LABEL_116;
          }

          v49 = swift_projectBox();
          v50 = *v26;
          v51 = v215;
          v52 = (*v26)(v39, v49, v215);
          (*(*v30 + 168))(v232, v52);
          if (v233 == 10)
          {
            v206 = v24;
            v53 = swift_projectBox();
            v50(v209, v53, v51);
            v54 = v201;
            RoutingControl.target.getter();
            v55 = v202;
            RoutingControl.target.getter();
            v56 = v204;
            v57 = v210;
            v58 = (v210 + *(v203 + 48));
            v59 = *v200;
            v60 = v205;
            (*v200)(v210, v54, v205);
            v59(v58, v55, v60);
            v61 = *v56;
            v62 = (*v56)(v57, v60);
            v63 = v199;
            if (v62 == v199)
            {
              v64 = v194;
              (*v195)(v194, v57, v60);
              v192 = *v198;
              v192(v64, v60);
              v65 = v60;
              v67 = *v64;
              v66 = v64[1];
              if (v61(v58, v65) == v63)
              {
                v192(v58, v65);
                v68 = *v58;
                v69 = v58[1];
                if (v67 == v68 && v66 == v69)
                {

                  v26 = v217;
                  goto LABEL_188;
                }

                v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v26 = v217;
                if ((v173 & 1) == 0)
                {

                  v24 = v206;
                  goto LABEL_220;
                }

LABEL_188:
                v174 = (*(*v30 + 160))(v70);
                v176 = v175;
                v177 = v222;
                v178 = v223;
                v179 = v223[2];
                v24 = v206;
                if (!v222)
                {
                  if (v179)
                  {
                    v180 = v223 + 5;
                    do
                    {
                      v181 = *(v180 - 1) == v174 && *v180 == v176;
                      if (v181 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        goto LABEL_218;
                      }

                      v180 += 2;
                    }

                    while (--v179);
                  }

LABEL_216:
                  sub_100338C5C(v174, v176);
LABEL_217:

                  v26 = v217;
LABEL_220:
                  v188 = *v213;
                  v189 = v215;
                  (*v213)(v209, v215);
                  v188(v216, v189);
                  (*v193)(v210, v205);
LABEL_221:
                  v172 = v232;
                  goto LABEL_222;
                }

LABEL_205:

                sub_100339074(v174, v176, (v178 + 4), v179, (v177 + 16));
                v185 = v184;

                if (v185)
                {
                  goto LABEL_216;
                }

                goto LABEL_217;
              }

LABEL_143:

LABEL_144:
              v150 = (*(*v30 + 160))(v62);
              v152 = v151;
              v153 = v222;
              v154 = v223;
              v155 = v223[2];
              if (v222)
              {

                sub_100339074(v150, v152, (v154 + 4), v155, (v153 + 16));
                v157 = v156;

                v24 = v206;
                if ((v157 & 1) == 0)
                {
LABEL_160:

                  v26 = v217;
LABEL_161:
                  v164 = *v213;
                  v165 = v215;
                  (*v213)(v209, v215);
                  v164(v216, v165);
                  sub_1000038A4(v210, &qword_100526AE8, &qword_100458840);
                  goto LABEL_221;
                }
              }

              else
              {
                v24 = v206;
                if (v155)
                {
                  v162 = v223 + 5;
                  v26 = v217;
                  while (1)
                  {
                    v163 = *(v162 - 1) == v150 && *v162 == v152;
                    if (v163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }

                    v162 += 2;
                    if (!--v155)
                    {
                      goto LABEL_159;
                    }
                  }

                  goto LABEL_161;
                }
              }

LABEL_159:
              sub_100338C5C(v150, v152);
              goto LABEL_160;
            }

            v124 = v198;
            if (v62 != v196)
            {
              goto LABEL_144;
            }

            v125 = v191;
            (*v195)(v191, v210, v60);
            v126 = *v124;
            (*v124)(v125, v60);
            v128 = *v125;
            v127 = v125[1];
            v129 = v61(v58, v60);
            if (v129 != v196)
            {
              goto LABEL_143;
            }

            v126(v58, v60);
            v130 = *v58;
            v131 = v58[1];
            v132 = sub_1002586E4();
            v134 = v133;

            v135 = sub_1002586E4();
            v137 = v136;

            if (v132 == v135 && v134 == v137)
            {

              v26 = v217;
              v24 = v206;
              goto LABEL_204;
            }

            v182 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v26 = v217;
            v24 = v206;
            if (v182)
            {
LABEL_204:
              v174 = (*(*v30 + 160))(v138);
              v176 = v183;
              v177 = v222;
              v178 = v223;
              v179 = v223[2];
              if (v222)
              {
                goto LABEL_205;
              }

              if (!v179)
              {
                goto LABEL_216;
              }

              v186 = v223 + 5;
              while (1)
              {
                v187 = *(v186 - 1) == v174 && *v186 == v176;
                if (v187 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v186 += 2;
                if (!--v179)
                {
                  goto LABEL_216;
                }
              }

LABEL_218:
            }

            goto LABEL_220;
          }

          v113 = sub_100238E4C(v232);
          v114 = (*(*v30 + 160))(v113);
          v116 = v115;
          v117 = v222;
          v118 = v223;
          v119 = v223[2];
          if (v222)
          {

            sub_100339074(v114, v116, (v118 + 4), v119, (v117 + 16));
            v121 = v120;

            if ((v121 & 1) == 0)
            {

              v26 = v217;
              goto LABEL_184;
            }
          }

          else if (v119)
          {
            v148 = v223 + 5;
            while (1)
            {
              v149 = *(v148 - 1) == v114 && *v148 == v116;
              if (v149 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v148 += 2;
              if (!--v119)
              {
                goto LABEL_142;
              }
            }

LABEL_184:
            v170 = *v213;
            v171 = v216;
LABEL_200:
            v170(v171, v215);
            goto LABEL_223;
          }

LABEL_142:
          sub_100338C5C(v114, v116);

          (*v213)(v216, v215);
LABEL_182:
          sub_100238E4C(v224);
          v26 = v217;
          v25 = v221;
        }
      }

      else
      {
        if (v225 == 6)
        {
          v84 = sub_100238E4C(v224);
          v72 = (*(*v30 + 160))(v84);
          v74 = v85;
          v75 = v222;
          v76 = v223;
          v77 = v223[2];
          if (!v222)
          {
            if (v77)
            {
              v86 = v223 + 5;
              while (1)
              {
                v87 = *(v86 - 1) == v72 && *v86 == v74;
                if (v87 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_115;
                }

                v86 += 2;
                if (!--v77)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }

          goto LABEL_96;
        }

        if (v225 != 7)
        {
          v100 = sub_100238E4C(v224);
          v72 = (*(*v30 + 160))(v100);
          v74 = v101;
          v75 = v222;
          v76 = v223;
          v77 = v223[2];
          if (!v222)
          {
            if (v77)
            {
              v122 = v223 + 5;
              while (1)
              {
                v123 = *(v122 - 1) == v72 && *v122 == v74;
                if (v123 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_115;
                }

                v122 += 2;
                if (!--v77)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }

          goto LABEL_96;
        }

        v40 = swift_projectBox();
        v41 = v215;
        (*v26)(v214, v40, v215);
        v42 = v211;
        RoutingControl.type.getter();
        v43 = (*v208)(v42, v212);
        v44 = *(*v30 + 168);
        if (v43 != v207)
        {
          v44(v230);
          if (v231 - 5 <= 1)
          {
            v104 = sub_100238E4C(v230);
            v105 = (*(*v30 + 160))(v104);
            v107 = v106;
            v108 = v222;
            v109 = v223;
            v110 = v223[2];
            if (v222)
            {

              sub_100339074(v105, v107, (v109 + 4), v110, (v108 + 16));
              v112 = v111;

              if ((v112 & 1) == 0)
              {
LABEL_171:

                v41 = v215;
                v26 = v217;
                goto LABEL_172;
              }
            }

            else if (v110)
            {
              v166 = v223 + 5;
              while (1)
              {
                v167 = *(v166 - 1) == v105 && *v166 == v107;
                if (v167 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v166 += 2;
                if (!--v110)
                {
                  goto LABEL_170;
                }
              }

              v41 = v215;
              goto LABEL_172;
            }

LABEL_170:
            sub_100338C5C(v105, v107);
            goto LABEL_171;
          }

          sub_100238E4C(v230);
LABEL_172:
          (*v213)(v214, v41);
          (*v197)(v211, v212);
          goto LABEL_223;
        }

        v44(v228);
        if (v229 < 4u)
        {
          v46 = v228[2];
          v45 = v228[3];

          sub_100238E4C(v228);
          if (v46 == RoutingControl.sessionIdentifier.getter() && v45 == v47)
          {
          }

          else
          {
            v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v158 & 1) == 0)
            {
              (*v213)(v214, v215);

              goto LABEL_223;
            }
          }

          v140 = (*(*v30 + 160))(v48);
          v142 = v159;
          v143 = v222;
          v144 = v223;
          v145 = v223[2];
          if (v222)
          {
            goto LABEL_149;
          }

          if (v145)
          {
            v168 = v223 + 5;
            while (1)
            {
              v169 = *(v168 - 1) == v140 && *v168 == v142;
              if (v169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_198;
              }

              v168 += 2;
              if (!--v145)
              {
                goto LABEL_181;
              }
            }
          }

          goto LABEL_181;
        }

        if (v229 - 5 < 2)
        {
          v139 = sub_100238E4C(v228);
          v140 = (*(*v30 + 160))(v139);
          v142 = v141;
          v143 = v222;
          v144 = v223;
          v145 = v223[2];
          if (v222)
          {
LABEL_149:

            sub_100339074(v140, v142, (v144 + 4), v145, (v143 + 16));
            v161 = v160;

            if ((v161 & 1) == 0)
            {

              v26 = v217;
              goto LABEL_199;
            }
          }

          else if (v145)
          {
            v146 = v223 + 5;
            while (1)
            {
              v147 = *(v146 - 1) == v140 && *v146 == v142;
              if (v147 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v146 += 2;
              if (!--v145)
              {
                goto LABEL_181;
              }
            }

LABEL_198:

LABEL_199:
            v171 = v214;
            v170 = *v213;
            goto LABEL_200;
          }

LABEL_181:
          sub_100338C5C(v140, v142);

          (*v213)(v214, v215);
          goto LABEL_182;
        }

        (*v213)(v214, v41);

        v172 = v228;
LABEL_222:
        sub_100238E4C(v172);
LABEL_223:
        sub_100238E4C(v224);
        v25 = v221;
      }
    }

    else
    {
      if (v225 >= 4u)
      {
        if (v225 == 4)
        {
          v71 = sub_100238E4C(v224);
          v72 = (*(*v30 + 160))(v71);
          v74 = v73;
          v75 = v222;
          v76 = v223;
          v77 = v223[2];
          if (!v222)
          {
            if (v77)
            {
              v78 = v223 + 5;
              v26 = v217;
              while (1)
              {
                v79 = *(v78 - 1) == v72 && *v78 == v74;
                if (v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_115;
                }

                v78 += 2;
                if (!--v77)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }
        }

        else
        {
          v92 = sub_100238E4C(v224);
          v72 = (*(*v30 + 160))(v92);
          v74 = v93;
          v75 = v222;
          v76 = v223;
          v77 = v223[2];
          if (!v222)
          {
            if (v77)
            {
              v94 = v223 + 5;
              v26 = v217;
              while (1)
              {
                v95 = *(v94 - 1) == v72 && *v94 == v74;
                if (v95 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_115;
                }

                v94 += 2;
                if (!--v77)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }
        }

        goto LABEL_96;
      }

      v34 = v224[1];

      (*(*v30 + 168))(v226, v35);
      if (v227 > 3u)
      {

        v80 = sub_100238E4C(v226);
        v72 = (*(*v30 + 160))(v80);
        v74 = v81;
        v75 = v222;
        v76 = v223;
        v77 = v223[2];
        if (!v222)
        {
          if (v77)
          {
            v82 = v223 + 5;
            while (1)
            {
              v83 = *(v82 - 1) == v72 && *v82 == v74;
              if (v83 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_115;
              }

              v82 += 2;
              if (!--v77)
              {
                goto LABEL_5;
              }
            }
          }

          goto LABEL_5;
        }

        goto LABEL_96;
      }

      v37 = v226[0];
      v36 = v226[1];

      sub_100238E4C(v226);
      if (v37 == v33 && v36 == v34)
      {
      }

      else
      {
        v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v96 & 1) == 0)
        {
          goto LABEL_116;
        }
      }

      v72 = (*(*v30 + 160))(v38);
      v74 = v97;
      v75 = v222;
      v76 = v223;
      v77 = v223[2];
      if (v222)
      {
        goto LABEL_96;
      }

      if (!v77)
      {
        goto LABEL_5;
      }

      v98 = v223 + 5;
      while (1)
      {
        v99 = *(v98 - 1) == v72 && *v98 == v74;
        if (v99 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v98 += 2;
        if (!--v77)
        {
          goto LABEL_5;
        }
      }

LABEL_115:

LABEL_116:

      v25 = v221;
    }
  }

  return v222;
}

void sub_10033509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(*a1 + 104);
  v13 = v12();
  if (v13 != 3)
  {
    v17 = sub_1002FB794(v13, v14, v15, v16);
    v18 = (v12)(v17);
    if (v18 == 1)
    {
      if (a2)
      {
        v22 = *(*a1 + 112);
        sub_10023DBE8(a2, a3, a4, a5);
        swift_errorRetain();
        sub_10023DC40(a3, a4, a5);
        v22(a2, a3, a4, a5);

        sub_10023DCB0(a3, a4, a5);
      }

      else
      {
        (*(*a1 + 112))(2, 0, 0, 0);
      }

      sub_1003353A0(a1);
    }

    else
    {
      sub_1002FB794(v18, v19, v20, v21);
      _StringGuts.grow(_:)(52);
      v23._countAndFlagsBits = 91;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0xD000000000000017;
      v25._object = 0x8000000100440830;
      String.append(_:)(v25);
      v26._countAndFlagsBits = (*(*a1 + 160))();
      String.append(_:)(v26);

      v27._object = 0x8000000100440850;
      v27._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v27);
      v28._countAndFlagsBits = (*(*a1 + 152))();
      String.append(_:)(v28);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void sub_1003353A0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v179 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v193 = &v171 - v8;
  v9 = type metadata accessor for Logger();
  v186 = *(v9 - 8);
  v10 = v186;
  v11 = *(v186 + 64);
  v12 = __chkstk_darwin(v9);
  v172 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v175 = &v171 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v171 - v17;
  v19 = (*(*a1 + 160))(v16);
  v21 = v20;
  v22 = sub_100028D40();
  v184 = v10;
  v23 = *(v10 + 16);
  v178 = v22;
  v176 = v10 + 16;
  v177 = v23;
  (v23)(v18);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v185 = v21;
  v192 = a1;
  v180 = v3;
  v181 = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v197[0] = swift_slowAlloc();
    *v27 = 136315650;
    v28 = _typeName(_:qualified:)();
    v30 = sub_10002C9C8(v28, v29, v197);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_10002C9C8(v19, v21, v197);
    *(v27 + 22) = 2082;
    v31 = (*(*v192 + 152))();
    v3 = sub_10002C9C8(v31, v32, v197);

    *(v27 + 24) = v3;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%s] rebuild<%{public}s> - rebuild for event: %{public}s", v27, 0x20u);
    swift_arrayDestroy();

    a1 = v192;
  }

  v33 = v186;
  v183 = *(v186 + 8);
  v183(v18, v9);
  v173 = sub_1001D93CC();
  v34 = v193;
  sub_100015B34(v173, v193);
  v35 = *(v33 + 48);
  v182 = v9;
  v174 = v35;
  v36 = v35(v34, 1, v9);
  v186 = v33 + 48;
  if (v36 == 1)
  {
    sub_1000038A4(v34, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v37 = v185;

    v38 = v187;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v197[0] = swift_slowAlloc();
      *v41 = 136315650;
      v42 = _typeName(_:qualified:)();
      v44 = sub_10002C9C8(v42, v43, v197);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_10002C9C8(v181, v37, v197);
      *(v41 + 22) = 2080;
      v45 = (*(*v38 + 216))();
      v3 = sub_10002C9C8(v45, v46, v197);

      *(v41 + 24) = v3;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%s] rebuild<%s> - current: %s", v41, 0x20u);
      swift_arrayDestroy();
    }

    a1 = v192;
    v183(v34, v182);
  }

  v47 = v187;
  swift_beginAccess();
  v48 = *(v47 + 32);
  v49 = &unk_100538000;
  v50 = OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent;
  v51 = v48[3];

  if (!v51)
  {
    goto LABEL_96;
  }

  v52 = 0;
  v53 = v48 + 5;
  v188 = v48 + 5;
  v189 = v50;
  while (1)
  {
    if (v52 >= v51)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v54 = v48[4];
    v55 = v52 + v54 >= v48[2] ? v48[2] : 0;
    v3 = v53[v52 + v54 - v55];
    v56 = v49[172];

    if (sub_10026D4AC((v3 + v56), (a1 + v50)))
    {
      break;
    }

LABEL_11:
    ++v52;
    v51 = v48[3];
    if (v52 == v51)
    {
      goto LABEL_96;
    }
  }

  v57 = (*(*v3 + 104))();
  v59 = v58;
  v193 = v60;
  v62 = v61;
  v63 = *(*a1 + 104);
  v190 = *a1 + 104;
  v191 = v63;
  v64 = v63();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  if (v57 <= 1)
  {
    if (!v57)
    {
      if (!v64)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v57 == 1)
    {
      if (v64 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_26:
    sub_1002FB794(v57, v59, v193, v62);
    if (v64 >= 4)
    {

      v124 = sub_1002FB794(v64, v66, v68, v70);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v57 != 2)
  {
    if (v57 == 3)
    {
      if (v64 == 3)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v64 != 2)
  {
LABEL_31:
    sub_1002FB794(v64, v66, v68, v70);
    a1 = v192;
    v49 = &unk_100538000;
    v53 = v188;
    v50 = v189;
    goto LABEL_11;
  }

LABEL_32:

LABEL_33:
  v3 = v191;
  v71 = v192;
  v72 = (v191)(v124);
  if (v72 == 2)
  {
    goto LABEL_34;
  }

  if (v72 < 2 || v72 == 3)
  {
    goto LABEL_98;
  }

  v87 = v73;
  v88 = v74;
  v89 = v180;
  if (v75 <= 1u)
  {
    if (v75)
    {

      sub_100337220(v87, v88, v52, v187, v181, v185, v71, v89);

      sub_10023DCB0(v87, v88, 1u);
      sub_10023DCB0(v87, v88, 1u);
    }

    else
    {

      sub_100336744(v87, v88, v52, v187, v181, v185, v71, v89);

      sub_10023DCB0(v87, v88, 0);
      sub_10023DCB0(v87, v88, 0);
    }
  }

  else
  {
    if (v75 == 2)
    {

      sub_100336744(v87, v88, 0, v187, v181, v185, v71, v89);

      sub_10023DCB0(v87, v88, 2u);
      sub_10023DCB0(v87, v88, 2u);
      goto LABEL_34;
    }

    v90 = v187;
    v91 = v181;
    if (v75 == 3)
    {

      sub_100337220(v87, v88, 0, v90, v91, v185, v71, v89);

      sub_10023DCB0(v87, v88, 3u);
      sub_10023DCB0(v87, v88, 3u);
      goto LABEL_34;
    }

    if (v73 | v74)
    {
      v125 = v187[4];
      v126 = v125[4];
      if (v125[2] >= (v125[3] + v126))
      {
        v127 = v125[3] + v126;
      }

      else
      {
        v127 = v125[2];
      }

      v194 = v187[4];
      v195 = v126;
      v196 = v127;

      while (1)
      {
        if (v126 == v127)
        {
          if ((sub_1002FB688() & 1) == 0)
          {

            sub_10023DCB0(v87, v88, 4u);

            goto LABEL_34;
          }

          v125 = v194;
          v126 = v195;
        }

        v128 = v126 + 1;
        v195 = v126 + 1;
        v129 = v125[v126 + 5];
        v130 = *(*v129 + 104);

        v132 = v130(v131);
        if (v132)
        {
          sub_1002FB794(v132, v133, v134, v135);
        }

        else
        {
          (*(*v129 + 112))(3, 0, 0, 0);
        }

        v127 = v196;
        v126 = v128;
      }
    }
  }

LABEL_34:
  v76 = v175;
  v77 = v182;
  v177(v175, v178, v182);
  v3 = v185;

  v78 = v187;

  v79 = Logger.logObject.getter();
  a1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v79, a1))
  {
    v80 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    *v80 = 136315650;
    v81 = _typeName(_:qualified:)();
    v83 = sub_10002C9C8(v81, v82, &v194);

    *(v80 + 4) = v83;
    *(v80 + 12) = 2080;
    *(v80 + 14) = sub_10002C9C8(v181, v185, &v194);
    *(v80 + 22) = 2080;
    v84 = (*(*v78 + 216))();
    v86 = sub_10002C9C8(v84, v85, &v194);

    *(v80 + 24) = v86;
    _os_log_impl(&_mh_execute_header, v79, a1, "[%s] rebuild<%s> - before advancing: %s", v80, 0x20u);
    swift_arrayDestroy();

    v3 = v185;
  }

  v183(v76, v77);
  v92 = v179;
  sub_100337CF8();
  v93 = v78[4];
  v94 = v93[3];
  if (v94)
  {
    if (v94 >= 1)
    {
      v95 = v93[4];
      v96 = v93[2];
      if (v95 < v96)
      {
        v96 = 0;
      }

      if (v93[v95 - v96 + 5] == v192)
      {
        while (1)
        {
          if (v94 < 1)
          {
            goto LABEL_91;
          }

          v97 = v93[4];
          v98 = v93[2];
          if (v97 < v98)
          {
            v98 = 0;
          }

          a1 = v93[v97 - v98 + 5];
          v99 = *(*a1 + 104);

          v101 = v99(v100);
          if (v101 - 2 >= 2)
          {
            if (v101 < 2)
            {
              v136 = v172;
              v177(v172, v178, v77);

              v137 = Logger.logObject.getter();
              v138 = v3;
              v139 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v137, v139))
              {
                v140 = swift_slowAlloc();
                v194 = swift_slowAlloc();
                *v140 = 136315650;
                v141 = _typeName(_:qualified:)();
                v142 = v136;
                v144 = sub_10002C9C8(v141, v143, &v194);

                *(v140 + 4) = v144;
                *(v140 + 12) = 2080;
                v145 = sub_10002C9C8(v181, v138, &v194);

                *(v140 + 14) = v145;
                *(v140 + 22) = 2080;
                v147 = (*(*v78 + 216))(v146);
                v149 = sub_10002C9C8(v147, v148, &v194);

                *(v140 + 24) = v149;
                _os_log_impl(&_mh_execute_header, v137, v139, "[%s] rebuild<%s> - advanced: %s", v140, 0x20u);
                swift_arrayDestroy();

                v150 = v142;
                v151 = v182;
              }

              else
              {

                v150 = v136;
                v151 = v77;
              }

              v183(v150, v151);
              return;
            }

            v105 = v102;
            v106 = v103;
            v107 = v104;

            sub_10023DCB0(v105, v106, v107);
          }

          swift_beginAccess();
          if (!*(v78[4] + 24))
          {
            goto LABEL_92;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1003391C0();
          }

          v108 = v78[4];
          v109 = v108[4];
          v110 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            goto LABEL_93;
          }

          v111 = v108[v109 + 5];
          v112 = v108[3];
          if (v110 >= v108[2])
          {
            v110 = 0;
          }

          v108[4] = v110;
          if (__OFSUB__(v112, 1))
          {
            goto LABEL_94;
          }

          v108[3] = v112 - 1;
          swift_endAccess();

          sub_100337CF8();

          v93 = v78[4];
          v94 = v93[3];
          if (!v94)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_61;
    }

LABEL_95:
    __break(1u);
LABEL_96:

    v194 = 0;
    v195 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v152._countAndFlagsBits = 91;
    v152._object = 0xE100000000000000;
    String.append(_:)(v152);
    v153._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v153);

    v154._countAndFlagsBits = 0x6C6975626572205DLL;
    v154._object = 0xEA00000000003C64;
    String.append(_:)(v154);
    v155._countAndFlagsBits = v181;
    v155._object = v185;
    String.append(_:)(v155);
    v156._countAndFlagsBits = 0xD00000000000002FLL;
    v156._object = 0x8000000100440800;
    String.append(_:)(v156);
    v157._countAndFlagsBits = (*(*a1 + 152))();
    String.append(_:)(v157);

    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_98:
      v194 = 0;
      v195 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v158._countAndFlagsBits = 91;
      v158._object = 0xE100000000000000;
      String.append(_:)(v158);
      v159._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v159);

      v160._countAndFlagsBits = 0x6C6975626572205DLL;
      v160._object = 0xEA00000000003C64;
      String.append(_:)(v160);
      v161._countAndFlagsBits = v181;
      v161._object = v185;
      String.append(_:)(v161);
      v162._object = 0x80000001004407E0;
      v162._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v162);
      v163 = v3();
      v165 = v164;
      v3 = v166;
      v168 = v167;
      v169._countAndFlagsBits = sub_100331968(v163);
      String.append(_:)(v169);

      sub_1002FB794(v163, v165, v3, v168);
      v170._countAndFlagsBits = 0x2E746E65766520;
      v170._object = 0xE700000000000000;
      String.append(_:)(v170);
    }
  }

LABEL_61:
  sub_100015B34(v173, v92);
  if (v174(v92, 1, v77) == 1)
  {

    sub_1000038A4(v92, &qword_100525C00, &unk_1004511A0);
  }

  else
  {

    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v115 = 136315650;
      v116 = _typeName(_:qualified:)();
      v118 = sub_10002C9C8(v116, v117, &v194);

      *(v115 + 4) = v118;
      *(v115 + 12) = 2080;
      v119 = sub_10002C9C8(v181, v3, &v194);

      *(v115 + 14) = v119;
      *(v115 + 22) = 2080;
      v121 = (*(*v78 + 216))(v120);
      v123 = sub_10002C9C8(v121, v122, &v194);

      *(v115 + 24) = v123;
      _os_log_impl(&_mh_execute_header, v113, v114, "[%s] rebuild<%s> - after fully advancing: %s", v115, 0x20u);
      swift_arrayDestroy();

      v92 = v179;
    }

    else
    {
    }

    v183(v92, v77);
  }

  sub_100338148();
}

uint64_t sub_100336744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = a5;
  v108 = a8;
  v113 = a6;
  v115 = a1;
  v104 = type metadata accessor for RoutingControl.Target();
  v12 = *(v104 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v104);
  v112 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Logger();
  v15 = *(v114 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v114);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v92 - v20;
  v103 = type metadata accessor for RoutingControl();
  v22 = *(v103 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v103);
  v102 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v27 = *(*(a4 + 32) + 24);
  if (v27 <= a3)
  {
    return result;
  }

  v99 = (v22 + 16);
  v98 = (v22 + 8);
  v97 = (v12 + 88);
  v96 = enum case for RoutingControl.Target.session(_:);
  v94 = (v12 + 8);
  v93 = (v12 + 96);
  v110 = (v15 + 16);
  v111 = (v15 + 8);
  *&v26 = 136315906;
  v100 = v26;
  v101 = a4;
  v109 = a2;
  v95 = v19;
  v116 = v27;
  while (a3 < v27)
  {
    v28 = *(a4 + 32);
    if (a3 >= v28[3])
    {
      goto LABEL_43;
    }

    v29 = v28[4];
    if (a3 + v29 >= v28[2])
    {
      v30 = v28[2];
    }

    else
    {
      v30 = 0;
    }

    v31 = v28[a3 + 5 + v29 - v30];
    v32 = *(*v31 + 104);

    v34 = v32(v33);
    if (v34)
    {
      sub_1002FB794(v34, v35, v36, v37);
    }

    else
    {
      (*(*v31 + 168))(v118);
      v38 = v118[0];
      if (v119 <= 5u)
      {
        v39 = v118[1];
        v40 = v118[2];
        v41 = v118[3];
        if (v119 < 4u)
        {

          v38 = v40;
          v39 = v41;
          goto LABEL_20;
        }

        if (v119 == 4)
        {
          goto LABEL_20;
        }

LABEL_31:
        sub_100238E4C(v118);
        goto LABEL_4;
      }

      v42 = v112;
      if (v119 > 8u)
      {
        if (v119 != 10)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v119 == 6)
        {
          v69 = *(v118[0] + 16);
          v39 = *(v118[0] + 24);

          sub_100238E4C(v118);
          v38 = v69;
LABEL_20:
          if (v38 == v115 && v39 == a2)
          {

            v43 = v114;
LABEL_24:
            v45 = sub_100028D40();
            (*v110)(v21, v45, v43);

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              v117 = v106;
              *v48 = v100;
              v49 = _typeName(_:qualified:)();
              LODWORD(v105) = v47;
              v51 = sub_10002C9C8(v49, v50, &v117);

              *(v48 + 4) = v51;
              *(v48 + 12) = 2082;
              *(v48 + 14) = sub_10002C9C8(v107, v113, &v117);
              *(v48 + 22) = 2082;
              v52 = *(*v31 + 152);

              v54 = v52(v53);
              v56 = v55;

              v57 = sub_10002C9C8(v54, v56, &v117);

              *(v48 + 24) = v57;
              *(v48 + 32) = 2082;
              v59 = (*(*a7 + 152))(v58);
              v61 = sub_10002C9C8(v59, v60, &v117);

              *(v48 + 34) = v61;
              _os_log_impl(&_mh_execute_header, v46, v105, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v48, 0x2Au);
              swift_arrayDestroy();

              a4 = v101;

              (*v111)(v21, v114);
            }

            else
            {

              (*v111)(v21, v43);
            }

            (*(*v31 + 112))(3, 0, 0, 0);

            a2 = v109;
            goto LABEL_5;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v43 = v114;
          if (v44)
          {
            goto LABEL_24;
          }

          goto LABEL_4;
        }

        if (v119 != 7)
        {
          goto LABEL_31;
        }
      }

      v62 = swift_projectBox();
      v63 = v102;
      v64 = v103;
      (*v99)(v102, v62, v103);
      sub_100238E4C(v118);
      RoutingControl.target.getter();
      (*v98)(v63, v64);
      v65 = v104;
      v66 = (*v97)(v42, v104);
      if (v66 != v96)
      {

        result = (*v94)(v42, v65);
        goto LABEL_5;
      }

      (*v93)(v42, v65);
      if (*v42 == v115 && v42[1] == a2)
      {
        v67 = v42[1];

        v68 = v114;
LABEL_37:
        v72 = sub_100028D40();
        v73 = v95;
        (*v110)(v95, v72, v68);

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.info.getter();

        LODWORD(v106) = v75;
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v117 = v105;
          *v76 = v100;
          v77 = _typeName(_:qualified:)();
          v92 = v74;
          v79 = sub_10002C9C8(v77, v78, &v117);

          *(v76 + 4) = v79;
          *(v76 + 12) = 2082;
          *(v76 + 14) = sub_10002C9C8(v107, v113, &v117);
          *(v76 + 22) = 2082;
          v80 = *(*v31 + 152);

          v82 = v80(v81);
          a4 = v101;
          v83 = v82;
          v85 = v84;

          v86 = sub_10002C9C8(v83, v85, &v117);

          *(v76 + 24) = v86;
          *(v76 + 32) = 2082;
          v88 = (*(*a7 + 152))(v87);
          v90 = sub_10002C9C8(v88, v89, &v117);

          *(v76 + 34) = v90;
          v91 = v92;
          _os_log_impl(&_mh_execute_header, v92, v106, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v76, 0x2Au);
          swift_arrayDestroy();

          a2 = v109;

          (*v111)(v95, v114);
        }

        else
        {

          (*v111)(v73, v114);
        }

        (*(*v31 + 112))(3, 0, 0, 0);
        goto LABEL_4;
      }

      v70 = v42[1];
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v68 = v114;
      if (v71)
      {
        goto LABEL_37;
      }
    }

LABEL_4:

LABEL_5:
    ++a3;
    v27 = v116;
    if (v116 == a3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}