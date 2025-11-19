id HKTableFormatter.init(_:)(void **a1)
{
  v2 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_251F32144();
  v10 = [v8 initWithColumnTitles_];

  v31 = v7;
  v11 = v10;

  sub_251F21590(&v31);

  v12 = v31[2];
  if (v12)
  {
    v13 = v2[6];
    v30 = &v6[v2[5]];
    v28 = &v6[v13];
    v14 = &v6[v2[7]];
    v15 = *(v3 + 80);
    v26[1] = v31;
    v16 = v31 + ((v15 + 32) & ~v15);
    v29 = *(v3 + 72);
    v27 = xmmword_251F32B80;
    do
    {
      sub_251F21638(v16, v6);
      sub_251F22BC8(0, &qword_27F4C0D80, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v17 = v11;
      v18 = swift_allocObject();
      *(v18 + 16) = v27;
      *(v18 + 32) = sub_251F31FF4();
      *(v18 + 40) = v19;
      v20 = *(v30 + 1);
      *(v18 + 48) = *v30;
      *(v18 + 56) = v20;
      v21 = *(v28 + 1);
      *(v18 + 64) = *v28;
      *(v18 + 72) = v21;
      v22 = *v14;
      v23 = *(v14 + 1);

      sub_251F2169C(v6);
      *(v18 + 80) = v22;
      *(v18 + 88) = v23;
      v24 = sub_251F32144();
      v11 = v17;

      [v17 appendRow_];

      v16 += v29;
      --v12;
    }

    while (v12);
  }

  else
  {
  }

  return v11;
}

uint64_t sub_251F21590(void **a1)
{
  v2 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_251F285D8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_251F216F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_251F21638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F2169C(uint64_t a1)
{
  v2 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251F216F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251F322A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
        v6 = sub_251F32154();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_251F21A94(v8, v9, a1, v4);
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
    return sub_251F21824(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251F21824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v8 = *(*(v40 - 8) + 64);
  v9 = (MEMORY[0x28223BE20])();
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = *a4;
    v32 = v18;
    v22 = v38 + v18 * a3;
LABEL_6:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    v23 = v19;
    while (1)
    {
      sub_251F21638(v22, v17);
      sub_251F21638(v23, v13);
      v24 = sub_251F31FF4();
      v26 = v25;
      if (v24 == sub_251F31FF4() && v26 == v27)
      {

        sub_251F2169C(v13);
        result = sub_251F2169C(v17);
LABEL_5:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_6;
      }

      v28 = sub_251F322D4();

      sub_251F2169C(v13);
      result = sub_251F2169C(v17);
      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = v39;
      sub_251F22AE4(v22, v39);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_251F22AE4(v29, v23);
      v23 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251F21A94(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v127 = a1;
  v140 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v8 = *(v140 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v140);
  v132 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v139 = &v120 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v142 = &v120 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v141 = &v120 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v138 = &v120 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v120 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v126 = &v120 - v23;
  result = MEMORY[0x28223BE20](v22);
  v125 = &v120 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_104:
    v30 = *v127;
    if (!*v127)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v143 = v28;
      v116 = *(v28 + 2);
      if (v116 >= 2)
      {
        while (*a3)
        {
          v117 = *&v28[16 * v116];
          v118 = *&v28[16 * v116 + 24];
          sub_251F22464(*a3 + *(v8 + 72) * v117, *a3 + *(v8 + 72) * *&v28[16 * v116 + 16], *a3 + *(v8 + 72) * v118, v30);
          if (v5)
          {
          }

          if (v118 < v117)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_251F284B0(v28);
          }

          if (v116 - 2 >= *(v28 + 2))
          {
            goto LABEL_130;
          }

          v119 = &v28[16 * v116];
          *v119 = v117;
          *(v119 + 1) = v118;
          v143 = v28;
          result = sub_251F28424(v116 - 1);
          v28 = v143;
          v116 = *(v143 + 2);
          if (v116 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_251F284B0(v28);
    v28 = result;
    goto LABEL_106;
  }

  v121 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v129 = a3;
  v122 = v8;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v133 = v26;
      v31 = v27;
      v32 = *a3;
      v33 = *(v8 + 72);
      v34 = (v27 + 1);
      sub_251F21638(v32 + v33 * v30, v125);
      v128 = v31;
      v135 = v33;
      sub_251F21638(v32 + v33 * v31, v126);
      v30 = sub_251F31FF4();
      v36 = v35;
      v37 = sub_251F31FF4();
      v124 = v5;
      if (v30 == v37 && v36 == v38)
      {
        LODWORD(v134) = 0;
      }

      else
      {
        LODWORD(v134) = sub_251F322D4();
      }

      v123 = v28;

      sub_251F2169C(v126);
      result = sub_251F2169C(v125);
      v39 = v128 + 2;
      v40 = v135 * (v128 + 2);
      v41 = v32 + v40;
      v42 = v34;
      v43 = v135 * v34;
      v44 = v32 + v135 * v34;
      do
      {
        v8 = v39;
        a3 = v42;
        v5 = v43;
        v28 = v40;
        if (v39 >= v133)
        {
          break;
        }

        v136 = v39;
        sub_251F21638(v41, v137);
        sub_251F21638(v44, v138);
        v45 = sub_251F31FF4();
        v47 = v46;
        if (v45 == sub_251F31FF4() && v47 == v48)
        {
          v30 = 0;
        }

        else
        {
          v30 = sub_251F322D4();
        }

        sub_251F2169C(v138);
        result = sub_251F2169C(v137);
        v8 = v136;
        v39 = v136 + 1;
        v41 += v135;
        v44 += v135;
        v42 = (a3 + 1);
        v43 = v5 + v135;
        v40 = &v28[v135];
      }

      while (((v134 ^ v30) & 1) == 0);
      if (v134)
      {
        v29 = v128;
        if (v8 < v128)
        {
          goto LABEL_133;
        }

        if (v128 < v8)
        {
          v49 = v128 * v135;
          v50 = v128;
          do
          {
            if (v50 != a3)
            {
              v52 = *v129;
              if (!*v129)
              {
                goto LABEL_139;
              }

              sub_251F22AE4(v52 + v49, v132);
              if (v49 < v5 || v52 + v49 >= &v28[v52])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != v5)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_251F22AE4(v132, v52 + v5);
            }

            v50 = (v50 + 1);
            v5 -= v135;
            v28 -= v135;
            v49 += v135;
            v51 = v50 < a3;
            a3 = (a3 - 1);
          }

          while (v51);
        }

        v30 = v8;
        v28 = v123;
        v5 = v124;
        a3 = v129;
      }

      else
      {
        v30 = v8;
        v28 = v123;
        v5 = v124;
        v29 = v128;
        a3 = v129;
      }

      v8 = v122;
    }

    v53 = a3[1];
    if (v30 < v53)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_132;
      }

      if (v30 - v29 < v121)
      {
        break;
      }
    }

LABEL_53:
    if (v30 < v29)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251F26FC0(0, *(v28 + 2) + 1, 1, v28);
      v28 = result;
    }

    v71 = *(v28 + 2);
    v70 = *(v28 + 3);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      result = sub_251F26FC0((v70 > 1), v71 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 2) = v72;
    v73 = &v28[16 * v71];
    *(v73 + 4) = v29;
    *(v73 + 5) = v30;
    v74 = *v127;
    if (!*v127)
    {
      goto LABEL_141;
    }

    v136 = v30;
    if (v71)
    {
      while (1)
      {
        v30 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v75 = *(v28 + 4);
          v76 = *(v28 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_73:
          if (v78)
          {
            goto LABEL_120;
          }

          v91 = &v28[16 * v72];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_123;
          }

          v97 = &v28[16 * v30 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_127;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v30 = v72 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v101 = &v28[16 * v72];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_87:
        if (v96)
        {
          goto LABEL_122;
        }

        v104 = &v28[16 * v30];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_125;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_94:
        v112 = v30 - 1;
        if (v30 - 1 >= v72)
        {
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
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v113 = *&v28[16 * v112 + 32];
        v114 = *&v28[16 * v30 + 40];
        sub_251F22464(*a3 + *(v8 + 72) * v113, *a3 + *(v8 + 72) * *&v28[16 * v30 + 32], *a3 + *(v8 + 72) * v114, v74);
        if (v5)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_251F284B0(v28);
        }

        if (v112 >= *(v28 + 2))
        {
          goto LABEL_117;
        }

        v115 = &v28[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v143 = v28;
        result = sub_251F28424(v30);
        v28 = v143;
        v72 = *(v143 + 2);
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v28[16 * v72 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_118;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_119;
      }

      v86 = &v28[16 * v72];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_121;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_124;
      }

      if (v90 >= v82)
      {
        v108 = &v28[16 * v30 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_128;
        }

        if (v77 < v111)
        {
          v30 = v72 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v136;
    if (v136 >= v26)
    {
      goto LABEL_104;
    }
  }

  v54 = v29 + v121;
  if (__OFADD__(v29, v121))
  {
    goto LABEL_134;
  }

  if (v54 >= v53)
  {
    v54 = a3[1];
  }

  if (v54 < v29)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v30 == v54)
  {
    goto LABEL_53;
  }

  v123 = v28;
  v124 = v5;
  v55 = *a3;
  v56 = *(v8 + 72);
  v57 = *a3 + v56 * (v30 - 1);
  v58 = v29;
  v59 = -v56;
  v128 = v58;
  v60 = v58 - v30;
  v130 = v56;
  v131 = v54;
  v61 = v55 + v30 * v56;
LABEL_44:
  v135 = v57;
  v136 = v30;
  v133 = v61;
  v134 = v60;
  v62 = v57;
  while (1)
  {
    sub_251F21638(v61, v141);
    sub_251F21638(v62, v142);
    v63 = sub_251F31FF4();
    v65 = v64;
    if (v63 == sub_251F31FF4() && v65 == v66)
    {

      sub_251F2169C(v142);
      sub_251F2169C(v141);
LABEL_43:
      v30 = v136 + 1;
      v57 = v135 + v130;
      v60 = v134 - 1;
      v61 = v133 + v130;
      if (v136 + 1 == v131)
      {
        v30 = v131;
        v28 = v123;
        v5 = v124;
        v29 = v128;
        a3 = v129;
        v8 = v122;
        goto LABEL_53;
      }

      goto LABEL_44;
    }

    v67 = sub_251F322D4();

    sub_251F2169C(v142);
    result = sub_251F2169C(v141);
    if ((v67 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v55)
    {
      break;
    }

    v68 = v139;
    sub_251F22AE4(v61, v139);
    swift_arrayInitWithTakeFrontToBack();
    sub_251F22AE4(v68, v62);
    v62 += v59;
    v61 += v59;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
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

uint64_t sub_251F22464(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v8 = *(*(v54 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v48 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v48 - v14;
  result = MEMORY[0x28223BE20](v13);
  v55 = &v48 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_66;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_67;
  }

  v20 = (a2 - a1) / v18;
  v59 = a1;
  v58 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v22;
    if (v22 >= 1)
    {
      v34 = -v18;
      v35 = a4 + v22;
      v51 = a4;
      do
      {
        v49 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v38 = v33;
        v55 = v36;
        v56 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v59 = v36;
            v33 = v49;
            goto LABEL_63;
          }

          v39 = a3;
          v50 = v38;
          v40 = v35 + v34;
          sub_251F21638(v35 + v34, v52);
          sub_251F21638(v37, v53);
          v41 = sub_251F31FF4();
          v43 = v42;
          if (v41 == sub_251F31FF4() && v43 == v44)
          {
            v45 = 0;
          }

          else
          {
            v45 = sub_251F322D4();
          }

          a3 = v39 + v34;
          sub_251F2169C(v53);
          sub_251F2169C(v52);
          if (v45)
          {
            break;
          }

          v38 = v35 + v34;
          v46 = v51;
          if (v39 < v35 || a3 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v56;
          }

          else
          {
            v37 = v56;
            if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 += v34;
          v36 = v55;
          if (v40 <= v46)
          {
            v33 = v40;
            v59 = v55;
            goto LABEL_63;
          }
        }

        v47 = v51;
        if (v39 < v55 || a3 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v56;
          if (v39 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v33 = v50;
      }

      while (v35 > v47);
    }

    v59 = a2;
LABEL_63:
    v57 = v33;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v21;
    v57 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        v24 = a3;
        v25 = v18;
        v26 = a2;
        sub_251F21638(a2, v55);
        sub_251F21638(a4, v56);
        v27 = sub_251F31FF4();
        v29 = v28;
        if (v27 == sub_251F31FF4() && v29 == v30)
        {

          sub_251F2169C(v56);
          sub_251F2169C(v55);
        }

        else
        {
          v31 = sub_251F322D4();

          sub_251F2169C(v56);
          sub_251F2169C(v55);
          if (v31)
          {
            v18 = v25;
            a2 = v26 + v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              a3 = v24;
            }

            else
            {
              a3 = v24;
              if (a1 != v26)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_34;
          }
        }

        v18 = v25;
        v32 = a4 + v25;
        a2 = v26;
        if (a1 < a4 || a1 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v24;
        }

        else
        {
          a3 = v24;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = v32;
        a4 = v32;
LABEL_34:
        a1 += v18;
        v59 = a1;
      }

      while (a4 < v53 && a2 < a3);
    }
  }

  sub_251F22A00(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_251F22A00(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
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

uint64_t sub_251F22AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F22B58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251F22B78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_251F22BC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251F22C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369706F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251F322D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251F22D24(uint64_t a1)
{
  v2 = sub_251F22F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F22D60(uint64_t a1)
{
  v2 = sub_251F22F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicRegistryListRequest.encode(to:)(void *a1)
{
  sub_251F24DA4(0, &qword_27F4C0D90, sub_251F22F48, &type metadata for TopicRegistryListRequest.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F22F48();
  sub_251F32344();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA0, MEMORY[0x277D12628]);
  sub_251F32294();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_251F22F48()
{
  result = qword_27F4C0D98;
  if (!qword_27F4C0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0D98);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t TopicRegistryListRequest.hash(into:)()
{
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628]);

  return sub_251F320C4();
}

uint64_t sub_251F23064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TopicRegistryListRequest.hashValue.getter()
{
  sub_251F322F4();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628]);
  sub_251F320C4();
  return sub_251F32314();
}

uint64_t TopicRegistryListRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_251F32014();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F24DA4(0, &qword_27F4C0DB0, sub_251F22F48, &type metadata for TopicRegistryListRequest.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v21 = *(v6 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TopicRegistryListRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F22F48();
  v16 = v24;
  sub_251F32334();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    sub_251F23064(&qword_27F4C0DB8, MEMORY[0x277D12628]);
    sub_251F32274();
    (*(v17 + 8))(v10, v7);
    (*(v18 + 32))(v14, v23, v3);
    sub_251F23828(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s12HealthTopics24TopicRegistryListRequestV5topic0aB4Core0C0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251F32014();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_251F23480(void *a1)
{
  sub_251F24DA4(0, &qword_27F4C0D90, sub_251F22F48, &type metadata for TopicRegistryListRequest.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F22F48();
  sub_251F32344();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA0, MEMORY[0x277D12628]);
  sub_251F32294();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_251F2362C()
{
  sub_251F322F4();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628]);
  sub_251F320C4();
  return sub_251F32314();
}

uint64_t sub_251F236B4()
{
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628]);

  return sub_251F320C4();
}

uint64_t sub_251F23738()
{
  sub_251F322F4();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628]);
  sub_251F320C4();
  return sub_251F32314();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_251F23828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.topicRequestType.getter()
{
  v1 = (v0 + *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_251F238F0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.topicResponseType.getter()
{
  v1 = (v0 + *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.topicEvaluatorType.getter()
{
  v1 = (v0 + *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *TopicRegistryListResponse.TopicRegistryEntryResponse.init(topic:topicRequestType:topicResponseType:topicEvaluatorType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_251F32014();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a8 + result[6]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a8 + result[7]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

uint64_t static TopicRegistryListResponse.TopicRegistryEntryResponse.< infix(_:_:)()
{
  v0 = sub_251F31FF4();
  v2 = v1;
  if (v0 == sub_251F31FF4() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_251F322D4();
  }

  return v4 & 1;
}

uint64_t sub_251F23B08()
{
  v1 = *v0;
  sub_251F322F4();
  MEMORY[0x2530929F0](v1);
  return sub_251F32314();
}

uint64_t sub_251F23B7C()
{
  v1 = *v0;
  sub_251F322F4();
  MEMORY[0x2530929F0](v1);
  return sub_251F32314();
}

unint64_t sub_251F23BC0()
{
  v1 = 0x6369706F74;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_251F23C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251F25A68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251F23C78(uint64_t a1)
{
  v2 = sub_251F24CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F23CB4(uint64_t a1)
{
  v2 = sub_251F24CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.encode(to:)(void *a1)
{
  v3 = v1;
  sub_251F24DA4(0, &qword_27F4C0DC0, sub_251F24CA4, &type metadata for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CA4();
  sub_251F32344();
  v27 = 0;
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA0, MEMORY[0x277D12628]);
  sub_251F32294();
  if (!v2)
  {
    v12 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    v26 = 1;
    sub_251F32284();
    v16 = (v3 + v12[6]);
    v17 = *v16;
    v18 = v16[1];
    v25 = 2;
    sub_251F32284();
    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = v19[1];
    v24 = 3;
    sub_251F32284();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_251F32014();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F24DA4(0, &qword_27F4C0DD0, sub_251F24CA4, &type metadata for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys, MEMORY[0x277D844C8]);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CA4();
  v38 = v9;
  v15 = v39;
  sub_251F32334();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = a1;
  v17 = v13;
  v18 = v34;
  v43 = 0;
  sub_251F23064(&qword_27F4C0DB8, MEMORY[0x277D12628]);
  v19 = v35;
  sub_251F32274();
  (*(v18 + 32))(v13, v19, v3);
  v42 = 1;
  v20 = sub_251F32264();
  v21 = &v13[v10[5]];
  *v21 = v20;
  v21[1] = v22;
  v41 = 2;
  v23 = sub_251F32264();
  v24 = v16;
  v25 = (v17 + v10[6]);
  *v25 = v23;
  v25[1] = v26;
  v40 = 3;
  v27 = sub_251F32264();
  v29 = v28;
  (*(v36 + 8))(v38, v37);
  v30 = (v17 + v10[7]);
  *v30 = v27;
  v30[1] = v29;
  sub_251F21638(v17, v33);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_251F2169C(v17);
}

uint64_t sub_251F24384()
{
  v0 = sub_251F31FF4();
  v2 = v1;
  if (v0 == sub_251F31FF4() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_251F322D4();
  }

  return v4 & 1;
}

uint64_t sub_251F24410()
{
  v0 = sub_251F31FF4();
  v2 = v1;
  if (v0 == sub_251F31FF4() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = sub_251F322D4();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_251F244B0()
{
  v0 = sub_251F31FF4();
  v2 = v1;
  if (v0 == sub_251F31FF4() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = sub_251F322D4();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_251F24550()
{
  v0 = sub_251F31FF4();
  v2 = v1;
  if (v0 == sub_251F31FF4() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_251F322D4();
  }

  return v4 & 1;
}

uint64_t sub_251F24620()
{
  sub_251F322F4();
  MEMORY[0x2530929F0](0);
  return sub_251F32314();
}

uint64_t sub_251F24664()
{
  sub_251F322F4();
  MEMORY[0x2530929F0](0);
  return sub_251F32314();
}

uint64_t sub_251F246BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251F322D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251F24744(uint64_t a1)
{
  v2 = sub_251F24CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F24780(uint64_t a1)
{
  v2 = sub_251F24CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicRegistryListResponse.encode(to:)(void *a1)
{
  sub_251F24DA4(0, &qword_27F4C0DD8, sub_251F24CF8, &type metadata for TopicRegistryListResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CF8();

  sub_251F32344();
  v12[3] = v9;
  sub_251F24D4C();
  sub_251F24E0C(&qword_27F4C0DF0, &qword_27F4C0DF8);
  sub_251F32294();

  return (*(v5 + 8))(v8, v4);
}

uint64_t TopicRegistryListResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_251F24DA4(0, &qword_27F4C0E00, sub_251F24CF8, &type metadata for TopicRegistryListResponse.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CF8();
  sub_251F32334();
  if (!v2)
  {
    v11 = v14;
    sub_251F24D4C();
    sub_251F24E0C(&qword_27F4C0E08, &qword_27F4C0E10);
    sub_251F32274();
    (*(v6 + 8))(v9, v5);
    *v11 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s12HealthTopics25TopicRegistryListResponseV0cd5EntryF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s12HealthTopics24TopicRegistryListRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if (v16 == *v18 && v17 == v18[1])
  {
    return 1;
  }

  return sub_251F322D4();
}

unint64_t sub_251F24CA4()
{
  result = qword_27F4C0DC8;
  if (!qword_27F4C0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0DC8);
  }

  return result;
}

unint64_t sub_251F24CF8()
{
  result = qword_27F4C0DE0;
  if (!qword_27F4C0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0DE0);
  }

  return result;
}

void sub_251F24D4C()
{
  if (!qword_27F4C0DE8)
  {
    type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(255);
    v0 = sub_251F32164();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C0DE8);
    }
  }
}

void sub_251F24DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_251F24E0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251F24D4C();
    sub_251F23064(a2, type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251F24F78()
{
  result = qword_27F4C0E30;
  if (!qword_27F4C0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E30);
  }

  return result;
}

unint64_t sub_251F24FD0()
{
  result = qword_27F4C0E38;
  if (!qword_27F4C0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E38);
  }

  return result;
}

uint64_t sub_251F250C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251F32014();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_251F25148(uint64_t a1, uint64_t a2)
{
  v4 = sub_251F32014();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_251F251B8()
{
  result = sub_251F32014();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251F25230(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_251F25278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251F252D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251F32014();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251F253AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251F32014();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251F25468()
{
  result = sub_251F32014();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251F25670(unsigned int *a1, int a2)
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

_WORD *sub_251F256C4(_WORD *result, int a2, int a3)
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

unint64_t sub_251F25754()
{
  result = qword_27F4C0E70;
  if (!qword_27F4C0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E70);
  }

  return result;
}

unint64_t sub_251F257AC()
{
  result = qword_27F4C0E78;
  if (!qword_27F4C0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E78);
  }

  return result;
}

unint64_t sub_251F25804()
{
  result = qword_27F4C0E80;
  if (!qword_27F4C0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E80);
  }

  return result;
}

unint64_t sub_251F2585C()
{
  result = qword_27F4C0E88;
  if (!qword_27F4C0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E88);
  }

  return result;
}

unint64_t sub_251F258B4()
{
  result = qword_27F4C0E90;
  if (!qword_27F4C0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E90);
  }

  return result;
}

unint64_t sub_251F2590C()
{
  result = qword_27F4C0E98;
  if (!qword_27F4C0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E98);
  }

  return result;
}

unint64_t sub_251F25964()
{
  result = qword_27F4C0EA0;
  if (!qword_27F4C0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EA0);
  }

  return result;
}

unint64_t sub_251F259BC()
{
  result = qword_27F4C0EA8;
  if (!qword_27F4C0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EA8);
  }

  return result;
}

unint64_t sub_251F25A14()
{
  result = qword_27F4C0EB0;
  if (!qword_27F4C0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EB0);
  }

  return result;
}

uint64_t sub_251F25A68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_251F322D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000251F335D0 == a2 || (sub_251F322D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251F335F0 == a2 || (sub_251F322D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000251F33610 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_251F322D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL sub_251F25BF0(void *a1, uint64_t *a2)
{
  if (*a2 != *a1 || a2[1] != a1[1])
  {
    v5 = *a2;
    v6 = a2[1];
    if ((sub_251F322D4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a2[2] != a1[2] || a2[3] != a1[3])
  {
    v8 = a2[2];
    v9 = a2[3];
    v10 = a1[2];
    v11 = a1[3];
    if ((sub_251F322D4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a2[4] != a1[4] || a2[5] != a1[5])
  {
    v12 = a2[4];
    v13 = a2[5];
    v14 = a1[4];
    v15 = a1[5];
    if ((sub_251F322D4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a2[6] == a1[6] && a2[7] == a1[7])
  {
    v16 = 0;
  }

  else
  {
LABEL_17:
    v16 = sub_251F322D4();
  }

  return (v16 & 1) == 0;
}

BOOL sub_251F25CF8(uint64_t *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v5 = *a1;
    if ((sub_251F322D4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = a2[2];
    v10 = a2[3];
    if ((sub_251F322D4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a2[4];
    v14 = a2[5];
    if ((sub_251F322D4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    v15 = 0;
  }

  else
  {
LABEL_17:
    v15 = sub_251F322D4();
  }

  return (v15 & 1) == 0;
}

uint64_t sub_251F25E00(void *a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (v5 = *a2, v6 = a2[1], (sub_251F322D4() & 1) != 0))
  {
    v7 = a2[2] == a1[2] && a2[3] == a1[3];
    if (v7 || (v8 = a2[2], v9 = a2[3], v10 = a1[2], v11 = a1[3], (sub_251F322D4() & 1) != 0))
    {
      if (a2[4] == a1[4] && a2[5] == a1[5] || (v12 = a2[4], v13 = a2[5], v14 = a1[4], v15 = a1[5], (sub_251F322D4() & 1) != 0))
      {
        if (a2[6] == a1[6] && a2[7] == a1[7])
        {
          return 0;
        }
      }
    }
  }

  return sub_251F322D4();
}

void *HKTableFormatter.init(_:)(uint64_t a1)
{
  v144 = sub_251F31E74();
  v2 = *(v144 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_251F31EB4();
  v5 = *(v142 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v142);
  v141 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_251F32014();
  v8 = *(v140 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v140);
  v139 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251F31F04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v137 = (&v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v147 = &v120 - v16;
  v159 = sub_251F31F74();
  v17 = *(v159 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v159);
  v160 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v126 = &v120 - v21;
  sub_251F28B10(0, &qword_27F4C0EB8, sub_251F26B98, MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v148 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v146 = &v120 - v26;
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v28 = sub_251F32144();
  v29 = [v27 initWithColumnTitles_];

  v124 = v29;
  v30.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v31 = 0;
  v128 = a1;
  v34 = *(a1 + 64);
  v33 = a1 + 64;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v121 = (v35 + 63) >> 6;
  v125 = v17 + 16;
  v149 = (v17 + 32);
  v135 = (v12 + 16);
  v134 = (v12 + 88);
  v133 = *MEMORY[0x277D125B8];
  v123 = *MEMORY[0x277D125B0];
  v145 = (v12 + 8);
  v122 = (v12 + 96);
  v132 = (v8 + 8);
  v131 = (v5 + 8);
  v130 = (v2 + 8);
  v161 = MEMORY[0x277D84F90];
  v127 = v17;
  v129 = (v17 + 8);
  v138 = v11;
  v136 = v33;
  if ((v36 & v32) == 0)
  {
LABEL_5:
    if (v121 <= v31 + 1)
    {
      v41 = v31 + 1;
    }

    else
    {
      v41 = v121;
    }

    v42 = v41 - 1;
    v40 = v147;
    v43 = v148;
    while (1)
    {
      v39 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v39 >= v121)
      {
        sub_251F26B98();
        v52 = v96;
        (*(*(v96 - 8) + 56))(v43, 1, 1, v96);
        v37 = 0;
        v31 = v42;
        goto LABEL_14;
      }

      v37 = *(v33 + 8 * v39);
      ++v31;
      if (v37)
      {
        v38 = v11;
        v31 = v39;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    v161 = sub_251F287E8(v161);
    goto LABEL_32;
  }

  while (1)
  {
    v38 = v11;
    v39 = v31;
    v40 = v147;
LABEL_13:
    v44 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v45 = v44 | (v39 << 6);
    v46 = v128;
    v47 = v127;
    v48 = v126;
    v49 = v159;
    (*(v127 + 16))(v126, *(v128 + 48) + *(v127 + 72) * v45, v159, v30);
    v50 = *(*(v46 + 56) + 8 * v45);
    sub_251F26B98();
    v52 = v51;
    v53 = *(v51 + 48);
    v54 = *(v47 + 32);
    v43 = v148;
    v54(v148, v48, v49);
    *(v43 + v53) = v50;
    (*(*(v52 - 8) + 56))(v43, 0, 1, v52);

    v11 = v38;
LABEL_14:
    v55 = v146;
    sub_251F26C0C(v43, v146);
    sub_251F26B98();
    v56 = (*(*(v52 - 8) + 48))(v55, 1, v52);
    v57 = v145;
    if (v56 == 1)
    {
      break;
    }

    v58 = *(v55 + *(v52 + 48));
    (*v149)(v160, v55, v159);
    sub_251F31F14();
    v59 = v137;
    (*v135)(v137, v40, v11);
    v60 = (*v134)(v59, v11);
    if (v60 == v133)
    {
      (*v57)(v40, v11);
      (*v122)(v59, v11);
      v61 = *v59;
      v62 = v59[1];
    }

    else
    {
      v63 = v60;
      v64 = *v57;
      (*v57)(v40, v11);
      if (v63 == v123)
      {
        v62 = 0xE700000000000000;
        v61 = 0x6468746C616568;
      }

      else
      {
        v64(v59, v11);
        v62 = 0xE700000000000000;
        v61 = 0x6E776F6E6B6E75;
      }
    }

    v158 = v61;
    v65 = v139;
    sub_251F31EF4();
    v66 = sub_251F31FF4();
    v156 = v67;
    v157 = v66;
    (*v132)(v65, v140);
    sub_251F31F24();
    v68 = v163;
    __swift_project_boxed_opaque_existential_1(v162, v163);
    v164 = v68;
    swift_getMetatypeMetadata();
    v69 = sub_251F32114();
    v154 = v70;
    v155 = v69;
    v71 = v141;
    sub_251F31F64();
    v153 = sub_251F31E84();
    *&v152 = v72;
    (*v131)(v71, v142);
    v73 = sub_251F31F44();
    v75 = 7104878;
    if (v74)
    {
      v75 = v73;
    }

    v151 = v75;
    v76 = 0xE300000000000000;
    if (v74)
    {
      v76 = v74;
    }

    v150 = v76;
    sub_251F31EE4();
    v77 = v143;
    sub_251F31E54();
    v78 = sub_251F31E64();
    (*v130)(v77, v144);
    v79 = HKDiagnosticStringFromDate();

    v80 = sub_251F320F4();
    v82 = v81;

    sub_251F31EE4();
    v83 = HKDiagnosticStringFromDuration();
    v84 = sub_251F320F4();
    v86 = v85;

    __swift_destroy_boxed_opaque_existential_1(v162);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v161 = sub_251F270E8(0, *(v161 + 2) + 1, 1, v161);
    }

    v88 = *(v161 + 2);
    v87 = *(v161 + 3);
    if (v88 >= v87 >> 1)
    {
      v161 = sub_251F270E8((v87 > 1), v88 + 1, 1, v161);
    }

    (*v129)(v160, v159);
    v89 = v161;
    *(v161 + 2) = v88 + 1;
    v90 = &v89[112 * v88];
    v91 = v157;
    *(v90 + 4) = v158;
    *(v90 + 5) = v62;
    v92 = v155;
    v93 = v156;
    *(v90 + 6) = v91;
    *(v90 + 7) = v93;
    *(v90 + 8) = v92;
    v94 = v153;
    *(v90 + 9) = v154;
    *(v90 + 10) = v94;
    v95 = v151;
    *(v90 + 11) = v152;
    *(v90 + 12) = v95;
    *(v90 + 13) = v150;
    *(v90 + 14) = v80;
    *(v90 + 15) = v82;
    *(v90 + 16) = v84;
    *(v90 + 17) = v86;
    v11 = v138;
    v33 = v136;
    if (!v37)
    {
      goto LABEL_5;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  v97 = v124;
  v98 = v161;
  v99 = *(v161 + 2);
  v162[0] = (v161 + 32);
  v162[1] = v99;
  sub_251F27214(v162);
  v100 = *(v98 + 2);
  if (v100)
  {
    sub_251F28A68(0, &qword_27F4C0D80);
    v153 = v101;
    v102 = v161 + 136;
    v152 = xmmword_251F331F0;
    do
    {
      v160 = v100;
      v103 = *(v102 - 13);
      v104 = *(v102 - 12);
      v105 = *(v102 - 11);
      v106 = *(v102 - 10);
      v107 = *(v102 - 8);
      v158 = *(v102 - 9);
      v159 = v105;
      v108 = *(v102 - 7);
      v109 = *(v102 - 6);
      v110 = *(v102 - 4);
      v156 = *(v102 - 5);
      v157 = v108;
      v111 = *(v102 - 3);
      v112 = *(v102 - 2);
      v113 = *v102;
      v154 = *(v102 - 1);
      v155 = v111;
      v114 = swift_allocObject();
      *(v114 + 16) = v152;
      *(v114 + 32) = v103;
      *(v114 + 40) = v104;
      v97 = v124;
      v115 = v158;
      *(v114 + 48) = v159;
      *(v114 + 56) = v106;
      *(v114 + 64) = v115;
      *(v114 + 72) = v107;
      v116 = v156;
      *(v114 + 80) = v157;
      *(v114 + 88) = v109;
      *(v114 + 96) = v116;
      *(v114 + 104) = v110;
      v117 = v154;
      *(v114 + 112) = v155;
      *(v114 + 120) = v112;
      *(v114 + 128) = v117;
      *(v114 + 136) = v113;

      v118 = sub_251F32144();

      [v97 appendRow_];

      v102 += 112;
      v100 = v160 - 1;
    }

    while (v160 != 1);
  }

  return v97;
}

void sub_251F26B98()
{
  if (!qword_27F4C0EC0)
  {
    sub_251F31F74();
    sub_251F31F34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4C0EC0);
    }
  }
}

uint64_t sub_251F26C0C(uint64_t a1, uint64_t a2)
{
  sub_251F28B10(0, &qword_27F4C0EB8, sub_251F26B98, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F26CA0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v13 = a1[5];
  v14 = a1[4];
  v11 = a1[7];
  v12 = a1[6];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[7];
  v10 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_251F322D4()) && (v2 == v4 && v3 == v5 || (sub_251F322D4()) && (v14 == v7 && v13 == v6 || (sub_251F322D4()) && v12 == v10 && v11 == v9)
  {
    return 0;
  }

  return sub_251F322D4();
}

BOOL sub_251F26E20(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F25BF0(v13, v14);
}

BOOL sub_251F26E88(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F25CF8(v13, v14);
}

uint64_t sub_251F26EF0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F25E00(v13, v14) & 1;
}

uint64_t sub_251F26F58(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F2892C(v13, v14) & 1;
}

char *sub_251F26FC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F28B10(0, &qword_27F4C0ED8, sub_251F28AB8, MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_251F270E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F28A68(0, &qword_27F4C0ED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_251F27214(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251F322A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_251F32154();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_251F27564(v7, v8, a1, v4);
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
    return sub_251F2730C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251F2730C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v4 = *a4 + 112 * a3 - 112;
    v5 = result - a3;
LABEL_5:
    v21 = v4;
    v22 = a3;
    v20 = v5;
    v6 = v5;
    while (1)
    {
      v40 = v6;
      v7 = (v4 + 112);
      v8 = *(v4 + 136);
      v31 = *(v4 + 144);
      v32 = *(v4 + 128);
      v26 = *(v4 + 168);
      v27 = *(v4 + 160);
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = *(v4 + 32);
      v29 = v11;
      v30 = *(v4 + 152);
      v28 = *(v4 + 40);
      v24 = *(v4 + 56);
      v25 = *(v4 + 48);
      if ((*(v4 + 112) != *v4 || *(v4 + 120) != *(v4 + 8)) && (sub_251F322D4() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v32 == v10 && v8 == v9 || (sub_251F322D4()) && (v31 == v29 && v30 == v28 || (sub_251F322D4()))
      {
        result = v27;
        v12 = v40;
        if (v27 == v25 && v26 == v24 || (result = sub_251F322D4(), (result & 1) == 0))
        {
LABEL_4:
          a3 = v22 + 1;
          v4 = v21 + 112;
          v5 = v20 - 1;
          if (v22 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else
      {
LABEL_19:
        result = sub_251F322D4();
        v12 = v40;
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v23)
      {
        break;
      }

      v37 = *(v4 + 176);
      v38 = *(v4 + 192);
      v39 = *(v4 + 208);
      v33 = *v7;
      v34 = *(v4 + 128);
      v35 = *(v4 + 144);
      v36 = *(v4 + 160);
      v13 = *(v4 + 16);
      *v7 = *v4;
      *(v4 + 128) = v13;
      v14 = *(v4 + 32);
      v15 = *(v4 + 48);
      v16 = *(v4 + 64);
      v17 = *(v4 + 96);
      *(v4 + 192) = *(v4 + 80);
      *(v4 + 208) = v17;
      *(v4 + 64) = v37;
      *(v4 + 80) = v38;
      *(v4 + 96) = v39;
      *v4 = v33;
      *(v4 + 16) = v34;
      *(v4 + 32) = v35;
      *(v4 + 48) = v36;
      v4 -= 112;
      v7[3] = v15;
      v7[4] = v16;
      v7[2] = v14;
      v18 = __CFADD__(v12, 1);
      v6 = v12 + 1;
      if (v18)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251F27564(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v108 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_117:
    v8 = *v108;
    if (!*v108)
    {
      goto LABEL_156;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_150:
      result = sub_251F284B0(v7);
      v7 = result;
    }

    v153 = v7;
    v99 = *(v7 + 16);
    if (v99 >= 2)
    {
      while (*a3)
      {
        v100 = v7;
        v7 = *(v7 + 16 * v99);
        v101 = v100;
        v102 = *&v100[16 * v99 + 24];
        sub_251F27ED0((*a3 + 112 * v7), (*a3 + 112 * *&v100[16 * v99 + 16]), (*a3 + 112 * v102), v8);
        if (v4)
        {
        }

        if (v102 < v7)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_251F284B0(v101);
        }

        if (v99 - 2 >= *(v101 + 2))
        {
          goto LABEL_144;
        }

        v103 = &v101[16 * v99];
        *v103 = v7;
        v103[1] = v102;
        v153 = v101;
        result = sub_251F28424(v99 - 1);
        v7 = v153;
        v99 = *(v153 + 16);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_154;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 112;
  while (1)
  {
    v9 = v6;
    v10 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v11 = *a3;
      v12 = (*a3 + 112 * v10);
      v13 = v12[5];
      v151[4] = v12[4];
      v151[5] = v13;
      v151[6] = v12[6];
      v14 = v12[1];
      v151[0] = *v12;
      v151[1] = v14;
      v15 = v12[3];
      v151[2] = v12[2];
      v151[3] = v15;
      v16 = (v11 + 112 * v9);
      v17 = v16[1];
      v152[0] = *v16;
      v152[1] = v17;
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[6];
      v152[5] = v16[5];
      v152[6] = v20;
      v21 = v16[4];
      v152[3] = v19;
      v152[4] = v21;
      v152[2] = v18;
      result = sub_251F284C4(v151, v152);
      v119 = result;
      if (v4)
      {
      }

      v10 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v106 = v7;
        v104 = v9;
        v22 = (v11 + 112 * v9 + 144);
        v117 = v5;
        while (1)
        {
          v113 = v10;
          v24 = v22[12];
          v23 = v22[13];
          v133 = v22[15];
          v135 = v22[14];
          v125 = v22[17];
          v127 = v22[16];
          v25 = *(v22 - 2);
          v26 = *(v22 - 1);
          v129 = v22[1];
          v131 = *v22;
          v121 = v22[3];
          v123 = v22[2];
          if ((v22[10] != *(v22 - 4) || v22[11] != *(v22 - 3)) && (sub_251F322D4() & 1) == 0)
          {
            break;
          }

          if ((v24 != v25 || v23 != v26) && (sub_251F322D4() & 1) == 0)
          {
            break;
          }

          v8 = 112;
          v27 = v117;
          if ((v135 != v131 || v133 != v129) && (sub_251F322D4() & 1) == 0)
          {
            result = sub_251F322D4();
            v10 = v113;
LABEL_9:
            if ((v119 ^ result))
            {
              goto LABEL_27;
            }

            goto LABEL_10;
          }

          result = v127;
          v10 = v113;
          if (v127 != v123 || v125 != v121)
          {
            result = sub_251F322D4();
            goto LABEL_9;
          }

          if (v119)
          {
            v7 = v106;
            v9 = v104;
            if (v113 < v104)
            {
              goto LABEL_147;
            }

            goto LABEL_30;
          }

LABEL_10:
          ++v10;
          v22 += 14;
          if (v27 == v10)
          {
            v10 = v27;
LABEL_27:
            v7 = v106;
            v9 = v104;
            goto LABEL_28;
          }
        }

        result = sub_251F322D4();
        v8 = 112;
        v10 = v113;
        v27 = v117;
        goto LABEL_9;
      }

LABEL_28:
      if (v119)
      {
        if (v10 < v9)
        {
          goto LABEL_147;
        }

LABEL_30:
        if (v9 < v10)
        {
          v28 = v9;
          v29 = v7;
          v30 = 112 * v10 - 112;
          v31 = 112 * v28;
          v32 = v10;
          v33 = v28;
          v34 = v28;
          do
          {
            if (v34 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_153;
              }

              v36 = (v35 + v30);
              v145 = *(v35 + v31 + 64);
              v147 = *(v35 + v31 + 80);
              v149 = *(v35 + v31 + 96);
              v137 = *(v35 + v31);
              v139 = *(v35 + v31 + 16);
              v141 = *(v35 + v31 + 32);
              v143 = *(v35 + v31 + 48);
              result = memmove((v35 + v31), (v35 + v30), 0x70uLL);
              v36[4] = v145;
              v36[5] = v147;
              v36[6] = v149;
              *v36 = v137;
              v36[1] = v139;
              v36[2] = v141;
              v36[3] = v143;
            }

            ++v34;
            v30 -= 112;
            v31 += 112;
          }

          while (v34 < v32);
          v7 = v29;
          v8 = 112;
          v9 = v33;
        }
      }
    }

    v37 = a3[1];
    if (v10 < v37)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_146;
      }

      if (v10 - v9 < a4)
      {
        v38 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_148;
        }

        if (v38 >= v37)
        {
          v38 = a3[1];
        }

        if (v38 < v9)
        {
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (v10 != v38)
        {
          break;
        }
      }
    }

LABEL_64:
    if (v10 < v9)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251F26FC0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v53 = *(v7 + 16);
    v52 = *(v7 + 24);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_251F26FC0((v52 > 1), v53 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v54;
    v55 = v7 + 16 * v53;
    *(v55 + 32) = v9;
    *(v55 + 40) = v10;
    v56 = *v108;
    if (!*v108)
    {
      goto LABEL_155;
    }

    v115 = v10;
    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v7 + 32);
          v59 = *(v7 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_84:
          if (v61)
          {
            goto LABEL_134;
          }

          v74 = (v7 + 16 * v54);
          v76 = *v74;
          v75 = v74[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_137;
          }

          v80 = (v7 + 32 + 16 * v57);
          v82 = *v80;
          v81 = v80[1];
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_141;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v84 = (v7 + 16 * v54);
        v86 = *v84;
        v85 = v84[1];
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_98:
        if (v79)
        {
          goto LABEL_136;
        }

        v87 = v7 + 16 * v57;
        v89 = *(v87 + 32);
        v88 = *(v87 + 40);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_139;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_105:
        v95 = v57 - 1;
        if (v57 - 1 >= v54)
        {
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
LABEL_141:
          __break(1u);
LABEL_142:
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
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*a3)
        {
          goto LABEL_152;
        }

        v96 = *(v7 + 32 + 16 * v95);
        v97 = *(v7 + 32 + 16 * v57 + 8);
        sub_251F27ED0((*a3 + 112 * v96), (*a3 + 112 * *(v7 + 32 + 16 * v57)), (*a3 + 112 * v97), v56);
        if (v4)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_251F284B0(v7);
        }

        if (v95 >= *(v7 + 16))
        {
          goto LABEL_131;
        }

        v98 = v7 + 16 * v95;
        *(v98 + 32) = v96;
        *(v98 + 40) = v97;
        v153 = v7;
        result = sub_251F28424(v57);
        v7 = v153;
        v54 = *(v153 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = v7 + 32 + 16 * v54;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_132;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_133;
      }

      v69 = (v7 + 16 * v54);
      v71 = *v69;
      v70 = v69[1];
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_135;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_138;
      }

      if (v73 >= v65)
      {
        v91 = (v7 + 32 + 16 * v57);
        v93 = *v91;
        v92 = v91[1];
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_142;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_84;
    }

LABEL_3:
    v6 = v115;
    v5 = a3[1];
    if (v115 >= v5)
    {
      goto LABEL_117;
    }
  }

  v116 = *a3;
  v39 = *a3 + 112 * v10 - 112;
  v105 = v9;
  v40 = v9 - v10;
  v109 = v38;
LABEL_47:
  v114 = v10;
  v110 = v40;
  v111 = v39;
  v41 = v40;
  while (1)
  {
    v42 = (v39 + 112);
    v134 = *(v39 + 128);
    v136 = v41;
    v43 = *(v39 + 136);
    v44 = *(v39 + 152);
    v130 = v44;
    v132 = *(v39 + 144);
    v122 = *(v39 + 168);
    v124 = *(v39 + 160);
    v46 = *(v39 + 16);
    v45 = *(v39 + 24);
    v126 = *(v39 + 40);
    v128 = *(v39 + 32);
    v118 = *(v39 + 56);
    v120 = *(v39 + 48);
    if (*(v39 + 112) == *v39 && *(v39 + 120) == *(v39 + 8) || (sub_251F322D4()) && (v134 == v46 && v43 == v45 || (sub_251F322D4()) && (v132 == v128 && v130 == v126 || (sub_251F322D4()) && v124 == v120 && v122 == v118 || (result = sub_251F322D4(), (result & 1) == 0))
    {
LABEL_46:
      v10 = v114 + 1;
      v39 = v111 + 112;
      v40 = v110 - 1;
      if (v114 + 1 != v109)
      {
        goto LABEL_47;
      }

      v10 = v109;
      v8 = 112;
      v9 = v105;
      goto LABEL_64;
    }

    if (!v116)
    {
      break;
    }

    v146 = *(v39 + 176);
    v148 = *(v39 + 192);
    v150 = *(v39 + 208);
    v138 = *v42;
    v140 = *(v39 + 128);
    v142 = *(v39 + 144);
    v144 = *(v39 + 160);
    v47 = *(v39 + 16);
    *v42 = *v39;
    *(v39 + 128) = v47;
    v48 = *(v39 + 32);
    v49 = *(v39 + 48);
    v50 = *(v39 + 64);
    v51 = *(v39 + 96);
    *(v39 + 192) = *(v39 + 80);
    *(v39 + 208) = v51;
    *(v39 + 64) = v146;
    *(v39 + 80) = v148;
    *(v39 + 96) = v150;
    *v39 = v138;
    *(v39 + 16) = v140;
    *(v39 + 32) = v142;
    *(v39 + 48) = v144;
    v39 -= 112;
    v42[3] = v49;
    v42[4] = v50;
    v42[2] = v48;
    v41 = v136 + 1;
    if (v136 == -1)
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

uint64_t sub_251F27ED0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[112 * v9] <= a4)
    {
      memmove(a4, __dst, 112 * v9);
    }

    v12 = &v4[112 * v9];
    if (v8 < 112 || v6 >= v5)
    {
      v31 = v7;
      goto LABEL_66;
    }

    v58 = v5;
    v39 = &v4[112 * v9];
    while (1)
    {
      v57 = v7;
      v13 = *(v6 + 2);
      v14 = *(v6 + 3);
      v53 = *(v6 + 5);
      v55 = *(v6 + 4);
      v45 = *(v6 + 7);
      v47 = *(v6 + 6);
      v15 = *v4;
      v16 = *(v4 + 1);
      v17 = v4;
      v18 = *(v4 + 2);
      v19 = *(v4 + 3);
      v49 = *(v17 + 5);
      __srca = *(v17 + 4);
      v43 = *(v17 + 6);
      v60 = v17;
      v41 = *(v17 + 7);
      if (*v6 == v15 && *(v6 + 1) == v16 || (sub_251F322D4()) && (v13 == v18 && v14 == v19 || (sub_251F322D4()))
      {
        v20 = v57;
        v21 = v58;
        if (v55 == __srca && v53 == v49 || (sub_251F322D4() & 1) != 0)
        {
          v4 = v60;
          if (v47 == v43 && v45 == v41 || (sub_251F322D4() & 1) == 0)
          {
LABEL_20:
            v22 = v4;
            v23 = v20 == v4;
            v4 += 112;
            if (v23)
            {
              goto LABEL_22;
            }

LABEL_21:
            memmove(v20, v22, 0x70uLL);
            goto LABEL_22;
          }
        }

        else
        {
          v4 = v60;
          if ((sub_251F322D4() & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v4 = v60;
        v20 = v57;
        v21 = v58;
        if ((sub_251F322D4() & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v22 = v6;
      v23 = v20 == v6;
      v6 += 112;
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 = v20 + 112;
      v12 = v39;
      if (v4 >= v39 || v6 >= v21)
      {
        v31 = v7;
        goto LABEL_66;
      }
    }
  }

  if (a4 != __src || &__src[112 * v11] <= a4)
  {
    memmove(a4, __src, 112 * v11);
  }

  v12 = &v4[112 * v11];
  if (v10 < 112 || v6 <= v7)
  {
    v31 = v6;
    goto LABEL_66;
  }

  v61 = v4;
  do
  {
    v24 = 0;
    v25 = v12;
    v35 = v6 - 112;
    v59 = v5;
    v36 = v12;
    while (1)
    {
      v26 = &v25[v24];
      __srcb = &v25[v24 - 112];
      v54 = *&v25[v24 - 96];
      v56 = *&v25[v24 - 88];
      v48 = *&v25[v24 - 72];
      v50 = *&v25[v24 - 80];
      v40 = *&v25[v24 - 56];
      v42 = *&v25[v24 - 64];
      v27 = *(v6 - 12);
      v28 = *(v6 - 11);
      v44 = *(v6 - 9);
      v46 = *(v6 - 10);
      v37 = *(v6 - 7);
      v38 = *(v6 - 8);
      if ((*__srcb != *(v6 - 14) || *&v25[v24 - 104] != *(v6 - 13)) && (sub_251F322D4() & 1) == 0 || (v54 != v27 || v56 != v28) && (sub_251F322D4() & 1) == 0)
      {
        v4 = v61;
        v29 = v59;
        if (sub_251F322D4())
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v29 = v59;
      if (v50 == v46 && v48 == v44)
      {
        break;
      }

      if (sub_251F322D4())
      {
        break;
      }

      v4 = v61;
      if (sub_251F322D4())
      {
        goto LABEL_57;
      }

LABEL_55:
      if (&v29[v24] != v26)
      {
        memmove(&v29[v24 - 112], __srcb, 0x70uLL);
      }

      v24 -= 112;
      v25 = v36;
      v12 = &v36[v24];
      if (&v36[v24] <= v4)
      {
        v31 = v6;
        goto LABEL_66;
      }
    }

    v4 = v61;
    if (v42 == v38 && v40 == v37 || (sub_251F322D4() & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_57:
    v30 = &v29[v24];
    v5 = &v29[v24 - 112];
    v31 = v6 - 112;
    if (v30 != v6)
    {
      memmove(v5, v35, 0x70uLL);
    }

    v12 = &v36[v24];
    if (&v36[v24] <= v4)
    {
      break;
    }

    v6 -= 112;
  }

  while (v35 > v7);
  v12 = &v36[v24];
LABEL_66:
  v32 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v33 = (v32 >> 5) + (v32 >> 63);
  if (v31 != v4 || v31 >= &v4[112 * v33])
  {
    memmove(v31, v4, 112 * v33);
  }

  return 1;
}

uint64_t sub_251F28424(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251F284B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_251F284C4(uint64_t *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v5 = *a1;
    if ((sub_251F322D4() & 1) == 0)
    {
      return sub_251F322D4() & 1;
    }
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = a2[2];
    v10 = a2[3];
    if ((sub_251F322D4() & 1) == 0)
    {
      return sub_251F322D4() & 1;
    }
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a2[4];
    v14 = a2[5];
    if ((sub_251F322D4() & 1) == 0)
    {
      return sub_251F322D4() & 1;
    }
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 0;
  }

  else
  {
    return sub_251F322D4() & 1;
  }
}

size_t sub_251F285EC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251F28B10(0, &qword_27F4C0EE8, type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_251F28820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_251F28868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251F288D8()
{
  result = qword_27F4C0EC8;
  if (!qword_27F4C0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EC8);
  }

  return result;
}

uint64_t sub_251F2892C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_251F322D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_251F322D4() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_251F322D4() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  if (a1[12] == a2[12] && a1[13] == a2[13])
  {
    return 1;
  }

  return sub_251F322D4();
}

void sub_251F28A68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251F322C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251F28AB8()
{
  if (!qword_27F4C0EE0)
  {
    v0 = sub_251F32174();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C0EE0);
    }
  }
}

void sub_251F28B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *HealthTopicStore.__allocating_init(healthStore:)(void *a1)
{
  swift_allocObject();
  v2 = sub_251F305E0(a1);

  return v2;
}

void *HealthTopicStore.init(healthStore:)(void *a1)
{
  v2 = sub_251F305E0(a1);

  return v2;
}

void HealthTopicStore.fetchResponse<A>(for:handler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v49 = a2;
  v50 = a3;
  v46 = *v7;
  v12 = sub_251F31F74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251F32054();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = a4;
  v54[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  v22 = *(*(a4 - 8) + 16);
  v52 = a1;
  v22(boxed_opaque_existential_1, a1, a4);
  sub_251F31F54();
  sub_251F32034();
  v23 = *(v13 + 16);
  v51 = a6;
  v23(v16, a6, v12);

  v24 = sub_251F32044();
  v25 = sub_251F32194();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = a4;
    v27 = v26;
    v44 = swift_slowAlloc();
    v54[0] = v44;
    *v27 = 136446466;
    v53 = v7;

    v28 = sub_251F32104();
    v30 = sub_251F2F100(v28, v29, v54);
    v46 = a5;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0]);
    v32 = sub_251F322B4();
    v34 = v33;
    (*(v13 + 8))(v16, v12);
    v35 = sub_251F2F100(v32, v34, v54);
    a5 = v46;

    *(v27 + 14) = v35;
    _os_log_impl(&dword_251F20000, v24, v25, "%{public}s: start request for %{public}s", v27, 0x16u);
    v36 = v44;
    swift_arrayDestroy();
    MEMORY[0x253092F70](v36, -1, -1);
    v37 = v27;
    a4 = v45;
    MEMORY[0x253092F70](v37, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v38 = (*(v47 + 8))(v20, v48);
  v39 = v7[4];
  MEMORY[0x28223BE20](v38);
  *(&v44 - 8) = a4;
  *(&v44 - 7) = a5;
  v41 = v51;
  v40 = v52;
  *(&v44 - 6) = v51;
  *(&v44 - 5) = v7;
  v43 = v49;
  v42 = v50;
  *(&v44 - 4) = v40;
  *(&v44 - 3) = v43;
  *(&v44 - 2) = v42;
  os_unfair_lock_lock(v39 + 10);
  sub_251F306E0(&v39[4]);
  os_unfair_lock_unlock(v39 + 10);
  sub_251F30708(v41, v40, a4, a5);
}

uint64_t sub_251F29024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a4;
  v27 = a8;
  v29 = a5;
  v30 = a6;
  v28 = a3;
  v31 = a1;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251F31F74();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  v22 = *(v15 + 16);
  v22(&v25 - v20, a2, v14);
  (*(v10 + 16))(v13, v26, a7);
  v22(v19, a2, v14);
  v32[3] = type metadata accessor for HealthTopicStore.ConcretePendingRequest();
  v32[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_251F29264(v28, v13, v19, v29, v30, a7, boxed_opaque_existential_1);

  return sub_251F2934C(v32, v21);
}

uint64_t sub_251F29264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v13 = type metadata accessor for HealthTopicStore.ConcretePendingRequest();
  (*(*(a6 - 8) + 32))(&a7[v13[9]], a2, a6);
  v14 = v13[10];
  v15 = sub_251F31F74();
  result = (*(*(v15 - 8) + 32))(&a7[v14], a3, v15);
  v17 = &a7[v13[11]];
  *v17 = a4;
  *(v17 + 1) = a5;
  return result;
}

uint64_t sub_251F2934C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_251F30F24(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_251F2FF08(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_251F31F74();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_251F30FAC(a1, &qword_27F4C0F00, &qword_27F4C0F08);
    sub_251F2F690(a2, v10);
    v8 = sub_251F31F74();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_251F30FAC(v10, &qword_27F4C0F00, &qword_27F4C0F08);
  }

  return result;
}

void *sub_251F29480(uint64_t a1, void *a2)
{
  v3 = v2;
  v73[1] = *v2;
  v76 = sub_251F31F74();
  v75 = *(v76 - 8);
  v6 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v76);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v73 - v10;
  v78 = sub_251F32054();
  v77 = *(v78 - 8);
  v12 = *(v77 + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v74 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v73 - v15;
  v17 = sub_251F32094();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = *(v3[3] + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (!result)
  {
    goto LABEL_14;
  }

  *v21 = [result clientQueue];
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = sub_251F320A4();
  result = (*(v18 + 8))(v21, v17);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v24 = v3[4];
    MEMORY[0x28223BE20](result);
    LOBYTE(v73[-2]) = 1;
    v73[-1] = a1;
    v25 = a2;
    os_unfair_lock_lock((v24 + 40));
    sub_251F31E08((v24 + 16), &v82);
    os_unfair_lock_unlock((v24 + 40));
    if (v83)
    {
      sub_251F30F24(&v82, v84);
      sub_251F32034();
      v26 = v75;
      v27 = v76;
      (*(v75 + 16))(v11, a1, v76);
      v28 = a2;

      v29 = sub_251F32044();
      v30 = sub_251F32184();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v82 = v74;
        *v31 = 136446722;
        v80 = v3;

        v32 = sub_251F32104();
        v34 = sub_251F2F100(v32, v33, &v82);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2082;
        sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0]);
        v35 = sub_251F322B4();
        v37 = v36;
        (*(v26 + 8))(v11, v27);
        v38 = sub_251F2F100(v35, v37, &v82);

        *(v31 + 14) = v38;
        *(v31 + 22) = 2082;
        ErrorValue = swift_getErrorValue();
        v40 = *(*(v79 - 8) + 64);
        MEMORY[0x28223BE20](ErrorValue);
        v42 = a2;
        (*(v43 + 16))(v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
        v44 = sub_251F32104();
        v46 = sub_251F2F100(v44, v45, &v82);

        *(v31 + 24) = v46;
        a2 = v42;
        _os_log_impl(&dword_251F20000, v29, v30, "%{public}s: error for token %{public}s: %{public}s", v31, 0x20u);
        v47 = v74;
        swift_arrayDestroy();
        MEMORY[0x253092F70](v47, -1, -1);
        MEMORY[0x253092F70](v31, -1, -1);
      }

      else
      {

        (*(v26 + 8))(v11, v27);
      }

      (*(v77 + 8))(v16, v78);
      v71 = v85;
      v72 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      sub_251F2C6D8(a2, v71, v72);

      return __swift_destroy_boxed_opaque_existential_1(v84);
    }

    else
    {
      sub_251F30FAC(&v82, &qword_27F4C0F00, &qword_27F4C0F08);
      v48 = v74;
      sub_251F32034();
      v49 = v75;
      v50 = v76;
      (*(v75 + 16))(v9, a1, v76);
      v51 = a2;

      v52 = sub_251F32044();
      v53 = sub_251F32194();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v73[0] = swift_slowAlloc();
        v84[0] = v73[0];
        *v54 = 136446722;
        *&v82 = v3;

        v55 = sub_251F32104();
        v57 = sub_251F2F100(v55, v56, v84);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2082;
        sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0]);
        v58 = sub_251F322B4();
        v60 = v59;
        (*(v49 + 8))(v9, v50);
        v61 = sub_251F2F100(v58, v60, v84);

        *(v54 + 14) = v61;
        *(v54 + 22) = 2082;
        v62 = swift_getErrorValue();
        v63 = *(*(v81 - 8) + 64);
        MEMORY[0x28223BE20](v62);
        v65 = a2;
        (*(v66 + 16))(v73 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
        v67 = sub_251F32104();
        v69 = sub_251F2F100(v67, v68, v84);

        *(v54 + 24) = v69;
        _os_log_impl(&dword_251F20000, v52, v53, "%{public}s: no pendingRequest for token %{public}s, dropping error: %{public}s", v54, 0x20u);
        v70 = v73[0];
        swift_arrayDestroy();
        MEMORY[0x253092F70](v70, -1, -1);
        MEMORY[0x253092F70](v54, -1, -1);

        return (*(v77 + 8))(v74, v78);
      }

      else
      {

        (*(v49 + 8))(v9, v50);
        return (*(v77 + 8))(v48, v78);
      }
    }
  }

  return result;
}

void sub_251F29E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_251F29EEC;
  v9[3] = &block_descriptor_95;
  v8 = _Block_copy(v9);

  [a1 remote:a2 executeWithRequest:a3 token:v8 with:?];
  _Block_release(v8);
}

void sub_251F29EEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_251F29F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = ObjectType;
    v20 = sub_251F31374;
    v21 = v11;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_251F2DA50;
    v19 = &block_descriptor_66;
    v12 = _Block_copy(&v16);
    v13 = v5;

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v20 = sub_251F31380;
    v21 = v14;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_251F2DAC0;
    v19 = &block_descriptor_72;
    v15 = _Block_copy(&v16);

    [v13 fetchProxyWithHandler:v12 errorHandler:v15];
    _Block_release(v15);
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HealthTopicStore.cancel(token:)(uint64_t a1)
{
  v3 = sub_251F31F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, v6, v3);

  HealthTopicStore.cancel(token:completion:)(a1, sub_251F30B78, v8);
}

uint64_t sub_251F2A25C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251F31F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_251F32054();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v17 = a1;
    sub_251F32034();
    (*(v7 + 16))(v10, a3, v6);
    v18 = a1;

    v19 = sub_251F32044();
    v20 = sub_251F32184();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = v11;
      v22 = v21;
      v40 = swift_slowAlloc();
      v43 = a2;
      v44 = v40;
      *v22 = 136446722;
      type metadata accessor for HealthTopicStore();
      v39 = v20;

      v23 = sub_251F32104();
      v25 = sub_251F2F100(v23, v24, &v44);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0]);
      v26 = sub_251F322B4();
      v28 = v27;
      (*(v7 + 8))(v10, v6);
      v29 = sub_251F2F100(v26, v28, &v44);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      v31 = *(*(v42 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v33 + 16))(&v38[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v34 = sub_251F32104();
      v36 = sub_251F2F100(v34, v35, &v44);

      *(v22 + 24) = v36;
      _os_log_impl(&dword_251F20000, v19, v39, "%{public}s: unable to cancel request for token %{public}s, error: %{public}s", v22, 0x20u);
      v37 = v40;
      swift_arrayDestroy();
      MEMORY[0x253092F70](v37, -1, -1);
      MEMORY[0x253092F70](v22, -1, -1);

      return (*(v12 + 8))(v16, v41);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
      return (*(v12 + 8))(v16, v11);
    }
  }

  return result;
}

void HealthTopicStore.cancel(token:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = *v4;
  v92 = sub_251F31F74();
  v97 = *(v92 - 8);
  v8 = *(v97 + 64);
  v9 = MEMORY[0x28223BE20](v92);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v81 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - v13;
  v15 = sub_251F32054();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v85 = v4[3];
  v22 = *(v85 + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (v22)
  {
    v102 = a2;
    v103 = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F29EEC;
    v101 = &block_descriptor;
    v23 = _Block_copy(aBlock);
    v24 = v22;

    v25 = [v24 clientQueueErrorHandlerWithCompletion_];
    _Block_release(v23);

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = v4[4];
    MEMORY[0x28223BE20](v26);
    *(&v81 - 16) = 1;
    v96 = a1;
    *(&v81 - 1) = a1;
    v93 = v25;
    _Block_copy(v25);
    os_unfair_lock_lock((v27 + 40));
    sub_251F30BD4((v27 + 16), aBlock);
    os_unfair_lock_unlock((v27 + 40));
    v28 = v101;
    sub_251F30FAC(aBlock, &qword_27F4C0F00, &qword_27F4C0F08);
    v29 = v97;
    if (v28)
    {
      v88 = 0;
      v84 = v19;
      v86 = v26;
      sub_251F32034();
      v30 = v92;
      v87 = *(v29 + 16);
      v87(v14, v96, v92);

      v31 = sub_251F32044();
      v32 = sub_251F32194();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        aBlock[0] = v82;
        *v33 = 136446466;
        v99 = v4;

        v34 = sub_251F32104();
        v36 = sub_251F2F100(v34, v35, aBlock);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2082;
        sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0]);
        v37 = sub_251F322B4();
        v39 = v38;
        v83 = *(v97 + 8);
        v83(v14, v30);
        v40 = sub_251F2F100(v37, v39, aBlock);

        *(v33 + 14) = v40;
        _os_log_impl(&dword_251F20000, v31, v32, "%{public}s: cancel request for %{public}s", v33, 0x16u);
        v41 = v82;
        swift_arrayDestroy();
        MEMORY[0x253092F70](v41, -1, -1);
        MEMORY[0x253092F70](v33, -1, -1);
      }

      else
      {

        v83 = *(v29 + 8);
        v83(v14, v30);
      }

      v43 = *(v94 + 8);
      v43(v21, v95);
      v44 = v30;
      v45 = v96;
      v46 = v87;
      v87(v90, v96, v30);
      v47 = objc_allocWithZone(sub_251F31FD4());
      v48 = v88;
      v49 = sub_251F31FE4();
      v50 = v91;
      if (v48)
      {
        v51 = v84;
        sub_251F32034();
        v46(v50, v45, v44);

        v52 = v48;
        v53 = sub_251F32044();
        v54 = sub_251F32184();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = v50;
          v56 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          aBlock[0] = v96;
          *v56 = 136446722;
          v99 = v4;

          v57 = sub_251F32104();
          v59 = sub_251F2F100(v57, v58, aBlock);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2082;
          sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0]);
          v60 = sub_251F322B4();
          v62 = v61;
          v83(v55, v44);
          v63 = sub_251F2F100(v60, v62, aBlock);

          *(v56 + 14) = v63;
          *(v56 + 22) = 2082;
          ErrorValue = swift_getErrorValue();
          v65 = *(*(v98 - 8) + 64);
          MEMORY[0x28223BE20](ErrorValue);
          (*(v67 + 16))(&v81 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
          v68 = sub_251F32104();
          v70 = sub_251F2F100(v68, v69, aBlock);

          *(v56 + 24) = v70;
          _os_log_impl(&dword_251F20000, v53, v54, "%{public}s: unable to securely encode %{public}s, error: %{public}s", v56, 0x20u);
          v71 = v96;
          swift_arrayDestroy();
          MEMORY[0x253092F70](v71, -1, -1);
          MEMORY[0x253092F70](v56, -1, -1);

          v72 = v84;
        }

        else
        {

          v83(v50, v44);
          v72 = v51;
        }

        v43(v72, v95);
        v78 = v48;
        v79 = sub_251F31E44();
        v80 = v93;
        (v93)[2](v93, v79);

        _Block_release(v80);
      }

      else
      {
        v73 = v49;
        _Block_release(v93);
        v74 = swift_allocObject();
        v74[2] = v73;
        v74[3] = sub_251F30BCC;
        v75 = v86;
        v74[4] = v86;
        v76 = swift_allocObject();
        *(v76 + 16) = sub_251F30BCC;
        *(v76 + 24) = v75;
        swift_retain_n();
        v77 = v73;
        sub_251F29F58(sub_251F30C34, v74, sub_251F30C40, v76);
      }
    }

    else
    {
      v42 = v93;
      v93[2](v93, 0);

      _Block_release(v42);
    }
  }

  else
  {
    __break(1u);
    _Block_release(v93);
    __break(1u);
  }
}

void sub_251F2B0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a3;
  v7[5] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_251F29EEC;
  v7[3] = &block_descriptor_75;
  v6 = _Block_copy(v7);

  [a1 remote:a2 cancelWithToken:v6 with:?];
  _Block_release(v6);
}

BOOL HealthTopicStore.hasPendingRequest(for:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  sub_251F31E08((v1 + 16), v4);
  os_unfair_lock_unlock((v1 + 40));
  v2 = v5 != 0;
  sub_251F30FAC(v4, &qword_27F4C0F00, &qword_27F4C0F08);
  return v2;
}

uint64_t (*HealthTopicStore.reconnectionHandler.getter())()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_251F30CA0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_251F30C68(v2);
  os_unfair_lock_unlock((v1 + 40));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_251F30C78;
}

uint64_t sub_251F2B2D8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = HealthTopicStore.reconnectionHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_251F31E20;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_251F2B348(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    a1[2] = v4;
    a1[3] = v3;
    v5 = sub_251F31DDC;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*a2 + 32);
  MEMORY[0x28223BE20](a1);
  sub_251F30C68(v4);
  os_unfair_lock_lock(v6 + 10);
  sub_251F31D94(&v6[4]);
  os_unfair_lock_unlock(v6 + 10);
  return sub_251F30CE0(v5);
}

uint64_t HealthTopicStore.reconnectionHandler.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3 + 10);
  sub_251F30CC8(&v3[4]);
  os_unfair_lock_unlock(v3 + 10);
  return sub_251F30CE0(a1);
}

uint64_t (*HealthTopicStore.reconnectionHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_251F31E20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_251F30C68(v4);
  os_unfair_lock_unlock((v3 + 40));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_251F31DDC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_251F2B584;
}

uint64_t sub_251F2B584(uint64_t *a1, char a2)
{
  v2 = *a1;
  v5 = a1[1];
  v3 = a1[2];
  if (a2)
  {
    sub_251F30C68(v2);
    os_unfair_lock_lock(v3 + 10);
    sub_251F31D94(&v3[4]);
    os_unfair_lock_unlock(v3 + 10);
    sub_251F30CE0(v2);
  }

  else
  {
    os_unfair_lock_lock(v3 + 10);
    sub_251F31D94(&v3[4]);
    os_unfair_lock_unlock(v3 + 10);
  }

  return sub_251F30CE0(v2);
}

void *sub_251F2B648(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v58 = a1;
  v56 = *v3;
  v7 = sub_251F32054();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v54 - v11;
  v12 = sub_251F31F74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v54 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v19 = sub_251F32094();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = *(v4[3] + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (!result)
  {
    goto LABEL_12;
  }

  *v23 = [result clientQueue];
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = sub_251F320A4();
  result = (*(v20 + 8))(v23, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v26 = sub_251F31FC4();
  v27 = v4[4];
  MEMORY[0x28223BE20](v26);
  *(&v54 - 16) = a2 & 1;
  *(&v54 - 1) = v18;
  os_unfair_lock_lock((v27 + 40));
  sub_251F31E08((v27 + 16), &v62);
  os_unfair_lock_unlock((v27 + 40));
  v28 = *(v13 + 8);
  v28(v18, v12);
  if (v63)
  {
    sub_251F30F24(&v62, v64);
    v29 = v57;
    sub_251F32034();

    v30 = a3;
    v31 = sub_251F32044();
    v32 = sub_251F32194();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v62 = v55;
      *v33 = 136446466;
      v61 = v4;

      v34 = sub_251F32104();
      v36 = sub_251F2F100(v34, v35, &v62);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      v37 = v54;
      sub_251F31FC4();
      sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0]);
      v38 = sub_251F322B4();
      v40 = v39;
      v28(v37, v12);
      v41 = sub_251F2F100(v38, v40, &v62);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_251F20000, v31, v32, "%{public}s: deliver reponse for %{public}s", v33, 0x16u);
      v42 = v55;
      swift_arrayDestroy();
      MEMORY[0x253092F70](v42, -1, -1);
      MEMORY[0x253092F70](v33, -1, -1);
    }

    (*(v59 + 8))(v29, v60);
    v43 = v58;
    v44 = v65;
    v45 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    sub_251F2BCB0(v43, v44, v45);
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    sub_251F30FAC(&v62, &qword_27F4C0F00, &qword_27F4C0F08);
    v46 = v55;
    sub_251F32034();

    v47 = sub_251F32044();
    v48 = sub_251F32194();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64[0] = v50;
      *v49 = 136446210;
      *&v62 = v4;

      v51 = sub_251F32104();
      v53 = sub_251F2F100(v51, v52, v64);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_251F20000, v47, v48, "%{public}s: no pendingRequest, dropping response", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x253092F70](v50, -1, -1);
      MEMORY[0x253092F70](v49, -1, -1);
    }

    return (*(v59 + 8))(v46, v60);
  }
}

uint64_t sub_251F2BCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = *(a2 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v36[6] = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = v36 - v8;
  v9 = sub_251F32054();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = (v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  v49 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_251F31060(255, &qword_27F4C0F98);
  v13 = sub_251F32324();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = v36 - v15;
  v16 = swift_checkMetadataState();
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v36 - v18;
  v20 = sub_251F31F74();
  v41 = *(v20 - 8);
  v42 = v20;
  v21 = *(v41 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(AssociatedTypeWitness - 8);
  v25 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = v36 - v26;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_251F31FB4();
  v28 = v49;
  sub_251F2E8F8(v27, v49, a3);
  v29 = (*(a3 + 48))(v28, a3);
  v47 = v30;
  v48 = v29;
  v31 = (*(a3 + 24))(v28, a3);
  (*(a3 + 40))(v28, a3);
  (*(a3 + 32))(v28, a3);
  v32 = v37;
  v33 = v43;
  (*(v37 + 16))(v43, v27, AssociatedTypeWitness);
  v34 = v46;
  swift_storeEnumTagMultiPayload();
  v48(v31, v24, v19, v33);

  (*(v45 + 8))(v33, v34);
  (*(v44 + 8))(v19, v16);
  (*(v41 + 8))(v24, v42);
  return (*(v32 + 8))(v27, AssociatedTypeWitness);
}

uint64_t sub_251F2C6D8(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_251F31060(255, &qword_27F4C0F98);
  v23 = sub_251F32324();
  v25 = *(v23 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v7 = (&v21 - v6);
  v24 = swift_checkMetadataState();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v21 - v10;
  v22 = sub_251F31F74();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(a3 + 48))(a2, a3);
  v16 = (*(a3 + 24))(a2, a3);
  (*(a3 + 40))(a2, a3);
  (*(a3 + 32))(a2, a3);
  v17 = v26;
  *v7 = v26;
  v18 = v23;
  swift_storeEnumTagMultiPayload();
  v19 = v17;
  v21(v16, v15, v11, v7);

  (*(v25 + 8))(v7, v18);
  (*(v8 + 8))(v11, v24);
  return (*(v12 + 8))(v15, v22);
}

double sub_251F2CA40@<D0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    if (*(v5 + 16))
    {
      v16 = sub_251F2F774(a3);
      if (v17)
      {
        sub_251F310DC(*(v5 + 56) + 40 * v16, a4);
        return result;
      }
    }

    goto LABEL_9;
  }

  v7 = sub_251F2F774(a3);
  if ((v8 & 1) == 0)
  {
LABEL_9:
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v9 = v7;
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  v18 = *a1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_251F30368();
    v12 = v18;
  }

  v13 = *(v12 + 48);
  v14 = sub_251F31F74();
  (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
  sub_251F30F24((*(v12 + 56) + 40 * v9), a4);
  sub_251F2FBE4(v9, v12);
  *a1 = v12;
  return result;
}

uint64_t sub_251F2CB60()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_251F32054();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[4];
  os_unfair_lock_lock((v8 + 40));
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_251F31E20;
  }

  else
  {
    v12 = 0;
  }

  sub_251F30C68(v9);
  os_unfair_lock_unlock((v8 + 40));
  if (v9)
  {
    v13 = sub_251F30C68(v12);
    (v12)(v13);
    sub_251F30CE0(v12);
    sub_251F30CE0(v12);
  }

  os_unfair_lock_lock((v8 + 40));
  v14 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 40));
  sub_251F32034();
  swift_bridgeObjectRetain_n();

  v15 = sub_251F32044();
  v16 = sub_251F32194();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v1;
    v37[0] = v18;
    *v17 = 136446466;

    v19 = sub_251F32104();
    v21 = sub_251F2F100(v19, v20, v37);
    v35 = v3;
    v22 = v21;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = *(v14 + 16);

    *(v17 + 14) = v23;

    _os_log_impl(&dword_251F20000, v15, v16, "%{public}s: re-run %ld pendingRequets after automatic proxy reconnection", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x253092F70](v18, -1, -1);
    MEMORY[0x253092F70](v17, -1, -1);

    result = (*(v4 + 8))(v7, v35);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    result = (*(v4 + 8))(v7, v3);
  }

  v25 = 0;
  v26 = 1 << *(v14 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v14 + 64);
  for (i = (v26 + 63) >> 6; v28; result = __swift_destroy_boxed_opaque_existential_1(v37))
  {
    v30 = v25;
LABEL_17:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    sub_251F310DC(*(v14 + 56) + 40 * (v31 | (v30 << 6)), v37);
    v32 = v38;
    v33 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_251F2CF1C(v1, v32, v33);
  }

  while (1)
  {
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v30 >= i)
    {
    }

    v28 = *(v14 + 64 + 8 * v30);
    ++v25;
    if (v28)
    {
      v25 = v30;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251F2CF1C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v17[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v17 - v8;
  v10 = sub_251F31F74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3[5](a2, a3);
  a3[4](a2, a3);
  a3[6](a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_251F30708(v14, v9, AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return (*(v11 + 8))(v14, v10);
}

void sub_251F2D140()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  sub_251F310BC((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

uint64_t sub_251F2D198(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_251F31F74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  (*(a4 + 40))(a3, a4);
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_251F2F774(v15), (v18 & 1) != 0))
  {
    sub_251F310DC(*(v16 + 56) + 40 * v17, &v21);
    sub_251F30FAC(&v21, &qword_27F4C0F00, &qword_27F4C0F08);
    (*(v9 + 16))(v13, v15, v8);
    *(&v22 + 1) = a3;
    v23 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
    sub_251F2934C(&v21, v13);
    return (*(v9 + 8))(v15, v8);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    (*(v9 + 8))(v15, v8);
    return sub_251F30FAC(&v21, &qword_27F4C0F00, &qword_27F4C0F08);
  }
}

uint64_t sub_251F2D408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_251F31F74();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251F2D47C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void sub_251F2D4B4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_251F31EB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *&v2[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider] = 0;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v24, sel_init);
  v11 = a1;
  sub_251F31EC4();
  sub_251F31EA4();
  v12 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v13 = sub_251F320E4();

  v14 = sub_251F31E94();
  v15 = [v12 initWithHealthStore:v11 taskIdentifier:v13 exportedObject:v10 taskUUID:v14];

  (*(v6 + 8))(v9, v5);
  v16 = OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider;
  v17 = *&v10[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider];
  *&v10[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider] = v15;
  v18 = v15;

  [v18 setShouldRetryOnInterruption_];
  v19 = *&v10[v16];
  if (v19)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_251F316D4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F2D7D8;
    aBlock[3] = &block_descriptor_101;
    v21 = _Block_copy(aBlock);
    v22 = v19;

    [v22 setAutomaticProxyReconnectionHandler_];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_251F2D764()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_weakLoadStrong())
    {
      sub_251F2CB60();
    }
  }
}

uint64_t sub_251F2D7D8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[3] = swift_getObjectType();
  v9[0] = a3;

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, v9);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_251F2D868(void *a1, void (*a2)(void))
{
  sub_251F313A8(a1, &v13);
  sub_251F31404();
  if (swift_dynamicCast())
  {
    a2(v12[1]);
    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_251F321F4();

    v13 = 91;
    v14 = 0xE100000000000000;
    v5 = sub_251F32374();
    MEMORY[0x253092810](v5);

    MEMORY[0x253092810](0xD00000000000001FLL, 0x8000000251F337D0);
    v6 = a1[3];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v7);
    (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = sub_251F32104();
    MEMORY[0x253092810](v11);

    result = sub_251F32224();
    __break(1u);
  }

  return result;
}

uint64_t sub_251F2DA50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_251F2DAC0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_251F2DB28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_251F31E44();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void *sub_251F2DB8C(void *a1, char a2, void *a3)
{
  v7 = sub_251F32064();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = sub_251F32084();
  v12 = *(v23[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v3[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider];
  if (result)
  {
    v17 = [result clientQueue];
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = a1;
    *(v18 + 32) = a2 & 1;
    *(v18 + 40) = a3;
    aBlock[4] = sub_251F30F84;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F2DF14;
    aBlock[3] = &block_descriptor_43;
    v19 = _Block_copy(aBlock);
    v20 = v3;
    v21 = a1;
    v22 = a3;
    sub_251F32074();
    v23[1] = MEMORY[0x277D84F90];
    sub_251F30E84(&qword_27F4C0F80, MEMORY[0x277D85198]);
    sub_251F30ECC();
    sub_251F30E84(&qword_27F4C0F90, sub_251F30ECC);
    sub_251F321C4();
    MEMORY[0x253092890](0, v15, v11, v19);
    _Block_release(v19);

    (*(v8 + 8))(v11, v7);
    (*(v12 + 8))(v15, v23[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251F2DE94(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_251F2B648(a2, a3 & 1, a4);
  }

  return result;
}

uint64_t sub_251F2DF14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_251F2DFDC(void *a1, void *a2)
{
  v5 = sub_251F32064();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = sub_251F32084();
  v10 = *(v21[0] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v2[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider];
  if (result)
  {
    v15 = [result clientQueue];
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_251F30E78;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F2DF14;
    aBlock[3] = &block_descriptor_36;
    v17 = _Block_copy(aBlock);
    v18 = v2;
    v19 = a1;
    v20 = a2;
    sub_251F32074();
    v21[1] = MEMORY[0x277D84F90];
    sub_251F30E84(&qword_27F4C0F80, MEMORY[0x277D85198]);
    sub_251F30ECC();
    sub_251F30E84(&qword_27F4C0F90, sub_251F30ECC);
    sub_251F321C4();
    MEMORY[0x253092890](0, v13, v9, v17);
    _Block_release(v17);

    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v13, v21[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_251F2E2DC(uint64_t a1, void *a2)
{
  v3 = sub_251F31F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251F32094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    result = *(result[3] + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
    if (result)
    {
      *v12 = [result clientQueue];
      (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
      v14 = sub_251F320A4();
      result = (*(v9 + 8))(v12, v8);
      if (v14)
      {
        sub_251F31FC4();
        sub_251F29480(v7, a2);
        (*(v4 + 8))(v7, v3);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_251F2E570(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

id sub_251F2E5F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthTopicStore.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t HealthTopicStore.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_251F2E6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  v14 = *v6;

  HealthTopicStore.fetchResponse<A>(for:handler:)(a1, sub_251F31304, v13, a4, a5, a6);
}

uint64_t sub_251F2E7AC(uint64_t a1)
{
  v3 = sub_251F31F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v6, v3);

  HealthTopicStore.cancel(token:completion:)(a1, sub_251F31E04, v9);
}

uint64_t sub_251F2E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = a3;
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for HealthTopicStore.ConcretePendingRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v41 - v11;
  v12 = sub_251F321B4();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v50 = *(AssociatedTypeWitness - 8);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  (*(v23 + 16))(&v41 - v22, a1, v20);
  sub_251F31060(0, &qword_27F4C0FA0);
  if (swift_dynamicCast())
  {
    v42 = v9;
    v43 = v8;
    v44 = a2;
    v45 = v3;
    sub_251F30F24(&v51, v54);
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v24 = swift_getAssociatedTypeWitness();
    v25 = sub_251F321B4();
    v41 = &v41;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = &v41 - v28;
    sub_251F31F84();
    v30 = *(v24 - 8);
    if ((*(v30 + 48))(v29, 1, v24) == 1)
    {
      (*(v26 + 8))(v29, v25);
      AssociatedConformanceWitness = 0;
      v51 = 0u;
      v52 = 0u;
    }

    else
    {
      *(&v52 + 1) = v24;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
      (*(v30 + 32))(boxed_opaque_existential_1, v29, v24);
    }

    sub_251F31008(0, &qword_27F4C0FB0, &qword_27F4C0FB8);
    v33 = swift_dynamicCast();
    v34 = v50;
    v35 = *(v50 + 56);
    v36 = v44;
    v38 = v42;
    v37 = v43;
    if (v33)
    {
      v35(v16, 0, 1, AssociatedTypeWitness);
      (*(v34 + 32))(v19, v16, AssociatedTypeWitness);
      v39 = v48;
      (*(v48 + 24))(v36, v48);
      v40 = v49;
      sub_251F2EF1C(v19, v36, v39, v49);
      swift_getWitnessTable();
      sub_251F2D140();

      (*(v38 + 8))(v40, v37);
      (*(v34 + 8))(v19, AssociatedTypeWitness);
    }

    else
    {
      v35(v16, 1, 1, AssociatedTypeWitness);
      (*(v46 + 8))(v16, v47);
    }

    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    AssociatedConformanceWitness = 0;
    v51 = 0u;
    v52 = 0u;
    return sub_251F30FAC(&v51, &qword_27F4C0FA8, &qword_27F4C0FA0);
  }
}

uint64_t sub_251F2EF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_251F31F74();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v22 - v15;
  v17 = (*(a3 + 24))(a2, a3);
  (*(v13 + 16))(v16, a1, AssociatedTypeWitness);
  (*(a3 + 40))(a2, a3);
  v18 = (*(a3 + 48))(a2, a3);
  v20 = v19;
  swift_getAssociatedConformanceWitness();
  return sub_251F29264(v17, v16, v11, v18, v20, AssociatedTypeWitness, a4);
}

uint64_t sub_251F2F100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251F2F1CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251F313A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_251F2F1CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251F2F2D8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251F32214();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_251F2F2D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_251F2F324(a1, a2);
  sub_251F2F454(&unk_28642E970);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251F2F324(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251F2F540(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251F32214();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251F32134();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251F2F540(v10, 0);
        result = sub_251F321E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251F2F454(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_251F2F5A8(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_251F2F540(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251F31468();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251F2F5A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F31468();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_251F2F690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_251F2F774(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_251F30368();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_251F31F74();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_251F30F24((*(v11 + 56) + 40 * v8), a2);
    sub_251F2FBE4(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_251F2F774(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_251F31F74();
  sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0]);
  v5 = sub_251F320B4();

  return sub_251F301A8(a1, v5);
}

uint64_t sub_251F2F80C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_251F31F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_251F31140();
  v42 = a2;
  result = sub_251F32244();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_251F30F24((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_251F310DC(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0]);
      result = sub_251F320B4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_251F30F24(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_251F2FBE4(int64_t a1, uint64_t a2)
{
  v45 = sub_251F31F74();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_251F321D4();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0]);
      v26 = sub_251F320B4();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_251F2FF08(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_251F31F74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_251F2F774(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_251F30368();
      goto LABEL_7;
    }

    sub_251F2F80C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_251F2F774(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_251F300E4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_251F322E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_251F30F24(a1, v22);
}

uint64_t sub_251F300E4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_251F31F74();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_251F30F24(a3, a4[7] + 40 * a1);
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

unint64_t sub_251F301A8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_251F31F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_251F30E84(&qword_27F4C0FD0, MEMORY[0x277D125D0]);
      v16 = sub_251F320D4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_251F30368()
{
  v1 = v0;
  v30 = sub_251F31F74();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F31140();
  v4 = *v0;
  v5 = sub_251F32234();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_251F310DC(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_251F30F24(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
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

        v1 = v26;
        v6 = v31;
        goto LABEL_21;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_251F305E0(void *a1)
{
  v2 = v1;
  v2[2] = a1;
  v4 = objc_allocWithZone(type metadata accessor for HealthTopicStore.HealthTopicStoreProxy());
  sub_251F2D4B4(a1);
  v2[3] = v5;
  sub_251F3163C();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  v7 = MEMORY[0x277D84F98];
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = v7;
  v2[4] = v6;
  swift_weakAssign();
  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_251F30708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251F31F74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = *(v4 + 24);
  v17 = *(v11 + 16);
  v35 = a1;
  v33 = v17;
  v17(&v32 - v14, a1, v10);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  (*(v11 + 32))(v19 + v18, v15, v10);
  v32 = v16;
  v20 = *(v16 + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (v20)
  {
    aBlock[4] = sub_251F3157C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F29EEC;
    aBlock[3] = &block_descriptor_81;
    v21 = _Block_copy(aBlock);

    v22 = v20;

    v23 = [v22 clientQueueErrorHandlerWithCompletion_];

    _Block_release(v21);

    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_251F31F94();
    (*(v6 + 16))(v9, v36, v37);
    _Block_copy(v23);
    v25 = sub_251F31FA4();
    v33(v34, v35, v10);
    v26 = objc_allocWithZone(sub_251F31FD4());
    v27 = sub_251F31FE4();
    _Block_release(v23);
    v28 = swift_allocObject();
    v28[2] = v25;
    v28[3] = v27;
    v28[4] = sub_251F31E24;
    v28[5] = v24;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_251F31E24;
    *(v29 + 24) = v24;
    swift_retain_n();
    v30 = v27;
    v31 = v25;
    sub_251F29F58(sub_251F31630, v28, sub_251F31E00, v29);
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251F30B94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251F30BF4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251F30C40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_251F30C68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251F30C78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_251F30CA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_251F30CE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_251F30D98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_251F30DE0(uint64_t result, int a2, int a3)
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

uint64_t sub_251F30E30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251F30E84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251F30ECC()
{
  if (!qword_27F4C0F88)
  {
    sub_251F32064();
    v0 = sub_251F32164();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C0F88);
    }
  }
}

uint64_t sub_251F30F24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_251F30F3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F30FAC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_251F31008(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251F31008(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_251F31060(255, a3);
    v4 = sub_251F321B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251F31060(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251F310DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251F31140()
{
  if (!qword_27F4C0FC0)
  {
    sub_251F31F74();
    sub_251F31060(255, &qword_27F4C0F08);
    sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0]);
    v0 = sub_251F32254();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C0FC0);
    }
  }
}

uint64_t sub_251F311FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_251F30C68(v4);
  result = sub_251F30CE0(v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251F31258(void *a1)
{
  v3 = *(sub_251F31F74() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_251F2A25C(a1, v4, v5);
}

uint64_t sub_251F312CC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F31304(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_251F3133C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251F31374(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_251F2D868(a1, *(v1 + 16));
}

uint64_t sub_251F31380()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_251F313A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_251F31404()
{
  result = qword_27F4C0FD8;
  if (!qword_27F4C0FD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C0FD8);
  }

  return result;
}

void sub_251F31468()
{
  if (!qword_27F4C0FE0)
  {
    v0 = sub_251F322C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C0FE0);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_251F31F74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *sub_251F3157C(void *a1)
{
  v3 = *(sub_251F31F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  return sub_251F29480(v4, a1);
}

uint64_t sub_251F315E8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_251F3163C()
{
  if (!qword_27F4C0FE8[0])
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_251F32204();
    if (!v1)
    {
      atomic_store(v0, qword_27F4C0FE8);
    }
  }
}

uint64_t sub_251F3169C()
{
  MEMORY[0x253092FC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251F316DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_251F3171C(uint64_t a1)
{
  type metadata accessor for HealthTopicStore();
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = sub_251F31F74();
    if (v5 <= 0x3F)
    {
      result = sub_251F31CEC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251F317C8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_251F31F74();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 8) & ~v10)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (a1 + v10 + 8) & ~v10;
    if (v7 == v14)
    {
      v26 = *(v6 + 48);

      return v26(v25, v7, v5);
    }

    else
    {
      v27 = *(v9 + 48);
      v28 = (v25 + v11 + v12) & ~v12;

      return v27(v28);
    }
  }

  else
  {
    v24 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void sub_251F31A34(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_251F31F74();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v25 = (a1 + v12 + 8) & ~v12;
          if (v9 == v16)
          {
            v26 = *(v29 + 56);

            v26(v25, a2, v9, v7);
          }

          else
          {
            v27 = *(v11 + 56);
            v28 = (v25 + v13 + v14) & ~v14;

            v27(v28, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *a1 = v24;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

unint64_t sub_251F31CEC()
{
  result = qword_27F4C1070;
  if (!qword_27F4C1070)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4C1070);
  }

  return result;
}