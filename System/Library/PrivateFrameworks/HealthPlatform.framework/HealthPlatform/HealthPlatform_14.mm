uint64_t Array<A>.difference(from:)(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  v4 = type metadata accessor for PluginFeedItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v117 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v119 = &v116 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v116 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v120 = &v116 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v116 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v126 = (&v116 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v132 = &v116 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v130 = &v116 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v116 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v116 - v26);
  v28 = sub_22847D970(MEMORY[0x277D84F90]);
  v29 = *(a2 + 16);
  v124 = v29;
  v125 = v5;
  v121 = a2;
  if (v29)
  {
    v30 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v31 = *(v5 + 72);
    isUniquelyReferenced_nonNull_native = v28;
    v128 = v27;
    v129 = v31;
    while (1)
    {
      sub_22844BBC4(v30, v27);
      v35 = *v27;
      v36 = v27[1];
      v37 = v27;
      v38 = v25;
      sub_22844BBC4(v37, v25);
      v33 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v33;
      v25 = sub_2283F6D18(v35, v36);
      v40 = *(v33 + 16);
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v2 = v39;
      if (*(v33 + 24) >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v131;
          if (v39)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_228449A20();
          isUniquelyReferenced_nonNull_native = v131;
          if (v2)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_22844767C(v42, isUniquelyReferenced_nonNull_native);
        v43 = sub_2283F6D18(v35, v36);
        if ((v2 & 1) != (v44 & 1))
        {
LABEL_121:
          result = sub_22855E1BC();
          __break(1u);
          return result;
        }

        v25 = v43;
        isUniquelyReferenced_nonNull_native = v131;
        if (v2)
        {
LABEL_3:
          v33 = v129;
          v34 = *(isUniquelyReferenced_nonNull_native + 56) + v25 * v129;
          v25 = v38;
          sub_228527438(v38, v34);
          goto LABEL_4;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v45 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v25);
      *v45 = v35;
      v45[1] = v36;
      v33 = v129;
      v46 = *(isUniquelyReferenced_nonNull_native + 56) + v25 * v129;
      v25 = v38;
      sub_228526BB4(v38, v46, type metadata accessor for PluginFeedItem);
      v47 = *(isUniquelyReferenced_nonNull_native + 16);
      v48 = __OFADD__(v47, 1);
      v40 = v47 + 1;
      if (v48)
      {
        goto LABEL_113;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v40;

LABEL_4:
      v27 = v128;
      sub_228526B54(v128, type metadata accessor for PluginFeedItem);
      v30 += v33;
      if (!--v29)
      {
        goto LABEL_17;
      }
    }
  }

  isUniquelyReferenced_nonNull_native = v28;
LABEL_17:
  v129 = isUniquelyReferenced_nonNull_native;
  v2 = sub_22847D970(MEMORY[0x277D84F90]);
  v49 = *(v123 + 16);
  if (v49)
  {
    v50 = v124;
    v30 = v123 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
    v25 = *(v125 + 72);
    v51 = v130;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v25;
      sub_22844BBC4(v30, v51);
      v35 = *v51;
      v38 = v51[1];
      sub_22844BBC4(v51, v132);
      v33 = v2;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v2;
      v52 = sub_2283F6D18(v35, v38);
      v54 = *(v2 + 16);
      v55 = (v53 & 1) == 0;
      v48 = __OFADD__(v54, v55);
      v40 = v54 + v55;
      if (v48)
      {
        goto LABEL_112;
      }

      v2 = v53;
      if (*(v33 + 24) >= v40)
      {
        if ((v25 & 1) == 0)
        {
          v33 = &v131;
          v59 = v52;
          sub_228449A20();
          v52 = v59;
        }
      }

      else
      {
        sub_22844767C(v40, v25);
        v33 = v131;
        v52 = sub_2283F6D18(v35, v38);
        if ((v2 & 1) != (v56 & 1))
        {
          goto LABEL_121;
        }
      }

      v25 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = v131;
      if (v2)
      {
        v2 = v131;
        sub_228527438(v132, *(v131 + 56) + v52 * v25);
      }

      else
      {
        *(v131 + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v57 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v52);
        *v57 = v35;
        v57[1] = v38;
        sub_228526BB4(v132, *(isUniquelyReferenced_nonNull_native + 56) + v52 * v25, type metadata accessor for PluginFeedItem);
        v58 = *(isUniquelyReferenced_nonNull_native + 16);
        v48 = __OFADD__(v58, 1);
        v40 = v58 + 1;
        if (v48)
        {
          goto LABEL_114;
        }

        v2 = isUniquelyReferenced_nonNull_native;
        *(isUniquelyReferenced_nonNull_native + 16) = v40;
      }

      v51 = v130;
      sub_228526B54(v130, type metadata accessor for PluginFeedItem);
      v30 += v25;
      if (!--v49)
      {
        goto LABEL_31;
      }
    }
  }

  v50 = v124;
LABEL_31:
  v33 = v129;

  isUniquelyReferenced_nonNull_native = sub_22841F43C(v60);

  v62 = sub_22841F43C(v61);
  v30 = v62;
  if (*(isUniquelyReferenced_nonNull_native + 16) != v50)
  {

    v33 = sub_22847DB64(MEMORY[0x277D84F90]);
    if (!v50)
    {
LABEL_55:
      v80 = sub_2285257D0(v33);

      sub_2284A6410();
      swift_allocError();
      *v81 = v80;
      *(v81 + 8) = 0;
      swift_willThrow();
      return v25;
    }

    v64 = v126;
    v132 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v30 = v121 + v132;
    v130 = *(v125 + 72);
    v35 = v127;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v50;
      sub_22844BBC4(v30, v64);
      v2 = *v64;
      v25 = v64[1];
      sub_22844BBC4(v64, v35);

      v65 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v33;
      v38 = sub_2283F6D18(v2, v25);
      v40 = *(v33 + 16);
      v67 = (v66 & 1) == 0;
      v68 = v40 + v67;
      if (__OFADD__(v40, v67))
      {
        goto LABEL_116;
      }

      v35 = v66;
      if (*(v33 + 24) >= v68)
      {
        if (v65)
        {
          if ((v66 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          sub_228449884();
          v33 = v131;
          if ((v35 & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        sub_2284473A8(v68, v65);
        v33 = v131;
        v69 = sub_2283F6D18(v2, v25);
        if ((v35 & 1) != (v70 & 1))
        {
          goto LABEL_121;
        }

        v38 = v69;
        if ((v35 & 1) == 0)
        {
LABEL_48:
          *(v33 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v71 = (*(v33 + 48) + 16 * v38);
          *v71 = v2;
          v71[1] = v25;
          *(*(v33 + 56) + 8 * v38) = MEMORY[0x277D84F90];
          v72 = *(v33 + 16);
          v48 = __OFADD__(v72, 1);
          v40 = v72 + 1;
          if (v48)
          {
            goto LABEL_118;
          }

          *(v33 + 16) = v40;
          goto LABEL_50;
        }
      }

LABEL_50:
      v73 = *(v33 + 56);
      v74 = *(v73 + 8 * v38);
      v75 = swift_isUniquelyReferenced_nonNull_native();
      *(v73 + 8 * v38) = v74;
      if ((v75 & 1) == 0)
      {
        v74 = sub_228426E04(0, v74[2] + 1, 1, v74);
        *(v73 + 8 * v38) = v74;
      }

      v77 = v74[2];
      v76 = v74[3];
      v25 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        *(v73 + 8 * v38) = sub_228426E04(v76 > 1, v77 + 1, 1, v74);
      }

      v64 = v126;
      sub_228526B54(v126, type metadata accessor for PluginFeedItem);
      v78 = *(v73 + 8 * v38);
      *(v78 + 16) = v25;
      v79 = v130;
      v35 = v127;
      sub_228526BB4(v127, v78 + v132 + v77 * v130, type metadata accessor for PluginFeedItem);
      v30 += v79;
      v50 = isUniquelyReferenced_nonNull_native - 1;
      if (isUniquelyReferenced_nonNull_native == 1)
      {
        goto LABEL_55;
      }
    }
  }

  if (v50 <= *(v62 + 16) >> 3)
  {
    v131 = v62;

    v33 = &v131;
    sub_2285256A4(isUniquelyReferenced_nonNull_native);
    v38 = v131;
    v35 = *(v131 + 16);
    if (v35)
    {
      goto LABEL_34;
    }

LABEL_57:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v38 = sub_2285263AC(isUniquelyReferenced_nonNull_native, v30);
  v35 = *(v38 + 16);
  if (!v35)
  {
    goto LABEL_57;
  }

LABEL_34:
  v33 = sub_22840770C(v35, 0);
  v38 = sub_2284077A8(&v131, (v33 + 32), v35, v38);
  sub_228407958();
  if (v38 != v35)
  {
    goto LABEL_119;
  }

  v25 = sub_22842702C(0, 1, 1, MEMORY[0x277D84F90]);
  v38 = *(v25 + 16);
  v40 = *(v25 + 24);
  v35 = v38 + 1;
  if (v38 >= v40 >> 1)
  {
    goto LABEL_120;
  }

  while (1)
  {
    *(v25 + 16) = v35;
    v63 = v25 + 40 * v38;
    *(v63 + 32) = v33;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 32;
LABEL_58:
    if (*(v30 + 16) <= *(isUniquelyReferenced_nonNull_native + 16) >> 3)
    {
      break;
    }

    v35 = sub_2285263AC(v30, isUniquelyReferenced_nonNull_native);

    if (!*(v35 + 16))
    {
      goto LABEL_85;
    }

LABEL_62:
    v132 = v25;
    v25 = v35 + 56;
    v82 = 1 << *(v35 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v35 + 56);
    v85 = (v82 + 63) >> 6;

    v30 = 0;
    v40 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    while (v84)
    {
      v40 = v84;
LABEL_71:
      v84 = (v40 - 1) & v40;
      if (*(v129 + 16))
      {
        v87 = (*(v35 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v40)))));
        v88 = *v87;
        v38 = v87[1];

        v33 = v129;
        v89 = sub_2283F6D18(v88, v38);
        if (v90)
        {
          v91 = *(v129 + 56);
          v128 = *(v125 + 72);
          v92 = v118;
          sub_22844BBC4(v91 + v128 * v89, v118);

          sub_228526BB4(v92, v120, type metadata accessor for PluginFeedItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_228426E04(0, *(v130 + 16) + 1, 1, v130);
          }

          v38 = *(v130 + 16);
          v93 = *(v130 + 24);
          v33 = v38 + 1;
          if (v38 >= v93 >> 1)
          {
            v130 = sub_228426E04(v93 > 1, v38 + 1, 1, v130);
          }

          v94 = v130;
          *(v130 + 16) = v33;
          sub_228526BB4(v120, v94 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + v38 * v128, type metadata accessor for PluginFeedItem);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v86 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v86 >= v85)
      {

        v25 = v132;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_22842702C(0, *(v25 + 16) + 1, 1, v25);
        }

        v96 = *(v25 + 16);
        v95 = *(v25 + 24);
        if (v96 >= v95 >> 1)
        {
          v25 = sub_22842702C((v95 > 1), v96 + 1, 1, v25);
        }

        *(v25 + 16) = v96 + 1;
        v97 = v25 + 40 * v96;
        *(v97 + 32) = v130;
        *(v97 + 40) = 0;
        *(v97 + 48) = 0;
        *(v97 + 56) = 0;
        *(v97 + 64) = 0;
        if (*(v35 + 16) > *(isUniquelyReferenced_nonNull_native + 16) >> 3)
        {
          v33 = sub_2285263AC(v35, isUniquelyReferenced_nonNull_native);

          v98 = v122;
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v40 = *(v25 + 8 * v86);
      ++v30;
      if (v40)
      {
        v30 = v86;
        goto LABEL_71;
      }
    }

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
    v25 = sub_22842702C((v40 > 1), v35, 1, v25);
  }

  v131 = isUniquelyReferenced_nonNull_native;

  v33 = &v131;
  sub_2285256A4(v30);

  v35 = v131;
  if (*(v131 + 16))
  {
    goto LABEL_62;
  }

LABEL_85:
  v98 = v122;
  v131 = isUniquelyReferenced_nonNull_native;
  sub_2285256A4(v35);

  v33 = v131;
LABEL_86:
  v38 = v129;

  v99 = v98;
  v30 = sub_228526F7C(v33, v38, v2);
  v35 = v99;

  if (*(v30 + 16))
  {
    v132 = v25;
    v25 = v30 + 56;
    v100 = 1 << *(v30 + 32);
    v101 = -1;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    v102 = v101 & *(v30 + 56);
    v2 = (v100 + 63) >> 6;

    v103 = 0;
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    while (v102)
    {
      v40 = v102;
LABEL_96:
      v102 = (v40 - 1) & v40;
      if (*(v129 + 16))
      {
        v105 = (*(v30 + 48) + ((v103 << 10) | (16 * __clz(__rbit64(v40)))));
        v106 = *v105;
        v38 = v105[1];

        v33 = v129;
        v107 = sub_2283F6D18(v106, v38);
        if (v108)
        {
          v109 = *(v129 + 56);
          v130 = *(v125 + 72);
          v110 = v117;
          sub_22844BBC4(v109 + v130 * v107, v117);

          sub_228526BB4(v110, v119, type metadata accessor for PluginFeedItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_228426E04(0, *(isUniquelyReferenced_nonNull_native + 16) + 1, 1, isUniquelyReferenced_nonNull_native);
          }

          v38 = *(isUniquelyReferenced_nonNull_native + 16);
          v111 = *(isUniquelyReferenced_nonNull_native + 24);
          v33 = v38 + 1;
          if (v38 >= v111 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_228426E04(v111 > 1, v38 + 1, 1, isUniquelyReferenced_nonNull_native);
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v33;
          sub_228526BB4(v119, isUniquelyReferenced_nonNull_native + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + v38 * v130, type metadata accessor for PluginFeedItem);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v104 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        goto LABEL_117;
      }

      if (v104 >= v2)
      {

        v25 = v132;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_22842702C(0, *(v25 + 16) + 1, 1, v25);
        }

        v113 = *(v25 + 16);
        v112 = *(v25 + 24);
        if (v113 >= v112 >> 1)
        {
          v25 = sub_22842702C((v112 > 1), v113 + 1, 1, v25);
        }

        *(v25 + 16) = v113 + 1;
        v114 = v25 + 40 * v113;
        *(v114 + 32) = isUniquelyReferenced_nonNull_native;
        *(v114 + 40) = 0;
        *(v114 + 48) = 0;
        *(v114 + 56) = 0;
        *(v114 + 64) = 0;
        return v25;
      }

      v40 = *(v25 + 8 * v104);
      ++v103;
      if (v40)
      {
        v103 = v104;
        goto LABEL_96;
      }
    }
  }

  return v25;
}

uint64_t sub_2285249EC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_22855DB9C();

    if (v7)
    {
      v8 = sub_228524E48();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for EncodedFeatureTag();
  v11 = *(v3 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228489CD8();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_228525108(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_228524B74(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_22855DB9C();

    if (v7)
    {
      v8 = sub_228524FA0();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
  v11 = *(v3 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228489CF0();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_228525108(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_228524D0C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22855E22C();
  sub_22855D20C();
  v7 = sub_22855E27C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22855E15C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2284896F4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2285252A8(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_228524E48()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22855DB4C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_228485424(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22855D99C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for EncodedFeatureTag();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22855D9AC();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_228525108(v9);
  result = sub_22855D9AC();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228524FA0()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22855DB4C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_228485464(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22855D99C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22855D9AC();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_228525108(v9);
  result = sub_22855D9AC();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_228525108(unint64_t result)
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

    v9 = sub_22855DABC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22855D99C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2285252A8(unint64_t result)
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

    v9 = sub_22855DABC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22855E22C();

        sub_22855D20C();
        v15 = sub_22855E27C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_22852546C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_22855DB4C())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
    sub_22844B928(&qword_280DED158, &qword_280DED160, 0x277CBE448);
    sub_22855D56C();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_228407958();
      return;
    }

    while (1)
    {
      v18 = sub_228524B74(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_22855DB8C())
      {
        sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_2285256A4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_228524D0C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2285257D0(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_228525930(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_228525AD8(v9, v4, v2);
  result = MEMORY[0x22AABAD40](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_228525930(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_228525D74(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_228525D74(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_228525A20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_228526C1C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_228525AD8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_228525930(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_228525B50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22844BD10();
  result = sub_22855DF6C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = *(v9 + 40);
    v21 = v18;
    v32 = v19;
    result = sub_22855D99C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      v4 = v17;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v21;
    *(*(v9 + 56) + 8 * v25) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_228525D74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22852749C();
  result = sub_22855DF6C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_22855E22C();

    sub_22855D20C();
    result = sub_22855E27C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_228525FAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_228460124();
  result = sub_22855DC2C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22855E22C();

    sub_22855D20C();
    result = sub_22855E27C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2285261C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_228527598();
  result = sub_22855DC2C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22855D99C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2285263AC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22855E22C();

    sub_22855D20C();
    v24 = sub_22855E27C();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22855E15C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_228525FAC(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_22855E22C();

            sub_22855D20C();
            v43 = sub_22855E27C();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_22855E15C() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_22852691C(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x22AABAD40](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_228407958();
    goto LABEL_53;
  }

  result = MEMORY[0x22AABAD40](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22852691C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_228525FAC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_22855E22C();

        sub_22855D20C();
        v20 = sub_22855E27C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_22855E15C() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_228526B54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228526BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228526C1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a2;
  v57 = a5;
  v47 = a1;
  v7 = type metadata accessor for PluginFeedItem();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v46 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v14;
  result = MEMORY[0x28223BE20](v13);
  v55 = a3;
  v56 = &v46 - v16;
  v17 = 0;
  v20 = *(a3 + 56);
  v19 = a3 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v48 = (v21 + 63) >> 6;
  v49 = 0;
  v52 = a4;
  while (v23)
  {
    v24 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_11:
    v27 = v24 | (v17 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_19;
    }

    v28 = (*(v55 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];

    v31 = sub_2283F6D18(v29, v30);
    if ((v32 & 1) == 0)
    {
      goto LABEL_18;
    }

    v33 = *(a4 + 56);
    v34 = v53;
    v35 = *(v54 + 72);
    sub_22844BBC4(v33 + v35 * v31, v53);
    sub_228526BB4(v34, v56, type metadata accessor for PluginFeedItem);
    if (*(v57 + 16) && (v36 = sub_2283F6D18(v29, v30), (v37 & 1) != 0))
    {
      v38 = v51;
      sub_22844BBC4(*(v57 + 56) + v36 * v35, v51);
      v39 = v23;
      v40 = v50;
      sub_228526BB4(v38, v50, type metadata accessor for PluginFeedItem);
      v41 = v56;
      v42 = PluginFeedItem.hasChanged(from:)(v40);
      v43 = v40;
      v23 = v39;
      sub_228526B54(v43, type metadata accessor for PluginFeedItem);
      sub_228526B54(v41, type metadata accessor for PluginFeedItem);

      a4 = v52;
      if (v42)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_228526B54(v56, type metadata accessor for PluginFeedItem);
      a4 = v52;
LABEL_18:

LABEL_19:
      *(v47 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v49++, 1))
      {
        __break(1u);
LABEL_22:
        v45 = v55;

        return sub_228525FAC(v47, v46, v49, v45);
      }
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v48)
    {
      goto LABEL_22;
    }

    v26 = *(v19 + 8 * v17);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v23 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228526F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for PluginFeedItem();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v57 = v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v61 = v51 - v15;
  MEMORY[0x28223BE20](v14);
  v63 = v51 - v16;
  v17 = *(a1 + 32);
  v18 = v17 & 0x3F;
  v19 = ((1 << v17) + 63) >> 6;
  v20 = 8 * v19;

  v64 = a3;

  if (v18 > 0xD)
  {
    goto LABEL_26;
  }

  while (2)
  {
    v52 = v19;
    v53 = v4;
    v51[1] = v51;
    MEMORY[0x28223BE20](v21);
    v54 = v51 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v54, v20);
    v4 = 0;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v20 = v24 & *(a1 + 56);
    v55 = (v23 + 63) >> 6;
    v56 = 0;
    v59 = a2;
    v60 = a1;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_12:
      v28 = v25 | (v4 << 6);
      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }

      v29 = (*(a1 + 48) + 16 * v28);
      v30 = *v29;
      v19 = v29[1];

      v31 = sub_2283F6D18(v30, v19);
      if ((v32 & 1) == 0)
      {
        goto LABEL_19;
      }

      v33 = *(a2 + 56);
      v34 = v61;
      v35 = *(v62 + 72);
      sub_22844BBC4(v33 + v35 * v31, v61);
      sub_228526BB4(v34, v63, type metadata accessor for PluginFeedItem);
      if (*(v64 + 16) && (v36 = sub_2283F6D18(v30, v19), (v37 & 1) != 0))
      {
        v38 = v58;
        sub_22844BBC4(*(v64 + 56) + v36 * v35, v58);
        v39 = v28;
        v40 = v20;
        v41 = v57;
        sub_228526BB4(v38, v57, type metadata accessor for PluginFeedItem);
        v42 = v63;
        v43 = PluginFeedItem.hasChanged(from:)(v41);
        v44 = v41;
        v20 = v40;
        v28 = v39;
        sub_228526B54(v44, type metadata accessor for PluginFeedItem);
        sub_228526B54(v42, type metadata accessor for PluginFeedItem);

        a2 = v59;
        a1 = v60;
        if (v43)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_228526B54(v63, type metadata accessor for PluginFeedItem);
        a2 = v59;
        a1 = v60;
LABEL_19:

LABEL_20:
        *&v54[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
        if (__OFADD__(v56++, 1))
        {
          __break(1u);
LABEL_23:
          v46 = sub_228525FAC(v54, v52, v56, a1);

          goto LABEL_24;
        }
      }
    }

    v26 = v4;
    while (1)
    {
      v4 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v4 >= v55)
      {
        goto LABEL_23;
      }

      v27 = *(v22 + 8 * v4);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v49 = swift_slowAlloc();

  v50 = v64;

  v46 = sub_228525A20(v49, v19, a1, a2, v50);

  MEMORY[0x22AABAD40](v49, -1, -1);

LABEL_24:
  v47 = *MEMORY[0x277D85DE8];
  return v46;
}

uint64_t sub_228527438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginFeedItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22852749C()
{
  if (!qword_27D83F578)
  {
    sub_228527534(255, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F578);
    }
  }
}

void sub_228527534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228527598()
{
  if (!qword_27D83F9A0)
  {
    sub_2283EF310(255, &qword_280DE9320, 0x277CCDA70);
    sub_22844B928(&qword_280DE9318, &qword_280DE9320, 0x277CCDA70);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F9A0);
    }
  }
}

id Feed.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Feed.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Feed();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Feed.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Feed();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static Plugin.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22852778C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 package];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2285277E4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 allPluginData];
  type metadata accessor for PluginData();
  sub_2285278D4();
  v4 = sub_22855D51C();

  *a2 = v4;
}

void sub_228527854(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for PluginData();
  sub_2285278D4();
  v4 = sub_22855D50C();
  [v3 setAllPluginData_];
}

unint64_t sub_2285278D4()
{
  result = qword_27D83FCE0;
  if (!qword_27D83FCE0)
  {
    type metadata accessor for PluginData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCE0);
  }

  return result;
}

id static SharableModelReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2285279A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SharableModelReference();
  result = sub_22855DC7C();
  *a1 = result;
  return result;
}

void (**ContentStateManager.getMostRecentEntry(in:)(unint64_t a1))(char *, uint64_t)
{
  v11 = 0;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_22852B28C(v3, a1, &qword_280DE9260, 0x277CCD308);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v5;
      sub_228528174(&v11, &v10, &v9);

      v4 = v9;
      v11 = v9;
      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

uint64_t ContentStateManager.getEntries<A>(from:decoder:)()
{
  sub_22855D3FC();
  sub_2284AD00C(0, &qword_280DE9590, &qword_280DE9260, 0x277CCD308);
  sub_22855D47C();
  sub_22852BDC8(&qword_27D840800, &qword_280DE9590, &qword_280DE9260, 0x277CCD308);
  sub_22855D30C();
  return v1;
}

uint64_t NotificationContentStateManager.createMigrationPublisher(with:identifier:keyValueDomain:dispatchQueue:migrationKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a7;
  v47 = a6;
  v45 = a5;
  v48 = a4;
  v55 = a2;
  v56 = a3;
  v57 = a1;
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  v53 = a9;
  MEMORY[0x28223BE20](a1);
  v50 = MEMORY[0x277D85248];
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22852B58C(0, &qword_280DED138, MEMORY[0x277D85248]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  sub_22849B450();
  v18 = *(v17 - 8);
  v58 = v17;
  v59 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v49 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B5C0();
  v22 = *(v21 - 8);
  v60 = v21;
  v61 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v54 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22855D71C();
  v62 = a5;
  v63 = v25;
  v26 = sub_22855D7EC();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_22852B7D0(0, &qword_280DE97D8, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277CBCEA8]);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2284C949C();
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22852BBBC(v16, &qword_280DED138, v50);

  v27 = v51;
  (*(v11 + 16))(v51, v52, a8);
  v28 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v29 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v53;
  *(v30 + 2) = a8;
  *(v30 + 3) = v31;
  v32 = v56;
  *(v30 + 4) = v55;
  *(v30 + 5) = v32;
  v33 = v46;
  *(v30 + 6) = v47;
  *(v30 + 7) = v33;
  v34 = v45;
  *(v30 + 8) = v57;
  *(v30 + 9) = v34;
  (*(v11 + 32))(&v30[v28], v27, a8);
  v35 = v48;
  *&v30[v29] = v48;

  v36 = v34;
  v37 = v35;
  sub_22855CCBC();
  v38 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852BD00(&qword_280DE9990, sub_22849B450);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v38);
  v39 = v54;
  v40 = v58;
  v41 = v49;
  sub_22855CF2C();

  (*(v59 + 8))(v41, v40);
  sub_22852BD00(&qword_280DE9A18, sub_22849B5C0);
  v42 = v60;
  v43 = sub_22855CE6C();
  (*(v61 + 8))(v39, v42);
  return v43;
}

void sub_228528174(void **a1@<X0>, id *a2@<X1>, void (***a3)(char *, uint64_t)@<X8>)
{
  v4 = v3;
  v43 = sub_22855C16C();
  v8 = *(v43 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = (&v35 - v12);
  v13 = *a1;
  v14 = [*a2 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  v15 = sub_22855D3AC();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_25:

    v18 = 0;
    goto LABEL_26;
  }

LABEL_24:
  v16 = sub_22855DB4C();
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_3:
  v35 = v13;
  v36 = a3;
  v37 = v4;
  v38 = v16;
  v17 = 0;
  v18 = 0;
  v45 = v15 & 0xC000000000000001;
  v44 = v15 & 0xFFFFFFFFFFFFFF8;
  v39 = v15;
  v40 = v8 + 1;
  do
  {
    if (v45)
    {
      v19 = sub_22852B28C(v17, v15, &qword_27D83FB18, 0x277CCD300);
    }

    else
    {
      if (v17 >= *(v44 + 16))
      {
        goto LABEL_23;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v8 = v19;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v18)
    {
      v21 = [v18 modificationDate];
      a3 = v41;
      sub_22855C13C();

      v22 = [v8 modificationDate];
      v23 = v42;
      sub_22855C13C();

      v4 = sub_22855C11C();
      v24 = *v40;
      v25 = v23;
      v13 = v43;
      (*v40)(v25, v43);
      v24(a3, v13);
      if (v4)
      {

        v18 = v8;
      }

      else
      {
      }

      v16 = v38;
      v15 = v39;
    }

    else
    {
      v18 = v19;
    }

    ++v17;
  }

  while (v20 != v16);

  v26 = v35;
  if (v35 && v18)
  {
    v27 = v35;
    v28 = [v27 modificationDate];
    v29 = v41;
    sub_22855C13C();

    v30 = [v18 modificationDate];
    v31 = v42;
    sub_22855C13C();

    LOBYTE(v30) = sub_22855C11C();
    v32 = *v40;
    v33 = v31;
    v34 = v43;
    (*v40)(v33, v43);
    v32(v29, v34);
    if (v30)
    {

      a3 = v36;
      goto LABEL_26;
    }

    v18 = v26;
  }

  a3 = v36;
LABEL_26:
  *a3 = v18;
}

uint64_t sub_228528524@<X0>(id *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = [*a1 value];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_22855BD7C();
  if (v3)
  {
    sub_22842B38C(v7, v9);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = v3;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315906;
      v16 = sub_22855E34C();
      v18 = sub_2283F8938(v16, v17, &v27);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2283F8938(0xD000000000000017, 0x8000000228570910, &v27);
      *(v14 + 22) = 2080;
      v19 = sub_22855E34C();
      v21 = sub_2283F8938(v19, v20, &v27);

      *(v14 + 24) = v21;
      *(v14 + 32) = 2082;
      v22 = v3;
      sub_228418D44();
      v23 = sub_22855D1CC();
      v25 = sub_2283F8938(v23, v24, &v27);

      *(v14 + 34) = v25;
      _os_log_impl(&dword_2283ED000, v12, v13, "%s %s %s Error: %{public}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  else
  {
    sub_22842B38C(v7, v9);
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }
}

uint64_t NotificationContentStateManager.getContentState(for:legacyStringIdentifier:legacyKeyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  sub_22852B6BC();
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v31 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = NotificationContentStateManager.migrateStringContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(a3, a4, a1, a2, v30, a6, a7);
  v34 = v30;
  (*(v14 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a6);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  *(v21 + 24) = a7;
  (*(v14 + 32))(v21 + v20, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v22 = (v21 + ((v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a1;
  v22[1] = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22852BE18;
  *(v23 + 24) = v21;

  sub_22855CCBC();
  v24 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852B58C(0, qword_280DEB558, type metadata accessor for NotificationContentState);
  sub_22852B7D0(0, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v24);
  sub_22852B850();
  v25 = v31;
  sub_22855CF2C();

  sub_22852BD00(&qword_280DE9A48, sub_22852B6BC);
  v26 = v32;
  v27 = sub_22855CE6C();
  (*(v33 + 8))(v25, v26);
  return v27;
}

uint64_t NotificationContentStateManager.migrateStringContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22855D74C();
  v12 = MEMORY[0x277CBCEA8];
  sub_22852B910(0, &qword_280DE97A8, MEMORY[0x277CBCEA8]);
  sub_22852BC18(&qword_280DE97B0, &qword_280DE97A8, v12);
  v13 = sub_22855CE6C();

  v14 = (*(a7 + 32))(v13, a3, a4, a5, a6, a7);

  return v14;
}

uint64_t NotificationContentStateManager.getContentState(for:legacyDateIdentifier:legacyKeyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  sub_22852B6BC();
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v31 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = NotificationContentStateManager.migrateDateContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(a3, a4, a1, a2, v30, a6, a7);
  v34 = v30;
  (*(v14 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a6);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  *(v21 + 24) = a7;
  (*(v14 + 32))(v21 + v20, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v22 = (v21 + ((v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a1;
  v22[1] = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22852BE18;
  *(v23 + 24) = v21;

  sub_22855CCBC();
  v24 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852B58C(0, qword_280DEB558, type metadata accessor for NotificationContentState);
  sub_22852B7D0(0, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v24);
  sub_22852B850();
  v25 = v31;
  sub_22855CF2C();

  sub_22852BD00(&qword_280DE9A48, sub_22852B6BC);
  v26 = v32;
  v27 = sub_22855CE6C();
  (*(v33 + 8))(v25, v26);
  return v27;
}

uint64_t NotificationContentStateManager.migrateDateContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v19 = a4;
  sub_22852B9AC();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22855D71C();
  sub_22852B7D0(0, &qword_280DE97D8, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277CBCEA8]);
  sub_22852BC5C(0, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2284C949C();
  sub_22855CE8C();

  sub_22852BD00(&qword_280DE9B90, sub_22852B9AC);
  v16 = sub_22855CE6C();
  (*(v12 + 8))(v15, v11);
  v17 = (*(a7 + 32))(v16, a3, v19, a5, v20, a7);

  return v17;
}

uint64_t NotificationContentStateManager.getContentState(for:migrationContentStatePublisher:legacyKeyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  sub_22852B6BC();
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v28 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = (*(a6 + 32))(a3, a1, a2, a4, a5, a6);
  (*(v13 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a5);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  (*(v13 + 32))(v20 + v19, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  v21 = (v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a1;
  v21[1] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22852BB1C;
  *(v22 + 24) = v20;

  sub_22855CCBC();
  v23 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852B58C(0, qword_280DEB558, type metadata accessor for NotificationContentState);
  sub_22852B7D0(0, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v23);
  sub_22852B850();
  v24 = v28;
  sub_22855CF2C();

  sub_22852BD00(&qword_280DE9A48, sub_22852B6BC);
  v25 = v29;
  v26 = sub_22855CE6C();
  (*(v30 + 8))(v24, v25);
  return v26;
}

uint64_t sub_228529680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v121 = a8;
  v134 = a7;
  v118 = a6;
  v133 = a3;
  v135 = a9;
  v136 = a11;
  v137 = a2;
  v122 = *(a11 - 8);
  v15 = *(v122 + 64);
  MEMORY[0x28223BE20](a1);
  v119 = v16;
  v120 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22852B58C(0, &qword_280DED138, MEMORY[0x277D85248]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v113 - v19;
  sub_22849BBD4();
  v124 = *(v21 - 8);
  v125 = v21;
  v22 = *(v124 + 64);
  MEMORY[0x28223BE20](v21);
  v123 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BD88();
  v130 = v24;
  v128 = *(v24 - 8);
  v25 = *(v128 + 64);
  MEMORY[0x28223BE20](v24);
  v126 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BEA4();
  v131 = v27;
  v129 = *(v27 - 8);
  v28 = *(v129 + 64);
  MEMORY[0x28223BE20](v27);
  v127 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22852BC5C(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v31 = v30;
  v115 = *(v30 - 1);
  v32 = *(v115 + 64);
  MEMORY[0x28223BE20](v30);
  v113 = &v113 - v33;
  sub_2283FF0C0(0, &qword_280DE8EB0, MEMORY[0x277CBCF38]);
  v117 = v34;
  v116 = *(v34 - 8);
  v35 = *(v116 + 64);
  MEMORY[0x28223BE20](v34);
  v114 = &v113 - v36;
  sub_22852B58C(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v113 - v39;
  v41 = sub_22855C16C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v113 - v47;
  sub_2284360F4(a1, v40);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v49 = v20;
    v117 = a4;
    v132 = a5;
    sub_22852BBBC(v40, &qword_280DEE380, MEMORY[0x277CC9578]);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v115 = a12;
    v116 = a10;
    v50 = sub_22855CABC();
    __swift_project_value_buffer(v50, qword_280DEEC98);
    v51 = v133;

    v52 = sub_22855CA8C();
    v53 = sub_22855D6AC();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v136;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v139[0] = v57;
      *v56 = 136315394;
      v58 = sub_22855E34C();
      v60 = sub_2283F8938(v58, v59, v139);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = v137;
      *(v56 + 14) = sub_2283F8938(v137, v51, v139);
      _os_log_impl(&dword_2283ED000, v52, v53, "%s Proceeding with migration for %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v57, -1, -1);
      MEMORY[0x22AABAD40](v56, -1, -1);
    }

    else
    {

      v61 = v137;
    }

    v138 = v134;
    v139[0] = v118;
    v84 = sub_22855D7EC();
    (*(*(v84 - 8) + 56))(v49, 1, 1, v84);
    v85 = MEMORY[0x277CBCD88];
    sub_22852B910(0, &qword_280DE9908, MEMORY[0x277CBCD88]);
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v118 = MEMORY[0x277CBCD90];
    sub_22852BC18(&qword_280DE9910, &qword_280DE9908, v85);
    sub_2283F22E0();
    v86 = v123;
    sub_22855CF4C();
    sub_22852BBBC(v49, &qword_280DED138, MEMORY[0x277D85248]);
    v87 = v122;
    v88 = v120;
    (*(v122 + 16))(v120, v121, v55);
    v89 = (*(v87 + 80) + 48) & ~*(v87 + 80);
    v90 = swift_allocObject();
    v91 = v115;
    *(v90 + 2) = v55;
    *(v90 + 3) = v91;
    *(v90 + 4) = v61;
    *(v90 + 5) = v51;
    (*(v87 + 32))(&v90[v89], v88, v55);

    sub_22855CCBC();
    v92 = MEMORY[0x277CBCD88];
    sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
    v122 = v93;
    sub_22852BD00(&qword_280DE99A0, sub_22849BBD4);
    sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v92);
    v95 = v125;
    v94 = v126;
    sub_22855CF2C();

    (*(v124 + 8))(v86, v95);
    v96 = swift_allocObject();
    v97 = v137;
    v96[2] = v136;
    v96[3] = v91;
    v96[4] = v97;
    v96[5] = v51;
    v98 = v116;
    v99 = v117;
    v96[6] = v116;
    v96[7] = v99;
    v100 = v134;
    v96[8] = v132;
    v96[9] = v100;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_22852BCEC;
    *(v101 + 24) = v96;

    v102 = v98;
    v103 = v100;
    sub_22855CCBC();
    sub_22852BD00(&qword_280DE9A08, sub_22849BD88);
    v104 = v127;
    v105 = v130;
    sub_22855CF2C();

    (*(v128 + 8))(v94, v105);
    sub_22852BD00(&qword_280DE99F8, sub_22849BEA4);
    v106 = v131;
    v107 = sub_22855CE6C();
    result = (*(v129 + 8))(v104, v106);
    v82 = v135;
  }

  else
  {
    v134 = v31;
    v62 = a4;
    (*(v42 + 32))(v48, v40, v41);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v63 = sub_22855CABC();
    __swift_project_value_buffer(v63, qword_280DEEC98);
    (*(v42 + 16))(v46, v48, v41);
    v64 = v133;

    v65 = a5;
    v66 = sub_22855CA8C();
    v67 = sub_22855D66C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v62;
      v69 = swift_slowAlloc();
      LODWORD(v130) = v67;
      v70 = v69;
      v131 = swift_slowAlloc();
      v139[0] = v131;
      *v70 = 136315906;
      v71 = sub_22855E34C();
      v132 = v65;
      v73 = sub_2283F8938(v71, v72, v139);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_2283F8938(v137, v64, v139);
      *(v70 + 22) = 2080;
      sub_22852BD00(&qword_280DECD88, MEMORY[0x277CC9578]);
      v74 = sub_22855E11C();
      v76 = v75;
      v77 = v46;
      v78 = *(v42 + 8);
      v78(v77, v41);
      v79 = sub_2283F8938(v74, v76, v139);

      *(v70 + 24) = v79;
      *(v70 + 32) = 2080;
      *(v70 + 34) = sub_2283F8938(v68, v132, v139);
      _os_log_impl(&dword_2283ED000, v66, v130, "%s Migration already completed for %s on %s for key %s", v70, 0x2Au);
      v80 = v131;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v80, -1, -1);
      v81 = v70;
      v82 = v135;
      MEMORY[0x22AABAD40](v81, -1, -1);

      v83 = v134;
    }

    else
    {

      v109 = v46;
      v78 = *(v42 + 8);
      v78(v109, v41);
      v83 = v134;
      v82 = v135;
    }

    v110 = v113;
    sub_22855CDCC();
    sub_228418D44();
    v111 = v114;
    sub_22855CD9C();
    (*(v115 + 8))(v110, v83);
    sub_22852B5E0(&qword_280DE8EB8, &qword_280DE8EB0, MEMORY[0x277CBCF38]);
    v112 = v117;
    v107 = sub_22855CE6C();
    (*(v116 + 8))(v111, v112);
    result = (v78)(v48, v41);
  }

  *v82 = v107;
  return result;
}

uint64_t sub_22852A514@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X8>)
{
  v57 = a6;
  v58 = a4;
  v59 = a7;
  v60 = a5;
  sub_22852BC5C(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v11 = v10;
  v56 = *(v10 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  sub_2283FF0C0(0, &qword_280DE8EB0, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  v21 = type metadata accessor for NotificationContentState(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[1];
  if (v26)
  {
    v27 = *a1;
    v28 = v25 + *(v23 + 20);
    v29 = v23;
    sub_22855C1CC();
    *v25 = a2;
    v25[1] = a3;
    v30 = (v25 + v29[6]);
    *v30 = v27;
    v30[1] = v26;
    *(v25 + v29[7]) = 1;
    *(v25 + v29[8]) = 0;
    v31 = qword_280DEEC90;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_22855CABC();
    __swift_project_value_buffer(v32, qword_280DEEC98);

    v33 = sub_22855CA8C();
    v34 = sub_22855D6AC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61 = v56;
      *v35 = 136315651;
      v36 = sub_22855E34C();
      v38 = sub_2283F8938(v36, v37, &v61);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2283F8938(a2, a3, &v61);
      *(v35 + 22) = 2081;
      *(v35 + 24) = sub_2283F8938(v27, v26, &v61);
      _os_log_impl(&dword_2283ED000, v33, v34, "%s Migrating %s content state: %{private}s", v35, 0x20u);
      v39 = v56;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v35, -1, -1);
    }

    v40 = (*(*(v57 + 1) + 64))(v25, v60);
    result = sub_22852BD48(v25);
  }

  else
  {
    v57 = v14;
    v58 = v17;
    v55 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v42 = sub_22855CABC();
    __swift_project_value_buffer(v42, qword_280DEEC98);

    v43 = sub_22855CA8C();
    v44 = sub_22855D6AC();

    v45 = v20;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61 = v47;
      *v46 = 136315394;
      v48 = sub_22855E34C();
      v50 = sub_2283F8938(v48, v49, &v61);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2283F8938(v55, a3, &v61);
      _os_log_impl(&dword_2283ED000, v43, v44, "%s No pre-existing content state for %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v47, -1, -1);
      MEMORY[0x22AABAD40](v46, -1, -1);
    }

    v51 = v57;
    v52 = v58;
    v53 = v56;
    sub_22855CDCC();
    sub_228418D44();
    sub_22855CD9C();
    (*(v53 + 8))(v51, v11);
    sub_22852B5E0(&qword_280DE8EB8, &qword_280DE8EB0, MEMORY[0x277CBCF38]);
    v40 = sub_22855CE6C();
    result = (*(v52 + 8))(v45, v16);
  }

  *v59 = v40;
  return result;
}

uint64_t sub_22852AB08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  sub_22852B58C(0, &qword_280DED138, MEMORY[0x277D85248]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  sub_22852B58C(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = &v42 - v16;
  sub_22849C010();
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v21 = sub_22855CABC();
  __swift_project_value_buffer(v21, qword_280DEEC98);

  v22 = sub_22855CA8C();
  v23 = sub_22855D6AC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v45 = a5;
    v43 = v26;
    v51 = v26;
    *v25 = 136315394;
    v27 = sub_22855E34C();
    v29 = v20;
    v30 = v13;
    v31 = a6;
    v32 = sub_2283F8938(v27, v28, &v51);

    *(v25 + 4) = v32;
    a6 = v31;
    v13 = v30;
    v20 = v29;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2283F8938(v46, a2, &v51);
    _os_log_impl(&dword_2283ED000, v22, v23, "%s Marking migration as complete for %s", v25, 0x16u);
    v33 = v43;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v33, -1, -1);
    MEMORY[0x22AABAD40](v25, -1, -1);
  }

  v34 = v47;
  sub_22855C15C();
  v35 = sub_22855C16C();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = sub_22855D73C();
  sub_22852BBBC(v34, &qword_280DEE380, MEMORY[0x277CC9578]);
  v50 = a6;
  v51 = v36;
  v37 = sub_22855D7EC();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);
  v38 = MEMORY[0x277CBCEA8];
  sub_2283FF0C0(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22852B5E0(&qword_280DE9788, &qword_280DE9780, v38);
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22852BBBC(v13, &qword_280DED138, MEMORY[0x277D85248]);

  sub_22852BD00(&qword_280DE9980, sub_22849C010);
  v39 = v49;
  v40 = sub_22855CE6C();
  (*(v48 + 8))(v20, v39);
  return v40;
}

uint64_t sub_22852B01C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22852B04C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22852B58C(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_22855C16C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284360F4(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_22852BBBC(v7, &qword_280DEE380, MEMORY[0x277CC9578]);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_22855C0CC();
    v14 = sub_22855D4FC();
    v15 = v16;
    result = (*(v9 + 8))(v12, v8);
  }

  *a2 = v14;
  a2[1] = v15;
  return result;
}

uint64_t sub_22852B220(uint64_t a1, void **a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[8];
  _s14HealthPlatform19ContentStateManagerPAAE10getEntries2in7decoderSayqd__GSo28HKDeviceKeyValueStorageGroupC_10Foundation11JSONDecoderCtSeRd__SERd__lF_0(*a2);
  sub_22855D42C();
}

uint64_t sub_22852B28C(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_2283EF310(0, a3, a4);
  if (a2 >> 62)
  {
    v7 = sub_22855DF2C();
    v11 = *a4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v7;
    }

LABEL_10:
    sub_22855DC6C();
    v10 = 0xD000000000000046;
    v9 = 0x80000002285742E0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  v8 = *a4;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v7;
  }

  sub_22855DC6C();
  v9 = 0x8000000228574290;
  v10 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x22AAB92A0](v10, v9);
  v13 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v13);

  MEMORY[0x22AAB92A0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v14 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v14);

  result = sub_22855DEEC();
  __break(1u);
  return result;
}

uint64_t _s14HealthPlatform19ContentStateManagerPAAE10getEntries2in7decoderSayqd__GSo28HKDeviceKeyValueStorageGroupC_10Foundation11JSONDecoderCtSeRd__SERd__lF_0(void *a1)
{
  v1 = [a1 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  sub_22855D3AC();

  sub_2284AD00C(0, &qword_27D840808, &qword_27D83FB18, 0x277CCD300);
  sub_22852BDC8(&qword_27D840810, &qword_27D840808, &qword_27D83FB18, 0x277CCD300);
  v2 = sub_22855D2CC();

  return v2;
}

void sub_22852B58C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22852B5E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_2283FF0C0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22852B6BC()
{
  if (!qword_280DE9A40)
  {
    sub_22852B7D0(255, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
    v0 = MEMORY[0x277CBCD88];
    sub_2283FF0C0(255, &qword_280DE9888, MEMORY[0x277CBCD88]);
    sub_22852B850();
    sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v0);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A40);
    }
  }
}

void sub_22852B7D0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_22852B58C(255, a3, a4);
    v9 = v8;
    v10 = sub_228418D44();
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22852B850()
{
  result = qword_280DE9940;
  if (!qword_280DE9940)
  {
    sub_22852B7D0(255, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9940);
  }

  return result;
}

uint64_t sub_22852B8E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void sub_22852B910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_22852BC5C(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v7 = v6;
    v8 = sub_228418D44();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22852B9AC()
{
  if (!qword_280DE9B88)
  {
    sub_22852B7D0(255, &qword_280DE97D8, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277CBCEA8]);
    sub_22852BC5C(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_2284C949C();
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B88);
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_22852BBBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22852B58C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22852BC18(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_22852B910(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22852BC5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22852BCEC()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_22852AB08(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
}

uint64_t sub_22852BD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22852BD48(uint64_t a1)
{
  v2 = type metadata accessor for NotificationContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22852BDA4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  v6 = v2[7];
  return sub_228528524(a1, v2[3], a2);
}

uint64_t sub_22852BDC8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284AD00C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22852BE20(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v19 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v16 = i;
    v17 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x22AAB9D20](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v18 = v9;
      v12 = sub_22852D310(&v18, a2);
      if (v2)
      {

        return a2;
      }

      if (v12)
      {
        sub_22855DD1C();
        v13 = v8;
        v14 = *(v19 + 16);
        sub_22855DD5C();
        v8 = v13;
        sub_22855DD6C();
        sub_22855DD2C();
        i = v16;
        v4 = v17;
      }

      else
      {
      }

      ++v6;
      if (v11 == i)
      {
        a2 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_20:

  return a2;
}

void *HealthPlatformContextProvider.Context.optionalHealthStore.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_22852BFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v4 = sub_22855D3AC();
  }

  v7 = a3;
  v6(v4, a3);
}

void *sub_22852C084(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_228427760(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAB9D20](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_228427760((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_228530A20(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context);
        *(v18 + 16) = v8 + 1;
        v10 = v18 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v18 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v18 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_228427760((v15 > 1), v12 + 1, 1);
        }

        v16 = sub_228530A20(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context);
        *(v18 + 16) = v12 + 1;
        v17 = v18 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *HealthPlatformContextProvider.__allocating_init(profileStore:experienceStoreOracle:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:healthStore:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = *(v8 + 48);
  v17 = *(v8 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock;
  v26[1] = 0;
  swift_unknownObjectWeakInit();
  v26[2] = MEMORY[0x277D84F90];
  sub_22852C5C8();
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v20 = swift_allocObject();
  *(v20 + 80) = 0;
  sub_22852C628(v26, v20 + 16);
  *&v18[v19] = v20;
  sub_2283F9B10(a1, (v18 + 16));
  *(v18 + 9) = a3;
  *(v18 + 10) = a4;
  *(v18 + 7) = a6;
  *(v18 + 8) = a2;
  *(v18 + 11) = a5;
  v21 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v22 = sub_22855CABC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v18[v21], a7, v22);
  v24 = [objc_allocWithZone(type metadata accessor for HealthPlatformContextProvider.ObserverShim()) init];
  (*(v23 + 8))(a7, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v18[OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim] = v24;
  swift_weakAssign();
  return v18;
}

char *HealthPlatformContextProvider.init(profileStore:experienceStoreOracle:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:healthStore:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock;
  v22[1] = 0;
  swift_unknownObjectWeakInit();
  v22[2] = MEMORY[0x277D84F90];
  sub_22852C5C8();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  sub_22852C628(v22, v16 + 16);
  *&v7[v15] = v16;
  sub_2283F9B10(a1, (v7 + 16));
  *(v7 + 9) = a3;
  *(v7 + 10) = a4;
  *(v7 + 7) = a6;
  *(v7 + 8) = a2;
  *(v7 + 11) = a5;
  v17 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v18 = sub_22855CABC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v7[v17], a7, v18);
  v20 = [objc_allocWithZone(type metadata accessor for HealthPlatformContextProvider.ObserverShim()) init];
  (*(v19 + 8))(a7, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v7[OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim] = v20;
  swift_weakAssign();
  return v7;
}

void sub_22852C5C8()
{
  if (!qword_280DE9190)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9190);
    }
  }
}

char *sub_22852C684(uint64_t a1, uint64_t a2)
{
  v5 = sub_22855CABC();
  v40 = *(v5 - 8);
  v6 = v40;
  v41 = v5;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  [v10 setProfileIdentifier_];
  v11 = v10;
  v38 = v10;
  [v10 resume];
  v12 = v2[7];
  sub_2283F9B10(a2, v43);
  v14 = v2[9];
  v13 = v2[10];
  v15 = v2[11];
  v16 = *(v6 + 16);
  v17 = v2 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v18 = v9;
  v39 = v9;
  v19 = v9;
  v20 = v41;
  v16(v19, v17, v41);
  v21 = type metadata accessor for HealthPlatformContextProvider.Context(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  sub_22852E270();
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = 0;
  *(v24 + 12) = v25;
  *(v24 + 2) = v11;
  *(v24 + 5) = v12;
  v26 = v12;
  sub_2283F9B10(v43, (v24 + 48));
  *(v24 + 3) = v14;
  *(v24 + 4) = v13;
  *(v24 + 11) = v15;
  v16(&v24[OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger], v18, v20);
  v28 = v44;
  v27 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v29 = *(v27 + 16);
  v30 = v26;

  v31 = v38;
  v32 = v29(v28, v27);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  aBlock[4] = sub_228531764;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_73_0;
  v34 = _Block_copy(aBlock);
  v35 = v32;

  [v35 performBlock_];
  _Block_release(v34);

  (*(v40 + 8))(v39, v41);
  __swift_destroy_boxed_opaque_existential_0(v43);
  return v24;
}

char *HealthPlatformContextProvider.Context.__allocating_init(healthStore:primaryProfileHealthStore:healthExperienceStore:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:logger:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = *(v8 + 48);
  v17 = *(v8 + 52);
  v18 = swift_allocObject();
  sub_22852E270();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  *(v18 + 12) = v19;
  *(v18 + 2) = a1;
  *(v18 + 5) = a2;
  sub_2283F9B10(a3, (v18 + 48));
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 11) = a6;
  v20 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v34 = sub_22855CABC();
  v36 = *(v34 - 8);
  (*(v36 + 16))(&v18[v20], a7, v34);
  v33 = a3;
  v21 = a3[3];
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v21);
  v23 = *(v22 + 16);
  v24 = a1;
  v32 = a2;

  v25 = v23(v21, v22);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  aBlock[4] = sub_22852E4D8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_28;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  v29 = v25;

  [v29 performBlock_];
  _Block_release(v27);

  (*(v36 + 8))(a7, v34);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v18;
}

Swift::Void __swiftcall HealthPlatformContextProvider.fetchUpdatedProfiles()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);

  v3(sub_22852E4E0, v0, v1, v2);
}

void sub_22852CC98(uint64_t a1, void *a2, void *a3)
{
  v6 = *a3;

  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    v28 = a3;

    v11 = sub_22855D1BC();
    v13 = sub_2283F8938(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2283ED000, v7, v8, "%s: Got profile list; updating contexts.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
  }

  if (a1)
  {
    v15 = *(a3 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
    MEMORY[0x28223BE20](v14);
    os_unfair_lock_lock(v15 + 20);
    sub_228531114(&v15[4], &v27);
    os_unfair_lock_unlock(v15 + 20);
    v27();
  }

  else
  {

    v16 = a2;
    v17 = sub_22855CA8C();
    v18 = sub_22855D68C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315394;
      v28 = a3;

      v21 = sub_22855D1BC();
      v23 = sub_2283F8938(v21, v22, &v27);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v28 = a2;
      sub_228530614(0, &qword_280DE8EC0, &qword_280DECFE0, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v24 = sub_22855DA0C();
      v26 = sub_2283F8938(v24, v25, &v27);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_2283ED000, v17, v18, "%s: Failed to fetch profile identifiers: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v20, -1, -1);
      MEMORY[0x22AABAD40](v19, -1, -1);
    }
  }
}

uint64_t sub_22852D000@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a3;
  sub_2284FF204(a1 + 24, &v30);
  if (!v31)
  {
    result = sub_22853067C(&v30);
    *a4 = nullsub_1;
    a4[1] = 0;
    return result;
  }

  sub_2283FAB3C(&v30, v32);

  v9 = sub_2285312B0((a1 + 16), a2);

  v11 = *(a1 + 16);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v28 = *(a1 + 16);
    }

    result = sub_22855DB4C();
    v12 = result;
    if (result >= v9)
    {
      goto LABEL_4;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 < v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  sub_2284FD764(v9, v12);

  v14 = sub_22852BE20(v13, a1);
  MEMORY[0x28223BE20](v14);
  v29[2] = a3;
  v29[3] = v32;
  v15 = sub_2284FA6BC(sub_22853159C, v29, v14);

  sub_2284A7D4C(v15);
  v16 = *(a1 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(a1 + 8);
    v20 = swift_allocObject();
    *(v20 + 2) = a3;
    *(v20 + 3) = v16;
    *(v20 + 4) = v18;
    *(v20 + 5) = v19;
    *a4 = sub_2285315E0;
    a4[1] = v20;
  }

  else
  {

    v21 = sub_22855CA8C();
    v22 = sub_22855D68C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[5] = a3;
      *&v30 = v24;
      *v23 = 136315138;

      v25 = sub_22855D1BC();
      v27 = sub_2283F8938(v25, v26, &v30);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2283ED000, v21, v22, "%s: Received updated profiles but no delegate set.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AABAD40](v24, -1, -1);
      MEMORY[0x22AABAD40](v23, -1, -1);
    }

    *a4 = nullsub_1;
    a4[1] = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

BOOL sub_22852D310(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_22855DB4C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAB9D20](v5, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = [*(v7 + 16) profileIdentifier];
    v9 = [v8 isEqual_];

    v5 = v6 + 1;
  }

  while (!v9);

  return v4 == v6;
}

uint64_t sub_22852D440(uint64_t a1, unint64_t a2)
{
  swift_bridgeObjectRetain_n();

  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    type metadata accessor for HealthPlatformContextProvider(0);

    v7 = sub_22855D1BC();
    v9 = sub_2283F8938(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    if (a2 >> 62)
    {
      v10 = sub_22855DB4C();
    }

    else
    {
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 14) = v10;

    _os_log_impl(&dword_2283ED000, v3, v4, "%s: Informing delegate of %ld contexts.", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_getObjectType();
  sub_22852C084(a2);
  sub_22855C87C();
}

void sub_22852D620()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_2285310F8(&v1[4], &v7);
  os_unfair_lock_unlock(v1 + 20);
  if (v7 == 1)
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    (*(v3 + 8))(*(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim), 0, 0, v2, v3);
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = *(v5 + 24);

    v6(sub_228531788, v0, v4, v5);
  }
}

uint64_t sub_22852D734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2284FF204(a1 + 24, v9);
  v6 = v10;
  result = sub_22853067C(v9);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    sub_22853067C(a1 + 24);
    result = sub_2283F9B10(a2, a1 + 24);
    v8 = 1;
  }

  *a3 = v8;
  return result;
}

uint64_t HealthPlatformContextProvider.start(delegate:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_22852E4E8(&v1[4]);
  os_unfair_lock_unlock(v1 + 20);
  v2 = *(v0 + 64);
  sub_2285303DC(v0, v2);
  v3 = *(v2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v3 + 16);
  sub_2284FF204(&v3[6], &v5);
  os_unfair_lock_unlock(v3 + 16);
  if (!v6)
  {
    return sub_22853067C(&v5);
  }

  sub_2283FAB3C(&v5, v7);
  sub_22852D620();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

Swift::Void __swiftcall HealthPlatformContextProvider.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_228530704(&v1[4]);

  os_unfair_lock_unlock(v1 + 20);
}

uint64_t sub_22852D8E8(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  swift_unknownObjectWeakAssign();
  v3 = a2[5];
  v4 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v3);
  return (*(v4 + 16))(*(a2 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim), v3, v4);
}

void HealthPlatformContextProvider.context(for:)(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 20);
  sub_228530720(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 20);
}

uint64_t sub_22852D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v27 = a3;
  sub_2284FF204(a1 + 24, &v22);
  if (v23)
  {
    sub_2283FAB3C(&v22, &v24);
  }

  else
  {
    v7 = *(*(a2 + 64) + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
    os_unfair_lock_lock(v7 + 16);
    sub_2284FF204(&v7[6], &v24);
    os_unfair_lock_unlock(v7 + 16);
    if (v23)
    {
      sub_22853067C(&v22);
    }
  }

  if (v25)
  {
    sub_2283FAB3C(&v24, v26);
    v8 = *(a1 + 16);
    v21 = a4;
    v20 = (a1 + 16);
    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = 0;
        while ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AAB9D20](v10, v8);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_12:
          v13 = [*(v11 + 2) profileIdentifier];
          v14 = [v13 isEqual_];

          if (v14)
          {
            v17 = v21;
            goto LABEL_25;
          }

          ++v10;
          if (v12 == v9)
          {
            goto LABEL_22;
          }
        }

        if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_21:
        v9 = sub_22855DB4C();
        if (!v9)
        {
          goto LABEL_22;
        }
      }

      v11 = *(v8 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_22:
    v11 = sub_22852C684(v27, v26);

    MEMORY[0x22AAB9400](v18);
    v17 = v21;
    if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22855D3EC();
    }

    sub_22855D43C();
LABEL_25:
    result = __swift_destroy_boxed_opaque_existential_0(v26);
    *v17 = v11;
  }

  else
  {
LABEL_18:
    sub_22853067C(&v24);
    sub_228530814();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t HealthPlatformContextProvider.profileListDidUpdate(for:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);

  v3(sub_228531788, v0, v1, v2);
}

uint64_t HealthPlatformContextProvider.storeDidUpdate(note:)()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v1 + 16);
  sub_2284FF204(&v1[6], &v3);
  os_unfair_lock_unlock(v1 + 16);
  if (!v4)
  {
    return sub_22853067C(&v3);
  }

  sub_2283FAB3C(&v3, v5);
  sub_22852D620();
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void *HealthPlatformContextProvider.Context.init(healthStore:primaryProfileHealthStore:healthExperienceStore:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:logger:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_22852E270();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  v7[12] = v16;
  v7[2] = a1;
  v7[5] = a2;
  sub_2283F9B10(a3, (v7 + 6));
  v7[3] = a4;
  v7[4] = a5;
  v7[11] = a6;
  v17 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v31 = sub_22855CABC();
  v33 = *(v31 - 8);
  (*(v33 + 16))(v8 + v17, a7, v31);
  v30 = a3;
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = *(v19 + 16);
  v21 = a1;
  v29 = a2;

  v22 = v20(v18, v19);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  aBlock[4] = sub_228531764;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_8;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v22;

  [v26 performBlock_];
  _Block_release(v24);

  (*(v33 + 8))(a7, v31);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v8;
}

void sub_22852E270()
{
  if (!qword_280DE90E0)
  {
    sub_228531670(255, qword_280DEA1E8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90E0);
    }
  }
}

uint64_t sub_22852E308(void *a1, void *a2)
{
  v3 = [a1 profileIdentifier];
  sub_228531670(0, &qword_280DED028, type metadata accessor for UserProfile, MEMORY[0x277D84560]);
  v4 = (type metadata accessor for UserProfile() - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560580;
  v8 = v7 + v6;
  v9 = v3;
  v10 = [v9 identifier];
  sub_22855C1BC();

  *(v8 + v4[7]) = v9;
  v11 = sub_22845F998(v7);
  swift_setDeallocating();
  sub_2285316D4(v8, type metadata accessor for UserProfile);
  swift_deallocClassInstance();
  v12 = a2;
  v13 = sub_22842A950(v11, v12);

  sub_228429908(v13);
}

uint64_t sub_22852E4E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  return swift_unknownObjectWeakAssign();
}

void HealthPlatformContextProvider.Context.feedItemStorage(for:bundleIdentifier:scope:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v44 = a1;
  v45 = a2;
  v38 = a6;
  v39 = sub_22855CFCC();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855C73C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v6[9];
  v16 = v6[10];
  __swift_project_boxed_opaque_existential_1(v6 + 6, v17);
  v18 = (*(v16 + 16))(v17, v16);
  swift_getObjectType();
  sub_22855CA1C();
  v19 = sub_22855C72C();
  v44 = v20;
  v45 = v19;
  (*(v12 + 8))(v15, v11);
  v40 = v6[3];
  v21 = v38;
  v38[3] = &type metadata for PluginFeedItemStorage;
  v21[4] = &protocol witness table for PluginFeedItemStorage;
  v22 = v21;
  v23 = swift_allocObject();
  *v22 = v23;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v24 = v39;
  (*(v7 + 104))(v10, *MEMORY[0x277D851B0], v39);

  v25 = sub_22855D85C();
  (*(v7 + 8))(v10, v24);
  v23[9] = v25;
  v23[2] = v18;
  v26 = v18;
  v28 = v41;
  v27 = v42;
  v23[4] = v41;
  v23[5] = v27;
  sub_2284661F0();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_228563E50;
  v30 = v43;
  *(v29 + 32) = v43;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_228530614(0, &qword_280DED008, &qword_280DEEB20, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_228560580;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = sub_22840A7C8();
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;
  swift_bridgeObjectRetain_n();
  v32 = v26;
  v33 = v30;
  *(v29 + 40) = sub_22855D62C();
  v34 = sub_22855D39C();

  v35 = [objc_opt_self() andPredicateWithSubpredicates_];

  v36 = v44;
  v37 = v45;
  v23[6] = v35;
  v23[7] = v37;
  v23[8] = v36;
  v23[3] = v40;
}

void HealthPlatformContextProvider.Context.anchorStorage(for:)(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  v40 = a1;
  v6 = sub_22855CFCC();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22855C73C();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = [v15 bundleIdentifier];
  if (v16)
  {
    v35 = v15;
    v17 = v16;
    v18 = sub_22855D1AC();
    v36 = v19;
    v37 = v18;

    v38 = v3;
    v33 = v6;
    v20 = a2;
    v21 = *(v4 + 72);
    v22 = *(v4 + 80);
    __swift_project_boxed_opaque_existential_1((v4 + 48), v21);
    v34 = (*(v22 + 16))(v21, v22);
    v23 = [*(v4 + 16) profileIdentifier];
    swift_getObjectType();
    sub_22855C9EC();
    v24 = sub_22855C72C();
    v26 = v25;
    (*(v10 + 8))(v13, v39);
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v27 = v41;
    v28 = v33;
    (*(v41 + 104))(v9, *MEMORY[0x277D851B0], v33);
    v29 = sub_22855D85C();
    (*(v27 + 8))(v9, v28);
    v20[3] = &type metadata for PluginAnchorStorage;
    v20[4] = &off_283B8C740;
    v30 = swift_allocObject();
    *v20 = v30;

    v30[2] = v34;
    v30[3] = v23;
    v31 = v36;
    v30[4] = v37;
    v30[5] = v31;
    v30[6] = v24;
    v30[7] = v26;
    v30[8] = v29;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }
}

void HealthPlatformContextProvider.Context.notificationManager(for:)()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = [v2 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22855D1AC();
    v7 = v6;

    v8 = *(v0 + 16);
    v9 = *(v0 + 32);
    type metadata accessor for HealthAppPluginNotificationManager();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v8;
    v10[4] = v5;
    v10[5] = v7;
    v10[6] = v9;
    v11 = v8;

    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
    MEMORY[0x22AAB92A0](v5, v7);

    v12 = type metadata accessor for HealthAppNotificationContentStateManager();
    v13 = HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(v11, 0, 0xE000000000000000);
    v10[10] = v12;
    v10[11] = sub_228530A20(qword_280DEC5B8, type metadata accessor for HealthAppNotificationContentStateManager);

    v10[7] = v13;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

void HealthPlatformContextProvider.Context.sharedSummaryTransactionBuilder(completion:)(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 88);
  sub_22847065C(v5, a1, a2);
}

uint64_t HealthPlatformContextProvider.Context.sharingSummaryProfileTransactionBuilder(transaction:)()
{
  v1 = [*(v0 + 16) profileIdentifier];
  v2 = [v1 type];

  result = 0;
  if (v2 == 2)
  {
    v4 = *(v0 + 96);
    MEMORY[0x28223BE20](0);
    os_unfair_lock_lock((v4 + 24));
    sub_22853073C((v4 + 16), &v5);
    os_unfair_lock_unlock((v4 + 24));
    return v5;
  }

  return result;
}

void sub_22852EF0C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a4;
  v41[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22855C1DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v38 = a1;
  v15 = *a1;
  if (*a1)
  {
    v37 = a3;
    v16 = *(v15 + 16);

    v17 = [v16 transactionUUID];
    sub_22855C1BC();

    v18 = [a2 UUID];
    sub_22855C1BC();

    LOBYTE(v18) = sub_22855C1AC();
    v19 = *(v8 + 8);
    v19(v12, v7);
    v19(v14, v7);
    if (v18)
    {
      *v40 = v15;
      goto LABEL_10;
    }

    a3 = v37;
  }

  v39 = a2;
  v36 = v15;
  v20 = *(a3 + 16);
  v21 = [a2 UUID];
  sub_22855C1BC();

  v22 = objc_allocWithZone(MEMORY[0x277CCD948]);
  v23 = sub_22855C19C();
  v24 = *(v8 + 8);
  v24(v14, v7);
  v25 = [v22 initWithHealthStore:v20 transactionUUID:v23];

  v26 = [v25 transactionUUID];
  sub_22855C1BC();

  v27 = [v39 UUID];
  sub_22855C1BC();

  LOBYTE(v27) = sub_22855C1AC();
  v24(v12, v7);
  v24(v14, v7);
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  v41[0] = 0;
  v28 = [v25 isCommittedWithError_];
  if (!v28)
  {
    v34 = v41[0];
    v35 = sub_22855BF3C();

    swift_willThrow();
    *v40 = 0;
    goto LABEL_10;
  }

  v29 = v28;
  v30 = v41[0];
  v31 = [v29 BOOLValue];

  if (v31)
  {

    type metadata accessor for CachingSharedSummaryTransactionBuilder();
    swift_allocObject();
    v32 = sub_228434304(v25, sub_228471EF8, 0);

    *v38 = v32;
    *v40 = v32;
  }

  else
  {
LABEL_9:

    *v40 = 0;
  }

LABEL_10:
  v33 = *MEMORY[0x277D85DE8];
}

uint64_t HealthPlatformContextProvider.Context.sharableModelStorage(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(v4 + 88);
  v11 = *(v4 + 16);

  sub_22847065C(v11, sub_228530758, v9);
}

uint64_t sub_22852F3A8(id a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (a2)
  {
    v7 = a1;
    sub_2283F9B94(0, &qword_280DECFE0);
    swift_willThrowTypedImpl();
    v15[0] = a1;
    LOBYTE(v16) = 1;
    v8 = a1;
    a5(v15);
    sub_22853103C(a1, 1);
    v9 = v15;
  }

  else
  {
    v16 = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v17 = &protocol witness table for CachingSharedSummaryTransactionBuilder;
    v15[1] = a4;
    v15[2] = a1;
    v15[0] = a3;
    v13[3] = &type metadata for TransactionBuilderSharableModelStorageAdapter;
    v13[4] = &protocol witness table for TransactionBuilderSharableModelStorageAdapter;
    v13[0] = swift_allocObject();
    sub_228531048(v15, v13[0] + 16);
    v14 = 0;
    sub_228476E50(a1, 0);

    a5(v13);
    sub_2285310A4(v15);
    v9 = v13;
  }

  return sub_2285316D4(v9, sub_2284F40B4);
}

uint64_t HealthPlatformContextProvider.Context.sharableModelReadableStorage(for:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = HealthPlatformContextProvider.Context.sharingSummaryProfileTransactionBuilder(transaction:)();
  if (v6)
  {
    v7 = v6;
    a3[3] = &type metadata for TransactionBuilderSharableModelStorageAdapter;
    a3[4] = &protocol witness table for TransactionBuilderSharableModelStorageAdapter;
    v8 = swift_allocObject();
    *a3 = v8;
    v8[7] = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v8[8] = &protocol witness table for CachingSharedSummaryTransactionBuilder;
    v8[3] = a2;
    v8[4] = v7;
    v8[2] = a1;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }
}

id HealthPlatformContextProvider.Context.contextDescription.getter@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) profileIdentifier];
  *a1 = result;
  return result;
}

uint64_t HealthPlatformContextProvider.Context.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v4 = sub_22855CABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static HealthPlatformContextProvider.Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v4 = [*(a1 + 16) profileIdentifier];
  v5 = [*(a2 + 16) profileIdentifier];
  LOBYTE(a1) = sub_22855D9AC();

  return a1 & 1;
}

uint64_t sub_22852F760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000022856E8C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22855E15C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22852F7F4(uint64_t a1)
{
  v2 = sub_22853075C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22852F830(uint64_t a1)
{
  v2 = sub_22853075C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthPlatformContextProvider.Context.Description.encode(to:)(void *a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  sub_2285307B0(0, &qword_27D840828, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v21[-1] - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853075C();
  sub_22855E31C();
  v11 = objc_opt_self();
  v21[0] = 0;
  v12 = [v11 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v21];
  v13 = v21[0];
  if (v12)
  {
    v14 = sub_22855C09C();
    v16 = v15;

    v21[0] = v14;
    v21[1] = v16;
    sub_22844AF8C();
    sub_22855E0CC();
    (*(v5 + 8))(v8, v4);
    result = sub_22842B38C(v14, v16);
  }

  else
  {
    v18 = v13;
    sub_22855BF3C();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v4);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HealthPlatformContextProvider.Context.Description.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2285307B0(0, &unk_27D840840, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853075C();
  sub_22855E30C();
  if (!v2)
  {
    sub_22844AE10();
    sub_22855E03C();
    v13 = v18[0];
    v12 = v18[1];
    sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v14 = sub_22855D78C();
    if (v14)
    {
      v15 = v14;
      (*(v7 + 8))(v10, v6);
      sub_22842B38C(v13, v12);
      *a2 = v15;
    }

    else
    {
      sub_228530814();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();
      sub_22842B38C(v13, v12);
      (*(v7 + 8))(v10, v6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HealthPlatformContextProvider.Context.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v6 = sub_22855CABC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

void sub_22852FE00(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 88);
  sub_22847065C(v5, a1, a2);
}

uint64_t sub_22852FE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(v4 + 88);
  v11 = *(v4 + 16);

  sub_22847065C(v11, sub_22853178C, v9);
}

uint64_t sub_22852FEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = HealthPlatformContextProvider.Context.sharingSummaryProfileTransactionBuilder(transaction:)();
  if (v6)
  {
    v7 = v6;
    a3[3] = &type metadata for TransactionBuilderSharableModelStorageAdapter;
    a3[4] = &protocol witness table for TransactionBuilderSharableModelStorageAdapter;
    v8 = swift_allocObject();
    *a3 = v8;
    v8[7] = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v8[8] = &protocol witness table for CachingSharedSummaryTransactionBuilder;
    v8[3] = a2;
    v8[4] = v7;
    v8[2] = a1;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }
}

uint64_t HealthPlatformContextProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v5 = sub_22855CABC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);

  return v0;
}

uint64_t sub_2285300A8(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_228530104(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 20);
  sub_2285317B0(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 20);
}

void sub_228530184()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_228531744(&v1[4]);

  os_unfair_lock_unlock(v1 + 20);
}

void sub_2285301E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_228401F54;
    v7[3] = &block_descriptor_58;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 addObserver:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_2285302BC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22852BFE0;
  v6[3] = &block_descriptor_55;
  v4 = _Block_copy(v6);

  [v3 fetchAllProfilesWithCompletion_];
  _Block_release(v4);
}

void *sub_228530370()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_2285303A0@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) profileIdentifier];
  *a1 = result;
  return result;
}

id sub_2285303DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DEEC98);

  v6 = sub_22855CA8C();
  v7 = sub_22855D66C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = sub_2284FF8D0(ObjectType);
    v12 = sub_2283F8938(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v19 = a1;
    sub_2284FF854();

    v13 = sub_22855D1BC();
    v15 = sub_2283F8938(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2283ED000, v6, v7, "[%s] register(observer:): %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

  v16 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
  if (qword_280DE93D8 != -1)
  {
    v18 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
    swift_once();
    v16 = v18;
  }

  return [v16 addObserver:a1 selector:v19 name:v20 object:?];
}

void sub_228530614(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283F9B94(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22853067C(uint64_t a1)
{
  sub_228530614(0, &qword_280DECAA0, qword_280DECAA8, &protocol descriptor for HealthExperienceStore, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22853075C()
{
  result = qword_27D840830;
  if (!qword_27D840830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840830);
  }

  return result;
}

void sub_2285307B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22853075C();
    v7 = a3(a1, &type metadata for HealthPlatformContextProvider.Context.Description.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228530814()
{
  result = qword_27D840850;
  if (!qword_27D840850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840850);
  }

  return result;
}

unint64_t sub_22853086C()
{
  result = qword_27D840858;
  if (!qword_27D840858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840858);
  }

  return result;
}

unint64_t sub_2285308C4()
{
  result = qword_27D840860;
  if (!qword_27D840860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840860);
  }

  return result;
}

unint64_t sub_22853091C()
{
  result = qword_27D840868;
  if (!qword_27D840868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840868);
  }

  return result;
}

unint64_t sub_228530974()
{
  result = qword_27D840870;
  if (!qword_27D840870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840870);
  }

  return result;
}

uint64_t sub_2285309C8(uint64_t a1)
{
  result = sub_228530A20(&unk_280DEC378, type metadata accessor for HealthPlatformContextProvider.Context);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_228530A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228530AB0(uint64_t a1)
{
  result = sub_228530A20(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_228530B54()
{
  result = qword_27D840880;
  if (!qword_27D840880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840880);
  }

  return result;
}

uint64_t sub_228530C0C()
{
  result = sub_22855CABC();
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

uint64_t sub_228530D18()
{
  result = sub_22855CABC();
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

uint64_t sub_228530E34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228530E80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228530EE8()
{
  result = qword_27D8408F8;
  if (!qword_27D8408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8408F8);
  }

  return result;
}

unint64_t sub_228530F40()
{
  result = qword_27D840900;
  if (!qword_27D840900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840900);
  }

  return result;
}

unint64_t sub_228530F98()
{
  result = qword_27D840908;
  if (!qword_27D840908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840908);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_22853103C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_228531130(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_22855DB4C();
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB9D20](v4, a1);
    }

    else
    {
      if (v4 >= *(v11 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = [*(v5 + 16) profileIdentifier];
    v13 = v6;
    MEMORY[0x28223BE20](v6);
    v10[2] = &v13;
    v7 = sub_2284C6EEC(sub_228531790, v10, v12);

    if ((v7 & 1) == 0)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_2285312B0(unint64_t *a1, unint64_t a2)
{
  v4 = a2;
  v5 = a1;
  v6 = *a1;
  v7 = sub_228531130(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v25 = v5;
  v26 = 0;
  v9 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v9 == sub_22855DB4C())
      {
        return v2;
      }
    }

    else if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AAB9D20](v9, v6);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v11 = *(v6 + 8 * v9 + 32);

LABEL_16:
    v12 = [*(v11 + 16) profileIdentifier];
    v27 = v12;
    MEMORY[0x28223BE20](v12);
    v24[2] = &v27;
    v5 = v4;
    v13 = v26;
    v14 = sub_2284C6EEC(sub_2285315EC, v24, v4);
    v26 = v13;

    if (v14)
    {
      if (v2 == v9)
      {
        v4 = v5;
        v10 = __OFADD__(v2++, 1);
        if (v10)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AAB9D20](v2, v6);
          v16 = MEMORY[0x22AAB9D20](v9, v6);
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_50;
          }

          v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v2 >= v17)
          {
            goto LABEL_51;
          }

          if (v9 >= v17)
          {
            goto LABEL_52;
          }

          v15 = *(v6 + 32 + 8 * v2);
          v16 = *(v6 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = sub_22847FD78(v6);
          v18 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v6 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v16;

        if ((v6 & 0x8000000000000000) != 0 || v18)
        {
          v6 = sub_22847FD78(v6);
          v19 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_43:
            __break(1u);
            return v2;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v9 >= *(v19 + 16))
        {
          goto LABEL_49;
        }

        v4 = v5;
        v21 = v19 + 8 * v9;
        v22 = *(v21 + 32);
        *(v21 + 32) = v15;

        *v25 = v6;
        v10 = __OFADD__(v2++, 1);
        if (v10)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_8:
      v4 = v5;
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_47;
    }
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
  __break(1u);
  return sub_22855DB4C();
}

char *sub_22853159C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_22852C684(*a1, v4);
  *a2 = result;
  return result;
}

uint64_t sub_2285315E0()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_22852D440(v0[2], v0[3]);
}

uint64_t sub_228531608(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
  return sub_22855D9AC() & 1;
}

void sub_228531670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2285316D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2285317C8(uint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_228427780(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_22855DDEC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v27 = v2;
      v28 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v14 = v32;
        v15 = v33;
        v16 = v34;
        sub_228534BB8(v31, v32, v33, v34, v1);
        v18 = v17;
        v19 = v31[0];
        v20 = [v17 code];
        v21 = [v19 longLongValue];

        v22 = v30;
        v35 = v30;
        v24 = *(v30 + 16);
        v23 = *(v30 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_228427780((v23 > 1), v24 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v21;
        v30 = v22;
        if (v29)
        {
          v1 = v28;
          if (!v16)
          {
            goto LABEL_26;
          }

          if (sub_22855DE2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          v13 = v6 + 1;
          sub_228535B6C();
          v26 = sub_22855D10C();
          sub_22855DECC();
          v26(v31, 0);
        }

        else
        {
          v1 = v28;
          sub_228534A44(v14, v15, v16, v28, &qword_280DEE7B8, 0x277CCD720, sub_228443E90);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_228416CB8(v14, v15, v16);
          v32 = v8;
          v33 = v10;
          v34 = v12 & 1;
          v2 = v27;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_228416CB8(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_228531AA4(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2284277A0(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_22855DAEC();
    }

    else
    {
      v5 = -1 << *(a1 + 32);
      v3 = sub_22855DAAC();
      v4 = *(a1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v32;
        v10 = v33;
        v11 = v34;
        sub_22845F984(v32, v33, v34, a1);
        v13 = v12;
        v14 = [v12 code];

        v15 = v30;
        v35 = v30;
        v17 = *(v30 + 16);
        v16 = *(v30 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2284277A0((v16 > 1), v17 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v30 = v15;
        if (v29)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          if (sub_22855DB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          sub_228535C28();
          v7 = sub_22855D54C();
          sub_22855DBBC();
          v7(v31, 0);
          if (v6 == v28)
          {
LABEL_32:
            sub_228416CB8(v32, v33, v34);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v18 = 1 << *(a1 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (a1 + 64 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_228416CB8(v9, v10, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_228416CB8(v9, v10, 0);
          }

LABEL_31:
          v27 = *(a1 + 36);
          v32 = v18;
          v33 = v27;
          v34 = 0;
          v2 = v28;
          if (v6 == v28)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t static InputSignalSet.LookupKey.objectTypeAnchorQuery.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for ObjectTypeAnchorQueryInputSignal();
  return sub_22855C61C();
}

void *ObjectTypeAnchorQueryInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();

  return sub_228534EA0(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *ObjectTypeAnchorQueryInputSignal.__allocating_init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = sub_228535420(a1, a2, a3, a4, a5, v15, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v16;
}

void *ObjectTypeAnchorQueryInputSignal.init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_228534D9C(a1, a2, a3, a4, a5, v18, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v20;
}

uint64_t ObjectTypeAnchorQueryInputSignal.observer.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

void sub_228532134(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_22855C85C();
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855CABC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  if (a2)
  {
    v82 = v11;
    v83 = v12;
    v21 = *(Strong + 24);
    v22 = *(Strong + 32);
    swift_getObjectType();
    v23 = a2;
    sub_22855C59C();
    v24 = a2;

    v25 = sub_22855CA8C();
    v26 = sub_22855D68C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v81 = a4;
      v28 = v27;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v28 = 136315394;
      sub_22855C84C();
      sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
      v29 = sub_22855E11C();
      v31 = v30;
      (*(v84 + 8))(v10, v7);
      v32 = sub_2283F8938(v29, v31, &v86);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2112;
      v33 = a2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v34;
      v35 = v79;
      *v79 = v34;
      _os_log_impl(&dword_2283ED000, v25, v26, "[%s] Query failed: %@; attempting to restart query.", v28, 0x16u);
      sub_22841DC98(v35);
      MEMORY[0x22AABAD40](v35, -1, -1);
      v36 = v80;
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x22AABAD40](v36, -1, -1);
      v37 = v28;
      a4 = v81;
      MEMORY[0x22AABAD40](v37, -1, -1);
    }

    v83[1](v18, v82);
    if (qword_27D83F018 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    v83 = v12;
    v58 = *(Strong + 24);
    v59 = *(Strong + 32);
    swift_getObjectType();
    sub_22855C59C();

    v60 = sub_22855CA8C();
    v61 = sub_22855D68C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v82 = v11;
      v63 = v62;
      v81 = swift_slowAlloc();
      v86 = v81;
      *v63 = 136315138;
      sub_22855C84C();
      sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
      v64 = sub_22855E11C();
      v65 = a4;
      v67 = v66;
      (*(v84 + 8))(v10, v7);
      v68 = sub_2283F8938(v64, v67, &v86);
      a4 = v65;

      *(v63 + 4) = v68;
      _os_log_impl(&dword_2283ED000, v60, v61, "[%s] Query failed without reporting an error (nil anchor); attempting to restart query.", v63, 0xCu);
      v69 = v81;
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AABAD40](v69, -1, -1);
      MEMORY[0x22AABAD40](v63, -1, -1);

      v83[1](v16, v82);
    }

    else
    {

      v83[1](v16, v11);
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v78 = swift_allocObject();
    *(v78 + 16) = v20;
    *(v78 + 24) = a4;

    sub_228506C84(sub_228535ADC, v78);

    goto LABEL_7;
  }

  v84 = Strong;
  v83 = a1;
  v39 = [v83 anchors];
  sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  sub_22844B928(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720);
  v40 = sub_22855D0EC();

  sub_2285317C8(v40);
  a2 = v41;
  v82 = 0;

  a4 = a2[2];
  if (!a4)
  {
    v43 = MEMORY[0x277D84F98];
LABEL_27:

    v71 = v84;
    v72 = *(v84 + 96);
    MEMORY[0x28223BE20](v70);
    v73 = v83;
    *(&v79 - 4) = v83;
    *(&v79 - 3) = v71;
    *(&v79 - 2) = v43;

    os_unfair_lock_lock((v72 + 24));
    sub_228535B14((v72 + 16), &v86);
    os_unfair_lock_unlock((v72 + 24));

    v74 = v86;
    v75 = v71[5];
    v76 = v71[6];
    swift_getObjectType();
    v86 = v74;
    v85 = v71;
    type metadata accessor for ObjectTypeAnchorQueryInputSignal();
    sub_22840A3D8(&qword_280DEA848, v77, type metadata accessor for ObjectTypeAnchorQueryInputSignal);
    sub_22855C78C();

    return;
  }

  v42 = 0;
  v20 = a2 + 5;
  v43 = MEMORY[0x277D84F98];
  while (v42 < a2[2])
  {
    v45 = *(v20 - 1);
    v44 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v43;
    v47 = sub_22844C568(v45);
    v49 = v43[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_34;
    }

    v53 = v48;
    if (v43[3] < v52)
    {
      sub_2284449D4(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_22844C568(v45);
      if ((v53 & 1) != (v54 & 1))
      {
        type metadata accessor for _HKDataTypeCode(0);
        sub_22855E1BC();
        __break(1u);
        return;
      }

LABEL_19:
      v43 = v86;
      if (v53)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v57 = v47;
    sub_228447F84();
    v47 = v57;
    v43 = v86;
    if (v53)
    {
LABEL_11:
      *(v43[7] + 8 * v47) = v44;
      goto LABEL_12;
    }

LABEL_20:
    v43[(v47 >> 6) + 8] |= 1 << v47;
    *(v43[6] + 8 * v47) = v45;
    *(v43[7] + 8 * v47) = v44;
    v55 = v43[2];
    v51 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v51)
    {
      goto LABEL_35;
    }

    v43[2] = v56;
LABEL_12:
    v42 = (v42 + 1);
    v20 += 2;
    if (a4 == v42)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_6:
  v38 = swift_allocObject();
  *(v38 + 16) = v20;
  *(v38 + 24) = a4;

  sub_228506C84(sub_228535B34, v38);

LABEL_7:
}

uint64_t sub_228532AC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a4;
  v5 = sub_22855C85C();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CABC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  swift_getObjectType();
  sub_22855C59C();

  v16 = sub_22855CA8C();
  v17 = sub_22855D6AC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v9;
    v21 = v20;
    v38 = v20;
    *v19 = 136315138;
    sub_22855C84C();
    sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
    v22 = sub_22855E11C();
    v24 = v23;
    (*(v35 + 8))(v8, v5);
    v25 = sub_2283F8938(v22, v24, &v38);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2283ED000, v16, v17, "[%s] Device unlocked; retrying.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AABAD40](v21, -1, -1);
    MEMORY[0x22AABAD40](v19, -1, -1);

    (*(v34 + 8))(v13, v33);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v26 = a1[10];
  v27 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v26);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v30 = v36;
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  v31 = *(v27 + 8);

  v31(v37, v29, v26, v27);
}

uint64_t sub_228532E64@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v52 = a5;
  v53 = a4;
  v8 = sub_22855C85C();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855CABC();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 anchors];
  v16 = sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  sub_22844B928(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720);
  v45 = v16;
  v17 = sub_22855D0EC();

  v18 = a2;
  v51 = a1;
  v19 = v48;
  sub_228535044(v17, a1, v18);
  v21 = v20;
  v48 = v19;

  v23 = *(a3 + 24);
  v22 = *(a3 + 32);
  swift_getObjectType();
  sub_22855C59C();

  v24 = sub_22855CA8C();
  v25 = sub_22855D6AC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54 = v43;
    *v26 = 136315394;
    v27 = v44;
    sub_22855C84C();
    sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40]);
    v28 = v47;
    v29 = sub_22855E11C();
    v31 = v30;
    (*(v46 + 8))(v27, v28);
    v32 = sub_2283F8938(v29, v31, &v54);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    v33 = MEMORY[0x22AAB9430](v21, v45);
    v35 = v34;

    v36 = sub_2283F8938(v33, v35, &v54);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_2283ED000, v24, v25, "[%s] Types changed: %s", v26, 0x16u);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v37, -1, -1);
    MEMORY[0x22AABAD40](v26, -1, -1);
  }

  else
  {
  }

  (*(v49 + 8))(v14, v50);
  v38 = v51;
  v39 = *v51;
  v40 = v53;

  *v38 = v40;
  *v52 = v40;
}

id sub_2285332A8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    [*(a2 + 24) stopQuery_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = objc_allocWithZone(MEMORY[0x277CCDE18]);
  v14[4] = sub_228535AAC;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2283EEC60;
  v14[3] = &block_descriptor_29;
  v11 = _Block_copy(v14);

  v12 = [v10 initWithUpdateHandler_];
  _Block_release(v11);

  *a1 = v12;
  return [*(a2 + 24) executeQuery_];
}

void sub_2285333EC()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_228535A8C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.anchorsByCode.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.hasDifference(from:for:)(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *v2;
  v7 = *result;
  while (v5 < *(v3 + 16))
  {
    v8 = *(v3 + 32 + 8 * v5);
    if (*(v6 + 16) && (result = sub_22844C568(*(v3 + 32 + 8 * v5)), (v9 & 1) != 0))
    {
      v10 = 0;
      v11 = *(*(v6 + 56) + 8 * result);
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = 0;
      v10 = 1;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    if (!*(v7 + 16) || (result = sub_22844C568(v8), (v12 & 1) == 0))
    {
LABEL_3:
      if ((v10 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_4;
    }

    if (v11 == *(*(v7 + 56) + 8 * result))
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 1;
    }

LABEL_4:
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.merged(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_2285347EC(v4, sub_228534E94, 0, isUniquelyReferenced_nonNull_native, &v8);
  result = v8;
  *a2 = v8;
  return result;
}

uint64_t sub_22853365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4273726F68636E61 && a2 == 0xED000065646F4379)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2285336EC(uint64_t a1)
{
  v2 = sub_22853554C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228533728(uint64_t a1)
{
  v2 = sub_22853554C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2285355A0(0, &qword_280DE9020, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v45 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853554C();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_22844AE64();
  sub_22844AF28(&qword_280DE96B0);
  sub_22855E03C();
  v45[1] = 0;
  v46 = v10;
  v47 = v6;
  v48 = a2;
  v49 = a1;
  v13 = v52 + 8;
  v14 = 1 << *(v52 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v52[8];
  v17 = (v14 + 63) >> 6;
  v50 = v52;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v51 = v7;
  if (v16)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      type metadata accessor for _HKDataTypeCode(0);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = v13[v20];
    ++v18;
    if (v16)
    {
      v18 = v20;
      do
      {
LABEL_11:
        v21 = (v18 << 9) | (8 * __clz(__rbit64(v16)));
        v22 = *(v50[6] + v21);
        v23 = *(v50[7] + v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_228426664(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_228426664((v24 > 1), v25 + 1, 1, v19);
        }

        v16 &= v16 - 1;
        *(v19 + 2) = v25 + 1;
        v26 = &v19[16 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v23;
        v7 = v51;
      }

      while (v16);
    }
  }

  v50 = *(v19 + 2);
  if (v50)
  {
    v27 = 0;
    v28 = (v19 + 40);
    v29 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v27 >= *(v19 + 2))
      {
        goto LABEL_36;
      }

      v31 = *(v28 - 1);
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v29;
      v34 = sub_22844C568(v31);
      v35 = v29[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_37;
      }

      v38 = v33;
      if (v29[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v52;
          if (v33)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_228447F84();
          v29 = v52;
          if (v38)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_2284449D4(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_22844C568(v31);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_39;
        }

        v34 = v39;
        v29 = v52;
        if (v38)
        {
LABEL_19:
          *(v29[7] + 8 * v34) = v30;
          goto LABEL_20;
        }
      }

      v29[(v34 >> 6) + 8] |= 1 << v34;
      *(v29[6] + 8 * v34) = v31;
      *(v29[7] + 8 * v34) = v30;
      v41 = v29[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_38;
      }

      v29[2] = v43;
LABEL_20:
      v27 = (v27 + 1);
      v28 += 2;
      v7 = v51;
      if (v50 == v27)
      {
        goto LABEL_34;
      }
    }
  }

  v29 = MEMORY[0x277D84F98];
LABEL_34:

  (*(v7 + 8))(v46, v47);
  v44 = v49;
  *v48 = v29;
  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_2285355A0(0, &qword_280DE8FD0, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853554C();
  v58 = v7;
  sub_22855E31C();
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_19:
    v63 = v11[2];
    if (!v63)
    {
      v37 = MEMORY[0x277D84F98];
LABEL_35:

      v64 = v37;
      sub_22844AE64();
      sub_22844AF28(&qword_280DE96B8);
      v52 = v59;
      v53 = v58;
      sub_22855E0CC();
      (*(v60 + 8))(v53, v52);
    }

    v35 = 0;
    v36 = v11 + 5;
    v37 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v35 >= v11[2])
      {
        goto LABEL_41;
      }

      v39 = *(v36 - 1);
      v38 = *v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v37;
      v41 = sub_228443D60(v39);
      v43 = v37[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_42;
      }

      v47 = v42;
      if (v37[3] < v46)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v51 = v41;
      sub_2284480C4();
      v41 = v51;
      v37 = v64;
      if (v47)
      {
LABEL_21:
        *(v37[7] + 8 * v41) = v38;
        goto LABEL_22;
      }

LABEL_30:
      v37[(v41 >> 6) + 8] |= 1 << v41;
      *(v37[6] + 8 * v41) = v39;
      *(v37[7] + 8 * v41) = v38;
      v49 = v37[2];
      v45 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v45)
      {
        goto LABEL_43;
      }

      v37[2] = v50;
LABEL_22:
      ++v35;
      v36 += 2;
      if (v63 == v35)
      {
        goto LABEL_35;
      }
    }

    sub_228444C48(v46, isUniquelyReferenced_nonNull_native);
    v41 = sub_228443D60(v39);
    if ((v47 & 1) != (v48 & 1))
    {
      goto LABEL_44;
    }

LABEL_29:
    v37 = v64;
    if (v47)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v64 = MEMORY[0x277D84F90];
  v62 = v10;
  v63 = v8;
  sub_228427410(0, v10, 0);
  v11 = v64;
  v12 = v63 + 64;
  v13 = -1 << *(v63 + 32);
  v14 = sub_22855DAAC();
  v15 = v62;
  v16 = v63;
  v17 = 0;
  v61 = v63 + 72;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v16 + 32))
  {
    v19 = v14 >> 6;
    v20 = 1 << v14;
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_37;
    }

    v21 = *(*(v16 + 48) + 8 * v14);
    v22 = *(*(v16 + 56) + 8 * v14);
    v23 = *(v16 + 36);
    v64 = v11;
    v25 = v11[2];
    v24 = v11[3];
    if (v25 >= v24 >> 1)
    {
      v56 = v23;
      v57 = v14;
      sub_228427410((v24 > 1), v25 + 1, 1);
      v15 = v62;
      v16 = v63;
      v23 = v56;
      v14 = v57;
      v11 = v64;
    }

    v11[2] = v25 + 1;
    v26 = v11;
    v27 = &v11[2 * v25];
    v27[4] = v21;
    v27[5] = v22;
    v18 = 1 << *(v16 + 32);
    if (v14 >= v18)
    {
      goto LABEL_38;
    }

    v28 = *(v12 + 8 * v19);
    if ((v28 & v20) == 0)
    {
      goto LABEL_39;
    }

    if (v23 != *(v16 + 36))
    {
      goto LABEL_40;
    }

    v29 = v28 & (-2 << (v14 & 0x3F));
    if (v29)
    {
      v18 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v19 << 6;
      v31 = v19 + 1;
      v32 = (v61 + 8 * v19);
      while (v31 < (v18 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          sub_228416CB8(v14, v23, 0);
          v15 = v62;
          v16 = v63;
          v18 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      sub_228416CB8(v14, v23, 0);
      v15 = v62;
      v16 = v63;
    }

LABEL_4:
    ++v17;
    v14 = v18;
    v11 = v26;
    if (v17 == v15)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_2285340A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_2285347EC(v4, sub_228534E94, 0, isUniquelyReferenced_nonNull_native, &v8);
  result = v8;
  *a2 = v8;
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Configuration.init(types:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_228531AA4(a1);
  v4 = v3;

  *a2 = v4;
  return result;
}

uint64_t static ObjectTypeAnchorQueryInputSignal.Configuration.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Configuration.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x22AABA2B0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x22AABA2B0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x22AABA2B0](v4);
      --v2;
    }

    while (v2);
  }

  return sub_22855E27C();
}

uint64_t sub_228534308()
{
  v1 = *v0;
  result = MEMORY[0x22AABA2B0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x22AABA2B0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22853435C()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x22AABA2B0](v4);
      --v2;
    }

    while (v2);
  }

  return sub_22855E27C();
}

uint64_t ObjectTypeAnchorQueryInputSignal.beginObservation(from:configurations:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = v2[10];
  v7 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = MEMORY[0x277D84FA0];
  v32 = MEMORY[0x277D84FA0];
  v10 = *(a2 + 16);
  if (v10)
  {
    v29 = v5;
    v11 = a2 + 32;
    type metadata accessor for _HKDataTypeCode(0);
    v13 = v12;
    v14 = sub_22840A3D8(&unk_280DE9450, 255, type metadata accessor for _HKDataTypeCode);
    for (i = 0; i != v10; ++i)
    {
      v16 = *(v11 + 8 * i);
      v17 = *(v16 + 16);

      v18 = MEMORY[0x22AAB95B0](v17, v13, v14);
      v31 = v18;
      v19 = *(v16 + 16);
      if (v19)
      {
        v20 = (v16 + 32);
        do
        {
          v21 = *v20++;
          sub_22848513C(&v30, v21);
          --v19;
        }

        while (v19);
        v18 = v31;
      }

      sub_22844329C(v18);
    }

    v9 = v32;
    v5 = v29;
  }

  if (v5)
  {
    v22 = v3[12];
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock((v22 + 24));
    sub_2284B2FEC((v22 + 16));
    os_unfair_lock_unlock((v22 + 24));
  }

  v23 = v3[10];
  v24 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v23);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v9;
  v27 = *(v24 + 8);

  v27(sub_228535604, v26, v23, v24);
}

Swift::Void __swiftcall ObjectTypeAnchorQueryInputSignal.stopObservation()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t ObjectTypeAnchorQueryInputSignal.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = *(v0 + 96);

  return v0;
}

uint64_t ObjectTypeAnchorQueryInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_228534728()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_228534780(uint64_t a1, uint64_t a2)
{
  v3 = sub_22840A3D8(&qword_280DEA848, a2, type metadata accessor for ObjectTypeAnchorQueryInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_2285347EC(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v40 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v14 = v11;
LABEL_13:
    v15 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 48) + v15);
    v17 = *(*(a1 + 56) + v15);
    v39[0] = v16;
    v39[1] = v17;
    a2(v38, v39);
    v19 = v38[0];
    v18 = v38[1];
    v20 = *v40;
    v21 = sub_22844C568(v38[0]);
    v23 = *(v20 + 16);
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (*(v20 + 24) >= v26)
    {
      if ((a4 & 1) == 0)
      {
        v35 = v21;
        sub_228447F84();
        v21 = v35;
      }
    }

    else
    {
      v28 = v40;
      sub_2284449D4(v26, a4 & 1);
      v29 = *v28;
      v21 = sub_22844C568(v19);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 &= v9 - 1;
    v31 = *v40;
    if (v27)
    {
      v12 = v31[7];
      v13 = *(v12 + 8 * v21);
      if (v18 < v13)
      {
        v13 = v18;
      }

      *(v12 + 8 * v21) = v13;
    }

    else
    {
      v31[(v21 >> 6) + 8] |= 1 << v21;
      *(v31[6] + 8 * v21) = v19;
      *(v31[7] + 8 * v21) = v18;
      v32 = v31[2];
      v25 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v31[2] = v33;
    }

    a4 = 1;
    v11 = v14;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  type metadata accessor for _HKDataTypeCode(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

void sub_228534A44(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6, void (*a7)())
{
  if (a3)
  {
    if (sub_22855DE3C() == *(a4 + 36))
    {
      sub_22855DE4C();
      sub_2283EF310(0, a5, a6);
      swift_dynamicCast();
      a7();
      v12 = v11;

      if (v12)
      {
        sub_22855DE1C();
        sub_22855DE6C();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_22855DACC();
  v13 = *(a4 + 36);
}

void sub_228534BB8(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_22855DE7C();
      sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
      swift_dynamicCast();
      sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_22855DE3C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_22855DE4C();
  sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  swift_dynamicCast();
  a2 = sub_228443E90(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

void *sub_228534D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  v18 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9108);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  a7[12] = v19;
  sub_2283FAB3C(&v21, (a7 + 7));
  a7[2] = a5;
  a7[3] = a1;
  a7[4] = a2;
  a7[5] = a3;
  a7[6] = a4;
  return a7;
}

__n128 sub_228534E94@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_228534EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ObjectTypeAnchorQueryInputSignal.QueryObserver();
  v13 = swift_allocObject();
  sub_2283FA00C(0, &qword_280DE9110);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  v13[2] = v14;
  v13[3] = a4;
  v15 = sub_228534F5C(a1, a2, a3, a4, v13, a6, a7);
  v16 = a4;
  return v15;
}

void *sub_228534F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  type metadata accessor for ObjectTypeAnchorQueryInputSignal();
  v14 = swift_allocObject();
  v14[10] = v13;
  v14[11] = &off_283B8BF40;
  v14[7] = a5;
  v15 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9108);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v15;
  v14[12] = v16;
  v14[2] = a4;
  v14[3] = a1;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a3;
  return v14;
}

void sub_228535044(unint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v45 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22855DDFC();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v3 = v4 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = a1 + 64;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 64);
  }

  v11 = 0;
  v37 = v6;
  v12 = (v6 + 64) >> 6;
  v13 = &qword_280DEE7B8;
  while ((v3 & 0x8000000000000000) != 0)
  {
    if (!sub_22855DEBC() || (sub_2283EF310(0, v13, 0x277CCD720), swift_dynamicCast(), v18 = v44, v16 = v11, v17 = v7, !v44))
    {
LABEL_39:
      sub_228407958();
      return;
    }

LABEL_19:
    v42 = v17;
    v43 = v18;
    v19 = [v18 code];
    v20 = *a2;
    if (*(*a2 + 16) && (v21 = sub_22844C568(v19), (v22 & 1) != 0))
    {
      v41 = 0;
      v40 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      v40 = 0;
      v41 = 1;
    }

    v23 = [a3 anchors];
    sub_2283EF310(0, v13, 0x277CCD720);
    sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
    sub_22844B928(&qword_280DED1D8, v13, 0x277CCD720);
    v24 = sub_22855D0EC();

    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = v12;
      v26 = v5;
      v27 = v13;
      v28 = v3;
      v29 = v43;
      v30 = sub_22855DE8C();

      if (!v30)
      {

        v3 = v28;
        v13 = v27;
        v5 = v26;
        v12 = v25;
        if (v41)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }

      swift_dynamicCast();
      v31 = v44;

      v3 = v28;
      v13 = v27;
      v5 = v26;
      v12 = v25;
      if (!v44)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!*(v24 + 16) || (v32 = sub_228443E90(v43), (v33 & 1) == 0))
      {

LABEL_35:
        if (v41)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }

      v31 = *(*(v24 + 56) + 8 * v32);

      if (!v31)
      {
        goto LABEL_35;
      }
    }

    v34 = [v31 longLongValue];

    v35 = v41;
    if (v40 != v34)
    {
      v35 = 1;
    }

    if ((v35 & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_38:
    sub_22855DD1C();
    v36 = *(v45 + 16);
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
LABEL_9:
    v11 = v16;
    v7 = v42;
  }

  v14 = v11;
  v15 = v7;
  v16 = v11;
  if (v7)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_39;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_228535420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a5;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v15 + 16))(v18, a6, a8);
  return sub_228534D9C(a1, a2, a3, a4, v22, v18, v19, a8, a9);
}

unint64_t sub_22853554C()
{
  result = qword_280DEA938[0];
  if (!qword_280DEA938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEA938);
  }

  return result;
}

void sub_2285355A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22853554C();
    v7 = a3(a1, &type metadata for ObjectTypeAnchorQueryInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228535610()
{
  result = qword_280DEA908;
  if (!qword_280DEA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA908);
  }

  return result;
}

unint64_t sub_228535668()
{
  result = qword_280DEA918;
  if (!qword_280DEA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA918);
  }

  return result;
}

unint64_t sub_2285356C0()
{
  result = qword_280DEA910;
  if (!qword_280DEA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA910);
  }

  return result;
}

unint64_t sub_228535718()
{
  result = qword_27D840910;
  if (!qword_27D840910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840910);
  }

  return result;
}

unint64_t sub_228535770()
{
  result = qword_280DEA858[0];
  if (!qword_280DEA858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEA858);
  }

  return result;
}

unint64_t sub_2285357C8()
{
  result = qword_280DEA850;
  if (!qword_280DEA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA850);
  }

  return result;
}

unint64_t sub_228535868()
{
  result = qword_280DEA920;
  if (!qword_280DEA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA920);
  }

  return result;
}

unint64_t sub_228535988()
{
  result = qword_27D840918;
  if (!qword_27D840918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840918);
  }

  return result;
}

unint64_t sub_2285359E0()
{
  result = qword_280DEA928;
  if (!qword_280DEA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA928);
  }

  return result;
}

unint64_t sub_228535A38()
{
  result = qword_280DEA930;
  if (!qword_280DEA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA930);
  }

  return result;
}

uint64_t sub_228535AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a2, a3);
}

void sub_228535B6C()
{
  if (!qword_280DE96F8)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    sub_2283EF310(255, &qword_280DED090, 0x277CCABB0);
    sub_22844B928(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720);
    v0 = sub_22855D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96F8);
    }
  }
}

void sub_228535C28()
{
  if (!qword_27D840920)
  {
    sub_2283EF310(255, &qword_280DE94F8, 0x277CCD8D8);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    v0 = sub_22855D55C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840920);
    }
  }
}

uint64_t static InputSignalSet.LookupKey.cloudSyncStatus.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for CloudSyncStatusInputSignal();
  return sub_22855C61C();
}

uint64_t SyncError.init(error:)()
{
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);

  return sub_22855D0BC();
}

uint64_t static SyncError.== infix(_:_:)()
{
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_2285362F0(&qword_27D840928);

  return sub_22855D09C();
}

uint64_t sub_228535E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_228535F20(uint64_t a1)
{
  v2 = sub_22853615C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228535F5C(uint64_t a1)
{
  v2 = sub_22853615C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncError.encode(to:)(void *a1)
{
  sub_22853EC2C(0, &qword_27D840930, sub_22853615C, &type metadata for SyncError.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853615C();
  sub_22855E31C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536AA0(&qword_27D840948);
  sub_22855E0CC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22853615C()
{
  result = qword_27D840938;
  if (!qword_27D840938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840938);
  }

  return result;
}

uint64_t SyncError.hash(into:)()
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();

  return sub_22855D14C();
}

unint64_t sub_228536230()
{
  result = qword_27D840950;
  if (!qword_27D840950)
  {
    sub_2283EFE3C(255, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    sub_2285362F0(&qword_27D840958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840950);
  }

  return result;
}

uint64_t sub_2285362F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, &qword_280DED0B0, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SyncError.hashValue.getter()
{
  sub_22855E22C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t SyncError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  v4 = v3;
  v23 = *(v3 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v21 - v6;
  sub_22853EC2C(0, &qword_27D840960, sub_22853615C, &type metadata for SyncError.CodingKeys, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SyncError(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853615C();
  v17 = v25;
  sub_22855E30C();
  if (!v17)
  {
    v18 = v22;
    v19 = v23;
    sub_228536AA0(&qword_27D840968);
    sub_22855E03C();
    (*(v18 + 8))(v11, v8);
    (*(v19 + 32))(v15, v24, v4);
    sub_22853FAF0(v15, v21, type metadata accessor for SyncError);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2285366D0(void *a1)
{
  sub_22853EC2C(0, &qword_27D840930, sub_22853615C, &type metadata for SyncError.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853615C();
  sub_22855E31C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536AA0(&qword_27D840948);
  sub_22855E0CC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_228536894()
{
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_2285362F0(&qword_27D840928);

  return sub_22855D09C();
}

uint64_t sub_22853691C()
{
  sub_22855E22C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2285369A0()
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();

  return sub_22855D14C();
}

uint64_t sub_228536A20()
{
  sub_22855E22C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_228536AA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2283EFE3C(255, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228536B14()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572676F72506E69;
  }
}

uint64_t sub_228536B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22853CF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_228536B9C(uint64_t a1)
{
  v2 = sub_22853CEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536BD8(uint64_t a1)
{
  v2 = sub_22853CEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_228536C14(uint64_t a1)
{
  v2 = sub_22853CE10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536C50(uint64_t a1)
{
  v2 = sub_22853CE10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_228536C8C(uint64_t a1)
{
  v2 = sub_22853CDBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536CC8(uint64_t a1)
{
  v2 = sub_22853CDBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_228536D04(uint64_t a1)
{
  v2 = sub_22853CE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536D40(uint64_t a1)
{
  v2 = sub_22853CE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActiveSyncState.encode(to:)(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_22853EC2C(0, &qword_27D840970, sub_22853CDBC, &type metadata for ActiveSyncState.FailedCodingKeys, MEMORY[0x277D84538]);
  v47 = v3;
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v37 - v5;
  v6 = type metadata accessor for SyncError(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853EC2C(0, &qword_27D840980, sub_22853CE10, &type metadata for ActiveSyncState.CompletedCodingKeys, v2);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v37 - v12;
  sub_22853EC2C(0, &qword_27D840990, sub_22853CE64, &type metadata for ActiveSyncState.InProgressCodingKeys, v2);
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v15;
  active = type metadata accessor for ActiveSyncState(0);
  v17 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853EC2C(0, &qword_27D8409A0, sub_22853CEB8, &type metadata for ActiveSyncState.CodingKeys, v2);
  v49 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853CEB8();
  sub_22855E31C();
  sub_22853FA88(v48, v19, type metadata accessor for ActiveSyncState);
  v26 = (*(v7 + 48))(v19, 2, v6);
  if (v26)
  {
    if (v26 == 1)
    {
      v50 = 0;
      sub_22853CE64();
      v27 = v38;
      v28 = v49;
      sub_22855E06C();
      v30 = v39;
      v29 = v40;
    }

    else
    {
      v51 = 1;
      sub_22853CE10();
      v27 = v41;
      v28 = v49;
      sub_22855E06C();
      v30 = v42;
      v29 = v43;
    }

    (*(v30 + 8))(v27, v29);
    return (*(v21 + 8))(v24, v28);
  }

  else
  {
    v31 = v44;
    v32 = v45;
    sub_22853FAF0(v19, v45, type metadata accessor for SyncError);
    v52 = 2;
    sub_22853CDBC();
    v33 = v46;
    v34 = v49;
    sub_22855E06C();
    sub_22853EF9C(&qword_27D8409B0, 255, type metadata accessor for SyncError);
    v35 = v47;
    sub_22855E0CC();
    (*(v31 + 8))(v33, v35);
    sub_22853D6C4(v32, type metadata accessor for SyncError);
    return (*(v21 + 8))(v24, v34);
  }
}

uint64_t ActiveSyncState.hash(into:)()
{
  v1 = type metadata accessor for SyncError(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveSyncState(0);
  v7 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853FA88(v0, v9, type metadata accessor for ActiveSyncState);
  v10 = (*(v2 + 48))(v9, 2, v1);
  if (v10)
  {
    return MEMORY[0x22AABA2B0](v10 != 1);
  }

  sub_22853FAF0(v9, v5, type metadata accessor for SyncError);
  MEMORY[0x22AABA2B0](2);
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22853D6C4(v5, type metadata accessor for SyncError);
}

uint64_t ActiveSyncState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SyncError(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveSyncState(0);
  v8 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855E22C();
  sub_22853FA88(v1, v10, type metadata accessor for ActiveSyncState);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    MEMORY[0x22AABA2B0](v11 != 1);
  }

  else
  {
    sub_22853FAF0(v10, v6, type metadata accessor for SyncError);
    MEMORY[0x22AABA2B0](2);
    sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    sub_228536230();
    sub_22855D14C();
    sub_22853D6C4(v6, type metadata accessor for SyncError);
  }

  return sub_22855E27C();
}

uint64_t ActiveSyncState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_22853EC2C(0, &qword_27D8409B8, sub_22853CDBC, &type metadata for ActiveSyncState.FailedCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v53 - v7;
  sub_22853EC2C(0, &qword_27D8409C0, sub_22853CE10, &type metadata for ActiveSyncState.CompletedCodingKeys, v3);
  v57 = v8;
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = &v53 - v10;
  sub_22853EC2C(0, &qword_27D8409C8, sub_22853CE64, &type metadata for ActiveSyncState.InProgressCodingKeys, v3);
  v56 = v11;
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v53 - v13;
  sub_22853EC2C(0, &unk_27D8409D0, sub_22853CEB8, &type metadata for ActiveSyncState.CodingKeys, v3);
  v15 = v14;
  v64 = *(v14 - 1);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  active = type metadata accessor for ActiveSyncState(0);
  v20 = *(*(active - 8) + 64);
  v21 = MEMORY[0x28223BE20](active);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_22853CEB8();
  v28 = v65;
  sub_22855E30C();
  if (!v28)
  {
    v29 = v60;
    v30 = v61;
    v53 = v23;
    v65 = v25;
    v32 = v62;
    v31 = v63;
    v33 = sub_22855E04C();
    v34 = (2 * *(v33 + 16)) | 1;
    v67 = v33;
    v68 = v33 + 32;
    v69 = 0;
    v70 = v34;
    v35 = sub_2284E2D98();
    v36 = v15;
    if (v35 == 3 || v69 != v70 >> 1)
    {
      v38 = sub_22855DCEC();
      swift_allocError();
      v40 = v39;
      sub_2284E7D94();
      v42 = *(v41 + 48);
      *v40 = active;
      sub_22855DFDC();
      sub_22855DCCC();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v64 + 8))(v18, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35)
      {
        v37 = v64;
        if (v35 == 1)
        {
          v71 = 1;
          sub_22853CE10();
          sub_22855DFCC();
          (*(v55 + 8))(v30, v57);
          (*(v37 + 8))(v18, v36);
          swift_unknownObjectRelease();
          v47 = type metadata accessor for SyncError(0);
          v48 = v65;
          (*(*(v47 - 8) + 56))(v65, 2, 2, v47);
        }

        else
        {
          v71 = 2;
          sub_22853CDBC();
          v46 = v32;
          sub_22855DFCC();
          v61 = v36;
          v49 = v37;
          v50 = type metadata accessor for SyncError(0);
          sub_22853EF9C(&qword_27D8409E8, 255, type metadata accessor for SyncError);
          v51 = v53;
          v52 = v58;
          sub_22855E03C();
          (*(v59 + 8))(v46, v52);
          (*(v49 + 8))(v18, v61);
          swift_unknownObjectRelease();
          (*(*(v50 - 8) + 56))(v51, 0, 2, v50);
          v48 = v65;
          sub_22853FAF0(v51, v65, type metadata accessor for ActiveSyncState);
        }
      }

      else
      {
        v71 = 0;
        sub_22853CE64();
        sub_22855DFCC();
        v44 = v64;
        (*(v54 + 8))(v29, v56);
        (*(v44 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v45 = type metadata accessor for SyncError(0);
        v48 = v65;
        (*(*(v45 - 8) + 56))(v65, 1, 2, v45);
      }

      sub_22853FAF0(v48, v31, type metadata accessor for ActiveSyncState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t sub_228537FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853FA88(v2, v12, type metadata accessor for ActiveSyncState);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    return MEMORY[0x22AABA2B0](v13 != 1);
  }

  sub_22853FAF0(v12, v9, type metadata accessor for SyncError);
  MEMORY[0x22AABA2B0](2);
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22853D6C4(v9, type metadata accessor for SyncError);
}

uint64_t sub_228538190(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for SyncError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855E22C();
  sub_22853FA88(v4, v13, type metadata accessor for ActiveSyncState);
  v14 = (*(v6 + 48))(v13, 2, v5);
  if (v14)
  {
    MEMORY[0x22AABA2B0](v14 != 1);
  }

  else
  {
    sub_22853FAF0(v13, v10, type metadata accessor for SyncError);
    MEMORY[0x22AABA2B0](2);
    sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    sub_228536230();
    sub_22855D14C();
    sub_22853D6C4(v10, type metadata accessor for SyncError);
  }

  return sub_22855E27C();
}

id CloudSyncStatusInputSignal.__allocating_init(observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CloudSyncStatusInputSignal.ObserverShim();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = 0;
  v8 = sub_22853D0AC(a1, a2, v7, objc_allocWithZone(v3));
  swift_unknownObjectRelease();
  return v8;
}

id CloudSyncStatusInputSignal.__allocating_init(observer:shim:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_22853D5AC(a1, a2, v9, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

id CloudSyncStatusInputSignal.init(observer:shim:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_22853D310(a1, a2, v12, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v14;
}

uint64_t CloudSyncStatusInputSignal.didUpdate(status:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v16 = a1;
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_22853D6A8((v8 + v9), v7);
  os_unfair_lock_unlock((v8 + v10));
  v11 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer);
  v12 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer + 8);
  swift_getObjectType();
  v17 = v2;
  sub_22853EF9C(qword_280DEAF50, v13, type metadata accessor for CloudSyncStatusInputSignal);
  sub_22855C78C();
  return sub_22853D6C4(v7, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
}

uint64_t sub_228538738@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *a1;
  v11 = a2;

  *a1 = a2;
  v12 = type metadata accessor for CloudSyncStatusInputSignal.State(0);
  sub_2283F120C(a1 + *(v12 + 20), v9, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v13 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&a3[v13], 1, 1, active);
  *a3 = a2;
  return sub_22853D724(v9, &a3[v13]);
}

uint64_t CloudSyncStatusInputSignal.Anchor.init(status:activeSyncState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&a3[v6], 1, 1, active);
  *a3 = a1;

  return sub_22853D724(a2, &a3[v6]);
}

uint64_t CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v16 = a1;
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_22853D7A4((v8 + v9), v7);
  os_unfair_lock_unlock((v8 + v10));
  v11 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer);
  v12 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer + 8);
  swift_getObjectType();
  v17 = v2;
  sub_22853EF9C(qword_280DEAF50, v13, type metadata accessor for CloudSyncStatusInputSignal);
  sub_22855C78C();
  return sub_22853D6C4(v7, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
}

uint64_t sub_228538AA8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 20);
  sub_2283F0474(a1 + v10, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_22853FA88(a2, a1 + v10, type metadata accessor for ActiveSyncState);
  active = type metadata accessor for ActiveSyncState(0);
  v12 = *(*(active - 8) + 56);
  v12(a1 + v10, 0, 1, active);
  v13 = *a1;
  sub_22853FA88(a2, v9, type metadata accessor for ActiveSyncState);
  v12(v9, 0, 1, active);
  v14 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  v12(&a3[v14], 1, 1, active);
  *a3 = v13;
  v15 = v13;
  return sub_22853D724(v9, &a3[v14]);
}

id sub_228538C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CCD130]) initWithHealthStore:v1[2] delegate:a1];
  v5 = v1[3];
  v1[3] = v4;

  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DE9DF8);
  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_22855E34C();
    v13 = sub_2283F8938(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2283ED000, v7, v8, "[%s] observing sync status and requests", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
  }

  [v2[3] startObservingSyncStatus];
  result = v2[3];
  if (result)
  {

    return [result startObservingSyncRequestsMatchingFilter_];
  }

  return result;
}

uint64_t sub_228538E4C()
{

  return swift_deallocClassInstance();
}

void sub_228538EB0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  if (v2)
  {
    [v2 setDelegate_];
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = 0;
}

id CloudSyncStatusInputSignal.Anchor.status.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}