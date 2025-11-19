void sub_1A3408048()
{
  v0 = sub_1A34CD0E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1EB0EDE78 = v1;
}

unint64_t sub_1A34080B8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAFE0);
    v2 = sub_1A34CDC60();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_1A33CAF7C(*(v1 + 48) + 40 * v15, v28);
    sub_1A31EE354(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_1A33CAF7C(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_1A3288FDC(v25, &qword_1EB0CAFE8);

      goto LABEL_22;
    }

    sub_1A31EE354(v26 + 8, v24);
    sub_1A3288FDC(v25, &qword_1EB0CAFE8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_1A3332110(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_1A3408398()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1A34C9650();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9640();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A3288FDC(v2, &qword_1EB0C71D8);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = sub_1A34C9630();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      if (v8 == sub_1A34CD110() && v11 == v12)
      {

        (*(v4 + 8))(v6, v3);

        return 2;
      }

      else
      {
        v14 = sub_1A34CDE30();

        (*(v4 + 8))(v6, v3);

        if (v14)
        {
          return 2;
        }

        else
        {
          v15 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v15 = v10 & 0xFFFFFFFFFFFFLL;
          }

          return v15 != 0;
        }
      }
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      return 0;
    }
  }
}

uint64_t sub_1A34085FC()
{
  v0 = objc_opt_self();
  v1 = sub_1A34CD0E0();
  v2 = [v0 parseSocialProfileURL_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 username];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A34CD110();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v2 service];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A34CD110();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_1A34087B0(v5, v7, v10, v12);
  v15 = v14;

  if (v15)
  {
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {

      return v13;
    }
  }

  v17 = [v2 userIdentifier];
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  v13 = sub_1A34CD110();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    return 0;
  }

  return v13;
}

uint64_t sub_1A34087B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (!a2)
  {
    goto LABEL_7;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  sub_1A34CD110();
  sub_1A328A95C();
  v7 = sub_1A34CD900();

  if (v7)
  {
    goto LABEL_7;
  }

  v9 = sub_1A3407A08(v5, a2);
  if (!v10)
  {
    goto LABEL_14;
  }

  if (v9 != 64 || v10 != 0xE100000000000000)
  {
    v11 = sub_1A34CDE30();

    if (v11)
    {
      goto LABEL_7;
    }

LABEL_14:
    MEMORY[0x1A58EEA30](v5, a2);
    return 64;
  }

LABEL_7:

  return v5;
}

uint64_t sub_1A34088D8(uint64_t a1, char *a2)
{
  v53 = a1;
  v3 = sub_1A34C9860();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_1A34C9940();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  sub_1A34C9300();
  v21 = v13;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0CAEA0);
    sub_1A34C9810();
    v22 = 1;
  }

  else
  {
    v48 = a2;
    v50 = v14;
    v23 = *(v14 + 32);
    v23(v20, v12, v13);
    v52 = v13;
    sub_1A34C9880();
    v24 = *(v4 + 104);
    v47 = *MEMORY[0x1E6969868];
    v46 = v24;
    v24(v6);
    v25 = sub_1A34C9850();
    v28 = *(v4 + 8);
    v27 = v4 + 8;
    v26 = v28;
    v28(v6, v3);
    v29 = v9;
    v30 = v9;
    v31 = v52;
    v28(v30, v3);
    if (v25)
    {
      v44 = v27;
      v45 = v23;
      v32 = v51;
      sub_1A34C98E0();
      v33 = objc_opt_self();
      v34 = sub_1A34C98D0();
      LODWORD(v33) = [v33 isGregorianDerivedCalendar_];

      if (v33)
      {
        v31 = v52;
        (*(v50 + 8))(v20, v52);
        v35 = v32;
      }

      else
      {
        v36 = v3;
        v46(v29, v47, v3);
        v37 = v49;
        sub_1A34C9870();
        v26(v29, v36);
        v38 = *(v50 + 8);
        v31 = v52;
        v38(v32, v52);
        v38(v20, v31);
        v35 = v37;
      }

      v23 = v45;
      v45(v20, v35, v31);
    }

    v39 = objc_opt_self();
    v40 = sub_1A34C98D0();
    v41 = [v40 calendarIdentifier];

    v42 = [v39 localeForCalendarID_];
    sub_1A34C9800();

    a2 = v48;
    v23(v48, v20, v31);
    v22 = 0;
    v21 = v31;
    v14 = v50;
  }

  return (*(v14 + 56))(a2, v22, 1, v21);
}

uint64_t sub_1A3408D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a2;
  v145 = a1;
  v155[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v131 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v126 - v7;
  v8 = sub_1A34C9720();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v126 - v12;
  v151 = sub_1A34C9330();
  v146 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v128 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v126 - v15;
  v136 = sub_1A34C9860();
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v130 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v126 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v126 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v126 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE98);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v144 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v126 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v126 - v33;
  v35 = sub_1A34C9970();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v134 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v126 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v126 - v42;
  v44 = sub_1A34C9940();
  v152 = *(v44 - 8);
  v153 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v154 = &v126 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v126 - v48;
  v147 = v9;
  v148 = v8;
  v50 = *(v9 + 56);
  v142 = a3;
  v50(a3, 1, 1, v8, v47);
  sub_1A34C9900();
  sub_1A34C9950();
  v51 = *(v36 + 48);
  v52 = v51(v34, 1, v35);
  v140 = v49;
  if (v52 == 1)
  {
    sub_1A3288FDC(v34, &qword_1EB0CAE98);
  }

  else
  {
    (*(v36 + 32))(v43, v34, v35);
    (*(v36 + 16))(v40, v43, v35);
    sub_1A34C9920();
    (*(v36 + 8))(v43, v35);
  }

  sub_1A328D790(v150, v27, &qword_1EB0CAEA0);
  v54 = v152;
  v53 = v153;
  v55 = *(v152 + 48);
  v56 = v55(v27, 1, v153);
  v150 = v55;
  if (v56 == 1)
  {
    v57 = *MEMORY[0x1E6969868];
    v126 = v51;
    v58 = v133;
    v59 = *(v133 + 104);
    v127 = v35;
    v60 = v27;
    v61 = v40;
    v62 = v135;
    v63 = v136;
    v59(v135, v57, v136);
    sub_1A34C9870();
    v64 = v62;
    v40 = v61;
    v35 = v127;
    (*(v58 + 8))(v64, v63);
    v51 = v126;
    v65 = v55(v60, 1, v53);
    v66 = v149;
    if (v65 != 1)
    {
      sub_1A3288FDC(v60, &qword_1EB0CAEA0);
    }
  }

  else
  {
    (*(v54 + 32))(v154, v27, v53);
    v66 = v149;
  }

  v67 = v143;
  sub_1A34C9950();
  if (v51(v67, 1, v35) == 1)
  {
    sub_1A3288FDC(v67, &qword_1EB0CAE98);
  }

  else
  {
    v68 = v134;
    (*(v36 + 32))(v134, v67, v35);
    (*(v36 + 16))(v40, v68, v35);
    sub_1A34C9920();
    (*(v36 + 8))(v68, v35);
  }

  v69 = v146;
  v71 = v152;
  v70 = v153;
  v72 = v151;
  (*(v146 + 16))(v66, v145, v151);
  sub_1A34C9280();
  sub_1A34C92D0();
  sub_1A34C92E0();
  sub_1A34C9950();
  sub_1A34C9320();
  v73 = sub_1A34C9290();
  v74 = v150;
  if ((v75 & 1) == 0 && v73 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  v90 = v137;
  sub_1A34C9300();
  v91 = v74(v90, 1, v70);
  sub_1A3288FDC(v90, &qword_1EB0CAEA0);
  if (v91 == 1)
  {
LABEL_19:
    v99 = v131;
    sub_1A34C9270();
    v101 = v147;
    v100 = v148;
    if ((*(v147 + 48))(v99, 1, v148) == 1)
    {
      sub_1A3288FDC(v99, &qword_1EB0C63B0);
      v103 = v140;
      v102 = v141;
      sub_1A34C98F0();
      (*(v69 + 8))(v66, v72);
      v104 = *(v71 + 8);
      v104(v154, v70);
      v104(v103, v70);
      v105 = v142;
      sub_1A3288FDC(v142, &qword_1EB0C63B0);
      v106 = v102;
      v107 = v105;
      return sub_1A329D98C(v106, v107, &qword_1EB0C63B0);
    }

    (*(v101 + 32))(v132, v99, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAFF0);
    v108 = sub_1A34C9930();
    v109 = *(v108 - 8);
    v110 = v69;
    v111 = *(v109 + 72);
    v112 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_1A34E5190;
    v114 = v113 + v112;
    v115 = *(v109 + 104);
    v115(v114, *MEMORY[0x1E6969A48], v108);
    v115(v114 + v111, *MEMORY[0x1E6969A78], v108);
    v115(v114 + 2 * v111, *MEMORY[0x1E6969A68], v108);
    v115(v114 + 3 * v111, *MEMORY[0x1E6969A50], v108);
    v115(v114 + 4 * v111, *MEMORY[0x1E6969AC0], v108);
    sub_1A33BE74C(v113);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v116 = v128;
    v117 = v132;
    v118 = v154;
    sub_1A34C98A0();

    v88 = v141;
    sub_1A34C98F0();
    v119 = *(v110 + 8);
    v120 = v116;
    v121 = v151;
    v119(v120, v151);
    (*(v147 + 8))(v117, v148);
    v119(v149, v121);
    v122 = *(v71 + 8);
    v123 = v118;
    v124 = v153;
    v122(v123, v153);
    v122(v140, v124);
LABEL_22:
    v125 = v142;
    sub_1A3288FDC(v142, &qword_1EB0C63B0);
    v106 = v88;
    v107 = v125;
    return sub_1A329D98C(v106, v107, &qword_1EB0C63B0);
  }

  v92 = sub_1A34C9220();
  v93 = v129;
  sub_1A34C9300();
  v94 = v93;
  result = v74(v93, 1, v70);
  if (result != 1)
  {
    v96 = objc_opt_self();
    v97 = v94;
    v98 = sub_1A34C98D0();
    (*(v71 + 8))(v97, v70);
    LODWORD(v96) = [v96 isYearlessDate:v92 forCalendar:v98];

    v74 = v150;
    if (v96)
    {
LABEL_13:
      v76 = v138;
      sub_1A34C9300();
      v77 = v74(v76, 1, v70);
      sub_1A3288FDC(v76, &qword_1EB0CAEA0);
      v78 = v140;
      if (v77 == 1)
      {
        v79 = v130;
        (*(v71 + 16))(v130, v140, v70);
        (*(v71 + 56))(v79, 0, 1, v70);
        sub_1A34C9310();
      }

      v155[0] = 0;
      v80 = v154;
      v81 = sub_1A34C98D0();
      v82 = [objc_opt_self() distantFuture];
      v83 = v139;
      sub_1A34C9700();

      v84 = sub_1A34C96F0();
      (*(v147 + 8))(v83, v148);
      [v81 getEra:v155 year:0 month:0 day:0 fromDate:v84];

      sub_1A34C9260();
      v85 = objc_opt_self();
      v86 = sub_1A34C9220();
      v87 = sub_1A34C98D0();
      [v85 setYearlessYear:v86 forCalendar:v87];

      v88 = v141;
      sub_1A34C98F0();
      (*(v69 + 8))(v66, v151);
      v89 = *(v71 + 8);
      v89(v80, v70);
      v89(v78, v70);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_1A3409D18(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 56) + 8 * a2);
    *result = v5;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1A3409D90(void *a1)
{
  v38 = sub_1A34C9120();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() stringFromPostalAddress:a1 style:0];
  v6 = sub_1A34CD110();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v28 = [a1 dictionaryRepresentation];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1A34CCF90();

      v31 = sub_1A34080B8(v30);

      if (v31)
      {

        v41 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAFD0);
        sub_1A340BCD4();
        sub_1A328A95C();
        v6 = sub_1A34CD2D0();
        v8 = v32;
      }
    }
  }

  v41 = v6;
  v42 = v8;
  v36 = objc_opt_self();
  v10 = [v36 newlineCharacterSet];
  sub_1A34C9110();

  v35 = sub_1A328A95C();
  v11 = sub_1A34CD8C0();
  v12 = v2 + 8;
  v13 = *(v2 + 8);
  v37 = v12;
  v13(v4, v38);

  v41 = 0;
  v42 = 0xE000000000000000;
  v15 = *(v11 + 16);
  if (v15)
  {
    v34 = 0;
    v16 = 0;
    v17 = -v15;
    v33 = v11 + 40;
    do
    {
      v18 = (v33 + 16 * v16++);
      while (1)
      {
        if ((v16 - 1) >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v20 = *(v18 - 1);
        v19 = *v18;
        v39 = v20;
        v40 = v19;

        v21 = [v36 whitespaceCharacterSet];
        sub_1A34C9110();

        v22 = sub_1A34CD8D0();
        v24 = v23;
        v13(v4, v38);

        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          break;
        }

        ++v16;
        v18 += 2;
        if (v17 + v16 == 1)
        {
          goto LABEL_17;
        }
      }

      v26 = 10;
      if (v34)
      {
        v27 = 0xE100000000000000;
      }

      else
      {
        v26 = 0;
        v27 = 0xE000000000000000;
      }

      v39 = v26;
      v40 = v27;

      MEMORY[0x1A58EEA30](v20, v19);

      MEMORY[0x1A58EEA20](v39, v40);

      v34 = 1;
    }

    while (v17 + v16);
  }

LABEL_17:

  return v41;
}

id sub_1A340A14C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE98);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1A34C9970();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v7 setTimeStyle_];
  [v7 setDateStyle_];
  sub_1A34C9950();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A3288FDC(v2, &qword_1EB0CAE98);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = sub_1A34C9960();
    [v7 setTimeZone_];

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_1A340A330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v55 - v3;
  v5 = sub_1A34C9720();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9330();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v23 = sub_1A34C9840();
  v63 = *(v23 - 8);
  v64 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A34C92B0();
  if ((v26 & 1) == 0 && v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = sub_1A34C9240();
    if ((v28 & 1) == 0 && v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v59 = v6;
  v60 = v5;
  type metadata accessor for ContactCardDateHelper();
  v65 = sub_1A340A14C();
  sub_1A34088D8(v66, v22);
  v61 = v9;
  v62 = v8;
  (*(v9 + 16))(v11, a1, v8);
  v30 = sub_1A34C9290();
  if ((v31 & 1) == 0 && v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    sub_1A34C92A0();
    v32 = objc_opt_self();
    v33 = sub_1A34CD0E0();
    v34 = sub_1A34C97E0();
    v35 = [v32 dateFormatFromTemplate:v33 options:0 locale:v34];

    [v65 setDateFormat_];
LABEL_12:
    sub_1A3408D94(v11, v22, v4);
    v45 = v59;
    v44 = v60;
    if ((*(v59 + 48))(v4, 1, v60) == 1)
    {
      sub_1A3288FDC(v4, &qword_1EB0C63B0);

      v29 = 0;
    }

    else
    {
      v46 = v58;
      (*(v45 + 32))(v58, v4, v44);
      v47 = sub_1A34C97E0();
      [v65 setLocale_];

      v48 = v57;
      sub_1A328D790(v22, v57, &qword_1EB0CAEA0);
      v49 = sub_1A34C9940();
      v50 = *(v49 - 8);
      v51 = 0;
      if ((*(v50 + 48))(v48, 1, v49) != 1)
      {
        v51 = sub_1A34C98D0();
        (*(v50 + 8))(v48, v49);
      }

      v52 = v65;
      [v65 setCalendar_];

      v53 = sub_1A34C96F0();
      v54 = [v52 stringFromDate_];

      v29 = sub_1A34CD110();
      (*(v45 + 8))(v46, v44);
    }

    (*(v61 + 8))(v11, v62);
    sub_1A3288FDC(v22, &qword_1EB0CAEA0);
    (*(v63 + 8))(v66, v64);
    return v29;
  }

  sub_1A34C9300();
  v36 = sub_1A34C9940();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(v19, 1, v36);
  sub_1A3288FDC(v19, &qword_1EB0CAEA0);
  if (v39 == 1)
  {
    goto LABEL_12;
  }

  v56 = sub_1A34C9220();
  sub_1A34C9300();
  result = v38(v16, 1, v36);
  if (result != 1)
  {
    v41 = objc_opt_self();
    v42 = sub_1A34C98D0();
    (*(v37 + 8))(v16, v36);
    v43 = v56;
    LODWORD(v41) = [v41 isYearlessDate:v56 forCalendar:v42];

    if (!v41)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A340AA3C(void *a1)
{
  v2 = [a1 username];
  sub_1A34CD110();

  LOBYTE(v2) = sub_1A3408398();

  if ((v2 - 1) <= 1u)
  {
    v3 = [a1 username];
    sub_1A34CD110();

    v4 = sub_1A34085FC();
    v6 = v5;

    if (v6)
    {
      return v4;
    }
  }

  v7 = [a1 displayname];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v4 = sub_1A34CD110();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_8:
    v12 = [a1 username];
    v13 = sub_1A34CD110();
    v15 = v14;

    v16 = [a1 service];
    v17 = sub_1A34CD110();
    v19 = v18;

    v4 = sub_1A34087B0(v13, v15, v17, v19);
    v21 = v20;

    if (!v21)
    {
      v22 = [a1 userIdentifier];
      v4 = sub_1A34CD110();
    }
  }

  return v4;
}

uint64_t sub_1A340AC28(void *a1)
{
  v2 = [a1 service];
  v3 = sub_1A34CD110();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    sub_1A340BD38();
    swift_getKeyPath();
    v10 = sub_1A34CD610();
    v9 = [v10 keyPath];

    v8 = &selRef_localizedStringForKey_;
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1A34CD110();
    v9 = sub_1A34CD0E0();

    goto LABEL_8;
  }

  v7 = [a1 service];
  v8 = &selRef_localizedStringForService_;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = v7;
LABEL_8:
  v11 = [objc_opt_self() *v8];

  v12 = sub_1A34CD110();
  return v12;
}

uint64_t sub_1A340AD78(void *a1)
{
  v2 = [a1 username];
  sub_1A34CD110();

  LOBYTE(v2) = sub_1A3408398();

  if ((v2 - 1) > 1u || (v3 = [a1 username], sub_1A34CD110(), v3, v4 = sub_1A34085FC(), v6 = v5, , !v6))
  {
    v7 = [a1 username];
    v4 = sub_1A34CD110();
  }

  return v4;
}

uint64_t sub_1A340AE84(void *a1)
{
  v2 = [a1 service];
  v3 = sub_1A34CD110();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [a1 service];
    v8 = sub_1A34CD110();

    MEMORY[0x1A58EEA30](0xD000000000000010, 0x80000001A3511720);

    return v8;
  }

  else
  {
    sub_1A340BD38();
    swift_getKeyPath();
    v10 = sub_1A34CD610();
    v11 = [v10 keyPath];

    if (!v11)
    {
      sub_1A34CD110();
      v11 = sub_1A34CD0E0();
    }

    v12 = [objc_opt_self() localizedStringForKey_];

    v13 = sub_1A34CD110();
    return v13;
  }
}

uint64_t sub_1A340B008()
{
  v0 = sub_1A34C9860();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAEA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - v8;
  v10 = sub_1A34C9940();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9300();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A3288FDC(v9, &qword_1EB0CAEA0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1A34C9880();
    (*(v1 + 104))(v3, *MEMORY[0x1E6969868], v0);
    sub_1A340BD84(&qword_1EB0CB000, MEMORY[0x1E6969878]);
    v14 = sub_1A34CD040();
    v15 = *(v1 + 8);
    v15(v3, v0);
    v15(v6, v0);
    if ((v14 & 1) == 0)
    {
      v20 = objc_opt_self();
      v21 = sub_1A34C98D0();
      v22 = [v21 calendarIdentifier];

      v23 = sub_1A34CD110();
      v25 = v24;

      v29[0] = 0xD000000000000016;
      v29[1] = 0x80000001A3511760;
      MEMORY[0x1A58EEA30](v23, v25);

      v26 = sub_1A34CD0E0();

      v27 = [v20 localizedStringForKey_];

      v19 = sub_1A34CD110();
      (*(v11 + 8))(v13, v10);
      return v19;
    }

    (*(v11 + 8))(v13, v10);
  }

  v16 = objc_opt_self();
  v17 = sub_1A34CD0E0();
  v18 = [v16 localizedStringForKey_];

  v19 = sub_1A34CD110();
  return v19;
}

void *sub_1A340B43C()
{
  if (qword_1EB0C4A40 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0EDE78;
  if (qword_1EB0EDE78)
  {
    v1 = sub_1A34CD0E0();
    v2 = sub_1A34CD0E0();
    v3 = sub_1A34CD0E0();
    v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

    v0 = sub_1A34CD110();
  }

  return v0;
}

uint64_t sub_1A340B550(uint64_t a1)
{
  v2 = sub_1A34CD0C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CD940();
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1A58EF150](a1, KeyPath);

  if ((v7 & 1) == 0)
  {
    v8 = swift_getKeyPath();
    v9 = MEMORY[0x1A58EF150](a1, v8);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1A34CD060();
  v10 = sub_1A340BDD0(v5, MEMORY[0x1E69E7CC0]);
  (*(v3 + 8))(v5, v2);
  return v10;
}

id _s14ContactsUICore25ContactCardValueFormatterC07displayE8ForAlertySSSo010CNActivityI0CFZ_0(void *a1)
{
  v2 = sub_1A34CD0C0();
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v45 - v10;
  v47 = 0;
  v48 = 0xE000000000000000;
  v12 = [a1 sound];
  if (v12)
  {

    sub_1A34CD060();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A34DAA10;
    result = [objc_opt_self() sharedToneManager];
    if (!result)
    {
      __break(1u);
      goto LABEL_50;
    }

    v15 = result;
    v16 = [a1 sound];
    v17 = [v15 nameForToneIdentifier_];

    if (v17)
    {
      v18 = sub_1A34CD110();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    *(inited + 32) = v18;
    *(inited + 40) = v20;
    v21 = sub_1A340BDD0(v11, inited);
    v22 = v23;
    swift_setDeallocating();
    sub_1A3288FDC(inited + 32, &qword_1EB0C5A80);
    (*(v46 + 8))(v11, v2);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v24 = [a1 vibration];
  if (!v24)
  {
    v32 = 0;
    v33 = 0;
    goto LABEL_15;
  }

  sub_1A34CD060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C20);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1A34DAA10;
  result = [objc_opt_self() sharedVibrationManager];
  if (!result)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = [a1 vibration];
  v28 = [v26 nameOfVibrationWithIdentifier_];

  if (v28)
  {
    v29 = sub_1A34CD110();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *(v25 + 32) = v29;
  *(v25 + 40) = v31;
  v32 = sub_1A340BDD0(v7, v25);
  v33 = v34;
  swift_setDeallocating();
  sub_1A3288FDC(v25 + 32, &qword_1EB0C5A80);
  (*(v46 + 8))(v7, v2);
LABEL_15:
  if ([a1 ignoreMute])
  {
    sub_1A34CD060();
    v35 = sub_1A340BDD0(v4, MEMORY[0x1E69E7CC0]);
    v37 = v36;
    (*(v46 + 8))(v4, v2);
    if (!v22)
    {
      goto LABEL_24;
    }

LABEL_19:
    v38 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v38 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      MEMORY[0x1A58EEA30](v21, v22);
    }

    goto LABEL_24;
  }

  v35 = 0;
  v37 = 0;
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_24:
  if (v33)
  {
    v39 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v39 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v47 & 0xFFFFFFFFFFFFLL;
      if ((v48 & 0x2000000000000000) != 0)
      {
        v40 = HIBYTE(v48) & 0xF;
      }

      if (v40)
      {
        MEMORY[0x1A58EEA30](10, 0xE100000000000000);
      }

      MEMORY[0x1A58EEA30](v32, v33);
    }
  }

  if (v37)
  {
    v41 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v41 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v42 = v47 & 0xFFFFFFFFFFFFLL;
      if ((v48 & 0x2000000000000000) != 0)
      {
        v42 = HIBYTE(v48) & 0xF;
      }

      if (v42)
      {
        MEMORY[0x1A58EEA30](10, 0xE100000000000000);
      }

      MEMORY[0x1A58EEA30](v35, v37);
    }
  }

  result = v47;
  v43 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v43 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    sub_1A34CD060();
    v44 = sub_1A340BDD0(v4, MEMORY[0x1E69E7CC0]);
    (*(v46 + 8))(v4, v2);
    return v44;
  }

  return result;
}

unint64_t sub_1A340BCD4()
{
  result = qword_1EB0CAFD8;
  if (!qword_1EB0CAFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAFD8);
  }

  return result;
}

unint64_t sub_1A340BD38()
{
  result = qword_1EB0CAFF8;
  if (!qword_1EB0CAFF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0CAFF8);
  }

  return result;
}

uint64_t sub_1A340BD84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A340BDD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5798);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_1A34C9840();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1A34CD0C0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  type metadata accessor for ContactCardViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1A34C9810();
  v15 = sub_1A34CD150();
  v17 = v16;
  sub_1A34C9810();
  (*(v8 + 56))(v6, 0, 1, v7);
  v18 = *(a2 + 16);
  if (v18)
  {
    v31[0] = v15;
    v31[1] = v17;
    v32 = v6;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A32EBB34(0, v18, 0);
    v19 = v36;
    v20 = (a2 + 40);
    v21 = MEMORY[0x1E69E6158];
    v22 = (a2 + 40);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      if (v24)
      {
        v25 = *(v20 - 1);
        v26 = v23;
      }

      else
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      v36 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);

      if (v28 >= v27 >> 1)
      {
        sub_1A32EBB34((v27 > 1), v28 + 1, 1);
        v19 = v36;
      }

      v34 = v21;
      v35 = sub_1A329A290();
      *&v33 = v25;
      *(&v33 + 1) = v26;
      *(v19 + 16) = v28 + 1;
      sub_1A31EE568(&v33, v19 + 40 * v28 + 32);
      v20 = v22;
      --v18;
    }

    while (v18);
    v6 = v32;
  }

  v29 = sub_1A34CD120();

  sub_1A3332E08(v6);
  return v29;
}

uint64_t ContactCardGroup.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactCardGroup.items<A>(as:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB008);
  sub_1A340C2C4();
  v0 = sub_1A34CD2C0();

  return v0;
}

uint64_t sub_1A340C200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A31EE4BC(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DB8);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

unint64_t sub_1A340C2C4()
{
  result = qword_1EB0CB010;
  if (!qword_1EB0CB010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB010);
  }

  return result;
}

uint64_t sub_1A340C35C()
{
  if (qword_1EB0C4A48 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A340C3E4(double a1, double a2, double a3, double a4)
{
  v24.receiver = v4;
  v24.super_class = type metadata accessor for PosterPortalView();
  v9 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11 && ([v11 setHidesSourceLayer_], v10, v10 = objc_msgSend(v9, sel_layer), objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v12, sel_setMatchesTransform_, 1), v10, v10 = objc_msgSend(v9, sel_layer), objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v13, sel_setMatchesPosition_, 1), v10, v10 = objc_msgSend(v9, sel_layer), objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v14, sel_setMatchesOpacity_, 1), v10, v10 = objc_msgSend(v9, sel_layer), objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0) && (v16 = v15, v17 = sub_1A34CD0E0(), objc_msgSend(v16, sel_setName_, v17), v10, v17, v10 = objc_msgSend(v9, sel_layer), objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v18, sel_setGeometryFlipped_, 1), v10, v10 = objc_msgSend(v9, sel_layer), objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v19, sel_setNeedsDisplayOnBoundsChange_, 1), v10, v10 = objc_msgSend(v9, sel_layer), objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
  {
    v21 = v20;
    v22 = sub_1A340CA3C();
    [v21 setMeshTransform_];

    return v9;
  }

  else
  {

    result = sub_1A34CDC10();
    __break(1u);
  }

  return result;
}

id sub_1A340C900(id result, id a2)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v4[4];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v4[5];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v4[6];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v8))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v4[7];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!HIDWORD(v9))
  {
    v12 = 0;
    v13 = v2;
    v14 = v3;
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v11 = 0;
    return [a2 addFace_];
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_1A340C9E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterPortalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A340CA3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69793F8]) init];
  v1 = sub_1A34CD0E0();
  [v0 setDepthNormalization_];

  [v0 setSubdivisionSteps_];
  memset(v9, 0, 24);
  *&v9[24] = xmmword_1A34F4520;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4530;
  *&v9[16] = xmmword_1A34F4540;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4550;
  *&v9[16] = xmmword_1A34F4560;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4570;
  *&v9[16] = xmmword_1A34F4580;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4590;
  *&v9[16] = xmmword_1A34F45A0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F45B0;
  *&v9[16] = xmmword_1A34F45C0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F45D0;
  *&v9[16] = xmmword_1A34F45E0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F45F0;
  *&v9[16] = 0uLL;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = vdupq_n_s64(0x3FC5604189374BC7uLL);
  *&v9[16] = xmmword_1A34F4530;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4600;
  *&v9[16] = xmmword_1A34F4550;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4610;
  *&v9[16] = xmmword_1A34F4570;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4620;
  *&v9[16] = xmmword_1A34F4590;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4630;
  *&v9[16] = xmmword_1A34F45B0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4640;
  *&v9[16] = xmmword_1A34F45D0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4650;
  *&v9[16] = xmmword_1A34F4650;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4660;
  *&v9[16] = xmmword_1A34F4660;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = vdupq_n_s64(0x3FD54FDF3B645A1DuLL);
  *&v9[16] = *v9;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4670;
  *&v9[16] = xmmword_1A34F4670;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4680;
  *&v9[16] = xmmword_1A34F4680;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4690;
  *&v9[16] = xmmword_1A34F4690;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F46A0;
  *&v9[16] = xmmword_1A34F46A0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F46B0;
  *&v9[16] = xmmword_1A34F46B0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F46C0;
  *&v9[16] = xmmword_1A34F46C0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F46D0;
  *&v9[16] = xmmword_1A34F46D0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  __asm { FMOV            V0.2D, #0.5 }

  *v9 = _Q0;
  *&v9[16] = _Q0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F46E0;
  *&v9[16] = xmmword_1A34F46E0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F46F0;
  *&v9[16] = xmmword_1A34F46F0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4700;
  *&v9[16] = xmmword_1A34F4700;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4710;
  *&v9[16] = xmmword_1A34F4710;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4720;
  *&v9[16] = xmmword_1A34F4720;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4730;
  *&v9[16] = xmmword_1A34F4730;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = 0x3FE0000000000000;
  *&v9[8] = xmmword_1A34F46E0;
  *&v9[24] = xmmword_1A34F46E0;
  [v0 addVertex_];
  *v9 = vdupq_n_s64(0x3FE55810624DD2F2uLL);
  *&v9[16] = *v9;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4740;
  *&v9[16] = xmmword_1A34F4740;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4750;
  *&v9[16] = xmmword_1A34F4750;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4760;
  *&v9[16] = xmmword_1A34F4760;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4770;
  *&v9[16] = xmmword_1A34F4770;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4780;
  *&v9[16] = xmmword_1A34F4780;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = 0x3FE0000000000000;
  *&v9[8] = xmmword_1A34F46F0;
  *&v9[24] = xmmword_1A34F46F0;
  [v0 addVertex_];
  *v9 = xmmword_1A34F4790;
  *&v9[16] = xmmword_1A34F4790;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = vdupq_n_s64(0x3FEAA7EF9DB22D0EuLL);
  *&v9[16] = *v9;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F47A0;
  *&v9[16] = xmmword_1A34F47A0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34D9450;
  *&v9[16] = xmmword_1A34D9450;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F47B0;
  *&v9[16] = xmmword_1A34F47B0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F47C0;
  *&v9[16] = xmmword_1A34F47C0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = 0x3FE0000000000000;
  *&v9[8] = xmmword_1A34F4700;
  *&v9[24] = xmmword_1A34F4700;
  [v0 addVertex_];
  *v9 = xmmword_1A34F47D0;
  *&v9[16] = xmmword_1A34F47D0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = xmmword_1A34F47E0;
  *&v9[16] = xmmword_1A34F47E0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  __asm { FMOV            V0.2D, #1.0 }

  *v9 = _Q0;
  *&v9[16] = _Q0;
  *&v9[32] = 0x3FE0000000000000;
  [v0 addVertex_];
  *v9 = &unk_1F161B230;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B270;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B2B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B2F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B330;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B370;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B3B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B3F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B430;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B470;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B4B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B4F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B530;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B570;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B5B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B5F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B630;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B670;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B6B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B6F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B730;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B770;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B7B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B7F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B830;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B870;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B8B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B8F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B930;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B970;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B9B0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161B9F0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161BA30;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161BA70;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161BAB0;
  sub_1A340C900(v9, v0);
  *v9 = &unk_1F161BAF0;
  sub_1A340C900(v9, v0);
  return v0;
}

unint64_t sub_1A340D590()
{
  result = qword_1EB0CB018;
  if (!qword_1EB0CB018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0CB018);
  }

  return result;
}

uint64_t sub_1A340D5DC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A340D6E8()
{
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  return *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement);
}

uint64_t sub_1A340D790@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  v3 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__viewControllerToPresent;
  swift_beginAccess();
  return sub_1A328D790(v5 + v3, a1, &qword_1EB0CB030);
}

uint64_t sub_1A340D87C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__viewControllerToPresent;
  swift_beginAccess();
  sub_1A328D790(v1 + v6, v5, &qword_1EB0CB030);
  v7 = sub_1A341457C(v5, a1);
  sub_1A3288FDC(v5, &qword_1EB0CB030);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
    sub_1A34C9990();
  }

  else
  {
    swift_beginAccess();
    sub_1A341515C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1A3288FDC(a1, &qword_1EB0CB030);
}

id ContactCardActionsViewModel.__allocating_init(contact:actionsProvider:placement:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1A3414878(a1, a2, a3);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1A340DAC8()
{
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A340DB74@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A340DC28()
{
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C9990();
}

uint64_t sub_1A340DD44()
{
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();
}

uint64_t sub_1A340DDE8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1A340DEA0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
    sub_1A34C9990();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v6 = sub_1A3427434(v5, a1);

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

BOOL sub_1A340E01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A34C9750() & 1) != 0 && (sub_1A31EC194(0, &qword_1ED853EF0), (sub_1A34CD830()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A340E0A0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__viewControllerToPresent;
  swift_beginAccess();
  sub_1A341515C(a2, a1 + v4);
  return swift_endAccess();
}

id sub_1A340E10C()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel____lazy_storage___contactFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel____lazy_storage___contactFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel____lazy_storage___contactFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
    [v4 setStyle_];
    [v4 setFallbackStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1A340E1B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB088);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43 - v3;
  v56 = type metadata accessor for ActionSection(0);
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel___observationRegistrar;
  v60 = v1;
  v47 = sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  v48 = v7;
  sub_1A34C99A0();

  v8 = *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__supportedSections);
  v55 = *(v8 + 16);
  if (!v55)
  {
    v11 = MEMORY[0x1E69E7CC0];
    return sub_1A340E86C(v11);
  }

  v54 = v8 + 32;
  v46 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__actionsProvider;
  v52 = (v5 + 56);
  v49 = (v5 + 48);
  v50 = v5;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v44 = "_TABLE_SECTION_TITLE_ONE";
  v45 = "_supportedSections";
  v43 = "LE_SECTION_TITLE";
  v51 = v4;
  v53 = result;
  while (1)
  {
    if (v10 >= *(result + 16))
    {
      goto LABEL_65;
    }

    v59 = v11;
    v57 = *(v54 + v10);
    v12 = *(&off_1E76EAD58 + v57);
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_24:

    if (v15[2])
    {
      v27 = v57;
      v28 = v51;
      if (v57 == 7)
      {
        v32 = 0xD000000000000020;
        v33 = v45;
        goto LABEL_41;
      }

      if (v57 != 4)
      {
        v36 = 0;
        v30 = 0;
        if (v57)
        {
          goto LABEL_42;
        }

        v38 = 1;
LABEL_51:
        sub_1A34C8A90();
        v39 = v56;
        *(v28 + *(v56 + 20)) = v15;
        v40 = (v28 + *(v39 + 24));
        *v40 = v36;
        v40[1] = v30;
        *(v28 + *(v39 + 28)) = v38;
        (*v52)(v28, 0, 1);
        v11 = v59;
LABEL_52:
        sub_1A34153A8(v28, v58, type metadata accessor for ActionSection);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A3299558(0, v11[2] + 1, 1, v11);
        }

        v42 = v11[2];
        v41 = v11[3];
        if (v42 >= v41 >> 1)
        {
          v11 = sub_1A3299558(v41 > 1, v42 + 1, 1, v11);
        }

        v11[2] = v42 + 1;
        sub_1A34153A8(v58, v11 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42, type metadata accessor for ActionSection);
        goto LABEL_4;
      }

      swift_getKeyPath();
      v60 = v1;
      sub_1A34C99A0();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = [Strong parentGroups];
        swift_unknownObjectRelease();
        if (v30)
        {
          sub_1A31EC194(0, &unk_1EB0CB090);
          v31 = sub_1A34CD370();

          v30 = v31 >> 62 ? sub_1A34CD9B0() : *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v30)
          {
            if (v30 <= 1)
            {
              v32 = 0xD000000000000028;
            }

            else
            {
              v32 = 0xD000000000000029;
            }

            if (v30 <= 1)
            {
              v33 = v43;
            }

            else
            {
              v33 = v44;
            }

LABEL_41:
            v36 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v32, v33 | 0x8000000000000000);
            v30 = v37;

LABEL_42:
            if (v27 == 9)
            {
              v38 = 3;
              goto LABEL_51;
            }

            if (v27 == 1)
            {
              v38 = 4;
              goto LABEL_51;
            }

LABEL_50:
            v38 = 2;
            goto LABEL_51;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      v36 = 0;
      goto LABEL_50;
    }

    v28 = v51;
    v34 = v56;
    (*v52)(v51, 1, 1, v56);

    v35 = (*v49)(v28, 1, v34);
    v11 = v59;
    if (v35 != 1)
    {
      goto LABEL_52;
    }

    sub_1A3288FDC(v28, &qword_1EB0CB088);
LABEL_4:
    result = v53;
    if (++v10 == v55)
    {

      return sub_1A340E86C(v11);
    }
  }

  v14 = (v12 + 32);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = *v14++;
    result = sub_1A340EBCC(v16);
    v17 = *(result + 16);
    v18 = v15[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    v20 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v15[3] >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v15 = sub_1A3299580(isUniquelyReferenced_nonNull_native, v22, 1, v15);
      if (*(v20 + 16))
      {
LABEL_19:
        v23 = (v15[3] >> 1) - v15[2];
        result = type metadata accessor for ContactCardActionRow();
        if (v23 < v17)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v24 = v15[2];
          v25 = __OFADD__(v24, v17);
          v26 = v24 + v17;
          if (v25)
          {
            goto LABEL_64;
          }

          v15[2] = v26;
        }

        goto LABEL_9;
      }
    }

    if (v17)
    {
      goto LABEL_62;
    }

LABEL_9:
    if (!--v13)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1A340E86C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sections;

  v5 = sub_1A3426E64(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A340E9C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__supportedSections);
}

uint64_t sub_1A340EA7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__supportedSections;
  if (sub_1A342B7E0(*(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__supportedSections), a1))
  {
    *(v1 + v3) = a1;

    return sub_1A340E1B8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
    sub_1A34C9990();
  }
}

void *sub_1A340EBCC(uint64_t a1)
{
  v459 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v456 = &v423 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v451 = &v423 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v450 = &v423 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v431 = &v423 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v433 = &v423 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v428 = &v423 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v449 = &v423 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v453 = &v423 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v452 = &v423 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v438 = &v423 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v446 = &v423 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v447 = &v423 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v448 = &v423 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v437 = &v423 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v429 = &v423 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v461 = &v423 - v33;
  v458 = type metadata accessor for ContactCardActionRow();
  v462 = *(v458 - 8);
  MEMORY[0x1EEE9AC00](v458);
  v454 = &v423 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v455 = &v423 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v439 = &v423 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v436 = &v423 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v445 = &v423 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v430 = &v423 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v432 = &v423 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v427 = &v423 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v444 = &v423 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v423 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v423 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v435 = &v423 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v423 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v440 = &v423 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v443 = &v423 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v441 = &v423 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v442 = &v423 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v434 = &v423 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v74 = (&v423 - v73);
  MEMORY[0x1EEE9AC00](v75);
  v426 = &v423 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v425 = &v423 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v423 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v460 = &v423 - v83;
  swift_getKeyPath();
  v84 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel___observationRegistrar;
  *&v463 = v1;
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  v457 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v86 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v87 = Strong;
    v88 = v459;
    if (![Strong supportsAction_])
    {
LABEL_222:
      swift_unknownObjectRelease();
      return v86;
    }

    v424 = v87;
    v469 = v86;
    switch(v88)
    {
      case 0:
        v161 = v88;
        v162 = *(v457 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel_contact);
        if ([v162 isSuggested])
        {
          goto LABEL_222;
        }

        v163 = [v162 iOSLegacyIdentifier];
        if (v163 == *MEMORY[0x1E695C248] && ![v162 isSuggestedMe])
        {
          goto LABEL_222;
        }

        if ([v162 isCoreRecentsAccepted])
        {
          goto LABEL_222;
        }

        swift_getKeyPath();
        v164 = v457;
        *&v463 = v457;
        v165 = (v457 + v84);
        sub_1A34C99A0();

        v166 = *(v164 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sendMessageMenuItems);
        if (!v166)
        {
          goto LABEL_191;
        }

        if (v166 >> 62)
        {
          if (v166 >= 0)
          {
            v165 = (v166 & 0xFFFFFFFFFFFFFF8);
          }

          else
          {
            v165 = *(v164 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sendMessageMenuItems);
          }

          v167 = sub_1A34CD9B0();
          v144 = v458;
          v168 = v426;
          if (v167 == 1)
          {
            if (!sub_1A34CD9B0())
            {

              goto LABEL_234;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v144 = v458;
          v168 = v426;
          if (v167 == 1)
          {
LABEL_58:
            if ((v166 & 0xC000000000000001) != 0)
            {

              v170 = MEMORY[0x1A58EF310](0, v166);
            }

            else
            {
              if (!*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_253;
              }

              v169 = *(v166 + 32);

              v170 = v169;
            }

            v165 = v170;
            v171 = [v170 menuItems];
            if (!v171)
            {
              goto LABEL_185;
            }

            v172 = v171;
            sub_1A31EC194(0, &qword_1EB0C90F8);
            v173 = sub_1A34CD370();

            if (v173 >> 62)
            {
              goto LABEL_254;
            }

            for (i = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A34CD9B0())
            {

              if (i == 1)
              {
                break;
              }

LABEL_185:
              v353 = [v165 actionItem];

              if (v353)
              {

                goto LABEL_187;
              }

LABEL_234:
              v167 = 1;
LABEL_236:
              *&v463 = MEMORY[0x1E69E7CC0];
              v165 = &v463;
              sub_1A32EBBD4(0, v167 & ~(v167 >> 63), 0);
              if ((v167 & 0x8000000000000000) == 0)
              {
                v405 = 0;
                v406 = v463;
                do
                {
                  if ((v166 & 0xC000000000000001) != 0)
                  {
                    v407 = MEMORY[0x1A58EF310](v405, v166);
                  }

                  else
                  {
                    v407 = *(v166 + 8 * v405 + 32);
                  }

                  sub_1A3386720(v407, 0, v168);
                  *&v463 = v406;
                  v409 = *(v406 + 16);
                  v408 = *(v406 + 24);
                  if (v409 >= v408 >> 1)
                  {
                    sub_1A32EBBD4(v408 > 1, v409 + 1, 1);
                    v406 = v463;
                  }

                  ++v405;
                  *(v406 + 16) = v409 + 1;
                  v151 = (*(v462 + 80) + 32) & ~*(v462 + 80);
                  sub_1A34153A8(v168, v406 + v151 + *(v462 + 72) * v409, type metadata accessor for ContactCardActionRow);
                }

                while (v167 != v405);

                v144 = v458;
                goto LABEL_246;
              }

LABEL_253:
              __break(1u);
LABEL_254:
              ;
            }

LABEL_187:
            v88 = v161;
            goto LABEL_191;
          }
        }

        if (v167)
        {
          goto LABEL_236;
        }

        v151 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v406 = MEMORY[0x1E69E7CC0];
LABEL_246:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v372 = swift_allocObject();
        *(v372 + 16) = xmmword_1A34DAA10;
        v410 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350F8E0);
        v412 = v411;
        v413 = sub_1A34C93B0();
        v414 = v429;
        (*(*(v413 - 8) + 56))(v429, 1, 1, v413);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v415 = v425;
        swift_unknownObjectWeakInit();
        v416 = v144[23];
        *&v415[v416] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v415 = 0;
        v415[8] = 1;
        *(v415 + 2) = v410;
        *(v415 + 3) = v412;
        v344 = v415;
        sub_1A328D790(v414, &v415[v144[6]], &unk_1EB0C5B60);
        sub_1A328D790(&v463, &v415[v144[19]], &qword_1EB0CB0A0);
        v417 = &v415[v144[7]];
        *v417 = 0;
        *(v417 + 1) = 0;
        v418 = &v415[v144[8]];
        *v418 = 0;
        *(v418 + 1) = 0;
        v419 = &v415[v144[9]];
        *v419 = 0;
        *(v419 + 1) = 0;
        *&v415[v144[10]] = 0;
        v415[v144[11]] = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *&v415[v144[13]] = qword_1EB0ED2D0;
        v415[v144[14]] = 1;
        v420 = &v415[v144[17]];
        *v420 = 0;
        *(v420 + 1) = 0;
        *&v415[v144[16]] = 0;
        *&v415[v144[15]] = v406;
        v421 = &v415[v144[12]];
        *v421 = 0;
        *(v421 + 1) = 0;
        *&v415[v144[18]] = 0;
        v415[v144[20]] = 0;
        v422 = qword_1EB0C2370;
        sub_1A34C9010();
        if (v422 != -1)
        {
          swift_once();
        }

        v386 = sub_1A3335898(0x7FFFFFFFLL, off_1EB0C2378);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        v387 = v429;
        goto LABEL_210;
      case 2:
        swift_getKeyPath();
        v141 = v457;
        *&v463 = v457;
        sub_1A34C99A0();

        v142 = *(v141 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__addToFavoritesMenuItems);
        if (!v142)
        {
          goto LABEL_183;
        }

        if (v142 >> 62)
        {
          v143 = sub_1A34CD9B0();
          v144 = v458;
          if (v143)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v144 = v458;
          if (v143)
          {
LABEL_28:
            *&v463 = MEMORY[0x1E69E7CC0];
            v145 = v143 & ~(v143 >> 63);

            sub_1A32EBBD4(0, v145, 0);
            if (v143 < 0)
            {
              __break(1u);
              goto LABEL_225;
            }

            v146 = 0;
            v147 = v463;
            do
            {
              if ((v142 & 0xC000000000000001) != 0)
              {
                v148 = MEMORY[0x1A58EF310](v146, v142);
              }

              else
              {
                v148 = *(v142 + 8 * v146 + 32);
              }

              sub_1A3386720(v148, 2, v74);
              *&v463 = v147;
              v150 = *(v147 + 16);
              v149 = *(v147 + 24);
              if (v150 >= v149 >> 1)
              {
                sub_1A32EBBD4(v149 > 1, v150 + 1, 1);
                v147 = v463;
              }

              ++v146;
              *(v147 + 16) = v150 + 1;
              v151 = (*(v462 + 80) + 32) & ~*(v462 + 80);
              sub_1A34153A8(v74, v147 + v151 + *(v462 + 72) * v150, type metadata accessor for ContactCardActionRow);
            }

            while (v143 != v146);

            v144 = v458;
LABEL_205:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
            v372 = swift_allocObject();
            *(v372 + 16) = xmmword_1A34DAA10;
            v373 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001DLL, 0x80000001A350F970);
            v375 = v374;
            v376 = sub_1A34C93B0();
            v377 = v437;
            (*(*(v376 - 8) + 56))(v437, 1, 1, v376);
            v465 = 0;
            v463 = 0u;
            v464 = 0u;
            v378 = v434;
            swift_unknownObjectWeakInit();
            v379 = v144[23];
            *&v378[v379] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
            *v378 = 0;
            v378[8] = 1;
            *(v378 + 2) = v373;
            *(v378 + 3) = v375;
            v344 = v378;
            sub_1A328D790(v377, &v378[v144[6]], &unk_1EB0C5B60);
            sub_1A328D790(&v463, &v378[v144[19]], &qword_1EB0CB0A0);
            v380 = &v378[v144[7]];
            *v380 = 0;
            *(v380 + 1) = 0;
            v381 = &v378[v144[8]];
            *v381 = 0;
            *(v381 + 1) = 0;
            v382 = &v378[v144[9]];
            *v382 = 0;
            *(v382 + 1) = 0;
            *&v378[v144[10]] = 0;
            v378[v144[11]] = 0;
            if (qword_1EB0C1E20 != -1)
            {
              swift_once();
            }

            *&v378[v144[13]] = qword_1EB0ED2D0;
            v378[v144[14]] = 1;
            v383 = &v378[v144[17]];
            *v383 = 0;
            *(v383 + 1) = 0;
            *&v378[v144[16]] = 0;
            *&v378[v144[15]] = v147;
            v384 = &v378[v144[12]];
            *v384 = 0;
            *(v384 + 1) = 0;
            *&v378[v144[18]] = 0;
            v378[v144[20]] = 0;
            v385 = qword_1EB0C2370;
            sub_1A34C9010();
            if (v385 != -1)
            {
              swift_once();
            }

            v386 = sub_1A3335898(0x7FFFFFFFLL, off_1EB0C2378);
            sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
            v387 = v377;
LABEL_210:
            sub_1A3288FDC(v387, &unk_1EB0C5B60);
            *(v344 + v144[21]) = v386;
            v86 = v372;
            v106 = v372 + v151;
            goto LABEL_220;
          }
        }

        v151 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v147 = MEMORY[0x1E69E7CC0];
        goto LABEL_205;
      case 3:
        v212 = [v424 parentGroups];
        if (v212)
        {
          v61 = v212;
          sub_1A31EC194(0, &unk_1EB0CB090);
          v213 = sub_1A34CD370();
        }

        else
        {
          v213 = MEMORY[0x1E69E7CC0];
        }

        v295 = v458;
        if (v213 >> 62)
        {
          v296 = sub_1A34CD9B0();
          if (v296)
          {
            goto LABEL_144;
          }
        }

        else
        {
          v296 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v296)
          {
LABEL_144:
            v450 = v213;
            if (v296 < 1)
            {
              __break(1u);
LABEL_213:
              v145 = sub_1A34CD9B0();
              if (v145)
              {
LABEL_97:
                *&v463 = MEMORY[0x1E69E7CC0];
                v84 = v145 & ~(v145 >> 63);

                sub_1A32EBBD4(0, v84, 0);
                if (v145 < 0)
                {
                  goto LABEL_226;
                }

                v229 = 0;
                v230 = v463;
                do
                {
                  if ((v86 & 0xC000000000000001) != 0)
                  {
                    v231 = MEMORY[0x1A58EF310](v229, v86);
                  }

                  else
                  {
                    v231 = *(v86 + 8 * v229 + 32);
                  }

                  sub_1A3386720(v231, 11, v61);
                  *&v463 = v230;
                  v233 = *(v230 + 16);
                  v232 = *(v230 + 24);
                  if (v233 >= v232 >> 1)
                  {
                    sub_1A32EBBD4(v232 > 1, v233 + 1, 1);
                    v230 = v463;
                  }

                  ++v229;
                  *(v230 + 16) = v233 + 1;
                  v234 = (*(v462 + 80) + 32) & ~*(v462 + 80);
                  sub_1A34153A8(v61, v230 + v234 + *(v462 + 72) * v233, type metadata accessor for ContactCardActionRow);
                }

                while (v145 != v229);
              }

              else
              {
LABEL_214:
                v234 = (*(v462 + 80) + 32) & ~*(v462 + 80);
                v230 = MEMORY[0x1E69E7CC0];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
              v388 = swift_allocObject();
              *(v388 + 16) = xmmword_1A34DAA10;
              v389 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000018, 0x80000001A350F870);
              v391 = v390;
              v392 = sub_1A34C93B0();
              v393 = v438;
              (*(*(v392 - 8) + 56))(v438, 1, 1, v392);
              v465 = 0;
              v463 = 0u;
              v464 = 0u;
              v394 = v458;
              v395 = v435;
              swift_unknownObjectWeakInit();
              v396 = v394[23];
              *&v395[v396] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
              *v395 = 0;
              v395[8] = 1;
              *(v395 + 2) = v389;
              *(v395 + 3) = v391;
              v344 = v395;
              sub_1A328D790(v393, &v395[v394[6]], &unk_1EB0C5B60);
              sub_1A328D790(&v463, &v395[v394[19]], &qword_1EB0CB0A0);
              v397 = &v395[v394[7]];
              *v397 = 0;
              *(v397 + 1) = 0;
              v398 = &v395[v394[8]];
              *v398 = 0;
              *(v398 + 1) = 0;
              v399 = &v395[v394[9]];
              *v399 = 0;
              *(v399 + 1) = 0;
              *&v395[v394[10]] = 0;
              v395[v394[11]] = 0;
              if (qword_1EB0C1E20 != -1)
              {
                swift_once();
              }

              *&v395[v394[13]] = qword_1EB0ED2D0;
              v395[v394[14]] = 1;
              v400 = &v395[v394[17]];
              *v400 = 0;
              *(v400 + 1) = 0;
              *&v395[v394[16]] = 0;
              *&v395[v394[15]] = v230;
              v401 = &v395[v394[12]];
              *v401 = 0;
              *(v401 + 1) = 0;
              *&v395[v394[18]] = 0;
              v395[v394[20]] = 0;
              v402 = qword_1EB0C2370;
              sub_1A34C9010();
              if (v402 != -1)
              {
                swift_once();
              }

              v403 = sub_1A3335898(0x7FFFFFFFLL, off_1EB0C2378);
              sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
              sub_1A3288FDC(v393, &unk_1EB0C5B60);
              v395[v394[21]] = v403;
              v86 = v388;
              v106 = v388 + v234;
LABEL_220:
              v107 = v344;
LABEL_221:
              sub_1A34153A8(v107, v106, type metadata accessor for ContactCardActionRow);
              goto LABEL_222;
            }

            v297 = 0;
            v451 = v450 & 0xC000000000000001;
            v449 = (v450 + 32);
            v298 = MEMORY[0x1E69E7CC0];
            v452 = v296;
            do
            {
              v453 = v298;
              if (v451)
              {
                v299 = MEMORY[0x1A58EF310](v297, v450);
              }

              else
              {
                v299 = *&v449[8 * v297];
              }

              v300 = v299;
              v301 = [v299 name];
              v302 = sub_1A34CD110();
              v304 = v303;

              v305 = sub_1A34C93B0();
              v306 = v461;
              (*(*(v305 - 8) + 56))(v461, 1, 1, v305);
              v467 = &type metadata for AdaptiveButtonSecondaryForegroundMaterialProvider;
              v468 = sub_1A3415454();
              v307 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v308 = swift_allocObject();
              *(v308 + 16) = v307;
              *(v308 + 24) = v300;
              swift_unknownObjectWeakInit();
              v309 = v295[23];
              v310 = objc_allocWithZone(MEMORY[0x1E69DD250]);
              sub_1A34C9010();
              v311 = v300;
              v312 = v310;
              v295 = v458;
              *&v81[v309] = [v312 init];
              *v81 = 3;
              v81[8] = 0;
              *(v81 + 2) = v302;
              *(v81 + 3) = v304;
              sub_1A328D790(v306, &v81[v295[6]], &unk_1EB0C5B60);
              sub_1A328D790(v466, &v81[v295[19]], &qword_1EB0CB0A0);
              v313 = &v81[v295[7]];
              *v313 = 0;
              *(v313 + 1) = 0;
              v314 = &v81[v295[8]];
              *v314 = 0;
              *(v314 + 1) = 0;
              v315 = &v81[v295[9]];
              *v315 = 0;
              *(v315 + 1) = 0;
              *&v81[v295[10]] = 0;
              v81[v295[11]] = 0;
              if (qword_1EB0C1E10 != -1)
              {
                swift_once();
              }

              *&v81[v295[13]] = qword_1EB0ED2C0;
              v81[v295[14]] = 0;
              v316 = &v81[v295[17]];
              *v316 = 0;
              *(v316 + 1) = 0;
              *&v81[v295[16]] = 0;
              *&v81[v295[15]] = 0;
              v317 = &v81[v295[12]];
              *v317 = sub_1A34154A8;
              v317[1] = v308;
              *&v81[v295[18]] = 0;
              v318 = qword_1EB0C0158;
              sub_1A34C9010();
              if (v318 != -1)
              {
                swift_once();
              }

              v319 = off_1EB0C0160;
              v298 = v453;
              if (*(off_1EB0C0160 + 2) && (sub_1A34CDF20(), MEMORY[0x1A58EF750](3), v320 = sub_1A34CDF70(), v321 = -1 << *(v319 + 32), v322 = v320 & ~v321, ((*(v319 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v322) & 1) != 0))
              {
                v323 = ~v321;
                do
                {
                  v324 = *(v319[6] + 8 * v322) == 3;
                  if (*(v319[6] + 8 * v322) == 3)
                  {
                    break;
                  }

                  v322 = (v322 + 1) & v323;
                }

                while (((*(v319 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v322) & 1) != 0);
              }

              else
              {
                v324 = 0;
              }

              v81[v295[20]] = v324;
              if (qword_1EB0C2370 != -1)
              {
                swift_once();
              }

              v325 = off_1EB0C2378;
              if (*(off_1EB0C2378 + 2) && (sub_1A34CDF20(), MEMORY[0x1A58EF750](3), v326 = sub_1A34CDF70(), v327 = -1 << *(v325 + 32), v328 = v326 & ~v327, ((*(v325 + ((v328 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v328) & 1) != 0))
              {
                v329 = ~v327;
                do
                {
                  v330 = *(v325[6] + 8 * v328);
                  v331 = v330 == 3;
                  if (v330 == 3)
                  {
                    break;
                  }

                  v328 = (v328 + 1) & v329;
                }

                while (((*(v325 + ((v328 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v328) & 1) != 0);
              }

              else
              {
                v331 = 0;
              }

              sub_1A3288FDC(v461, &unk_1EB0C5B60);
              sub_1A3288FDC(v466, &qword_1EB0CB0A0);
              v81[v295[21]] = v331;
              sub_1A34153A8(v81, v460, type metadata accessor for ContactCardActionRow);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v298 = sub_1A3299580(0, *(v298 + 2) + 1, 1, v298);
              }

              v332 = v452;
              v334 = *(v298 + 2);
              v333 = *(v298 + 3);
              if (v334 >= v333 >> 1)
              {
                v298 = sub_1A3299580(v333 > 1, v334 + 1, 1, v298);
              }

              ++v297;

              *(v298 + 2) = v334 + 1;
              sub_1A34153A8(v460, &v298[((*(v462 + 80) + 32) & ~*(v462 + 80)) + *(v462 + 72) * v334], type metadata accessor for ContactCardActionRow);
            }

            while (v297 != v332);

            v469 = v298;
LABEL_190:
            v88 = v459;
LABEL_191:
            v354 = sub_1A34C93B0();
            v355 = v456;
            (*(*(v354 - 8) + 56))(v456, 1, 1, v354);
            v465 = 0;
            v463 = 0u;
            v464 = 0u;
            v356 = v458;
            v357 = v454;
            swift_unknownObjectWeakInit();
            v358 = v356[23];
            *(v357 + v358) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
            *v357 = v88;
            *(v357 + 8) = 0;
            *(v357 + 16) = sub_1A33877C4(v88, 0);
            *(v357 + 24) = v359;
            sub_1A328D790(v355, v357 + v356[6], &unk_1EB0C5B60);
            sub_1A328D790(&v463, v357 + v356[19], &qword_1EB0CB0A0);
            v360 = (v357 + v356[7]);
            *v360 = 0;
            v360[1] = 0;
            v361 = (v357 + v356[8]);
            *v361 = 0;
            v361[1] = 0;
            v362 = (v357 + v356[9]);
            *v362 = 0;
            v362[1] = 0;
            *(v357 + v356[10]) = 0;
            *(v357 + v356[11]) = 0;
            if (qword_1EB0C1E20 != -1)
            {
              swift_once();
            }

            *(v357 + v356[13]) = qword_1EB0ED2D0;
            *(v357 + v356[14]) = 1;
            v363 = (v357 + v356[17]);
            *v363 = 0;
            v363[1] = 0;
            *(v357 + v356[16]) = 0;
            *(v357 + v356[15]) = 0;
            v364 = (v357 + v356[12]);
            *v364 = 0;
            v364[1] = 0;
            *(v357 + v356[18]) = 0;
            v365 = qword_1EB0C0158;
            sub_1A34C9010();
            v366 = v455;
            if (v365 != -1)
            {
              swift_once();
            }

            *(v357 + v356[20]) = sub_1A3335898(v88, off_1EB0C0160);
            if (qword_1EB0C2370 != -1)
            {
              swift_once();
            }

            v367 = sub_1A3335898(v88, off_1EB0C2378);
            sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
            sub_1A3288FDC(v355, &unk_1EB0C5B60);
            *(v357 + v356[21]) = v367;
            sub_1A34153A8(v357, v366, type metadata accessor for ContactCardActionRow);
            v368 = v469;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v368 = sub_1A3299580(0, v368[2] + 1, 1, v368);
              v469 = v368;
            }

            v370 = v368[2];
            v369 = v368[3];
            if (v370 >= v369 >> 1)
            {
              v371 = sub_1A3299580(v369 > 1, v370 + 1, 1, v368);
              swift_unknownObjectRelease();
              v368 = v371;
              v469 = v371;
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v86 = v368;
            v368[2] = v370 + 1;
            sub_1A34153A8(v366, v368 + ((*(v462 + 80) + 32) & ~*(v462 + 80)) + *(v462 + 72) * v370, type metadata accessor for ContactCardActionRow);
            return v86;
          }
        }

        goto LABEL_190;
      case 4:
        swift_getKeyPath();
        v152 = v457;
        *&v463 = v457;
        sub_1A34C99A0();

        v153 = *(v152 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__addToEmergencyContactsMenuItems);
        if (!v153)
        {
          goto LABEL_191;
        }

        if (v153 >> 62)
        {
          v145 = sub_1A34CD9B0();
        }

        else
        {
          v145 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v154 = v439;
        if (!v145)
        {
          v160 = (*(v462 + 80) + 32) & ~*(v462 + 80);
          v156 = MEMORY[0x1E69E7CC0];
LABEL_176:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
          v335 = swift_allocObject();
          *(v335 + 16) = xmmword_1A34DAA10;
          v336 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000019, 0x80000001A350F9E0);
          v338 = v337;
          v339 = sub_1A34C93B0();
          v340 = v451;
          (*(*(v339 - 8) + 56))(v451, 1, 1, v339);
          v465 = 0;
          v463 = 0u;
          v464 = 0u;
          v341 = v458;
          v342 = v436;
          swift_unknownObjectWeakInit();
          v343 = v341[23];
          *&v342[v343] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
          *v342 = 0;
          v342[8] = 1;
          *(v342 + 2) = v336;
          *(v342 + 3) = v338;
          v344 = v342;
          sub_1A328D790(v340, &v342[v341[6]], &unk_1EB0C5B60);
          sub_1A328D790(&v463, &v342[v341[19]], &qword_1EB0CB0A0);
          v345 = &v342[v341[7]];
          *v345 = 0;
          *(v345 + 1) = 0;
          v346 = &v342[v341[8]];
          *v346 = 0;
          *(v346 + 1) = 0;
          v347 = &v342[v341[9]];
          *v347 = 0;
          *(v347 + 1) = 0;
          *&v342[v341[10]] = 0;
          v342[v341[11]] = 0;
          if (qword_1EB0C1E20 != -1)
          {
            swift_once();
          }

          *&v342[v341[13]] = qword_1EB0ED2D0;
          v342[v341[14]] = 1;
          v348 = &v342[v341[17]];
          *v348 = 0;
          *(v348 + 1) = 0;
          *&v342[v341[16]] = 0;
          *&v342[v341[15]] = v156;
          v349 = &v342[v341[12]];
          *v349 = 0;
          *(v349 + 1) = 0;
          *&v342[v341[18]] = 0;
          v342[v341[20]] = 0;
          v350 = qword_1EB0C2370;
          sub_1A34C9010();
          if (v350 != -1)
          {
            swift_once();
          }

          v351 = sub_1A3335898(0x7FFFFFFFLL, off_1EB0C2378);
          sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
          sub_1A3288FDC(v451, &unk_1EB0C5B60);
          v342[v341[21]] = v351;
          v106 = v335 + v160;
          v86 = v335;
          goto LABEL_220;
        }

        *&v463 = MEMORY[0x1E69E7CC0];

        sub_1A32EBBD4(0, v145 & ~(v145 >> 63), 0);
        if ((v145 & 0x8000000000000000) == 0)
        {
          v155 = 0;
          v156 = v463;
          do
          {
            if ((v153 & 0xC000000000000001) != 0)
            {
              v157 = MEMORY[0x1A58EF310](v155, v153);
            }

            else
            {
              v157 = *(v153 + 8 * v155 + 32);
            }

            sub_1A3386720(v157, 4, v154);
            *&v463 = v156;
            v159 = *(v156 + 16);
            v158 = *(v156 + 24);
            if (v159 >= v158 >> 1)
            {
              sub_1A32EBBD4(v158 > 1, v159 + 1, 1);
              v156 = v463;
            }

            ++v155;
            *(v156 + 16) = v159 + 1;
            v160 = (*(v462 + 80) + 32) & ~*(v462 + 80);
            sub_1A34153A8(v154, v156 + v160 + *(v462 + 72) * v159, type metadata accessor for ContactCardActionRow);
          }

          while (v145 != v155);

          goto LABEL_176;
        }

LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        swift_once();
LABEL_72:
        *(v145 + v74[13]) = qword_1EB0ED2D0;
        *(v145 + v74[14]) = 1;
        v190 = (v145 + v74[17]);
        *v190 = 0;
        v190[1] = 0;
        *(v145 + v74[16]) = 0;
        *(v145 + v74[15]) = 0;
        v191 = (v145 + v74[12]);
        *v191 = 0;
        v191[1] = 0;
        *(v145 + v74[18]) = 0;
        v192 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v192 != -1)
        {
          swift_once();
        }

        *(v145 + v74[20]) = sub_1A3335898(24, off_1EB0C0160);
        v86 = v462;
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v193 = sub_1A3335898(24, off_1EB0C2378);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        sub_1A3288FDC(v431, &unk_1EB0C5B60);
        *(v145 + v74[21]) = v193;
        sub_1A34153A8(v145, v86 + v84, type metadata accessor for ContactCardActionRow);
        goto LABEL_222;
      case 5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v125 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v126 = swift_allocObject();
        *(v126 + 16) = xmmword_1A34DAA10;
        v127 = sub_1A34C93B0();
        v128 = v448;
        (*(*(v127 - 8) + 56))(v448, 1, 1, v127);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v129 = [objc_opt_self() systemRedColor];
        v130 = sub_1A34CC440();
        v131 = v458;
        v132 = v442;
        swift_unknownObjectWeakInit();
        v133 = v131[23];
        *(v132 + v133) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v132 = 5;
        *(v132 + 8) = 0;
        *(v132 + 16) = sub_1A33877C4(5, 0);
        *(v132 + 24) = v134;
        sub_1A328D790(v128, v132 + v131[6], &unk_1EB0C5B60);
        sub_1A328D790(&v463, v132 + v131[19], &qword_1EB0CB0A0);
        v135 = (v132 + v131[7]);
        *v135 = 0;
        v135[1] = 0;
        v136 = (v132 + v131[8]);
        *v136 = 0;
        v136[1] = 0;
        *(v132 + v131[9]) = xmmword_1A34F4820;
        *(v132 + v131[10]) = v130;
        *(v132 + v131[11]) = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *(v132 + v131[13]) = qword_1EB0ED2D0;
        *(v132 + v131[14]) = 1;
        v137 = (v132 + v131[17]);
        *v137 = 0;
        v137[1] = 0;
        *(v132 + v131[16]) = 0;
        *(v132 + v131[15]) = 0;
        v138 = (v132 + v131[12]);
        *v138 = 0;
        v138[1] = 0;
        *(v132 + v131[18]) = 0;
        v139 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v139 != -1)
        {
          swift_once();
        }

        *(v132 + v131[20]) = sub_1A3335898(5, off_1EB0C0160);
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v140 = sub_1A3335898(5, off_1EB0C2378);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        sub_1A3288FDC(v128, &unk_1EB0C5B60);
        *(v132 + v131[21]) = v140;
        sub_1A34153A8(v132, v126 + v125, type metadata accessor for ContactCardActionRow);
        v86 = v126;
        goto LABEL_222;
      case 6:
      case 21:
        v89 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v90 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_1A34DAA10;
        v92 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350F920);
        v94 = v93;
        v95 = sub_1A34C93B0();
        v96 = v452;
        (*(*(v95 - 8) + 56))(v452, 1, 1, v95);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v97 = v458;
        swift_unknownObjectWeakInit();
        v98 = v97[23];
        *&v56[v98] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v56 = v89;
        v56[8] = 0;
        *(v56 + 2) = v92;
        *(v56 + 3) = v94;
        sub_1A328D790(v96, &v56[v97[6]], &unk_1EB0C5B60);
        sub_1A328D790(&v463, &v56[v97[19]], &qword_1EB0CB0A0);
        v99 = &v56[v97[7]];
        *v99 = 0;
        *(v99 + 1) = 0;
        v100 = &v56[v97[8]];
        *v100 = 0;
        *(v100 + 1) = 0;
        v101 = &v56[v97[9]];
        *v101 = 0;
        *(v101 + 1) = 0;
        *&v56[v97[10]] = 0;
        v56[v97[11]] = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *&v56[v97[13]] = qword_1EB0ED2D0;
        v56[v97[14]] = 1;
        v102 = &v56[v97[17]];
        *v102 = 0;
        *(v102 + 1) = 0;
        *&v56[v97[16]] = 0;
        *&v56[v97[15]] = 0;
        v103 = &v56[v97[12]];
        *v103 = 0;
        *(v103 + 1) = 0;
        *&v56[v97[18]] = 0;
        v104 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v104 != -1)
        {
          swift_once();
        }

        v56[v97[20]] = sub_1A3335898(v89, off_1EB0C0160);
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v105 = sub_1A3335898(v89, off_1EB0C2378);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        sub_1A3288FDC(v96, &unk_1EB0C5B60);
        v56[v97[21]] = v105;
        v106 = v91 + v90;
        v86 = v91;
        v107 = v56;
        goto LABEL_221;
      case 7:
        sub_1A3412DEC(&v469);
        swift_unknownObjectRelease();
        return v469;
      case 11:
        swift_getKeyPath();
        v228 = v457;
        *&v463 = v457;
        sub_1A34C99A0();

        v86 = *(v228 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__gameCenterAddFriendMenuItems);
        if (!v86)
        {
          goto LABEL_191;
        }

        if (v86 >> 62)
        {
          goto LABEL_213;
        }

        v145 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v145)
        {
          goto LABEL_97;
        }

        goto LABEL_214;
      case 12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v214 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_1A34DAA10;
        v215 = sub_1A34C93B0();
        v216 = v447;
        (*(*(v215 - 8) + 56))(v447, 1, 1, v215);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v217 = v458;
        v218 = v441;
        swift_unknownObjectWeakInit();
        v219 = v217[23];
        *(v218 + v219) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v218 = 12;
        *(v218 + 8) = 0;
        *(v218 + 16) = sub_1A33877C4(12, 0);
        *(v218 + 24) = v220;
        sub_1A328D790(v216, v218 + v217[6], &unk_1EB0C5B60);
        sub_1A328D790(&v463, v218 + v217[19], &qword_1EB0CB0A0);
        v221 = (v218 + v217[7]);
        *v221 = 0;
        v221[1] = 0;
        v222 = (v218 + v217[8]);
        *v222 = 0;
        v222[1] = 0;
        v223 = (v218 + v217[9]);
        *v223 = 0;
        v223[1] = 0;
        *(v218 + v217[10]) = 0;
        *(v218 + v217[11]) = 0;
        if (qword_1EB0C1E10 != -1)
        {
          swift_once();
        }

        *(v218 + v217[13]) = qword_1EB0ED2C0;
        *(v218 + v217[14]) = 0;
        v224 = (v218 + v217[17]);
        *v224 = 0;
        v224[1] = 0;
        *(v218 + v217[16]) = 0;
        *(v218 + v217[15]) = 0;
        v225 = (v218 + v217[12]);
        *v225 = 0;
        v225[1] = 0;
        *(v218 + v217[18]) = 0;
        v226 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v226 != -1)
        {
          swift_once();
        }

        *(v218 + v217[20]) = sub_1A3335898(12, off_1EB0C0160);
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v227 = sub_1A3335898(12, off_1EB0C2378);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        sub_1A3288FDC(v216, &unk_1EB0C5B60);
        *(v218 + v217[21]) = v227;
        sub_1A34153A8(v218, v86 + v214, type metadata accessor for ContactCardActionRow);
        goto LABEL_222;
      case 13:
        v252 = sub_1A34C93B0();
        v253 = v446;
        (*(*(v252 - 8) + 56))(v446, 1, 1, v252);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v254 = v458;
        v255 = v440;
        swift_unknownObjectWeakInit();
        v256 = v254[23];
        *(v255 + v256) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v255 = 13;
        *(v255 + 8) = 0;
        *(v255 + 16) = sub_1A33877C4(13, 0);
        *(v255 + 24) = v257;
        sub_1A328D790(v253, v255 + v254[6], &unk_1EB0C5B60);
        sub_1A328D790(&v463, v255 + v254[19], &qword_1EB0CB0A0);
        v258 = (v255 + v254[7]);
        *v258 = 0;
        v258[1] = 0;
        v259 = (v255 + v254[8]);
        *v259 = 0;
        v259[1] = 0;
        v260 = (v255 + v254[9]);
        *v260 = 0;
        v260[1] = 0;
        *(v255 + v254[10]) = 0;
        *(v255 + v254[11]) = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *(v255 + v254[13]) = qword_1EB0ED2D0;
        *(v255 + v254[14]) = 1;
        v261 = (v255 + v254[17]);
        *v261 = 0;
        v261[1] = 0;
        *(v255 + v254[16]) = 0;
        *(v255 + v254[15]) = 0;
        v262 = (v255 + v254[12]);
        *v262 = 0;
        v262[1] = 0;
        *(v255 + v254[18]) = 0;
        v263 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v263 != -1)
        {
          swift_once();
        }

        *(v255 + v254[20]) = sub_1A3335898(13, off_1EB0C0160);
        v264 = v424;
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v265 = sub_1A3335898(13, off_1EB0C2378);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        sub_1A3288FDC(v253, &unk_1EB0C5B60);
        *(v255 + v254[21]) = v265;
        v266 = v443;
        sub_1A34153A8(v255, v443, type metadata accessor for ContactCardActionRow);
        v267 = [v264 gameCenterPlayerViewWrapper];
        swift_unknownObjectWeakAssign();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v268 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v269 = swift_allocObject();
        *(v269 + 16) = xmmword_1A34DAA10;
        sub_1A34153A8(v266, v269 + v268, type metadata accessor for ContactCardActionRow);
        v86 = v269;
        goto LABEL_222;
      case 20:
      case 22:
        v108 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v109 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_1A34DAA10;
        v111 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x5F4B434F4C424E55, 0xEE0052454C4C4143);
        v113 = v112;
        v114 = sub_1A34C93B0();
        v115 = v453;
        (*(*(v114 - 8) + 56))(v453, 1, 1, v114);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v116 = v458;
        swift_unknownObjectWeakInit();
        v117 = v116[23];
        *&v53[v117] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v53 = v108;
        v53[8] = 0;
        *(v53 + 2) = v111;
        *(v53 + 3) = v113;
        sub_1A328D790(v115, &v53[v116[6]], &unk_1EB0C5B60);
        sub_1A328D790(&v463, &v53[v116[19]], &qword_1EB0CB0A0);
        v118 = &v53[v116[7]];
        *v118 = 0;
        *(v118 + 1) = 0;
        v119 = &v53[v116[8]];
        *v119 = 0;
        *(v119 + 1) = 0;
        v120 = &v53[v116[9]];
        *v120 = 0;
        *(v120 + 1) = 0;
        *&v53[v116[10]] = 0;
        v53[v116[11]] = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *&v53[v116[13]] = qword_1EB0ED2D0;
        v53[v116[14]] = 1;
        v121 = &v53[v116[17]];
        *v121 = 0;
        *(v121 + 1) = 0;
        *&v53[v116[16]] = 0;
        *&v53[v116[15]] = 0;
        v122 = &v53[v116[12]];
        *v122 = 0;
        *(v122 + 1) = 0;
        *&v53[v116[18]] = 0;
        v123 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v123 != -1)
        {
          swift_once();
        }

        v53[v116[20]] = sub_1A3335898(v108, off_1EB0C0160);
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v124 = sub_1A3335898(v108, off_1EB0C2378);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        sub_1A3288FDC(v115, &unk_1EB0C5B60);
        v53[v116[21]] = v124;
        v106 = v110 + v109;
        v86 = v110;
        v107 = v53;
        goto LABEL_221;
      case 23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v194 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v195 = swift_allocObject();
        *(v195 + 16) = xmmword_1A34DAA10;
        v270 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A35119F0);
        v272 = v271;
        v273 = sub_1A34C93B0();
        v200 = v449;
        (*(*(v273 - 8) + 56))(v449, 1, 1, v273);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v201 = v458;
        v202 = v444;
        swift_unknownObjectWeakInit();
        v274 = v201[23];
        *&v202[v274] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v202 = 23;
        v202[8] = 0;
        *(v202 + 2) = v270;
        *(v202 + 3) = v272;
        sub_1A328D790(v200, &v202[v201[6]], &unk_1EB0C5B60);
        sub_1A328D790(&v463, &v202[v201[19]], &qword_1EB0CB0A0);
        v275 = &v202[v201[7]];
        *v275 = 0;
        *(v275 + 1) = 0;
        v276 = &v202[v201[8]];
        *v276 = 0;
        *(v276 + 1) = 0;
        v277 = &v202[v201[9]];
        *v277 = 0;
        *(v277 + 1) = 0;
        *&v202[v201[10]] = 0;
        v202[v201[11]] = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *&v202[v201[13]] = qword_1EB0ED2D0;
        v202[v201[14]] = 1;
        v278 = &v202[v201[17]];
        *v278 = 0;
        *(v278 + 1) = 0;
        *&v202[v201[16]] = 0;
        *&v202[v201[15]] = 0;
        v279 = &v202[v201[12]];
        *v279 = 0;
        *(v279 + 1) = 0;
        *&v202[v201[18]] = 0;
        v280 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v280 != -1)
        {
          swift_once();
        }

        v202[v201[20]] = sub_1A3335898(23, off_1EB0C0160);
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v210 = off_1EB0C2378;
        v211 = 23;
        goto LABEL_127;
      case 24:
        v175 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
        v176 = *(v457 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel_contact);
        v177 = [v175 stringFromContact_];

        if (!v177)
        {
          goto LABEL_183;
        }

        v178 = sub_1A34CD110();
        v180 = v179;

        v181 = HIBYTE(v180) & 0xF;
        if ((v180 & 0x2000000000000000) == 0)
        {
          v181 = v178 & 0xFFFFFFFFFFFFLL;
        }

        if (!v181 || ![v176 isCoreRecentsAccepted])
        {
          swift_unknownObjectRelease();

          goto LABEL_184;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v84 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v462 = swift_allocObject();
        *(v462 + 16) = xmmword_1A34DAA10;
        v182 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000027, 0x80000001A350F7B0);
        v184 = v183;
        v185 = sub_1A34C93B0();
        v186 = v431;
        (*(*(v185 - 8) + 56))(v431, 1, 1, v185);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v74 = v458;
        v145 = v430;
        swift_unknownObjectWeakInit();
        v187 = v74[23];
        *(v145 + v187) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v145 = 24;
        *(v145 + 8) = 0;
        *(v145 + 16) = v182;
        *(v145 + 24) = v184;
        sub_1A328D790(v186, v145 + v74[6], &unk_1EB0C5B60);
        sub_1A328D790(&v463, v145 + v74[19], &qword_1EB0CB0A0);
        v188 = (v145 + v74[7]);
        *v188 = v178;
        v188[1] = v180;
        v189 = (v145 + v74[8]);
        *v189 = 0;
        v189[1] = 0;
        *(v145 + v74[9]) = xmmword_1A34F4810;
        *(v145 + v74[10]) = 0;
        *(v145 + v74[11]) = 0;
        if (qword_1EB0C1E20 != -1)
        {
          goto LABEL_227;
        }

        goto LABEL_72;
      case 26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
        v194 = (*(v462 + 80) + 32) & ~*(v462 + 80);
        v195 = swift_allocObject();
        *(v195 + 16) = xmmword_1A34DAA10;
        v196 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x5F4D5249464E4F43, 0xEF544341544E4F43);
        v198 = v197;
        v199 = sub_1A34C93B0();
        v200 = v450;
        (*(*(v199 - 8) + 56))(v450, 1, 1, v199);
        v465 = 0;
        v463 = 0u;
        v464 = 0u;
        v201 = v458;
        v202 = v445;
        swift_unknownObjectWeakInit();
        v203 = v201[23];
        *&v202[v203] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v202 = 26;
        v202[8] = 0;
        *(v202 + 2) = v196;
        *(v202 + 3) = v198;
        sub_1A328D790(v200, &v202[v201[6]], &unk_1EB0C5B60);
        sub_1A328D790(&v463, &v202[v201[19]], &qword_1EB0CB0A0);
        v204 = &v202[v201[7]];
        *v204 = 0;
        *(v204 + 1) = 0;
        v205 = &v202[v201[8]];
        *v205 = 0;
        *(v205 + 1) = 0;
        v206 = &v202[v201[9]];
        *v206 = 0;
        *(v206 + 1) = 0;
        *&v202[v201[10]] = 0;
        v202[v201[11]] = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *&v202[v201[13]] = qword_1EB0ED2D0;
        v202[v201[14]] = 1;
        v207 = &v202[v201[17]];
        *v207 = 0;
        *(v207 + 1) = 0;
        *&v202[v201[16]] = 0;
        *&v202[v201[15]] = 0;
        v208 = &v202[v201[12]];
        *v208 = 0;
        *(v208 + 1) = 0;
        *&v202[v201[18]] = 0;
        v209 = qword_1EB0C0158;
        sub_1A34C9010();
        if (v209 != -1)
        {
          swift_once();
        }

        v202[v201[20]] = sub_1A3335898(26, off_1EB0C0160);
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v210 = off_1EB0C2378;
        v211 = 26;
LABEL_127:
        v281 = sub_1A3335898(v211, v210);
        sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
        sub_1A3288FDC(v200, &unk_1EB0C5B60);
        v202[v201[21]] = v281;
        v106 = v195 + v194;
        v86 = v195;
        v107 = v202;
        goto LABEL_221;
      case 27:
        v235 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
        v236 = *(v457 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel_contact);
        v237 = [v235 stringFromContact_];

        if (!v237)
        {
          goto LABEL_128;
        }

        v238 = sub_1A34CD110();
        v240 = v239;

        v241 = HIBYTE(v240) & 0xF;
        if ((v240 & 0x2000000000000000) == 0)
        {
          v241 = v238 & 0xFFFFFFFFFFFFLL;
        }

        if (v241)
        {
          v242 = [v236 isSuggested];
          v243 = v458;
          if ((v242 & 1) != 0 || (v352 = [v236 iOSLegacyIdentifier], v352 == *MEMORY[0x1E695C248]) && (objc_msgSend(v236, sel_isSuggestedMe) & 1) == 0)
          {
            if (([v236 isCoreRecentsAccepted] & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
              v244 = (*(v462 + 80) + 32) & ~*(v462 + 80);
              v245 = swift_allocObject();
              *(v245 + 16) = xmmword_1A34DAA10;
              v246 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000026, 0x80000001A350F7E0);
              v248 = v247;
              v249 = sub_1A34C93B0();
              v250 = v428;
              (*(*(v249 - 8) + 56))(v428, 1, 1, v249);
              v465 = 0;
              v463 = 0u;
              v464 = 0u;
              v251 = &v459;
LABEL_133:
              v286 = *(v251 - 32);
              swift_unknownObjectWeakInit();
              v287 = v243[23];
              *(v286 + v287) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
              *v286 = 27;
              *(v286 + 8) = 0;
              *(v286 + 16) = v246;
              *(v286 + 24) = v248;
              sub_1A328D790(v250, v286 + v243[6], &unk_1EB0C5B60);
              sub_1A328D790(&v463, v286 + v243[19], &qword_1EB0CB0A0);
              v288 = (v286 + v243[7]);
              *v288 = 0;
              v288[1] = 0;
              v289 = (v286 + v243[8]);
              *v289 = 0;
              v289[1] = 0;
              v290 = (v286 + v243[9]);
              *v290 = 0;
              v290[1] = 0;
              *(v286 + v243[10]) = 0;
              *(v286 + v243[11]) = 0;
              if (qword_1EB0C1E20 != -1)
              {
                swift_once();
              }

              *(v286 + v243[13]) = qword_1EB0ED2D0;
              *(v286 + v243[14]) = 1;
              v291 = (v286 + v243[17]);
              *v291 = 0;
              v291[1] = 0;
              *(v286 + v243[16]) = 0;
              *(v286 + v243[15]) = 0;
              v292 = (v286 + v243[12]);
              *v292 = 0;
              v292[1] = 0;
              *(v286 + v243[18]) = 0;
              v293 = qword_1EB0C0158;
              sub_1A34C9010();
              if (v293 != -1)
              {
                swift_once();
              }

              *(v286 + v243[20]) = sub_1A3335898(27, off_1EB0C0160);
              if (qword_1EB0C2370 != -1)
              {
                swift_once();
              }

              v294 = sub_1A3335898(27, off_1EB0C2378);
              sub_1A3288FDC(&v463, &qword_1EB0CB0A0);
              sub_1A3288FDC(v250, &unk_1EB0C5B60);
              *(v286 + v243[21]) = v294;
              v106 = v245 + v244;
              v86 = v245;
              v107 = v286;
              goto LABEL_221;
            }
          }
        }

        else
        {
LABEL_128:
          v282 = [v236 isSuggested];
          v243 = v458;
          if ((v282 & 1) != 0 || (v283 = [v236 iOSLegacyIdentifier], v283 == *MEMORY[0x1E695C248]) && !objc_msgSend(v236, sel_isSuggestedMe) || objc_msgSend(v236, sel_isCoreRecentsAccepted))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5718);
            v244 = (*(v462 + 80) + 32) & ~*(v462 + 80);
            v245 = swift_allocObject();
            *(v245 + 16) = xmmword_1A34DAA10;
            v246 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000026, 0x80000001A350F7E0);
            v248 = v284;
            v285 = sub_1A34C93B0();
            v250 = v433;
            (*(*(v285 - 8) + 56))(v433, 1, 1, v285);
            v465 = 0;
            v463 = 0u;
            v464 = 0u;
            v251 = &v463 + 1;
            goto LABEL_133;
          }
        }

LABEL_183:
        swift_unknownObjectRelease();
LABEL_184:
        v86 = MEMORY[0x1E69E7CC0];
        break;
      default:
        goto LABEL_191;
    }
  }

  return v86;
}

void sub_1A3412CD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
    sub_1A34C99A0();

    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      if ([v5 respondsToSelector_])
      {
        [v5 removeContactFromGroup_];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A3412DEC(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v46 - v4;
  v5 = type metadata accessor for ContactCardActionRow();
  v53 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v46 - v10;
  v12 = [*(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel_contact) linkedContacts];
  if (v12)
  {
    v13 = v12;
    sub_1A31EC194(0, &qword_1ED854E70);
    v14 = sub_1A34CD370();

    if (!(v14 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_31:

      goto LABEL_33;
    }
  }

  v15 = sub_1A34CD9B0();
  if (!v15)
  {
    goto LABEL_31;
  }

LABEL_4:
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v14 & 0xC000000000000001;
    v51 = a1;
    v52 = v1;
    v48 = v15;
    v49 = v14;
    v50 = v11;
    v47 = v14 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        v18 = MEMORY[0x1A58EF310](v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      if ([v18 isImplicitAugmentation])
      {
      }

      else
      {
        v20 = sub_1A340E10C();
        v21 = [v20 stringFromContact_];

        if (v21)
        {
          v22 = sub_1A34CD110();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = sub_1A34C93B0();
        (*(*(v25 - 8) + 56))(v55, 1, 1, v25);
        v57 = 0;
        memset(v56, 0, sizeof(v56));
        v26 = sub_1A3413430(v19);
        v28 = v27;
        v29 = [v19 identifier];
        v54 = sub_1A34CD110();
        v31 = v30;

        swift_unknownObjectWeakInit();
        v32 = v5[23];
        *&v7[v32] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        *v7 = 7;
        v7[8] = 0;
        if (!v24)
        {
          v22 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0, 0xE000000000000000);
          v24 = v33;
        }

        *(v7 + 2) = v22;
        *(v7 + 3) = v24;
        sub_1A328D790(v55, &v7[v5[6]], &unk_1EB0C5B60);
        sub_1A328D790(v56, &v7[v5[19]], &qword_1EB0CB0A0);
        v34 = &v7[v5[7]];
        *v34 = 0;
        *(v34 + 1) = 0;
        v35 = &v7[v5[8]];
        *v35 = v26;
        *(v35 + 1) = v28;
        v36 = &v7[v5[9]];
        *v36 = 0;
        *(v36 + 1) = 0;
        *&v7[v5[10]] = 0;
        v7[v5[11]] = 0;
        if (qword_1EB0C1E20 != -1)
        {
          swift_once();
        }

        *&v7[v5[13]] = qword_1EB0ED2D0;
        v7[v5[14]] = 1;
        v37 = &v7[v5[17]];
        *v37 = v54;
        v37[1] = v31;
        *&v7[v5[16]] = 0;
        *&v7[v5[15]] = 0;
        v38 = &v7[v5[12]];
        *v38 = 0;
        *(v38 + 1) = 0;
        *&v7[v5[18]] = 0;
        v39 = qword_1EB0C0158;
        sub_1A34C9010();
        v40 = v50;
        v17 = v47;
        if (v39 != -1)
        {
          swift_once();
        }

        v7[v5[20]] = sub_1A3335898(7, off_1EB0C0160);
        v41 = v51;
        if (qword_1EB0C2370 != -1)
        {
          swift_once();
        }

        v42 = sub_1A3335898(7, off_1EB0C2378);
        sub_1A3288FDC(v56, &qword_1EB0CB0A0);
        sub_1A3288FDC(v55, &unk_1EB0C5B60);
        v7[v5[21]] = v42;
        sub_1A34153A8(v7, v40, type metadata accessor for ContactCardActionRow);
        v43 = *v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1A3299580(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1A3299580(v44 > 1, v45 + 1, 1, v43);
        }

        v43[2] = v45 + 1;
        sub_1A34153A8(v40, v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v45, type metadata accessor for ContactCardActionRow);
        *v41 = v43;
        v15 = v48;
        v14 = v49;
      }

      ++v16;
    }

    while (v15 != v16);
LABEL_33:

    return;
  }

  __break(1u);
}

void *sub_1A3413430(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = [result containerProvider];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 containerForContact_];
  if (!v4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  if ([v4 type] == 1003 || objc_msgSend(v5, sel_type) == 1004)
  {
    v6 = [v5 name];
    v7 = sub_1A34CD110();
    swift_unknownObjectRelease();

    return v7;
  }

  else if (([v3 respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(v3, sel_accountForContact_, a1)) != 0)
  {
    v9 = v8;
    v10 = [v9 accountDescription];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1A34CD110();
      swift_unknownObjectRelease();

      v5 = v9;
    }

    else
    {
      v16 = [v9 accountType];
      if (v16 && (v17 = v16, v18 = [v16 accountTypeDescription], v17, v18))
      {
        v12 = sub_1A34CD110();
        swift_unknownObjectRelease();

        v5 = v18;
      }

      else
      {
        v12 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000015, 0x80000001A350FB20);
        swift_unknownObjectRelease();
      }

      v11 = v9;
    }

    return v12;
  }

  else
  {
    v13 = [objc_opt_self() currentDevice];
    v14 = [v13 model];

    v15 = sub_1A34CD110();
    swift_unknownObjectRelease();

    return v15;
  }
}

id ContactCardActionsViewModel.init(contact:actionsProvider:placement:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A3414878(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

id ContactCardActionsViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContactCardActionsViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3413984(uint64_t *a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = type metadata accessor for ContactCardActionRow();
    if (*(a1 + *(v3 + 56)) == 1)
    {
      v4 = v3;
      swift_getKeyPath();
      sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
      sub_1A34C99A0();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        v7 = *(a1 + v4[16]);
        if (v7)
        {
          v8 = v7;
          [v6 didSelectActionItem:v8 actionType:v2];

          swift_unknownObjectRelease();
        }

        else
        {
          if (*(a1 + v4[17] + 8))
          {
            v9 = sub_1A34CD0E0();
          }

          else
          {
            v9 = 0;
          }

          [v6 performAction:v2 forContactIdentifier:v9 sourceView:*(a1 + v4[23])];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

Swift::Void __swiftcall ContactCardActionsViewModel.actionsUpdated()()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1A340EA7C(MEMORY[0x1E69E7CC0]);
    return;
  }

  v3 = Strong;
  v4 = [Strong menuItemsForAction_];
  if (v4)
  {
    v5 = v4;
    sub_1A31EC194(0, &qword_1EB0C90F8);
    v6 = sub_1A34CD370();
  }

  else
  {
    v6 = 0;
  }

  sub_1A340DEA0(v6, &OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sendMessageMenuItems);
  v7 = [v3 menuItemsForAction_];
  if (v7)
  {
    v8 = v7;
    sub_1A31EC194(0, &qword_1EB0C90F8);
    v9 = sub_1A34CD370();
  }

  else
  {
    v9 = 0;
  }

  sub_1A340DEA0(v9, &OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__addToFavoritesMenuItems);
  v10 = [v3 menuItemsForAction_];
  if (v10)
  {
    v11 = v10;
    sub_1A31EC194(0, &qword_1EB0C90F8);
    v12 = sub_1A34CD370();
  }

  else
  {
    v12 = 0;
  }

  sub_1A340DEA0(v12, &OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__gameCenterAddFriendMenuItems);
  v13 = [v3 menuItemsForAction_];
  if (v13)
  {
    v14 = v13;
    sub_1A31EC194(0, &qword_1EB0C90F8);
    v15 = sub_1A34CD370();
  }

  else
  {
    v15 = 0;
  }

  sub_1A340DEA0(v15, &OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__addToEmergencyContactsMenuItems);
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v32 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel_contact;
  v31 = *MEMORY[0x1E695C248];
  do
  {
    v18 = byte_1F161BD70[v16 + 32];
    if (v18 > 5)
    {
      if (byte_1F161BD70[v16 + 32] > 8u)
      {
        v22 = &unk_1F161BD18;
        if (v18 != 10)
        {
          v22 = &unk_1F161BD48;
        }

        if (v18 == 9)
        {
          v19 = &unk_1F161BB80;
        }

        else
        {
          v19 = v22;
        }
      }

      else
      {
        v20 = &unk_1F161BCB8;
        if (v18 != 7)
        {
          v20 = &unk_1F161BCE0;
        }

        if (v18 == 6)
        {
          v19 = &unk_1F161BC10;
        }

        else
        {
          v19 = v20;
        }
      }
    }

    else if (byte_1F161BD70[v16 + 32] > 2u)
    {
      if (v18 == 3)
      {
        v23 = *(v1 + v32);
        if ([v23 isSuggested] & 1) == 0 && (objc_msgSend(v23, sel_iOSLegacyIdentifier) != v31 || (objc_msgSend(v23, sel_isSuggestedMe)))
        {
          goto LABEL_17;
        }

        v19 = &unk_1F161BC70;
      }

      else if (v18 == 4)
      {
        v21 = *(v1 + v32);
        if (([v21 isSuggested] & 1) != 0 || objc_msgSend(v21, sel_iOSLegacyIdentifier) == v31 && (objc_msgSend(v21, sel_isSuggestedMe) & 1) == 0)
        {
          goto LABEL_17;
        }

        v19 = &unk_1F161BBE8;
      }

      else
      {
        v19 = &unk_1F161BBB8;
      }
    }

    else if (byte_1F161BD70[v16 + 32])
    {
      if (v18 == 1)
      {
        v19 = &unk_1F161BB58;
      }

      else
      {
        v24 = *(v1 + v32);
        if (([v24 isSuggested] & 1) != 0 || objc_msgSend(v24, sel_iOSLegacyIdentifier) == v31 && (objc_msgSend(v24, sel_isSuggestedMe) & 1) == 0)
        {
          goto LABEL_17;
        }

        v19 = &unk_1F161BC38;
      }
    }

    else
    {
      v19 = &unk_1F161BB30;
    }

    v25 = v19[2];
    swift_unknownObjectRetain();
    v26 = 0;
    do
    {
      if (v25 == v26)
      {
        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      if (v26 >= v19[2])
      {
        __break(1u);
        return;
      }

      v27 = v26 + 1;
      v28 = [v3 supportsAction_];
      v26 = v27;
    }

    while ((v28 & 1) == 0);
    swift_unknownObjectRelease();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A32EBE54(0, *(v17 + 16) + 1, 1);
    }

    v30 = *(v17 + 16);
    v29 = *(v17 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1A32EBE54((v29 > 1), v30 + 1, 1);
    }

    *(v17 + 16) = v30 + 1;
    *(v17 + v30 + 32) = v18;
LABEL_17:
    ++v16;
  }

  while (v16 != 12);
  sub_1A340EA7C(v17);
  swift_unknownObjectRelease();
}

uint64_t ContactCardActionsViewModel.present(_:for:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  if ((a2 - 6) > 0x15)
  {
    v8 = 2;
  }

  else
  {
    v8 = qword_1A34F4C00[a2 - 6];
  }

  swift_getKeyPath();
  v12[1] = v2;
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  if (v8 == *(v2 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement))
  {
    sub_1A34C8A90();
    v10 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
    *&v7[*(v10 + 20)] = a1;
    *&v7[*(v10 + 24)] = a2;
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = a1;
    return sub_1A340D87C(v7);
  }

  return result;
}

Swift::Void __swiftcall ContactCardActionsViewModel.dismissViewController()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  v3 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1A340D87C(v2);
}

BOOL sub_1A34144D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionSection(0);
  if (sub_1A3426360(*(a1 + v4[5]), *(a2 + v4[5])))
  {
    v5 = v4[6];
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        v10 = *v6 == *v8 && v7 == v9;
        if (v10 || (sub_1A34CDE30() & 1) != 0)
        {
          return *(a1 + v4[7]) == *(a2 + v4[7]);
        }
      }
    }

    else if (!v9)
    {
      return *(a1 + v4[7]) == *(a2 + v4[7]);
    }
  }

  return 0;
}

uint64_t sub_1A341457C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB080);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_1A328D790(a1, &v19 - v12, &qword_1EB0CB030);
  sub_1A328D790(a2, &v13[v15], &qword_1EB0CB030);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1A3288FDC(v13, &qword_1EB0CB030);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1A328D790(v13, v10, &qword_1EB0CB030);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1A34151E8(v10);
LABEL_6:
    sub_1A3288FDC(v13, &qword_1EB0CB080);
    return 1;
  }

  sub_1A34153A8(&v13[v15], v7, type metadata accessor for ContactCardActionsViewModel.ViewController);
  v18 = (sub_1A34C9750() & 1) == 0 || (sub_1A31EC194(0, &qword_1ED853EF0), (sub_1A34CD830() & 1) == 0) || *&v10[*(v4 + 24)] != *&v7[*(v4 + 24)];
  sub_1A34151E8(v7);
  sub_1A34151E8(v10);
  sub_1A3288FDC(v13, &qword_1EB0CB030);
  return v18;
}

id sub_1A3414878(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__actionsProvider;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sendMessageMenuItems] = 0;
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__addToFavoritesMenuItems] = 0;
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__gameCenterAddFriendMenuItems] = 0;
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__addToEmergencyContactsMenuItems] = 0;
  v8 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement;
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement] = 0;
  v9 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__viewControllerToPresent;
  v10 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel____lazy_storage___contactFormatter] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__supportedSections] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sections] = v11;
  sub_1A34C99D0();
  *&v3[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel_contact] = a1;
  v12 = a1;
  swift_unknownObjectRetain();
  sub_1A31F08B0(&v3[v7]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *&v3[v8] = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  swift_getKeyPath();
  sub_1A3415054(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong addObserver_];
    swift_unknownObjectRelease();
  }

  return v13;
}

void sub_1A3414AE4()
{
  sub_1A3414ECC(319, &qword_1EB0C2CF8, type metadata accessor for ContactCardActionsViewModel.ViewController, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A34C99E0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for ContactCardActionsViewModel.SectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactCardActionsViewModel.SectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A3414DE8()
{
  sub_1A34C9780();
  if (v0 <= 0x3F)
  {
    sub_1A3414ECC(319, &qword_1EB0C0288, type metadata accessor for ContactCardActionRow, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A3414F30();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CNUIContactCardActionPlacement(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A3414ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3414F30()
{
  if (!qword_1EB0C2B30)
  {
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C2B30);
    }
  }
}

void sub_1A3414FA8()
{
  sub_1A34C9780();
  if (v0 <= 0x3F)
  {
    sub_1A31EC194(319, &unk_1EB0C2AE0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CNUIContactCardActionType(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A3415054(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A34150A0()
{
  result = qword_1EB0CB060;
  if (!qword_1EB0CB060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB060);
  }

  return result;
}

unint64_t sub_1A3415108()
{
  result = qword_1EB0CB070;
  if (!qword_1EB0CB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB070);
  }

  return result;
}

uint64_t sub_1A341515C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A34151E8(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3415310(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1A3415354()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__supportedSections) = *(v0 + 24);

  return sub_1A340E1B8();
}

uint64_t sub_1A34153A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3415410()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sections) = *(v0 + 24);
}

unint64_t sub_1A3415454()
{
  result = qword_1EB0C1310;
  if (!qword_1EB0C1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1310);
  }

  return result;
}

uint64_t sub_1A3415504(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for VisualIdentity(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1A34C9780();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  type metadata accessor for VisualIdentityExporter();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A341569C, 0, 0);
}

uint64_t sub_1A341569C()
{
  v41 = v0;
  if (qword_1EB0C4A50 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_1A34CA250();
  v0[14] = __swift_project_value_buffer(v4, qword_1EB0EDE88);
  sub_1A3418B00(v2, v1, type metadata accessor for VisualIdentityExporter);
  v5 = v3;
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD660();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  if (v8)
  {
    v38 = v7;
    log = v6;
    v10 = v0[11];
    v11 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[5];
    v35 = v0[4];
    v36 = v0[8];
    v15 = v0[2];
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v16 = 136315394;
    v17 = [v15 id];
    sub_1A34C9760();

    sub_1A3418AA8();
    v18 = sub_1A34CDDF0();
    v20 = v19;
    (*(v10 + 8))(v11, v12);
    v21 = sub_1A31EE23C(v18, v20, &v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_1A3418B00(v9, v13, type metadata accessor for VisualIdentity);
    (*(v14 + 56))(v13, 0, 1, v35);
    sub_1A328D790(v13, v36, &qword_1EB0C5D28);
    v22 = (*(v14 + 48))(v36, 1, v35);
    v23 = v0[8];
    if (v22 == 1)
    {
      sub_1A3288FDC(v23, &qword_1EB0C5D28);
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v26 = v0[6];
      v27 = v0[7];
      sub_1A3336E78(v23, v27);
      sub_1A3418B00(v27, v26, type metadata accessor for VisualIdentity);
      v25 = sub_1A34CD170();
      v24 = v28;
      sub_1A3418B68(v27, type metadata accessor for VisualIdentity);
    }

    v29 = v0[13];
    sub_1A3288FDC(v0[9], &qword_1EB0C5D28);
    sub_1A3418B68(v29, type metadata accessor for VisualIdentityExporter);
    v30 = sub_1A31EE23C(v25, v24, &v40);

    *(v16 + 14) = v30;
    _os_log_impl(&dword_1A31E6000, log, v38, "Exporting visual identity to contact: %s identity: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v37, -1, -1);
    MEMORY[0x1A58F1010](v16, -1, -1);
  }

  else
  {

    sub_1A3418B68(v9, type metadata accessor for VisualIdentityExporter);
  }

  v31 = v0[2];
  sub_1A34163B4(v31);
  [v31 setImageData_];
  [v31 setCropRect_];
  [v31 setAvatarRecipeData_];
  [v31 setMemojiMetadata_];
  v32 = swift_task_alloc();
  v0[15] = v32;
  *v32 = v0;
  v32[1] = sub_1A3415B24;
  v33 = v0[2];

  return sub_1A3417018(v33);
}

uint64_t sub_1A3415B24()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A3415E1C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_1A3415C94;
    v4 = v2[2];

    return sub_1A3418084(v4);
  }
}

uint64_t sub_1A3415C94()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A34160A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A3415E1C()
{
  v24 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v10 = 136315394;
    v11 = [v9 id];
    sub_1A34C9760();

    sub_1A3418AA8();
    v12 = sub_1A34CDDF0();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1A31EE23C(v12, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v21 = v17;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Error exporting visual identity to contact: %s error: %@", v10, 0x16u);
    sub_1A3288FDC(v21, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1A58F1010](v22, -1, -1);
    MEMORY[0x1A58F1010](v10, -1, -1);
  }

  sub_1A3418820();
  swift_allocError();
  *v18 = v1;
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1A34160A8()
{
  v24 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v10 = 136315394;
    v11 = [v9 id];
    sub_1A34C9760();

    sub_1A3418AA8();
    v12 = sub_1A34CDDF0();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1A31EE23C(v12, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v21 = v17;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Error exporting visual identity to contact: %s error: %@", v10, 0x16u);
    sub_1A3288FDC(v21, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1A58F1010](v22, -1, -1);
    MEMORY[0x1A58F1010](v10, -1, -1);
  }

  sub_1A3418820();
  swift_allocError();
  *v18 = v1;
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1A3416334()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDE88);
  __swift_project_value_buffer(v0, qword_1EB0EDE88);
  return sub_1A34CA240();
}

void sub_1A34163B4(void *a1)
{
  v96[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A34C9720();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 hasBeenPersisted])
  {
    if (qword_1EB0C4A50 != -1)
    {
      swift_once();
    }

    v16 = sub_1A34CA250();
    __swift_project_value_buffer(v16, qword_1EB0EDE88);
    v93 = sub_1A34CA230();
    v13 = sub_1A34CD630();
    if (!os_log_type_enabled(v93, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not linking current image to current poster since contact is not currently persisted";
    goto LABEL_11;
  }

  v7 = [a1 avatarRecipeData];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A34C9690();
    v11 = v10;

    sub_1A31EC234(v9, v11);
    if (qword_1EB0C4A50 != -1)
    {
      swift_once();
    }

    v12 = sub_1A34CA250();
    __swift_project_value_buffer(v12, qword_1EB0EDE88);
    v93 = sub_1A34CA230();
    v13 = sub_1A34CD630();
    if (!os_log_type_enabled(v93, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not linking current image to current poster since contact currently has an avatar recipe";
LABEL_11:
    _os_log_impl(&dword_1A31E6000, v93, v13, v15, v14, 2u);
    MEMORY[0x1A58F1010](v14, -1, -1);
LABEL_12:
    v17 = v93;
    goto LABEL_13;
  }

  v18 = [a1 imageData];
  if (!v18)
  {
    if (qword_1EB0C4A50 != -1)
    {
      swift_once();
    }

    v38 = sub_1A34CA250();
    __swift_project_value_buffer(v38, qword_1EB0EDE88);
    v93 = sub_1A34CA230();
    v13 = sub_1A34CD630();
    if (!os_log_type_enabled(v93, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not linking current image to current poster since contact currently has no image data";
    goto LABEL_11;
  }

  v19 = v18;
  v92 = sub_1A34C9690();
  v93 = v20;

  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5790);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A34DAA10;
  v23 = [a1 identifier];
  v24 = sub_1A34CD110();
  v26 = v25;

  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  v27 = sub_1A34CD350();

  v28 = [v21 currentPostersRequestForContactIdentifiers_];

  v91 = [objc_allocWithZone(MEMORY[0x1E695CE00]) init];
  v29 = sub_1A3416F44(v28);
  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_43:

    if (qword_1EB0C4A50 != -1)
    {
      swift_once();
    }

    v76 = sub_1A34CA250();
    __swift_project_value_buffer(v76, qword_1EB0EDE88);
    v77 = a1;
    v78 = sub_1A34CA230();
    v79 = sub_1A34CD630();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v96[0] = v81;
      *v80 = 136315138;
      v82 = [v77 identifier];
      v83 = sub_1A34CD110();
      v85 = v84;

      v94 = v83;
      v95 = v85;
      v86 = sub_1A34CD170();
      v88 = sub_1A31EE23C(v86, v87, v96);

      *(v80 + 4) = v88;
      _os_log_impl(&dword_1A31E6000, v78, v79, "Could not find current poster to link image for contact: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x1A58F1010](v81, -1, -1);
      MEMORY[0x1A58F1010](v80, -1, -1);
      sub_1A31EC234(v92, v93);

      v17 = v91;
      goto LABEL_15;
    }

    sub_1A31EC234(v92, v93);

    v17 = v91;
LABEL_13:

    goto LABEL_15;
  }

  v74 = v29;
  v75 = sub_1A34CD9B0();
  v29 = v74;
  if (!v75)
  {
    goto LABEL_43;
  }

LABEL_28:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1A58EF310](0);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v39 = *(v29 + 32);
  }

  v90 = v39;

  v40 = [v90 pairedImage];
  if (v40)
  {

    if (qword_1EB0C4A50 == -1)
    {
LABEL_33:
      v41 = sub_1A34CA250();
      __swift_project_value_buffer(v41, qword_1EB0EDE88);
      v42 = a1;
      v43 = sub_1A34CA230();
      v44 = sub_1A34CD630();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v96[0] = v46;
        *v45 = 136315138;
        v47 = [v42 identifier];
        v48 = sub_1A34CD110();
        v50 = v49;

        v94 = v48;
        v95 = v50;
        v51 = sub_1A34CD170();
        v53 = sub_1A31EE23C(v51, v52, v96);

        *(v45 + 4) = v53;
        _os_log_impl(&dword_1A31E6000, v43, v44, "Current poster already has a paired image for contact: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x1A58F1010](v46, -1, -1);
        MEMORY[0x1A58F1010](v45, -1, -1);
        sub_1A31EC234(v92, v93);

        v17 = v90;
LABEL_15:

        return;
      }

      sub_1A31EC234(v92, v93);

      v17 = v90;
      goto LABEL_13;
    }

LABEL_50:
    swift_once();
    goto LABEL_33;
  }

  v55 = v92;
  v54 = v93;
  sub_1A31EC1E0(v92, v93);
  [a1 cropRect];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_1A34C9710();
  v64 = objc_allocWithZone(MEMORY[0x1E695CD88]);
  v65 = sub_1A34C9680();
  sub_1A31EC234(v55, v54);
  v66 = sub_1A34C96F0();
  v67 = [v64 initWithImageData:v65 cropRect:v66 lastUsedDate:{v57, v59, v61, v63}];

  (*(v3 + 8))(v6, v2);
  [v67 setPairedPoster_];
  v68 = [a1 identifier];
  if (!v68)
  {
    sub_1A34CD110();
    v68 = sub_1A34CD0E0();
  }

  v69 = [objc_opt_self() requestToCreateRecentImage:v67 forContactIdentifier:v68];

  v70 = [objc_allocWithZone(MEMORY[0x1E695CDA8]) init];
  v94 = 0;
  if ([v70 performCreateRequest:v69 error:&v94])
  {
    v71 = v94;

    sub_1A31EC234(v92, v93);
  }

  else
  {
    v72 = v94;
    v73 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C4A50 != -1)
    {
      swift_once();
    }

    v30 = sub_1A34CA250();
    __swift_project_value_buffer(v30, qword_1EB0EDE88);
    v31 = v73;
    v32 = sub_1A34CA230();
    v33 = sub_1A34CD640();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v73;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1A31E6000, v32, v33, "Error linking current image to current poster: %@", v34, 0xCu);
      sub_1A3288FDC(v35, &unk_1EB0C6C40);
      MEMORY[0x1A58F1010](v35, -1, -1);
      MEMORY[0x1A58F1010](v34, -1, -1);
      sub_1A31EC234(v92, v93);
    }

    else
    {
      sub_1A31EC234(v92, v93);
    }
  }
}

uint64_t sub_1A3416F44(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [v1 performFetchRequest:a1 error:v7];
  v3 = v7[0];
  sub_1A3418C1C();
  v4 = sub_1A34CD370();
  v5 = v3;

  if (v5)
  {

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1A3417018(uint64_t a1)
{
  v2[74] = v1;
  v2[73] = a1;
  v3 = sub_1A34C9780();
  v2[75] = v3;
  v2[76] = *(v3 - 8);
  v2[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  v2[78] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3417114, 0, 0);
}

uint64_t sub_1A3417114()
{
  v30 = v0;
  v1 = *(v0 + 592);
  v2 = type metadata accessor for VisualIdentity(0);
  sub_1A31EE4BC(v1 + *(v2 + 28), v0 + 16);
  sub_1A31EE4BC(v0 + 16, v0 + 96);
  *(v0 + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB0A8);
  if (swift_dynamicCast())
  {
    sub_1A31EE568((v0 + 136), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    v27 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    *(v0 + 640) = v5;
    *v5 = v0;
    v5[1] = sub_1A34175F8;

    return v27(v3, v4);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_1A3288FDC(v0 + 136, &qword_1EB0CB0B0);
    if (qword_1EB0C4A50 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 584);
    v8 = sub_1A34CA250();
    __swift_project_value_buffer(v8, qword_1EB0EDE88);
    sub_1A31EE4BC(v0 + 16, v0 + 176);
    v9 = v7;
    v10 = sub_1A34CA230();
    v11 = sub_1A34CD640();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 616);
      v13 = *(v0 + 608);
      v14 = *(v0 + 600);
      v15 = *(v0 + 584);
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v16 = 136315394;
      v17 = [v15 id];
      sub_1A34C9760();

      sub_1A3418AA8();
      v18 = sub_1A34CDDF0();
      v20 = v19;
      (*(v13 + 8))(v12, v14);
      v21 = sub_1A31EE23C(v18, v20, &v29);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      sub_1A31EE4BC(v0 + 176, v0 + 216);
      sub_1A328D790(v0 + 216, v0 + 296, &qword_1EB0CBD60);
      if (*(v0 + 320))
      {
        sub_1A31EE568((v0 + 296), v0 + 256);
        sub_1A31EE4BC(v0 + 256, v0 + 336);
        v22 = sub_1A34CD170();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0(v0 + 256);
        sub_1A3288FDC(v0 + 216, &qword_1EB0CBD60);
        __swift_destroy_boxed_opaque_existential_0(v0 + 176);
      }

      else
      {
        sub_1A3288FDC(v0 + 296, &qword_1EB0CBD60);
        sub_1A3288FDC(v0 + 216, &qword_1EB0CBD60);
        __swift_destroy_boxed_opaque_existential_0(v0 + 176);
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_1A31EE23C(v22, v24, &v29);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1A31E6000, v10, v11, "Avatar could not be saved to contact: %s avatar: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v28, -1, -1);
      MEMORY[0x1A58F1010](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 176);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1A34175F8(uint64_t a1)
{
  *(*v1 + 648) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A34176F8, 0, 0);
}

uint64_t sub_1A34176F8()
{
  v23 = v0;
  v1 = *(v0 + 648);
  if (v1)
  {
    v2 = *(v0 + 624);
    *(v0 + 576) = v1;
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    (*(v4 + 16))(v3, v4);
    v5 = sub_1A34CA200();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = swift_task_alloc();
    *(v0 + 656) = v6;
    v7 = sub_1A3418BC8();
    *v6 = v0;
    v6[1] = sub_1A3417AC4;
    v8 = *(v0 + 624);
    v9 = MEMORY[0x1E6981748];

    return MEMORY[0x1EEDBF598](v8, v9, v7);
  }

  else
  {
    if (qword_1EB0C1250 != -1)
    {
      swift_once();
    }

    v10 = sub_1A34CA250();
    __swift_project_value_buffer(v10, qword_1EB0ECFA8);
    sub_1A31EE4BC(v0 + 16, v0 + 376);
    v11 = sub_1A34CA230();
    v12 = sub_1A34CD640();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      sub_1A31EE4BC(v0 + 376, v0 + 416);
      sub_1A328D790(v0 + 416, v0 + 496, &qword_1EB0CBD60);
      if (*(v0 + 520))
      {
        sub_1A31EE568((v0 + 496), v0 + 456);
        sub_1A31EE4BC(v0 + 456, v0 + 536);
        v15 = sub_1A34CD170();
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_0(v0 + 456);
        sub_1A3288FDC(v0 + 416, &qword_1EB0CBD60);
        __swift_destroy_boxed_opaque_existential_0(v0 + 376);
      }

      else
      {
        sub_1A3288FDC(v0 + 496, &qword_1EB0CBD60);
        sub_1A3288FDC(v0 + 416, &qword_1EB0CBD60);
        __swift_destroy_boxed_opaque_existential_0(v0 + 376);
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_1A31EE23C(v15, v17, &v22);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1A31E6000, v11, v12, "Could not get image from avatar: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1A58F1010](v14, -1, -1);
      MEMORY[0x1A58F1010](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 376);
    }

    sub_1A3418820();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1A3417AC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[83] = a1;
  v4[84] = a2;
  v4[85] = v2;

  sub_1A3288FDC(v4[78], &qword_1EB0C75C0);
  if (v2)
  {
    v5 = sub_1A3417F48;
  }

  else
  {
    v5 = sub_1A3417C10;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A3417C10()
{
  v1 = v0[73];
  v2 = sub_1A34C9680();
  [v1 setImageData_];

  [v1 setThumbnailImageData_];
  [v1 setCropRect_];
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[86] = v5;
  *v5 = v0;
  v5[1] = sub_1A3417D9C;
  v6 = v0[73];

  return v8(v6, v3, v4);
}

uint64_t sub_1A3417D9C()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_1A3417FE0;
  }

  else
  {
    v2 = sub_1A3417EB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3417EB0()
{
  sub_1A31EC234(v0[83], v0[84]);

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A3417F48()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3417FE0()
{
  sub_1A31EC234(v0[83], v0[84]);

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A3418084(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  v3 = sub_1A34C9780();
  v2[49] = v3;
  v2[50] = *(v3 - 8);
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3418144, 0, 0);
}

uint64_t sub_1A3418144()
{
  v31 = v0;
  v1 = *(v0 + 384);
  v2 = type metadata accessor for VisualIdentity(0);
  sub_1A31EE4BC(v1 + *(v2 + 32), v0 + 16);
  sub_1A31EE4BC(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB0A8);
  if (swift_dynamicCast())
  {
    sub_1A31EE568((v0 + 136), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    v28 = (*(v4 + 24) + **(v4 + 24));
    v5 = swift_task_alloc();
    *(v0 + 416) = v5;
    *v5 = v0;
    v5[1] = sub_1A341861C;
    v6 = *(v0 + 376);

    return v28(v6, v3, v4);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_1A3288FDC(v0 + 136, &qword_1EB0CB0B0);
    if (qword_1EB0C4A50 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 376);
    v9 = sub_1A34CA250();
    __swift_project_value_buffer(v9, qword_1EB0EDE88);
    sub_1A31EE4BC(v0 + 16, v0 + 176);
    v10 = v8;
    v11 = sub_1A34CA230();
    v12 = sub_1A34CD640();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 400);
      v13 = *(v0 + 408);
      v15 = *(v0 + 392);
      v16 = *(v0 + 376);
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v17 = 136315394;
      v18 = [v16 id];
      sub_1A34C9760();

      sub_1A3418AA8();
      v19 = sub_1A34CDDF0();
      v21 = v20;
      (*(v14 + 8))(v13, v15);
      v22 = sub_1A31EE23C(v19, v21, &v30);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      sub_1A31EE4BC(v0 + 176, v0 + 216);
      sub_1A328D790(v0 + 216, v0 + 296, &qword_1EB0CB0B8);
      if (*(v0 + 320))
      {
        sub_1A31EE568((v0 + 296), v0 + 256);
        sub_1A31EE4BC(v0 + 256, v0 + 336);
        v23 = sub_1A34CD170();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(v0 + 256);
        sub_1A3288FDC(v0 + 216, &qword_1EB0CB0B8);
        __swift_destroy_boxed_opaque_existential_0(v0 + 176);
      }

      else
      {
        sub_1A3288FDC(v0 + 296, &qword_1EB0CB0B8);
        sub_1A3288FDC(v0 + 216, &qword_1EB0CB0B8);
        __swift_destroy_boxed_opaque_existential_0(v0 + 176);
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_1A31EE23C(v23, v25, &v30);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_1A31E6000, v11, v12, "Poster could not be saved to contact: %s poster: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v29, -1, -1);
      MEMORY[0x1A58F1010](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 176);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1A341861C()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1A34187A4;
  }

  else
  {
    v2 = sub_1A3418730;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3418730()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A34187A4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A3418820()
{
  result = qword_1EB0C1D28;
  if (!qword_1EB0C1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D28);
  }

  return result;
}

uint64_t sub_1A3418874(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 currentEnvironment];
  v5 = [v4 isInternalBuild];

  if (a1)
  {
    if (v5)
    {
      sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000022, 0x80000001A3511A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAE90);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1A34DAA10;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
      v8 = sub_1A34CD170();
      v10 = v9;
      *(v6 + 56) = MEMORY[0x1E69E6158];
      *(v6 + 64) = sub_1A329A290();
      *(v6 + 32) = v8;
      *(v6 + 40) = v10;
      v11 = sub_1A34CD140();

      return v11;
    }
  }

  return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000016, 0x80000001A3511A10);
}

uint64_t type metadata accessor for VisualIdentityExporter()
{
  result = qword_1EB0CB0D0;
  if (!qword_1EB0CB0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3418AA8()
{
  result = qword_1ED854E60;
  if (!qword_1ED854E60)
  {
    sub_1A34C9780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854E60);
  }

  return result;
}

uint64_t sub_1A3418B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3418B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3418BC8()
{
  result = qword_1EB0CB0C0;
  if (!qword_1EB0CB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB0C0);
  }

  return result;
}

unint64_t sub_1A3418C1C()
{
  result = qword_1EB0CB0C8;
  if (!qword_1EB0CB0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0CB0C8);
  }

  return result;
}

uint64_t sub_1A3418C90()
{
  result = type metadata accessor for VisualIdentity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A3418CFC()
{
  v0 = sub_1A34CA620();
  __swift_allocate_value_buffer(v0, qword_1EB0ECF60);
  __swift_project_value_buffer(v0, qword_1EB0ECF60);
  return sub_1A34CA630();
}

uint64_t sub_1A3418D6C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v3 = *(v1 + 64);
  *a1 = v3;
  v4 = *(v1 + 72);
  *(a1 + 8) = v4;
  return sub_1A31EE004(v3, v4);
}

uint64_t sub_1A3418E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v3 + 64);
  *a2 = v4;
  v5 = *(v3 + 72);
  *(a2 + 8) = v5;
  return sub_1A31EE004(v4, v5);
}

uint64_t sub_1A3418ED4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_1A31EE004(v3, v1);
  return sub_1A3418F1C(&v3);
}

uint64_t sub_1A3418F1C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 72);
  v11 = *(v1 + 64);
  v12 = v4;
  v9 = v2;
  v10 = v3;
  if (_s14ContactsUICore30AvatarBackgroundRepresentationO2eeoiySbAC_ACtFZ_0(&v11, &v9))
  {
    v5 = *(v1 + 64);
    *(v1 + 64) = v2;
    v6 = *(v1 + 72);
    *(v1 + 72) = v3;

    return sub_1A31ECC9C(v5, v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v1;
    sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
    sub_1A34C9990();
    sub_1A31ECC9C(v2, v3);
  }
}

void *sub_1A3419094()
{
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_1A341913C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_1A34191F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3419224(v1);
}

void sub_1A3419224(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
    sub_1A34C9990();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A31EC194(0, &qword_1EB0C00D0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A34CD830();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

__n128 sub_1A34193B4@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v3 = *(v1 + 48);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1A3419464@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v3 + 48);
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

void sub_1A3419514(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_1A3419554(v2);
}

void sub_1A3419554(uint64_t a1)
{
  if (*(v1 + 48))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
      sub_1A34C9990();

      return;
    }
  }

  else if ((*(a1 + 32) & 1) != 0 || !CGRectEqualToRect(*(v1 + 16), *a1))
  {
    goto LABEL_9;
  }

  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);

  sub_1A341AE2C();
}

id sub_1A34196BC()
{
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v1 = *(v0 + 56);

  return v1;
}

void sub_1A341976C(void *a1)
{
  v2 = *(v1 + 56);
  sub_1A31EC194(0, &qword_1EB0C01B8);
  v3 = v2;
  v4 = sub_1A34CD830();

  if (v4)
  {
    sub_1A341C0FC(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
    sub_1A34C9990();
  }
}

uint64_t sub_1A34198E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A341990C, 0, 0);
}

uint64_t sub_1A341990C()
{
  v1 = v0[23];
  swift_getKeyPath();
  v0[18] = v1;
  v0[24] = OBJC_IVAR____TtC14ContactsUICore18MemojiAvatarSource___observationRegistrar;
  v0[25] = sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v2 = *(v1 + 56);
  v0[26] = v2;
  v3 = objc_opt_self();
  v4 = qword_1EB0C2340;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1EB0C2348;
  v7 = unk_1EB0C2350;
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1A3419B18;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB0E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A341ABB4;
  v0[13] = &block_descriptor_24_0;
  v0[14] = v8;
  [v3 imageFromMetadata:v5 size:v0 + 10 completionHandler:{v6, v7}];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A3419B18()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3419BF8, 0, 0);
}

uint64_t sub_1A3419BF8()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[19];
  v4 = [v3 HEICRepresentation];

  v5 = sub_1A34C9690();
  v7 = v6;

  v0[27] = v5;
  v0[28] = v7;
  swift_getKeyPath();
  v0[20] = v2;
  v8 = v1;
  sub_1A31EC1E0(v5, v7);
  sub_1A34C99A0();

  v9 = *(v2 + 72);
  if (v9 < 2)
  {
    v10 = *(v0[23] + 64);
LABEL_7:
    sub_1A31EE004(v10, v9);
    goto LABEL_9;
  }

  if (qword_1EB0C1788 != -1)
  {
    swift_once();
  }

  LOBYTE(v9) = byte_1EB0ED128;
  if (byte_1EB0ED128 < 2u)
  {
    v10 = qword_1EB0ED120;
    goto LABEL_7;
  }

  sub_1A34CC530();
LABEL_9:
  v11 = v0[26];
  sub_1A31EC194(0, &qword_1ED853440);
  v12 = sub_1A34CD800();
  sub_1A31EEE60(0, 0xF000000000000000);
  v13 = [v12 colorWithAlphaComponent_];
  v0[29] = v13;

  v14 = v11;
  sub_1A32F74C0(v5, v7);
  v15 = v13;

  sub_1A31EEE60(v5, v7);
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_1A3419E74;

  return sub_1A3382B30(0xD000000000000028, 0x80000001A350EF00, v11, v5, v7, v15);
}

uint64_t sub_1A3419E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v7[31] = a2;
  v7[32] = a3;
  v7[33] = a4;
  v7[34] = v4;

  if (v4)
  {
    v8 = sub_1A341A0F8;
  }

  else
  {
    v7[35] = a1;
    v8 = sub_1A3419FA0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A3419FA0()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 176);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = sub_1A3444DEC(v2, v1);
  v7 = sub_1A34CD0E0();
  v8 = [v4 finalizedConfiguration:v6 forExtensionIdentifier:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = sub_1A3444DEC(*(v0 + 256), *(v0 + 264));
  }

  v10 = sub_1A3444A44(v9, 0);
  v11 = *(v0 + 264);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  sub_1A335DED4(v10 & 0xFFFFFFFF00000001, v16 & 1, v17, *(v0 + 176), *(v0 + 168));

  sub_1A31EEE60(v14, v12);
  sub_1A31EC234(v14, v12);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A341A0F8()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];

  sub_1A31EC234(v3, v1);
  sub_1A31EEE60(v3, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A341A188(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v27 = a1;
  if (!a2)
  {
    goto LABEL_7;
  }

  v5 = a4;
  if (a4 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v7 = a2;
  sub_1A32F74C0(a3, v5);
  v8 = [v7 avatarRecordData];
  if (!v8)
  {
    sub_1A31EEE60(a3, v5);

LABEL_7:
    v18 = sub_1A33E3C00();
    v10 = 0;
    v15 = 0;
    v19 = 0;
    a3 = 0;
    v12 = 0xF000000000000000;
    v17 = 0xF000000000000000;
    v5 = 0xF000000000000000;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_1A34C9690();
  v12 = v11;

  v13 = [v7 poseConfigurationData];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1A34C9690();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v19 = [v7 poseHasBody];
  sub_1A32F74C0(a3, v5);
  sub_1A31EC1E0(v10, v12);
  v18 = sub_1A33E3C00();

  sub_1A31EC234(v10, v12);
  sub_1A31EEE60(a3, v5);
LABEL_8:
  sub_1A31EEE60(0, 0xF000000000000000);
  sub_1A31EEE60(0, 0xF000000000000000);
  sub_1A31EEE60(0, 0xF000000000000000);
  *&v22 = v18;
  *(&v22 + 1) = v10;
  *&v23 = v12;
  *(&v23 + 1) = v15;
  *&v24 = v17;
  BYTE8(v24) = v19;
  *&v25 = a3;
  *(&v25 + 1) = v5;
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  sub_1A34CDA40();
  sub_1A34912C0(v26, v21);
  sub_1A33E4BF8(&v22);
  return sub_1A32F7584(v21);
}

uint64_t sub_1A341A3B8(uint64_t a1)
{
  sub_1A341A188(a1, *v1, *(v1 + 8), *(v1 + 16));
  v3 = *(v2 + 8);

  return v3();
}

void sub_1A341A438()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  if (v4 >= v2)
  {
    *&v5 = v2;
  }

  else
  {
    *&v5 = v4;
  }

  if (v2 > v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  qword_1EB0C2348 = v5;
  unk_1EB0C2350 = v6 * 0.45;
}

uint64_t sub_1A341A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a4;
  v4[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A341A4E4, 0, 0);
}

uint64_t sub_1A341A4E4()
{
  v1 = *(v0 + 64);
  v2 = sub_1A341C6D4(v1, 0);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *(v0 + 80) = v2;
  *(v0 + 88) = v4;
  *(v0 + 96) = v6;
  *(v0 + 104) = v8;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_1A341A5EC;

  return sub_1A3382B30(0xD000000000000028, 0x80000001A350EF00, v2, v4, v6, v8);
}

uint64_t sub_1A341A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v7[15] = a2;
  v7[16] = a3;
  v7[17] = a4;
  v7[18] = v4;

  if (v4)
  {
    v8 = sub_1A341AA94;
  }

  else
  {
    v7[19] = a1;
    v8 = sub_1A341A718;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A341A718()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[8];
  v0[2] = v5;
  v0[3] = v1;
  v0[4] = v4;
  v0[5] = v2;
  v0[6] = v3;
  v6 = v5;

  v7 = v3;
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1A341A810;

  return sub_1A3446BB4((v0 + 2));
}

uint64_t sub_1A341A810(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 136);
  v9 = *(*v4 + 64);
  *(*v4 + 168) = v3;

  if (v3)
  {

    v10 = sub_1A341AB14;
  }

  else
  {
    *(v7 + 176) = a1;
    *(v7 + 184) = a3;
    *(v7 + 192) = a2 & 1;
    v10 = sub_1A341A9D4;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1A341A9D4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  sub_1A335DED4(*(v0 + 176) & 0xFFFFFFFF00000001, *(v0 + 192), *(v0 + 184), *(v0 + 64), *(v0 + 56));

  sub_1A31EEE60(v4, v2);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A341AA94()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);

  sub_1A31EEE60(v3, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A341AB14()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  sub_1A31EEE60(v4, v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1A341ABB4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1A341AC18@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v1 + 88);
  swift_getKeyPath();
  if (v4)
  {
    v5 = v4;
    sub_1A34C99A0();

    v6 = *(v1 + 64);
    v7 = *(v2 + 72);
    a1[2] = v4;
    a1[3] = 256;
    result = sub_1A31EE004(v6, v7);
    v9 = 0x4000000000000000;
  }

  else
  {
    sub_1A34C99A0();

    v6 = *(v1 + 64);
    v7 = *(v2 + 72);
    result = sub_1A31EE004(v6, v7);
    v9 = 0x800000000000000;
  }

  *a1 = v6;
  a1[1] = v7 & 7;
  a1[4] = 0;
  a1[12] = v9;
  return result;
}

void *sub_1A341AD84()
{
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1A341AE2C()
{
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v1 = *(v0 + 80);
  if (v1)
  {
    v1 = [(CGImage *)v1 CGImage];
    if (v1)
    {
      v2 = v1;
      swift_getKeyPath();
      sub_1A34C99A0();

      if ((*(v0 + 48) & 1) != 0 || (v3 = CGImageCreateWithImageInRect(v2, *(v0 + 16))) == 0)
      {
        v1 = v2;
      }

      else
      {
        v4 = v3;

        v1 = v4;
      }
    }
  }

  sub_1A341B280(v1);
}

uint64_t sub_1A341AF60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A34DAA10;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v2 = *(v0 + 72);
  if (v2 >= 2)
  {
    if (qword_1EB0C1788 != -1)
    {
      swift_once();
    }

    LOBYTE(v2) = byte_1EB0ED128;
    if (byte_1EB0ED128 >= 2u)
    {
      v3 = sub_1A34CC530();
      goto LABEL_9;
    }

    v3 = qword_1EB0ED120;
  }

  else
  {
    v3 = *(v0 + 64);
  }

  sub_1A31EE004(v3, v2);
LABEL_9:
  *(v1 + 32) = v3;
  return v1;
}

id sub_1A341B0A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_1A341B188(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_1A341C0FC(v2);
}

id sub_1A341B1C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

void sub_1A341B280(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (!v4)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
    sub_1A34C9990();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CGImage(0);
  sub_1A341CCE4(&qword_1EB0C0240, type metadata accessor for CGImage);
  v5 = v4;
  v6 = sub_1A34C9B50();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + 88);
LABEL_8:
  *(v2 + 88) = a1;
}

id sub_1A341B430()
{
  v1 = v0;
  v2 = sub_1A34CC450();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 backgroundColorDescription];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x1E695CEF8]) initWithColorDescription_];

    [v9 red];
    [v9 green];
    [v9 blue];
    (*(v3 + 104))(v6, *MEMORY[0x1E69814D8], v2);
    v10 = sub_1A34CC580();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A341B5C4(void *a1)
{
  v2 = a1;
  sub_1A3419224(a1);
  sub_1A341AE2C();
}

void sub_1A341B5F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1A34C9010();
  v4 = a2;
  v3();
}

uint64_t sub_1A341B660(uint64_t a1)
{
  sub_1A31EE4BC(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  v14[0] = v1;
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  swift_getKeyPath();
  v14[0] = v13;
  sub_1A34C99A0();

  if (v6)
  {
    if ((*(v13 + 48) & 1) == 0)
    {
LABEL_8:

LABEL_9:
      v11 = 1;
      return v11 & 1;
    }
  }

  else
  {
    if (*(v13 + 48))
    {
      goto LABEL_8;
    }

    v15.origin.x = v2;
    v15.origin.y = v3;
    v15.size.width = v4;
    v15.size.height = v5;
    if (!CGRectEqualToRect(v15, *(v13 + 16)))
    {
      goto LABEL_8;
    }
  }

  swift_getKeyPath();
  v14[0] = v1;
  sub_1A34C99A0();

  v7 = *(v1 + 56);
  swift_getKeyPath();
  v14[0] = v13;
  v8 = v7;
  sub_1A34C99A0();

  v9 = *(v13 + 56);
  sub_1A31EC194(0, &qword_1EB0C01B8);
  v10 = v9;
  LOBYTE(v7) = sub_1A34CD830();

  v11 = v7 ^ 1;
  return v11 & 1;
}

uint64_t sub_1A341B8C4()
{
  sub_1A31ECC9C(*(v0 + 64), *(v0 + 72));

  v1 = OBJC_IVAR____TtC14ContactsUICore18MemojiAvatarSource___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A341B98C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v4 = *(v3 + 64);
  *a1 = v4;
  v5 = *(v3 + 72);
  *(a1 + 8) = v5;
  return sub_1A31EE004(v4, v5);
}

uint64_t sub_1A341BA64()
{
  v1 = sub_1A341AF60();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A341BAEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A341C470(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A341BB1C()
{
  swift_getKeyPath();
  *&v10 = v0;
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v1 = *(v0 + 88);
  if (!v1)
  {
    return 0;
  }

  swift_getKeyPath();
  *&v10 = v0;
  v2 = v1;
  sub_1A34C99A0();

  v3 = *(v0 + 72);
  *&v10 = *(v0 + 64);
  *(&v10 + 1) = v3 & 7;
  *&v11[8] = xmmword_1A34F4DF0;
  *v11 = v1;
  *&v15 = 0x4000000000000000;
  *&v16[8] = vdupq_n_s64(0x4072C00000000000uLL);
  v8[6] = v15;
  v8[7] = *v16;
  v9 = *&v16[16];
  v8[2] = *&v11[16];
  v8[3] = v12;
  v8[4] = v13;
  v8[5] = v14;
  v8[0] = v10;
  v8[1] = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52F0);
  swift_allocObject();
  v4 = v2;
  sub_1A31EE004(v10, v3);
  sub_1A3288ED8(&v10, v7);
  MEMORY[0x1A58EC070](v8);
  sub_1A34CA820();
  v5 = sub_1A34CA800();

  sub_1A3288F34(&v10);

  return v5;
}

void sub_1A341BD0C(void *a1)
{
  swift_getKeyPath();
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  LOBYTE(v12) = *(v1 + 72);
  sub_1A341BEE4();
  swift_getKeyPath();
  sub_1A34C99A0();

  v3 = *(v1 + 56);
  v4 = sub_1A34CD0E0();

  v5 = [objc_opt_self() metadataWithMemojiMetadata:v3 backgroundColorDescription:{v4, v1, v12}];

  v6 = [objc_opt_self() dataForMemojiMetadata_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A34C9690();
    v10 = v9;

    v11 = sub_1A34C9680();
    sub_1A31EC234(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  [a1 setMemojiMetadata_];
}

uint64_t sub_1A341BEE4()
{
  v1 = *(v0 + 8);
  if (v1 >= 2)
  {
    if (qword_1EB0C1788 != -1)
    {
      swift_once();
    }

    LOBYTE(v1) = byte_1EB0ED128;
    if (byte_1EB0ED128 >= 2u)
    {
      sub_1A34CC530();
      goto LABEL_9;
    }

    v2 = qword_1EB0ED120;
  }

  else
  {
    v2 = *v0;
  }

  sub_1A31EE004(v2, v1);
LABEL_9:
  sub_1A32E98C0();

  sub_1A34CD530();
  MEMORY[0x1A58EEA30](58, 0xE100000000000000);
  sub_1A34CD530();
  MEMORY[0x1A58EEA30](58, 0xE100000000000000);
  sub_1A34CD530();
  return 0;
}

uint64_t sub_1A341C030()
{
  v1 = sub_1A341BB1C();
  if (v1)
  {
    v1 = sub_1A34CC5C0();
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A341C098(void *a1)
{
  sub_1A341BD0C(a1);
  v2 = *(v1 + 8);

  return v2();
}

void sub_1A341C0FC(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 56);
  *(v2 + 56) = a1;
  v4 = a1;

  v5 = objc_opt_self();
  swift_getKeyPath();
  v9[0] = v2;
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v6 = *(v2 + 56);
  v9[4] = sub_1A341CE44;
  v9[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A341B5F8;
  v9[3] = &block_descriptor_21;
  v7 = _Block_copy(v9);
  v8 = v6;
  sub_1A34C9010();

  [v5 stickerImageFromMetadata:v8 size:v7 completionHandler:400.0];
  _Block_release(v7);
}

uint64_t sub_1A341C270(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  sub_1A34C99D0();
  *(v3 + 56) = a1;
  if (v6 == 255)
  {
    v8 = qword_1EB0C1788;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB0ED120;
    LOBYTE(v6) = byte_1EB0ED128;
    sub_1A31EE004(qword_1EB0ED120, byte_1EB0ED128);
  }

  else
  {
    v7 = a1;
  }

  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v10 = objc_opt_self();
  swift_getKeyPath();
  v15[0] = v3;
  sub_1A341CCE4(&qword_1EB0C24A0, type metadata accessor for MemojiAvatarSource);
  sub_1A34C99A0();

  v11 = *(v3 + 56);
  v15[4] = sub_1A341CC28;
  v15[5] = v3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A341B5F8;
  v15[3] = &block_descriptor_23;
  v12 = _Block_copy(v15);
  v13 = v11;
  sub_1A34C9010();

  [v10 stickerImageFromMetadata:v13 size:v12 completionHandler:400.0];
  _Block_release(v12);

  return v3;
}

uint64_t sub_1A341C470(void *a1)
{
  v2 = [a1 memojiMetadata];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A34C9690();
    v6 = v5;

    v7 = objc_opt_self();
    v8 = sub_1A34C9680();
    v9 = [v7 memojiMetadataFromData_];

    if (v9)
    {
      v10 = [objc_allocWithZone(CNUIMemojiMetadata) initWithMemojiMetadata_];
      v13 = sub_1A341B430();
      v14 = 0;
      type metadata accessor for MemojiAvatarSource();
      swift_allocObject();
      v11 = sub_1A341C270(v10, &v13);

      sub_1A31EC234(v4, v6);
      return v11;
    }

    sub_1A31EC234(v4, v6);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1A341C5B0(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  sub_1A31EEE60(0, 0xF000000000000000);
  if (a4)
  {
    v8 = [a4 colorWithAlphaComponent_];

LABEL_9:
    v11 = a1;
    sub_1A32F74C0(a2, a3);
    v12 = v8;

    sub_1A31EEE60(a2, a3);
    return a1;
  }

  if (qword_1EB0C4870 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB0EDCF8;
  result = *(qword_1EB0EDCF8 + 16);
  if (result)
  {
    result = sub_1A33886C4(result);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v9 + 16))
    {
      v8 = *(v9 + 16 * result + 40);
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A341C6D4(void *a1, void *a2)
{
  v3 = [a1 memojiMetadata];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A34C9690();
    v7 = v6;

    v8 = objc_opt_self();
    sub_1A31EC1E0(v5, v7);
    v9 = sub_1A34C9680();
    v10 = [v8 memojiMetadataFromData_];

    sub_1A31EC234(v5, v7);
    if (v10)
    {
      v11 = objc_opt_self();
      v10 = v10;
      v12 = [v11 imageDataFromMetadata_];
      v13 = sub_1A34C9690();
      v15 = v14;

      v3 = [objc_allocWithZone(CNUIMemojiMetadata) initWithMemojiMetadata_];
    }

    else
    {
      v3 = 0;
      v13 = 0;
      v15 = 0xF000000000000000;
    }
  }

  else
  {
    v13 = 0;
    v10 = 0;
    v5 = 0;
    v15 = 0xF000000000000000;
    v7 = 0xF000000000000000;
  }

  v16 = sub_1A341C5B0(v3, v13, v15, a2);

  sub_1A31EEE60(v5, v7);
  return v16;
}

id sub_1A341C868(id a1, int a2, void *a3)
{
  *&v15 = 0xD000000000000012;
  *(&v15 + 1) = 0x80000001A350AF00;
  sub_1A34CDA40();
  sub_1A34440D8(v19, a1 & 1, a2, a3);
  if (v3)
  {

    sub_1A32F7584(v19);
  }

  else
  {
    sub_1A32F7584(v19);
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    if (v21 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v7 = sub_1A34C9680();
    }

    if (v17 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_1A34C9680();
    }

    a1 = [objc_opt_self() metadataWithAvatarRecordData:v7 poseConfigurationData:{v8, v15, v16}];

    sub_1A31EC194(0, &qword_1ED853440);
    sub_1A32F74C0(v18, *(&v18 + 1));

    v10 = sub_1A33E3A1C(v9);
    sub_1A31EEE60(0, 0xF000000000000000);
    v11 = [v10 colorWithAlphaComponent_];

    v12 = a1;
    sub_1A32F74C0(v18, *(&v18 + 1));
    v13 = v11;

    sub_1A31EEE60(v18, *(&v18 + 1));
    sub_1A33E4BF8(&v15);
  }

  return a1;
}

uint64_t sub_1A341CA98()
{
  v17 = v0;
  v1 = sub_1A341C868((*(*(v0 + 16) + 8) | (*(*(v0 + 16) + 12) << 32)), *(*(v0 + 16) + 16), *(*(v0 + 16) + 24));
  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (v1)
  {
    v10 = v1;
    v11 = v9;
    v15 = sub_1A34CC440();
    v16 = 0;
    type metadata accessor for MemojiAvatarSource();
    swift_allocObject();
    v12 = sub_1A341C270(v10, &v15);

    sub_1A31EEE60(v7, v8);
    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    sub_1A3363B78();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    sub_1A31EEE60(v7, v8);

    v5 = *(v0 + 8);

    return v5();
  }
}

void sub_1A341CC28(void *a1)
{
  v2 = a1;
  sub_1A3419224(a1);

  sub_1A341AE2C();
}

__n128 sub_1A341CC6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 48) = *(v2 + 32);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  sub_1A341AE2C();
  return result;
}

void sub_1A341CCAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

uint64_t sub_1A341CCE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A341CD2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

void sub_1A341CD64()
{
  v1 = *(v0 + 24);
  sub_1A341C0FC(v1);
}

uint64_t sub_1A341CDC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 64);
  v4 = *(v0 + 32);
  *(v2 + 64) = v1;
  v5 = *(v2 + 72);
  *(v2 + 72) = v4;
  sub_1A31EE004(v1, v4);
  return sub_1A31ECC9C(v3, v5);
}

uint64_t XPCIdentity.hashValue.getter()
{
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](0);
  return sub_1A34CDF70();
}

unint64_t sub_1A341CEC4()
{
  result = qword_1EB0CB0E8;
  if (!qword_1EB0CB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CB0E8);
  }

  return result;
}

uint64_t VisualIdentityEditor.init(contact:isMeContact:contactStore:saveChangesToContactStore:supportedIdentitySources:supportedIdentityTypes:matchingTransitionWithNamespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v27 = *a7;
  *a9 = 0;
  v16 = type metadata accessor for VisualIdentityEditor();
  v17 = v16[6];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  v18 = a9 + v16[7];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  v19 = a9 + v16[10];
  sub_1A34CC730();
  *v19 = v31;
  *(v19 + 8) = *(&v31 + 1);
  v20 = a9 + v16[12];
  sub_1A34CC730();
  *v20 = v31;
  *(v20 + 8) = *(&v31 + 1);
  v21 = v16[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5AC0);
  sub_1A34CC730();
  *(a9 + v21) = v31;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11 & 1;
  v22 = (a9 + v16[8]);
  *v22 = a1;
  v22[1] = a2;
  v22[2] = a3;
  sub_1A34C9010();
  sub_1A34C9010();
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC7E0);
  sub_1A34CC950();
  v24 = (a9 + v16[9]);
  *v24 = v31;
  v24[1] = v32;
  v24[2] = *v33;
  *(v24 + 41) = *&v33[9];
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = v23;
  *(v25 + 40) = a4;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 89) = 0u;
  *(v25 + 112) = a5;
  *(v25 + 120) = a6;
  *(v25 + 128) = v27;
  *(v25 + 136) = a8;
  type metadata accessor for VisualIdentityEditorViewModel();
  return sub_1A34CA500();
}

uint64_t type metadata accessor for VisualIdentityEditor()
{
  result = qword_1ED853668;
  if (!qword_1ED853668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A341D224@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3423DC0();
  result = sub_1A34CB0E0();
  v8 = v11[0];
  if (v11[0])
  {
    v9 = v11[1];
  }

  else
  {
    (*(v5 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    result = (*(v5 + 32))(v9 + v10, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v8 = sub_1A3423E14;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_1A341D380()
{
  sub_1A3423DC0();
  sub_1A34C9010();
  return sub_1A34CB0F0();
}

uint64_t sub_1A341D3E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3423934(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  swift_beginAccess();
  v5 = sub_1A34CA5D0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1A341D4D8(uint64_t a1)
{
  v2 = sub_1A34CA5D0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1A32D4E8C(v5);
}

uint64_t sub_1A341D5A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VisualIdentityEditor();
  sub_1A328D790(v1 + *(v10 + 24), v9, &qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CB5F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A341D7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t *a5@<X4>, void *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v34[1] = a1;
  v34[2] = a2;
  v34[3] = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AD8);
  MEMORY[0x1A58EE120](v34, v16);
  v17 = v34[0];
  v18 = a5[1];
  if (v18)
  {
    v19 = *a5;
    v20 = *(a5 + 2);
    v32 = *(a5 + 1);
    v33[0] = v20;
    *(v33 + 9) = *(a5 + 41);
    v30 = v19;
    v31 = v18;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6338);
    MEMORY[0x1A58EE120](v28, v21);
    v18 = LOBYTE(v28[0]);
    v22 = v28[1];
    v23 = v28[2];
    v24 = v28[3];
    v25 = v28[4];
    v26 = v29;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v30 = v18;
  v31 = v22;
  *&v32 = v23;
  *(&v32 + 1) = v24;
  *&v33[0] = v25;
  BYTE8(v33[0]) = v26;
  v28[0] = a8;
  type metadata accessor for VisualIdentityEditorViewModel();
  swift_allocObject();

  result = sub_1A3357660(v17, a4, &v30, a6, a7 & 1, v28, a10);
  *a9 = result;
  return result;
}

uint64_t VisualIdentityEditor.body.getter@<X0>(uint64_t a1@<X8>)
{
  v186 = a1;
  v2 = type metadata accessor for VisualIdentityEditor();
  v3 = *(v2 - 8);
  v199 = (v2 - 8);
  v188 = v3;
  v198 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v197 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1A34CB540();
  v174 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v196 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB0F0);
  v187 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v163 = &v152 - v6;
  v7 = sub_1A34CB5F0();
  v159 = *(v7 - 8);
  v160 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v152 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB0F8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v152 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB100);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v157 = &v152 - v17;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB108);
  MEMORY[0x1EEE9AC00](v190);
  v189 = (&v152 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB110);
  v20 = *(v19 - 8);
  v164 = v19;
  v165 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v152 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB118);
  v170 = *(v22 - 8);
  v171 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v162 = &v152 - v23;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB120) - 8;
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v152 - v24;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB128);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v152 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB130);
  v176 = *(v26 - 8);
  v177 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v172 = &v152 - v27;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB138) - 8;
  MEMORY[0x1EEE9AC00](v175);
  v193 = &v152 - v28;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB140) - 8;
  MEMORY[0x1EEE9AC00](v173);
  v178 = &v152 - v29;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB148) - 8;
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v152 - v30;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB150);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v152 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB158);
  v184 = *(v32 - 8);
  v185 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v183 = &v152 - v33;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB160);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v152 - v34;
  v200 = v1;
  v201 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB168);
  sub_1A34221A0();
  sub_1A34CAC40();
  sub_1A3284D0C(&unk_1EB0C09A8, &qword_1EB0CB0F8);
  sub_1A34CC1F0();
  (*(v13 + 8))(v15, v12);
  v35 = v158;
  sub_1A341D5A4(v158);
  v153 = *MEMORY[0x1E697FF40];
  v36 = v159;
  v38 = v159 + 104;
  v37 = *(v159 + 104);
  v39 = v9;
  v40 = v9;
  v41 = v160;
  v37(v40);
  v155 = v37;
  v156 = v38;
  v42 = v35;
  v154 = sub_1A34CB5E0();
  v43 = *(v36 + 8);
  v43(v39, v41);
  v44 = v35;
  v45 = v41;
  v43(v44, v41);
  sub_1A341D5A4(v42);
  v46 = v153;
  (v37)(v39, v153, v45);
  sub_1A34CB5E0();
  v43(v39, v45);
  v43(v42, v45);
  sub_1A34CCC80();
  sub_1A34CADA0();
  v47 = v189;
  sub_1A329D98C(v157, v189, &qword_1EB0CB100);
  v48 = (v47 + *(v190 + 36));
  v49 = v239;
  v48[4] = v238;
  v48[5] = v49;
  v48[6] = v240;
  v50 = v235;
  *v48 = v234;
  v48[1] = v50;
  v51 = v237;
  v48[2] = v236;
  v48[3] = v51;
  sub_1A34CB1D0();
  sub_1A341D5A4(v42);
  v52 = v46;
  v53 = v46;
  v54 = v155;
  (v155)(v39, v53, v45);
  LODWORD(v159) = sub_1A34CB5E0();
  v43(v39, v45);
  v43(v42, v45);
  sub_1A341D5A4(v42);
  v54(v39, v52, v45);
  sub_1A34CB5E0();
  v43(v39, v45);
  v43(v42, v45);
  v55 = MEMORY[0x1E697C7E0];
  v56 = v163;
  v57 = v166;
  v58 = v196;
  sub_1A34CB1F0();
  (*(v174 + 8))(v58, v57);
  v59 = sub_1A3422430();
  *&v226 = v57;
  *(&v226 + 1) = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v161;
  v62 = v189;
  v63 = v190;
  v64 = v167;
  sub_1A34CC0D0();
  v65 = v64;
  (*(v187 + 1))(v56, v64);
  sub_1A3288FDC(v62, &qword_1EB0CB108);
  v66 = v200;
  v67 = v200 + v199[12];
  v68 = *v67;
  v69 = *(v67 + 8);
  LOBYTE(v226) = v68;
  *(&v226 + 1) = v69;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC740();
  v189 = type metadata accessor for VisualIdentityEditor;
  v70 = v197;
  sub_1A3423CF8(v66, v197, type metadata accessor for VisualIdentityEditor);
  v188 = *(v188 + 80);
  v71 = (v188 + 16) & ~v188;
  v196 = v71;
  v72 = swift_allocObject();
  v187 = type metadata accessor for VisualIdentityEditor;
  sub_1A3423C18(v70, v72 + v71, type metadata accessor for VisualIdentityEditor);
  *&v226 = v63;
  *(&v226 + 1) = v65;
  *&v227 = v59;
  *(&v227 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v73 = v162;
  v74 = v164;
  sub_1A34CC3B0();

  (*(v165 + 8))(v61, v74);
  v75 = sub_1A34CCC80();
  v77 = v76;
  v78 = sub_1A34CCC80();
  v80 = v79;
  v81 = v200;
  sub_1A34207FC(&v226);
  v214 = v226;
  v215 = v227;
  v216 = v228;
  v217 = v229;
  v218[0] = v226;
  v218[1] = v227;
  v218[2] = v228;
  v218[3] = v229;
  sub_1A328D790(&v214, &v219, &qword_1EB0CB190);
  sub_1A3288FDC(v218, &qword_1EB0CB190);
  v210 = v214;
  v211 = v215;
  v212 = v216;
  v213 = v217;
  LOBYTE(v66) = sub_1A34CBA90();
  *&v219 = v78;
  *(&v219 + 1) = v80;
  v220 = v210;
  v221 = v211;
  v222 = v212;
  v223 = v213;
  LOBYTE(v224) = v66;
  *(&v224 + 1) = v75;
  v225 = v77;
  v82 = v168;
  (*(v170 + 32))(v168, v73, v171);
  v83 = &v82[*(v169 + 44)];
  v84 = v82;
  v85 = v224;
  *(v83 + 4) = v223;
  *(v83 + 5) = v85;
  *(v83 + 12) = v225;
  v86 = v220;
  *v83 = v219;
  *(v83 + 1) = v86;
  v87 = v222;
  *(v83 + 2) = v221;
  *(v83 + 3) = v87;
  *&v226 = v78;
  *(&v226 + 1) = v80;
  v229 = v212;
  v230 = v213;
  v227 = v210;
  v228 = v211;
  v231 = v66;
  v232 = v75;
  v233 = v77;
  sub_1A328D790(&v219, &v207, &qword_1EB0CB198);
  sub_1A3288FDC(&v226, &qword_1EB0CB198);
  v88 = v81;
  v89 = v81;
  v90 = v197;
  v91 = v189;
  sub_1A3423CF8(v88, v197, v189);
  v92 = v196;
  v93 = swift_allocObject();
  v94 = &v92[v93];
  v95 = v187;
  sub_1A3423C18(v90, v94, v187);
  v96 = v191;
  sub_1A329D98C(v84, v191, &qword_1EB0CB120);
  v97 = (v96 + *(v192 + 36));
  *v97 = sub_1A3422620;
  v97[1] = v93;
  v98 = v199;
  v99 = (v89 + v199[11]);
  v100 = v99[1];
  v207 = *v99;
  v208 = v100;
  v209[0] = v99[2];
  *(v209 + 9) = *(v99 + 41);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84B8);
  MEMORY[0x1A58EE120](&v210, v101);
  v207 = v210;
  v208 = v211;
  *&v209[0] = v212;
  BYTE8(v209[0]) = BYTE8(v212);
  sub_1A3423CF8(v89, v90, v91);
  v102 = v196;
  v103 = swift_allocObject();
  sub_1A3423C18(v90, &v102[v103], v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC7E0);
  sub_1A3422710();
  sub_1A3423700(&qword_1EB0C2278, &qword_1EB0CC7E0, &unk_1A34F5290, sub_1A33B8AEC);
  v104 = v172;
  v105 = v191;
  sub_1A34CC3B0();

  sub_1A335DB34(v207, *(&v207 + 1), v208);
  sub_1A3288FDC(v105, &qword_1EB0CB128);
  v106 = type metadata accessor for VisualIdentityEditorViewModel();
  v190 = sub_1A3423934(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v171 = v106;
  v107 = sub_1A34CA600();
  LOBYTE(v96) = v108;
  KeyPath = swift_getKeyPath();
  v110 = v193;
  (*(v176 + 32))(v193, v104, v177);
  v111 = v110 + *(v175 + 44);
  *v111 = v107;
  *(v111 + 8) = v96 & 1;
  *(v111 + 16) = KeyPath;
  *(v111 + 24) = 0;
  v112 = *(v173 + 44);
  v192 = v98[13];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  sub_1A34CA510();
  v113 = *(v207 + 32);
  sub_1A34C9010();

  swift_getKeyPath();
  *&v207 = v113;
  v177 = sub_1A3423934(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  v114 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  swift_beginAccess();
  v115 = sub_1A34CA5D0();
  v116 = *(v115 - 8);
  v117 = *(v116 + 16);
  v118 = v178;
  v117(&v178[v112], v113 + v114, v115);

  (*(v116 + 56))(v118 + v112, 0, 1, v115);
  sub_1A329D98C(v193, v118, &qword_1EB0CB138);
  sub_1A34CA510();
  v119 = *(v210 + 32);
  sub_1A34C9010();

  swift_getKeyPath();
  *&v210 = v119;
  sub_1A34C99A0();

  v120 = OBJC_IVAR____TtC14ContactsUICore33VisualIdentityEditorStyleProvider__preferredColorScheme;
  swift_beginAccess();
  v121 = v179;
  v122 = &v179[*(v180 + 44)];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F90);
  v117(v122 + *(v123 + 28), v119 + v120, v115);

  *v122 = swift_getKeyPath();
  sub_1A329D98C(v118, v121, &qword_1EB0CB140);
  v124 = swift_getKeyPath();
  v125 = v181;
  v126 = &v181[*(v182 + 36)];
  v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1B0) + 28);
  sub_1A34CCB80();
  v128 = sub_1A34CCC60();
  (*(*(v128 - 8) + 56))(v126 + v127, 0, 1, v128);
  *v126 = v124;
  sub_1A329D98C(v121, v125, &qword_1EB0CB148);
  v129 = v200;
  sub_1A34CA510();
  sub_1A3422A5C();
  v130 = v183;
  sub_1A34CBED0();

  sub_1A3288FDC(v125, &qword_1EB0CB150);
  sub_1A34CA520();
  v131 = v205;
  v132 = v206;
  swift_getKeyPath();
  v205 = v131;
  v206 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1B8);
  sub_1A34CC920();

  v133 = v202;
  v134 = v203;
  LOBYTE(v118) = v204;

  v135 = v197;
  sub_1A3423CF8(v129, v197, v189);
  v136 = v196;
  v137 = swift_allocObject();
  sub_1A3423C18(v135, &v136[v137], v187);
  v138 = swift_getKeyPath();
  v139 = v194;
  v140 = &v194[*(v195 + 36)];
  *v140 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  swift_storeEnumTagMultiPayload();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1C0);
  v142 = v140 + v141[9];
  *v142 = v133;
  *(v142 + 1) = v134;
  v142[16] = v118;
  v143 = (v140 + v141[10]);
  *v143 = CGPointMake;
  v143[1] = 0;
  v144 = (v140 + v141[11]);
  *v144 = sub_1A342302C;
  v144[1] = v137;
  (*(v184 + 32))(v139, v130, v185);
  v145 = v199;
  v146 = v129 + v199[14];
  v147 = *v146;
  v148 = *(v146 + 8);
  LOBYTE(v202) = v147;
  v203 = v148;
  sub_1A34CC760();
  v205 = *(v129 + v145[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1C8);
  sub_1A34CC740();
  v149 = v202;
  *&v205 = v202;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  sub_1A342309C();
  sub_1A34231E0();
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  v150 = v194;
  sub_1A34CC2B0();

  sub_1A3423234(v149);
  return sub_1A3288FDC(v150, &qword_1EB0CB160);
}

uint64_t sub_1A341F0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v86 = sub_1A34CAA80();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v83 = (&v75 - v5);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C88);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v75 - v8;
  v9 = type metadata accessor for VisualIdentityEditorGallery(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB208);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v75 - v12;
  v76 = type metadata accessor for VisualIdentityOnboardingGallery();
  MEMORY[0x1EEE9AC00](v76);
  v14 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB178);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v75 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB170);
  MEMORY[0x1EEE9AC00](v91);
  v17 = &v75 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB210);
  v79 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v19 = (&v75 - v18);
  v20 = type metadata accessor for VisualIdentityEditor();
  v21 = *(v20 + 44);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  v89 = a1;
  v87 = v21;
  sub_1A34CA510();
  v23 = v103;
  swift_getKeyPath();
  v103 = v23;
  v88 = sub_1A3423934(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  LODWORD(a1) = v23[41];

  if (a1)
  {
    v24 = v89;
    v25 = v89 + *(v20 + 40);
    v26 = *v25;
    v27 = *(v25 + 8);
    v95 = v26;
    v96 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC760();
    v28 = v104;
    v78 = v103;
    v29 = v105;
    v30 = type metadata accessor for VisualIdentityPair(0);
    v31 = v80;
    (*(*(v30 - 8) + 56))(v80, 1, 1, v30);
    LODWORD(v87) = *(v24 + 16);
    v79 = *(v24 + 8);
    v89 = sub_1A34CCD60();
    type metadata accessor for VisualIdentityEditorViewModel();
    v32 = sub_1A34CA600();
    v34 = v33;
    *&v11[v9[5]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v11[v9[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
    swift_storeEnumTagMultiPayload();
    *v11 = v32;
    v11[8] = v34 & 1;
    v36 = &v11[v9[6]];
    *v36 = swift_getKeyPath();
    *(v36 + 1) = 0;
    v36[16] = 0;
    v37 = &v11[v9[7]];
    *v37 = KeyPath;
    v37[8] = 0;
    v38 = &v11[v9[9]];
    *v38 = v78;
    *(v38 + 1) = v28;
    v38[16] = v29;
    sub_1A328D790(v31, v81, &qword_1EB0C5C88);
    sub_1A34CC730();
    sub_1A3288FDC(v31, &qword_1EB0C5C88);
    v39 = v83;
    sub_1A34CAA60();
    v40 = v85;
    v41 = v86;
    v85[2](v84, v39, v86);
    sub_1A34CC730();
    (v40[1])(v39, v41);
    v42 = &v11[v9[12]];
    *v42 = v79;
    v42[8] = v87;
    *&v11[v9[13]] = v89;
    sub_1A3423CF8(v11, v94, type metadata accessor for VisualIdentityEditorGallery);
    swift_storeEnumTagMultiPayload();
    v43 = sub_1A34222BC();
    v44 = sub_1A3423934(&qword_1EB0C19E0, type metadata accessor for VisualIdentityEditorGallery);
    v103 = v91;
    v104 = v9;
    v105 = v43;
    v106 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1A34CB3E0();
    return sub_1A3423D60(v11, type metadata accessor for VisualIdentityEditorGallery);
  }

  v84 = v17;
  v85 = v19;
  v83 = v9;
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v46 = v76;
  v47 = v14 + *(v76 + 20);
  *v47 = swift_getKeyPath();
  *(v47 + 1) = 0;
  v47[16] = 0;
  v48 = v14 + *(v46 + 24);
  type metadata accessor for VisualIdentityEditorViewModel();
  *v48 = sub_1A34CA600();
  v48[8] = v49 & 1;
  v86 = v22;
  sub_1A34CA510();
  v50 = v103;
  swift_getKeyPath();
  v103 = v50;
  sub_1A34C99A0();

  if (v50[41])
  {

    v51 = v84;
    v52 = v78;
LABEL_6:
    v54 = 0.0;
    goto LABEL_7;
  }

  swift_getKeyPath();
  v103 = v50;
  sub_1A34C99A0();

  v53 = &v50[OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity];
  swift_beginAccess();
  LOBYTE(v53) = v53[*(type metadata accessor for VisualIdentity(0) + 24)];

  v54 = 1.0;
  v51 = v84;
  v52 = v78;
  if ((v53 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1A3423C18(v14, v52, type metadata accessor for VisualIdentityOnboardingGallery);
  *(v52 + *(v77 + 36)) = v54;
  v55 = sub_1A34CCCB0();
  sub_1A34CA510();
  v56 = v103;
  swift_getKeyPath();
  v103 = v56;
  sub_1A34C99A0();

  v57 = v91;
  if (v56[41])
  {
    v58 = 0;
  }

  else
  {
    swift_getKeyPath();
    v103 = v56;
    sub_1A34C99A0();

    v59 = &v56[OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity];
    swift_beginAccess();
    v58 = v59[*(type metadata accessor for VisualIdentity(0) + 24)];
  }

  sub_1A3423C80(v52, v51);
  v60 = v51 + *(v57 + 36);
  *v60 = v55;
  *(v60 + 8) = v58;
  sub_1A34CA520();
  v61 = v103;
  v62 = v104;
  v63 = v105;
  swift_getKeyPath();
  v103 = v61;
  v104 = v62;
  v105 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1B8);
  sub_1A34CC920();

  v64 = v57;
  v65 = v100;
  v66 = v101;
  v67 = v102;

  swift_getKeyPath();
  v97 = v65;
  v98 = v66;
  v99 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC920();

  MEMORY[0x1EEE9AC00](v68);
  v69 = sub_1A34222BC();
  v74 = sub_1A3423934(&qword_1EB0C19E0, type metadata accessor for VisualIdentityEditorGallery);
  v70 = v85;
  v71 = v83;
  sub_1A34CC180();

  sub_1A3288FDC(v51, &qword_1EB0CB170);
  v72 = v79;
  v73 = v92;
  (*(v79 + 16))(v94, v70, v92);
  swift_storeEnumTagMultiPayload();
  v103 = v64;
  v104 = v71;
  v105 = v69;
  v106 = v74;
  swift_getOpaqueTypeConformance2();
  sub_1A34CB3E0();
  return (*(v72 + 8))(v70, v73);
}

void sub_1A341FE94(_BYTE *a1, uint64_t *a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v8 = *a2;
    if (qword_1EB0C27F8 != -1)
    {
      v11 = v5;
      swift_once();
      v5 = v11;
    }

    v9 = __swift_project_value_buffer(v5, qword_1EB0ED9C8);
    sub_1A3423CF8(v9, v7, type metadata accessor for VisualIdentity);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12[-2] = v8;
    v12[-1] = v7;
    v12[1] = v8;
    sub_1A3423934(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();

    sub_1A3423D60(v7, type metadata accessor for VisualIdentity);
  }
}

uint64_t sub_1A3420068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sub_1A34CAA80();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31[-v7];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C88);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31[-v12];
  v14 = (a1 + *(type metadata accessor for VisualIdentityEditor() + 40));
  v15 = *v14;
  v16 = *(v14 + 1);
  v44 = v15;
  v45 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v33 = v42;
  v34 = v41;
  v32 = v43;
  v17 = type metadata accessor for VisualIdentityPair(0);
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v37 = *(a1 + 16);
  v36 = *(a1 + 8);
  v35 = sub_1A34CCD60();
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A3423934(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  v18 = sub_1A34CA600();
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for VisualIdentityEditorGallery(0);
  *(a2 + v22[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v23 = swift_getKeyPath();
  *(a2 + v22[8]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  *a2 = v18;
  *(a2 + 8) = v20 & 1;
  v24 = a2 + v22[6];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  v25 = a2 + v22[7];
  *v25 = v23;
  *(v25 + 8) = 0;
  v26 = a2 + v22[9];
  v27 = v33;
  *v26 = v34;
  *(v26 + 8) = v27;
  *(v26 + 16) = v32;
  sub_1A328D790(v13, v10, &qword_1EB0C5C88);
  sub_1A34CC730();
  sub_1A3288FDC(v13, &qword_1EB0C5C88);
  sub_1A34CAA60();
  v28 = v40;
  (*(v4 + 16))(v39, v8, v40);
  sub_1A34CC730();
  result = (*(v4 + 8))(v8, v28);
  v30 = a2 + v22[12];
  *v30 = v36;
  *(v30 + 8) = v37;
  *(a2 + v22[13]) = v35;
  return result;
}

uint64_t sub_1A3420484()
{
  v1 = sub_1A34CB0B0();
  v22 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VisualIdentityEditor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  sub_1A34CA510();
  v10 = sub_1A3355B20();

  if (v10)
  {
    v11 = sub_1A34CD4A0();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_1A3423CF8(v0, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualIdentityEditor);
    sub_1A34CD450();
    v12 = sub_1A34CD440();
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    *(v14 + 16) = v12;
    *(v14 + 24) = v15;
    sub_1A3423C18(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for VisualIdentityEditor);
    sub_1A33A13AC(0, 0, v9, &unk_1A34F5740, v14);
  }

  else
  {
    v16 = v0 + *(v4 + 28);
    v17 = *v16;
    if (*(v16 + 16) == 1)
    {
      v18 = sub_1A34C9010();
    }

    else
    {
      sub_1A34C9010();
      sub_1A34CD650();
      v19 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A32B56DC();
      v18 = (*(v22 + 8))(v3, v1);
      v17 = v23;
    }

    v17(v18);
  }
}

double sub_1A34207FC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for VisualIdentityEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  sub_1A34CA510();
  v2 = *(v8 + 32);
  sub_1A34C9010();

  swift_getKeyPath();
  v9 = v2;
  sub_1A3423934(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  v3 = *(v2 + 24);
  sub_1A34C9010();

  v4 = sub_1A34CCCF0();
  sub_1A34CA510();
  v5 = *(v9 + 32);
  sub_1A34C9010();

  swift_getKeyPath();
  sub_1A34C99A0();

  v6 = *(v5 + 24);
  sub_1A34C9010();

  *a1 = xmmword_1A34F5210;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  result = 1.5;
  *(a1 + 32) = xmmword_1A34F5220;
  *(a1 + 48) = v4;
  *(a1 + 56) = v6;
  return result;
}

uint64_t sub_1A34209B4(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentityEditor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  LOBYTE(a1) = *a1;
  v11 = sub_1A34CD4A0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1A3423CF8(a2, v7, type metadata accessor for VisualIdentityEditor);
  sub_1A34CD450();
  v12 = sub_1A34CD440();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = v13 + v6;
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_1A3423C18(v7, v15 + v13, type metadata accessor for VisualIdentityEditor);
  *(v15 + v14) = a1;
  sub_1A32C0B38(0, 0, v10, &unk_1A34F56E0, v15);
}

uint64_t sub_1A3420BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  sub_1A34CD450();
  *(v5 + 32) = sub_1A34CD440();
  v7 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3420C48, v7, v6);
}

uint64_t sub_1A3420C48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  sub_1A34CCCB0();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1A34CA900();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3420D38(uint64_t a1, char a2)
{
  v2 = a2 & 1;
  type metadata accessor for VisualIdentityEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  sub_1A34CA510();
  if (*(v5 + 43) == v2)
  {
    *(v5 + 43) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3423934(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A3420E9C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  type metadata accessor for VisualIdentityEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  sub_1A34CA510();
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v10 = v7;
  sub_1A32B6068(v2, v3, v4);
  sub_1A33574C0(v9);
}

uint64_t sub_1A3420F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB200);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A328D790(a1, &v5 - v3, &qword_1EB0CB200);
  return sub_1A34CAEF0();
}

uint64_t sub_1A3421024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v35 = a2;
  v33 = sub_1A34CB790();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for iPhoneSheetStyle();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1E8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v28 - v10;
  v11 = type metadata accessor for VisualIdentityEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  sub_1A34CA520();
  v12 = v42[0];
  v13 = v42[1];
  v14 = v42[2];
  swift_getKeyPath();
  v39 = v12;
  v40 = v13;
  v41 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1B8);
  sub_1A34CC920();

  swift_getKeyPath();
  sub_1A34CC920();

  sub_1A3288FDC(v9, &qword_1EB0CB1E0);
  v15 = (v29 + *(v11 + 32));
  v37 = *v15;
  v38 = *(v15 + 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AD8);
  MEMORY[0x1A58EE120](&v36, v16);
  v17 = v36;
  LOBYTE(v36) = 0;
  sub_1A34CC730();
  v43 = v37;
  v44 = v38;
  v42[7] = v17;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v4 + 32)) = 0x3FEB333333333333;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;

  if (v22 >= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  *(v6 + *(v4 + 28)) = v23;
  v24 = v30;
  sub_1A33F4328(v42, v30);
  sub_1A3423C18(v6, v24 + *(v31 + 36), type metadata accessor for iPhoneSheetStyle);
  sub_1A34237D0(v42);
  LOBYTE(v42[0]) = 1;
  sub_1A34CCD60();
  sub_1A32CCEC4();
  v25 = v32;
  sub_1A34CB420();
  sub_1A3423824();
  v26 = v33;
  sub_1A34CC170();
  (*(v34 + 8))(v25, v26);
  return sub_1A3288FDC(v24, &qword_1EB0CB1E8);
}

uint64_t sub_1A34214C0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3418874(*a1);
  sub_1A328A95C();
  result = sub_1A34CBE30();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1A3421530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[60] = a4;
  v5 = sub_1A34CB0B0();
  v4[61] = v5;
  v4[62] = *(v5 - 8);
  v4[63] = swift_task_alloc();
  sub_1A34CD450();
  v4[64] = sub_1A34CD440();
  v7 = sub_1A34CD3E0();
  v4[65] = v7;
  v4[66] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A3421628, v7, v6);
}

uint64_t sub_1A3421628()
{
  v1 = *(v0 + 480);
  v2 = type metadata accessor for VisualIdentityEditor();
  *(v0 + 536) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
  sub_1A34CA510();
  *(v0 + 544) = *(v0 + 448);
  v3 = v1 + *(v2 + 32);
  v4 = *(v3 + 8);
  *(v0 + 336) = *v3;
  *(v0 + 344) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AD8);
  sub_1A34CC930();
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  *(v0 + 552) = v5;
  *(v0 + 560) = v6;
  v7 = *(v0 + 376);
  *(v0 + 568) = v7;
  v8 = (v1 + *(v2 + 36));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  *(v0 + 121) = *(v8 + 41);
  *(v0 + 96) = v10;
  *(v0 + 112) = v11;
  *(v0 + 80) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84B8);
  sub_1A34CC930();
  v12 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v12;
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 185) = *(v0 + 57);
  v13 = swift_task_alloc();
  *(v0 + 576) = v13;
  *v13 = v0;
  v13[1] = sub_1A34217C8;

  return sub_1A33599F0(v5, v6, v7, (v0 + 144));
}

uint64_t sub_1A34217C8()
{
  v2 = *v1;
  *(v2 + 584) = v0;

  v3 = *(v2 + 568);
  v4 = *(v2 + 144);
  v5 = *(v2 + 160);
  v6 = *(v2 + 176);
  if (v0)
  {
    *(v2 + 249) = *(v2 + 185);
    *(v2 + 224) = v5;
    *(v2 + 240) = v6;
    *(v2 + 208) = v4;
    sub_1A3288FDC(v2 + 208, &qword_1EB0C84B8);

    v7 = *(v2 + 528);
    v8 = *(v2 + 520);
    v9 = sub_1A3421B88;
  }

  else
  {
    *(v2 + 313) = *(v2 + 185);
    *(v2 + 288) = v5;
    *(v2 + 304) = v6;
    *(v2 + 272) = v4;
    sub_1A3288FDC(v2 + 272, &qword_1EB0C84B8);

    v7 = *(v2 + 528);
    v8 = *(v2 + 520);
    v9 = sub_1A34219E4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1A34219E4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 480);

  v3 = v2 + *(v1 + 28);
  v4 = *v3;
  if (*(v3 + 16) == 1)
  {
    v5 = sub_1A34C9010();
  }

  else
  {
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    v8 = *(v0 + 488);
    sub_1A34C9010();
    sub_1A34CD650();
    v9 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32B56DC();
    v5 = (*(v7 + 8))(v6, v8);
    v4 = *(v0 + 432);
  }

  v4(v5);

  v10 = (*(v0 + 480) + *(*(v0 + 536) + 40));
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 416) = v11;
  *(v0 + 424) = v12;
  *(v0 + 74) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC750();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A3421B88()
{
  v1 = *(v0 + 584);

  *(v0 + 456) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 536);
    v4 = *(v0 + 480);

    v5 = *(v0 + 464);
    v6 = (v4 + *(v3 + 48));
    v7 = *v6;
    v8 = *(v6 + 1);
    *(v0 + 384) = v7;
    *(v0 + 392) = v8;
    *(v0 + 73) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC750();
    *(v0 + 400) = *(v4 + *(v3 + 52));
    *(v0 + 472) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1C8);
    sub_1A34CC750();

    v9 = (*(v0 + 480) + *(*(v0 + 536) + 40));
    v10 = *v9;
    v11 = *(v9 + 1);
    *(v0 + 416) = v10;
    *(v0 + 424) = v11;
    *(v0 + 74) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC750();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t VisualIdentityEditorPresentationStyle.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A3421E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3423700(&qword_1EB0C1350, &qword_1EB0CB1D8, &unk_1A34F5670, sub_1A342377C);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.presentationStyle.getter()
{
  sub_1A3423244();

  return sub_1A34CB0E0();
}

uint64_t (*EnvironmentValues.presentationStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1A3423244();
  sub_1A34CB0E0();
  return sub_1A3421F98;
}

uint64_t sub_1A3421FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A34CA980();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  sub_1A34CB090();
  sub_1A34CA960();
  v9 = sub_1A34CA950();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) != 0 && (sub_1A342397C(), sub_1A34CB0C0(), v15[1] == 2))
  {
    v11 = MEMORY[0x1E697FF40];
  }

  else
  {
    v11 = MEMORY[0x1E697FF38];
  }

  v12 = *v11;
  v13 = sub_1A34CB5F0();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}