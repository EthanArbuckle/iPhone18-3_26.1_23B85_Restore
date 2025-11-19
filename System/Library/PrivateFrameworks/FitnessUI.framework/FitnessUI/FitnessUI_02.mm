uint64_t storeEnumTagSinglePayload for ChartMarkInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartMarkInfo.MarkType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChartMarkInfo.MarkType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id UIStackView.alignment(_:)(uint64_t a1)
{
  [v1 setAlignment_];

  return v3;
}

id UIStackView.spacing(_:)()
{
  [v0 setSpacing_];

  return v2;
}

id UIStackView.axis(_:)(uint64_t a1)
{
  [v1 setAxis_];

  return v3;
}

id UIStackView.distribution(_:)(uint64_t a1)
{
  [v1 setDistribution_];

  return v3;
}

id UIStackView.layoutMarginsRelativeArrangement(_:)(char a1)
{
  [v1 setLayoutMarginsRelativeArrangement_];

  return v3;
}

void sub_1E5D7D470()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1E5DA911C();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_1ED06D498 = v0;
}

uint64_t *sub_1E5D7D4D8()
{
  if (qword_1ED06BA00 != -1)
  {
    swift_once();
  }

  return &qword_1ED06D498;
}

id sub_1E5D7D528()
{
  if (qword_1ED06BA00 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06D498;

  return v1;
}

uint64_t sub_1E5D7D594(unint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v99) = a3;
  v91 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A560);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v87 - v6;
  v7 = sub_1E5DA864C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5DA854C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1E5DA83DC();
  v15 = *(v105 - 8);
  v16 = MEMORY[0x1EEE9AC00](v105);
  v104 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v87 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A520);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  v21 = 0;
  v22 = v20 - 32;
  if (v20 < 32)
  {
    v22 = v20 - 25;
  }

  v19[2] = 48;
  v19[3] = 2 * (v22 >> 3);
  v23 = 4;
  while (1)
  {
    if (v21 == 47)
    {
      v24 = 0;
    }

    else
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v19[v23] = v21;
    if (v23 == 51)
    {
      break;
    }

    ++v23;
    v25 = v21 == 47;
    v21 = v24;
    if (v25)
    {
      __break(1u);
      break;
    }
  }

  v96 = v10;
  v97 = v8;
  sub_1E5DA852C();
  v26 = v104;
  sub_1E5DA83CC();
  sub_1E5DA84BC();
  v102 = *(v15 + 8);
  v103 = v15 + 8;
  v102(v26, v105);
  (*(v12 + 8))(v14, v11);
  v27 = v19[2];
  v98 = v7;
  v90 = a1;
  if (v27)
  {
    v106[0] = MEMORY[0x1E69E7CC0];
    sub_1E5D7F94C(0, v27, 0);
    v3 = v106[0];
    v28 = 4;
    a1 = *(v100 + 104);
    v29 = *(v100 + 112);
    v30 = v99;
    do
    {
      v31 = v19[v28];
      if ((v31 * a1) >> 64 != (v31 * a1) >> 63)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (__OFADD__(v31 * a1, v29))
      {
        goto LABEL_53;
      }

      v32 = sub_1E5D7CD98(v30, 1);
      v106[0] = v3;
      v7 = *(v3 + 2);
      v35 = *(v3 + 3);
      if (v7 >= v35 >> 1)
      {
        v37 = v32;
        v38 = v33;
        v39 = v34;
        sub_1E5D7F94C((v35 > 1), v7 + 1, 1);
        v30 = v99;
        v34 = v39;
        v33 = v38;
        v32 = v37;
        v3 = v106[0];
      }

      *(v3 + 2) = v7 + 1;
      v36 = &v3[24 * v7];
      *(v36 + 4) = v33;
      *(v36 + 5) = v34;
      v36[48] = v32;
      v36[49] = HIBYTE(v32) & 1;
      ++v28;
      --v27;
    }

    while (v27);

    a1 = v90;
    v7 = v98;
    if (!v90)
    {
LABEL_61:
      v102(v101, v105);
      return v3;
    }
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
    if (!a1)
    {
      goto LABEL_61;
    }
  }

  if (!(a1 >> 62))
  {
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_61;
    }

    goto LABEL_23;
  }

LABEL_60:
  result = sub_1E5DA94FC();
  v42 = result;
  if (!result)
  {
    goto LABEL_61;
  }

LABEL_23:
  if (v42 < 1)
  {
    __break(1u);
  }

  else
  {
    v43 = *(v100 + 104);
    if (v43)
    {
      v44 = 0;
      v100 = a1 & 0xC000000000000001;
      v94 = (v97 + 8);
      v95 = (v97 + 16);
      v88 = "AND_CHART_LABEL_WHEELCHAIR_%@";
      *&v41 = 136315650;
      v87 = v41;
      v97 = v42;
      v99 = v43;
      while (1)
      {
        if (v100)
        {
          v45 = MEMORY[0x1E693D110](v44, a1);
        }

        else
        {
          v45 = *(a1 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = [v45 startDate];
        v48 = v104;
        sub_1E5DA83BC();

        sub_1E5DA838C();
        v50 = v49;
        v51 = v49;
        v102(v48, v105);
        if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_55;
        }

        if (v50 <= -9.22337204e18)
        {
          goto LABEL_56;
        }

        if (v50 >= 9.22337204e18)
        {
          goto LABEL_57;
        }

        v52 = v50;
        if (v43 == -1 && v52 == 0x8000000000000000)
        {
          goto LABEL_58;
        }

        v53 = v52 / v43;
        if (v52 / v43 < 0 || v53 >= *(v3 + 2))
        {
          break;
        }

        v54 = &v3[24 * v53];
        v55 = v54[48];
        v56 = v54[49];
        v57 = [v46 quantityValue];
        if (!v57 || (v58 = v57, [v57 doubleValueForUnit_], v60 = v59, v58, *&v60 <= 0.0))
        {

          v42 = v97;
          v7 = v98;
LABEL_27:
          v43 = v99;
          goto LABEL_28;
        }

        if (v56)
        {
          v61 = 256;
        }

        else
        {
          v61 = 0;
        }

        v62 = sub_1E5D7CD50(0, 1, v60, 0, 3u, 0, v61 | v55);
        v64 = v63;
        v66 = v65;
        v67 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1E5D7F924(v3);
        }

        v7 = v98;
        v43 = v99;

        v42 = v97;
        if (v53 >= *(v3 + 2))
        {
          goto LABEL_59;
        }

        v68 = &v3[24 * v53];
        *(v68 + 4) = v64;
        *(v68 + 5) = v66;
        v68[48] = v67;
        v68[49] = HIBYTE(v67) & 1;
LABEL_28:
        if (v42 == ++v44)
        {
          goto LABEL_61;
        }
      }

      v69 = sub_1E5D805C0();
      v70 = v96;
      (*v95)(v96, v69, v7);
      v71 = v46;
      v72 = sub_1E5DA862C();
      v73 = sub_1E5DA931C();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v106[0] = v93;
        *v74 = v87;
        *(v74 + 4) = sub_1E5D67320(0xD000000000000027, v88 | 0x8000000000000000, v106);
        *(v74 + 12) = 2048;
        *(v74 + 14) = v53;
        *(v74 + 22) = 2080;
        v75 = [v71 startDate];
        v92 = v73;
        v76 = v75;
        v77 = v104;
        sub_1E5DA83BC();

        v78 = v89;
        sub_1E5DA846C();
        v79 = sub_1E5DA84AC();
        (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
        v80 = sub_1E5DA837C();
        v82 = v81;
        sub_1E5D5EC00(v78, &qword_1ED06A560);
        v83 = v77;
        v42 = v97;
        v102(v83, v105);
        v84 = sub_1E5D67320(v80, v82, v106);

        *(v74 + 24) = v84;
        _os_log_impl(&dword_1E5D0F000, v72, v92, "%s Invalid array index: %ld, for date: %s", v74, 0x20u);
        v85 = v93;
        swift_arrayDestroy();
        v7 = v98;
        MEMORY[0x1E693E930](v85, -1, -1);
        v86 = v74;
        a1 = v90;
        MEMORY[0x1E693E930](v86, -1, -1);
      }

      else
      {
      }

      (*v94)(v70, v7);
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

id sub_1E5D7DEBC()
{
  if (*v0 && (v1 = [*v0 activeEnergyResults]) != 0)
  {
    v2 = v1;
    sub_1E5D56E18(0, &qword_1ED06A3D8);
    v3 = sub_1E5DA923C();
  }

  else
  {
    v3 = 0;
  }

  result = [v0[3] unitManager];
  if (result)
  {
    v5 = result;
    v6 = [result userActiveEnergyBurnedUnit];

    v7 = sub_1E5D7D594(v3, v6, 0);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5D7DFAC(SEL *a1, int a2)
{
  if (*v2 && (v4 = [*v2 *a1]) != 0)
  {
    v5 = v4;
    sub_1E5D56E18(0, &qword_1ED06A3D8);
    v6 = sub_1E5DA923C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() minuteUnit];
  v8 = sub_1E5D7D594(v6, v7, a2);

  return v8;
}

void sub_1E5D7E074()
{
  v1 = v0;
  v2 = sub_1E5DA854C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5DA83DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  sub_1E5DA852C();
  sub_1E5DA83CC();
  v44 = v12;
  sub_1E5DA84BC();
  v15 = *(v7 + 8);
  v13 = v7 + 8;
  v14 = v15;
  v15(v10, v6);
  (*(v3 + 8))(v5, v2);
  if (*v1 && (v16 = [*v1 appleStandHourResults]) != 0)
  {
    v17 = v16;
    sub_1E5D56E18(0, &qword_1ED06A3E0);
    v18 = sub_1E5DA923C();

    if (v18 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E5DA94FC())
    {
      v41 = v13;
      v42 = v6;
      v40 = v14;
      if (!i)
      {
LABEL_26:

        v6 = v42;
        v14 = v40;
        goto LABEL_27;
      }

      if (i < 1)
      {
        break;
      }

      v20 = *(v1 + 12);
      if (!v20)
      {
        goto LABEL_36;
      }

      v13 = 0;
      v43 = *(v1 + 13);
      v6 = v18 & 0xC000000000000001;
      v1 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v21 = v6 ? MEMORY[0x1E693D110](v13, v18) : *(v18 + 8 * v13 + 32);
        v14 = v21;
        [v21 timeStamp];
        v23 = v22;
        v24 = sub_1E5DA83AC();
        v25 = MEMORY[0x1E693D3F0]();

        v26 = v23 - v25;
        if (COERCE__INT64(fabs(v23 - v25)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v26 <= -9.22337204e18)
        {
          goto LABEL_29;
        }

        if (v26 >= 9.22337204e18)
        {
          goto LABEL_30;
        }

        v27 = v26;
        if (v20 == -1 && v27 == 0x8000000000000000)
        {
          goto LABEL_33;
        }

        v28 = v27 / v20;
        v29 = v27 / v20 * v20;
        if ((v28 * v20) >> 64 != v29 >> 63)
        {
          goto LABEL_31;
        }

        if (__OFADD__(v29, v43))
        {
          goto LABEL_32;
        }

        sub_1E5D57018();
        v30 = sub_1E5D7CD98(2u, [v14 state] == 1);
        v32 = v31;
        v34 = v33;
        v35 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1E5D7F518(0, *(v1 + 2) + 1, 1, v1);
        }

        v37 = *(v1 + 2);
        v36 = *(v1 + 3);
        if (v37 >= v36 >> 1)
        {
          v1 = sub_1E5D7F518((v36 > 1), v37 + 1, 1, v1);
        }

        ++v13;

        *(v1 + 2) = v37 + 1;
        v38 = &v1[24 * v37];
        *(v38 + 4) = v32;
        *(v38 + 5) = v34;
        v38[48] = v35;
        v38[49] = HIBYTE(v35) & 1;
        if (i == v13)
        {
          goto LABEL_26;
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
LABEL_34:
      ;
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_27:
    (v14)(v44, v6);
  }
}

uint64_t sub_1E5D7E4B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAF0);
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v28 - v1;
  v29 = sub_1E5DA826C();
  v34 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5DA854C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5DA83DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  sub_1E5DA852C();
  sub_1E5DA83CC();
  sub_1E5DA84BC();
  v38 = *(v10 + 8);
  v39 = v10 + 8;
  v38(v13, v9);
  v16 = v8;
  v17 = v35;
  result = (*(v6 + 8))(v16, v5);
  v19 = *(v17 + 128);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v19)
    {
      v20 = *(v10 + 16);
      v32 = (v34 + 16);
      v33 = v20;
      v21 = (v34 + 8);
      v22 = v29;
      v34 = v10 + 16;
      v30 = (v10 + 32);
      v31 = v21;
      v23 = MEMORY[0x1E69E7CC0];
      v35 = v2;
      do
      {
        v33(v13, v15, v9);
        sub_1E5DA824C();
        v24 = *(v37 + 48);
        (*v32)(v2, v4, v22);
        *&v2[v24] = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1E5D7F628(0, v23[2] + 1, 1, v23);
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_1E5D7F628(v25 > 1, v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v27 = v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26;
        v2 = v35;
        sub_1E5D7FD64(v35, v27);
        sub_1E5DA823C();
        (*v31)(v4, v22);
        v38(v15, v9);
        (*v30)(v15, v13, v9);
        --v19;
      }

      while (v19);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v38(v15, v9);
    return v23;
  }

  return result;
}

size_t sub_1E5D7E92C(char a1, void *a2)
{
  LOBYTE(v4) = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAF0);
  v37 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v31 - v5;
  v7 = *(v2 + 8);
  v8 = *(v2 + 56);
  v41 = *(v2 + 40);
  v42 = v8;
  v43 = *(v2 + 72);
  v44 = *(v2 + 88);
  v9 = *(v2 + 24);
  v39 = v7;
  v40 = v9;
  if (v7 && ([v7 paused] & 1) != 0)
  {
    return 0;
  }

  v11 = sub_1E5D7E4B8();
  v12 = a2[2];
  if (!v12)
  {
    goto LABEL_19;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_37;
  }

  v14 = *(v2 + 120);
  if (v14)
  {
    while (1)
    {
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_39;
      }

      v15 = 0;
      v16 = 0;
      do
      {
        v17 = &a2[3 * v16 + 5];
        v18 = 0.0;
        while (1)
        {
          if (v16 >= v12)
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_35;
          }

          v18 = v18 + *v17;
          if (v16 % v14 == v14 - 1)
          {
            break;
          }

          if (v19 != v12)
          {
            ++v16;
            v17 += 3;
            if (v15 < *(v2 + 128))
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        if (v15 >= v11[2])
        {
          goto LABEL_40;
        }

        *(v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v15 + *(v31 + 48)) = v18;
        if (v19 == v12)
        {
          break;
        }

        ++v15;
        ++v16;
      }

      while (v15 < *(v2 + 128));
LABEL_19:
      a2 = sub_1E5D82F88();
      v34 = sub_1E5D82FB0(a2, 0, 0);
      v36 = v20;

      if (!v4)
      {
        break;
      }

      if (v4 == 1)
      {
        v21 = sub_1E5D616AC();
        goto LABEL_23;
      }

      v33 = *(&v43 + 1);
      v35 = v44;

      v23 = v11[2];
      if (!v23)
      {
LABEL_31:

        v25 = MEMORY[0x1E69E7CC0];
LABEL_32:
        v38 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5C8);
        sub_1E5D7F9FC();
        v10 = sub_1E5DA90DC();

        return v10;
      }

LABEL_24:
      v38 = MEMORY[0x1E69E7CC0];
      sub_1E5D7F96C(0, v23, 0);
      v24 = 0;
      v25 = v38;
      v32 = v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v2 = v31;
      while (v24 < v11[2])
      {
        a2 = v11;
        sub_1E5D7F98C(&v32[*(v37 + 72) * v24], v6);
        sub_1E5D7ED54(v6, v34, v36, v33, v35, *&v6[*(v2 + 48)]);
        v12 = v26;
        v28 = v27;
        sub_1E5D5EC00(v6, &qword_1ED06AAF0);
        v38 = v25;
        v4 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v4 >= v29 >> 1)
        {
          sub_1E5D7F96C((v29 > 1), v4 + 1, 1);
          v2 = v31;
          v25 = v38;
        }

        ++v24;
        *(v25 + 16) = v4 + 1;
        v30 = v25 + 16 * v4;
        *(v30 + 32) = v12;
        *(v30 + 40) = v28;
        v11 = a2;
        if (v23 == v24)
        {

          goto LABEL_32;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      result = sub_1E5D7F938(v11);
      v11 = result;
      v14 = *(v2 + 120);
      if (!v14)
      {
        goto LABEL_38;
      }
    }

    v21 = sub_1E5D6155C();
LABEL_23:
    v33 = v21;
    v35 = v22;
    v23 = v11[2];
    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1E5D7ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a2;
  v33 = a3;
  v10 = sub_1E5DA83DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E5DB3760;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1E5D5E0E0();
  *(v14 + 64) = v15;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  v16 = qword_1ED06BA00;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED06D498;
  sub_1E5DA825C();
  v18 = sub_1E5DA83AC();
  v34 = a1;
  v19 = *(v11 + 8);
  v19(v13, v10);
  v20 = [v17 stringFromDate_];

  v21 = sub_1E5DA915C();
  v23 = v22;

  v24 = MEMORY[0x1E69E6158];
  *(v14 + 96) = MEMORY[0x1E69E6158];
  *(v14 + 104) = v15;
  *(v14 + 72) = v21;
  *(v14 + 80) = v23;
  sub_1E5DA823C();
  v25 = sub_1E5DA83AC();
  v19(v13, v10);
  v26 = [v17 stringFromDate_];

  v27 = sub_1E5DA915C();
  v29 = v28;

  *(v14 + 136) = v24;
  *(v14 + 144) = v15;
  *(v14 + 112) = v27;
  *(v14 + 120) = v29;
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6 < 9.22337204e18)
  {
    v35 = a6;
    v30 = sub_1E5DA95AC();
    *(v14 + 176) = v24;
    *(v14 + 184) = v15;
    *(v14 + 152) = v30;
    *(v14 + 160) = v31;
    sub_1E5DA912C();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1E5D7F030(uint64_t a1)
{
  v47 = sub_1E5DA854C();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5DA83DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v44 = v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - v11;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  if (v13 && ([v13 paused] & 1) != 0)
  {
    return 0;
  }

  v41[1] = v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v43 = v5;
    v17 = (v6 + 8);
    v42 = (v3 + 8);
    v18 = MEMORY[0x1E69E7CC0];
    v19 = (a1 + 49);
    do
    {
      if ((*v19 & 1) == 0)
      {
        v21 = v46;
        sub_1E5DA852C();
        v22 = v45;
        sub_1E5DA83CC();
        v23 = v44;
        sub_1E5DA84BC();
        v24 = *v17;
        v25 = v22;
        v26 = v43;
        (*v17)(v25, v43);
        (*v42)(v21, v47);
        sub_1E5DA839C();
        v24(v23, v26);
        if (qword_1ED06BA00 != -1)
        {
          swift_once();
        }

        v27 = qword_1ED06D498;
        v28 = sub_1E5DA83AC();
        v29 = [v27 stringFromDate_];

        v30 = sub_1E5DA915C();
        v32 = v31;

        v24(v12, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1E5D7F818(0, *(v18 + 2) + 1, 1, v18);
        }

        v34 = *(v18 + 2);
        v33 = *(v18 + 3);
        if (v34 >= v33 >> 1)
        {
          v18 = sub_1E5D7F818((v33 > 1), v34 + 1, 1, v18);
        }

        *(v18 + 2) = v34 + 1;
        v20 = &v18[16 * v34];
        *(v20 + 4) = v30;
        *(v20 + 5) = v32;
      }

      v19 += 24;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v35 = sub_1E5D82F88();
  sub_1E5D82FB0(v35, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E5DB2290;
  v48 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5C8);
  sub_1E5D7F9FC();
  v37 = sub_1E5DA90DC();
  v39 = v38;

  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1E5D5E0E0();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v15 = sub_1E5DA912C();

  return v15;
}

double sub_1E5D7F4C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 48);
  *(a3 + 40) = *(a2 + 32);
  *(a3 + 56) = v3;
  *(a3 + 72) = *(a2 + 64);
  *(a3 + 88) = *(a2 + 80);
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *&result = 3600;
  *(a3 + 96) = xmmword_1E5DB3770;
  *(a3 + 112) = xmmword_1E5DB3780;
  *(a3 + 128) = 4;
  *(a3 + 136) = 0x40D5180000000000;
  return result;
}

char *sub_1E5D7F518(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_1E5D7F628(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAF8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAF0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAF0) - 8);
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

char *sub_1E5D7F818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5C0);
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

char *sub_1E5D7F94C(char *a1, int64_t a2, char a3)
{
  result = sub_1E5D7FB48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E5D7F96C(char *a1, int64_t a2, char a3)
{
  result = sub_1E5D7FC58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E5D7F98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5D7F9FC()
{
  result = qword_1ED06A5D0;
  if (!qword_1ED06A5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A5D0);
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

uint64_t sub_1E5D7FA8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5D7FAD4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

char *sub_1E5D7FB48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1E5D7FC58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5C0);
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

uint64_t sub_1E5D7FD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E5D7FE38(SEL *a1, SEL *a2)
{
  v3 = [objc_opt_self() *a1];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 *a2];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1E5DA8D9C();
}

void sub_1E5D7FEB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A510);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E5DB2490;
  v1 = objc_opt_self();
  v2 = [v1 distanceColors];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 gradientDarkColor];

  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v0 + 32) = sub_1E5DA8D9C();
  v5 = [v1 distanceColors];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 gradientLightColor];

  if (v7)
  {
    *(v0 + 40) = sub_1E5DA8D9C();
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1E5D7FFC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A510);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E5DB2490;
  result = [v0 gradientLightColor];
  if (result)
  {
    *(v1 + 32) = sub_1E5DA8D9C();
    result = [v0 gradientDarkColor];
    if (result)
    {
      *(v1 + 40) = sub_1E5DA8D9C();
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id NSLayoutConstraint.priority(_:)()
{
  [v0 setPriority_];

  return v2;
}

void static NSLayoutConstraint.activate(_:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1E5D80140(a1);
  sub_1E5D80404();
  v3 = sub_1E5DA922C();

  [ObjCClassFromMetadata activateConstraints_];
}

uint64_t sub_1E5D80140(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v26 = a1 + 32;
  while (1)
  {
    v4 = *(v26 + 8 * v1);
    v5 = v4 >> 62;
    v6 = v4 >> 62 ? sub_1E5DA94FC() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_1E5DA94FC();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (!result)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_17;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = v4;
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v28 = v2;
    v16 = v10 + 8 * v11 + 32;
    v25 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1E5D804D8();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB10);
        v18 = sub_1E5D80450(v29, i, v13);
        v20 = *v19;
        (v18)(v29, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_1E5D80404();
      swift_arrayInitWithCopy();
    }

    v2 = v28;
    if (v30 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v30);
      v23 = v21 + v30;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_17:
  sub_1E5DA94FC();
LABEL_18:
  result = sub_1E5DA943C();
  v2 = result;
  v10 = result & 0xFFFFFFFFFFFFFF8;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_19:
  v13 = v4;
  v15 = v10;
  result = sub_1E5DA94FC();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1E5D80404()
{
  result = qword_1ED06AB08;
  if (!qword_1ED06AB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED06AB08);
  }

  return result;
}

void (*sub_1E5D80450(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E693D110](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E5D804D0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E5D804D8()
{
  result = qword_1ED06AB18;
  if (!qword_1ED06AB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06AB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AB18);
  }

  return result;
}

uint64_t sub_1E5D8053C()
{
  v0 = sub_1E5DA864C();
  __swift_allocate_value_buffer(v0, qword_1ED06D4A0);
  __swift_project_value_buffer(v0, qword_1ED06D4A0);
  return sub_1E5DA863C();
}

uint64_t sub_1E5D805C0()
{
  if (qword_1ED06BA08 != -1)
  {
    swift_once();
  }

  v0 = sub_1E5DA864C();

  return __swift_project_value_buffer(v0, qword_1ED06D4A0);
}

uint64_t sub_1E5D80624@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED06BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5DA864C();
  v3 = __swift_project_value_buffer(v2, qword_1ED06D4A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1E5D806CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v31[0] = a1;
  v31[1] = a2;
  sub_1E5D5E1E0();
  v8 = (sub_1E5DA93AC() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    v7 = *v9;
    v6 = v9[1];
  }

  else
  {
  }

  sub_1E5D809DC(46, 0xE100000000000000, v7, v6);
  v10 = sub_1E5DA920C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x1E693CE80](v10, v12, v14, v16);
  v19 = v18;

  sub_1E5D809DC(40, 0xE100000000000000, a3, a4);
  v20 = sub_1E5DA920C();
  v21 = MEMORY[0x1E693CE80](v20);
  v23 = v22;

  v24 = sub_1E5DA862C();
  v25 = sub_1E5DA933C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31[0] = v27;
    *v26 = 67109634;
    v28 = pthread_self();
    *(v26 + 4) = pthread_mach_thread_np(v28);
    *(v26 + 8) = 2080;
    v29 = sub_1E5D67320(v17, v19, v31);

    *(v26 + 10) = v29;
    *(v26 + 18) = 2080;
    v30 = sub_1E5D67320(v21, v23, v31);

    *(v26 + 20) = v30;
    _os_log_impl(&dword_1E5D0F000, v24, v25, "[%u] %s::%s", v26, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v27, -1, -1);
    MEMORY[0x1E693E930](v26, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1E5D809DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1E5DA91FC() != a1 || v9 != a2)
  {
    v10 = sub_1E5DA95CC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1E5DA91BC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

id sub_1E5D80ADC()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1ED06BA18 = result;
  return result;
}

void static MindfulnessSessionDataCalculator.endingHeartRate(for:healthStore:completion:)(char *a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  if (qword_1ED06BA10 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED06BA18;
  sub_1E5DA83EC();
  v9 = sub_1E5DA911C();

  v10 = [v8 objectForKey_];

  if (v10)
  {
    [v10 doubleValue];
    v12 = v11;

LABEL_5:
    a3(v12, 0);
    return;
  }

  v13 = *&a1[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata];
  if (v13)
  {
    v14 = sub_1E5DA915C();
    if (*(v13 + 16))
    {
      v16 = sub_1E5D81510(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_1E5D685FC(*(v13 + 56) + 32 * v16, aBlock);
        if (swift_dynamicCast())
        {
          v12 = v43;
          v19 = sub_1E5DA92DC();
          sub_1E5DA83EC();
          v20 = sub_1E5DA911C();

          [v8 setObject:v19 forKey:v20];

          goto LABEL_5;
        }
      }
    }

    else
    {
    }
  }

  v21 = objc_opt_self();
  v22 = sub_1E5DA83AC();
  v23 = sub_1E5DA83AC();
  v24 = [v21 predicateForSamplesWithStartDate:v22 endDate:v23 options:1];

  v25 = [objc_opt_self() heartRateType];
  if (v25)
  {
    v26 = v25;
    v42 = v24;
    v27 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v25 predicate:v24];

    sub_1E5DA915C();
    v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v29 = sub_1E5DA911C();

    v30 = [v28 initWithKey:v29 ascending:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A8F8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1E5DB3860;
    *(v31 + 32) = v27;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1E5DB3860;
    *(v32 + 32) = v30;
    v33 = swift_allocObject();
    v33[2] = a1;
    v33[3] = a3;
    v33[4] = a4;
    v34 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
    sub_1E5D56E18(0, &qword_1ED06AB20);
    v35 = v27;
    v36 = v30;
    v37 = a1;

    v38 = sub_1E5DA922C();

    sub_1E5D56E18(0, &qword_1ED06AB28);
    v39 = sub_1E5DA922C();

    aBlock[4] = sub_1E5D81000;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5D81440;
    aBlock[3] = &block_descriptor_3;
    v40 = _Block_copy(aBlock);
    v41 = [v34 initWithQueryDescriptors:v38 limit:1 sortDescriptors:v39 resultsHandler:v40];

    _Block_release(v40);

    [a2 executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E5D81000(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (a3)
  {
    v7 = sub_1E5DA931C();
    v8 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      v11 = v5;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v10 = 136315650;
      *(v10 + 4) = sub_1E5D67320(0xD000000000000020, 0x80000001E5DB3870, &v41);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v6;
      *v12 = v6;
      *(v10 + 22) = 2080;
      swift_getErrorValue();
      v14 = v6;
      v15 = sub_1E5DA963C();
      v17 = sub_1E5D67320(v15, v16, &v41);

      *(v10 + 24) = v17;
      _os_log_impl(&dword_1E5D0F000, v9, v7, "%s - failed to fetch heart rate for mindfulness session %@ with error %s", v10, 0x20u);
      sub_1E5D6B414(v12);
      v18 = v12;
      v5 = v11;
      MEMORY[0x1E693E930](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E693E930](v13, -1, -1);
      MEMORY[0x1E693E930](v10, -1, -1);
    }

LABEL_16:
    v28 = 0;
    v29 = 1;
    return v5(v28, v29);
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v19 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v38 = a2;
    v39 = sub_1E5DA94FC();
    a2 = v38;
    if (v39)
    {
      goto LABEL_7;
    }

LABEL_14:
    v30 = sub_1E5DA933C();
    v31 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], v30))
    {
      v32 = v31;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_1E5D67320(0xD000000000000020, 0x80000001E5DB3870, &v40);
      *(v33 + 12) = 2112;
      *(v33 + 14) = v6;
      *v34 = v6;
      v36 = v6;
      _os_log_impl(&dword_1E5D0F000, v32, v30, "%s - failed to fetch heart rate for mindfulness session %@", v33, 0x16u);
      sub_1E5D6B414(v34);
      MEMORY[0x1E693E930](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E693E930](v35, -1, -1);
      MEMORY[0x1E693E930](v33, -1, -1);
    }

    goto LABEL_16;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1E693D110](0);
  }

  else
  {
    if (!*(v19 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v20 = *(a2 + 32);
  }

  v21 = v20;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    goto LABEL_14;
  }

  v23 = [v22 quantity];

  [v23 _beatsPerMinute];
  v4 = v24;

  if (qword_1ED06BA10 != -1)
  {
LABEL_22:
    swift_once();
  }

  v25 = qword_1ED06BA18;
  v26 = sub_1E5DA92DC();
  sub_1E5DA83EC();
  v27 = sub_1E5DA911C();

  [v25 setObject:v26 forKey:v27];

  v28 = v4;
  v29 = 0;
  return v5(v28, v29);
}

uint64_t sub_1E5D81440(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1E5D56E18(0, &qword_1ED06AB30);
    v5 = sub_1E5DA923C();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E5D81510(uint64_t a1, uint64_t a2)
{
  sub_1E5DA968C();
  sub_1E5DA91AC();
  v4 = sub_1E5DA96CC();

  return sub_1E5D81598(a1, a2, v4);
}

unint64_t sub_1E5D81598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E5DA95CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id CAGradientLayer.startPoint(_:)()
{
  [v0 setStartPoint_];

  return v2;
}

id CAGradientLayer.endPoint(_:)()
{
  [v0 setEndPoint_];

  return v2;
}

char *CAGradientLayer.colors(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E5DA94FC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1E5D81870(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E693D110](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 CGColor];
      type metadata accessor for CGColor();
      v15 = v9;

      *&v14 = v8;
      v16 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1E5D81870((v10 > 1), v11 + 1, 1);
        v5 = v16;
      }

      ++v4;
      *(v5 + 16) = v11 + 1;
      sub_1E5D818E0(&v14, (v5 + 32 * v11 + 32));
    }

    while (v2 != v4);
  }

  v12 = sub_1E5DA922C();

  [v13 setColors_];

  return v13;
}

char *sub_1E5D81870(char *a1, int64_t a2, char a3)
{
  result = sub_1E5D818F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void type metadata accessor for CGColor()
{
  if (!qword_1ED06AB38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED06AB38);
    }
  }
}

_OWORD *sub_1E5D818E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_1E5D818F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t FIUIRelativeDateTimeFormatter.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5DA854C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t FIUIRelativeDateTimeFormatter.localizedString(for:relativeTo:)(uint64_t a1, uint64_t a2)
{
  v74 = sub_1E5DA83DC();
  v76 = *(v74 - 8);
  v4 = MEMORY[0x1EEE9AC00](v74);
  v73 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v70 - v6;
  v79 = sub_1E5DA82CC();
  v77 = *(v79 - 8);
  v7 = MEMORY[0x1EEE9AC00](v79);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v70 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB48);
  v11 = sub_1E5DA853C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E5DB24A0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E6969A48], v11);
  v17(v16 + v13, *MEMORY[0x1E6969A58], v11);
  v17(v16 + 2 * v13, *MEMORY[0x1E6969A88], v11);
  sub_1E5D82AE4(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v71 = a1;
  v72 = a2;
  sub_1E5DA84CC();

  v80 = v10;
  v18 = sub_1E5DA828C();
  if ((v19 & 1) != 0 || (v20 = v18) == 0)
  {
    v29 = sub_1E5DA829C();
    v27 = v75;
    v26 = v76;
    v28 = v74;
    if ((v30 & 1) != 0 || (v20 = v29) == 0)
    {
      v20 = sub_1E5DA82AC();
      v33 = v32;
      v34 = sub_1E5D82F88();
      v21 = v34;
      v25 = v79;
      if ((v33 & 1) != 0 || !v20)
      {
        v69 = sub_1E5D82FB0(v34, 0, 0);

        (*(v77 + 8))(v80, v25);
        return v69;
      }

      v22 = sub_1E5D82FB0(v34, 0, 0);
      v24 = v35;
    }

    else
    {
      v21 = sub_1E5D82F88();
      v22 = sub_1E5D82FB0(v21, 0, 0);
      v24 = v31;
      v25 = v79;
    }
  }

  else
  {
    v21 = sub_1E5D82F88();
    v22 = sub_1E5D82FB0(v21, 0, 0);
    v24 = v23;
    v25 = v79;
    v27 = v75;
    v26 = v76;
    v28 = v74;
  }

  v36 = sub_1E5D82268(v20, v22, v24);
  v75 = v37;
  v76 = v36;

  v38 = sub_1E5DA930C();
  v39 = *MEMORY[0x1E696B928];
  v40 = *(v26 + 16);
  v40(v27, v71, v28);
  v41 = v73;
  v40(v73, v72, v28);
  v43 = v77;
  v42 = v78;
  (*(v77 + 16))(v78, v80, v25);
  v44 = v39;
  LODWORD(v74) = v38;
  if (os_log_type_enabled(v44, v38))
  {
    v45 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v81 = v72;
    *v45 = 136316418;
    *(v45 + 4) = sub_1E5D67320(0xD00000000000001DLL, 0x80000001E5DB38F0, &v81);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_1E5D67320(0xD000000000000020, 0x80000001E5DB76A0, &v81);
    *(v45 + 22) = 2080;
    sub_1E5D82EE4(&qword_1ED06AB50, MEMORY[0x1E6969530]);
    v46 = sub_1E5DA95AC();
    v47 = v27;
    v48 = v43;
    v50 = v49;
    v51 = *(v26 + 8);
    v51(v47, v28);
    v52 = sub_1E5D67320(v46, v50, &v81);

    *(v45 + 24) = v52;
    *(v45 + 32) = 2080;
    v53 = sub_1E5DA95AC();
    v55 = v54;
    v51(v41, v28);
    v56 = sub_1E5D67320(v53, v55, &v81);

    *(v45 + 34) = v56;
    *(v45 + 42) = 2080;
    sub_1E5D82EE4(&qword_1ED06AB58, MEMORY[0x1E6968278]);
    v58 = v78;
    v57 = v79;
    v59 = sub_1E5DA95AC();
    v61 = v60;
    v62 = *(v48 + 8);
    v62(v58, v57);
    v63 = sub_1E5D67320(v59, v61, &v81);

    *(v45 + 44) = v63;
    *(v45 + 52) = 2080;
    v64 = v76;
    *(v45 + 54) = sub_1E5D67320(v76, v75, &v81);
    _os_log_impl(&dword_1E5D0F000, v44, v74, "%s::%s date (%s) referenceDate (%s) differenceComponents (%s) result %s", v45, 0x3Eu);
    v65 = v72;
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v65, -1, -1);
    MEMORY[0x1E693E930](v45, -1, -1);

    v62(v80, v57);
    return v64;
  }

  else
  {

    v67 = *(v43 + 8);
    v67(v42, v25);
    v68 = *(v26 + 8);
    v68(v41, v28);
    v68(v27, v28);
    v67(v80, v25);
    return v76;
  }
}

uint64_t sub_1E5D82268(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (result < 0 && (v5 = -result, __OFSUB__(0, result)))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1E5D82F88();
    v7 = sub_1E5D82FB0(v6, 0, 0);
    v9 = v8;

    v10 = sub_1E5D82F88();
    sub_1E5D82FB0(v10, 0, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E5DB24A0;
    v12 = MEMORY[0x1E69E65A8];
    *(v11 + 56) = MEMORY[0x1E69E6530];
    *(v11 + 64) = v12;
    *(v11 + 32) = v5;
    v13 = MEMORY[0x1E69E6158];
    *(v11 + 96) = MEMORY[0x1E69E6158];
    v14 = sub_1E5D5E0E0();
    *(v11 + 72) = v7;
    *(v11 + 80) = v9;
    *(v11 + 136) = v13;
    *(v11 + 144) = v14;
    *(v11 + 104) = v14;
    *(v11 + 112) = a2;
    *(v11 + 120) = a3;

    v15 = sub_1E5DA912C();

    return v15;
  }

  return result;
}

uint64_t FIUIRelativeDateTimeFormatter.localizedDayString(for:)(uint64_t a1)
{
  v2 = sub_1E5DA82CC();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5DA853C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A3D0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = sub_1E5DA83DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  sub_1E5DA83CC();
  v66 = a1;
  if (sub_1E5DA851C())
  {
    v22 = sub_1E5D82F88();
    v23 = sub_1E5D82FB0(v22, 0, 0);

    (*(v14 + 8))(v21, v13);
  }

  else
  {
    v24 = *(v5 + 104);
    v58 = *MEMORY[0x1E6969A48];
    v59 = v5 + 104;
    v57 = v24;
    v24(v7);
    v65 = v21;
    sub_1E5DA850C();
    v55 = v5;
    v56 = v4;
    v25 = *(v5 + 8);
    v25(v7, v4);
    v26 = *(v14 + 48);
    if (v26(v12, 1, v13) == 1)
    {
      v54 = v14;
      v27 = v13;
      sub_1E5D56DB0(v12);
    }

    else
    {
      (*(v14 + 32))(v19, v12, v13);
      if (sub_1E5DA851C())
      {
        v28 = sub_1E5D82F88();
        v23 = sub_1E5D82FB0(v28, 0, 0);

        v29 = *(v14 + 8);
        v29(v19, v13);
        v29(v65, v13);
        return v23;
      }

      v54 = v14;
      v30 = v19;
      v27 = v13;
      (*(v14 + 8))(v30, v13);
    }

    v31 = v56;
    v57(v7, v58, v56);
    v32 = v64;
    sub_1E5DA850C();
    v53 = v25;
    v25(v7, v31);
    v33 = v27;
    v34 = v26(v32, 1, v27);
    v35 = v55;
    if (v34 == 1)
    {
      sub_1E5D56DB0(v32);
      v36 = v27;
    }

    else
    {
      v37 = v54;
      v38 = v60;
      (*(v54 + 32))(v60, v32, v33);
      v36 = v33;
      if (sub_1E5DA851C())
      {
        v39 = sub_1E5D82F88();
        v23 = sub_1E5D82FB0(v39, 0, 0);

        v40 = *(v37 + 8);
        v40(v38, v33);
        v40(v65, v33);
        return v23;
      }

      (*(v37 + 8))(v38, v33);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB48);
    v41 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E5DB2290;
    v57((v42 + v41), v58, v31);
    sub_1E5D82AE4(v42);
    swift_setDeallocating();
    v53(v42 + v41, v31);
    swift_deallocClassInstance();
    v43 = v61;
    v44 = v65;
    sub_1E5DA84CC();

    v45 = sub_1E5DA828C();
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v45;
    }

    v48 = sub_1E5D82F88();
    v49 = sub_1E5D82FB0(v48, 0, 0);
    v51 = v50;

    v23 = sub_1E5D82268(v47, v49, v51);

    (*(v62 + 8))(v43, v63);
    (*(v54 + 8))(v44, v36);
  }

  return v23;
}

uint64_t sub_1E5D82AE4(uint64_t a1)
{
  v2 = sub_1E5DA853C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB60);
    v9 = sub_1E5DA93FC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E5D82EE4(&qword_1ED06AB68, MEMORY[0x1E6969AD0]);
      v16 = sub_1E5DA90CC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1E5D82EE4(&qword_1ED06AB70, MEMORY[0x1E6969AD0]);
          v23 = sub_1E5DA910C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t type metadata accessor for FIUIRelativeDateTimeFormatter()
{
  result = qword_1ED06BA20;
  if (!qword_1ED06BA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5D82E78()
{
  result = sub_1E5DA854C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5D82EE4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E5D82F88()
{
  result = FIUIBundle();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5D82FB0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1E5DA911C();
  if (a3)
  {
    a3 = sub_1E5DA911C();
  }

  v6 = [a1 localizedStringForKey:v5 value:0 table:a3];

  v7 = sub_1E5DA915C();
  return v7;
}

uint64_t sub_1E5D83050@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6989B08];
  v3 = sub_1E5DA85EC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ActivityRingsSwiftUIView.init(summaryType:isPaused:shouldShowSprites:renderingMode:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v30 = a2;
  v31 = a5;
  v7 = sub_1E5DA85EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5DA85CC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v28 - v16);
  v18 = *a1;
  if (*(a1 + 8))
  {
    *v17 = 0;
    if ((v18 & 0x100) != 0)
    {
      v19 = MEMORY[0x1E6989AF8];
    }

    else
    {
      v17[1] = 0;
      v17[2] = 0;
      v19 = MEMORY[0x1E6989AF0];
    }
  }

  else
  {
    v29 = a4;
    v28[3] = [v18 _wheelchairUse] == 2;
    v20 = [v18 _isStandalonePhoneSummary];
    sub_1E5D7C328();
    v22 = v21;
    if (v20)
    {
      sub_1E5D833D0(v18, 0);
      *v17 = v22;
      v19 = MEMORY[0x1E6989AF8];
    }

    else
    {
      [v18 _exerciseTimeCompletionPercentage];
      v24 = v23;
      [v18 _standHoursCompletionPercentage];
      v26 = v25;
      sub_1E5D833D0(v18, 0);
      *v17 = v22;
      v17[1] = v24;
      v17[2] = v26;
      v19 = MEMORY[0x1E6989AF0];
    }

    a4 = v29;
  }

  (*(v12 + 104))(v17, *v19, v11);
  (*(v12 + 16))(v15, v17, v11);
  (*(v8 + 16))(v10, a4, v7);
  sub_1E5DA85DC();
  (*(v8 + 8))(a4, v7);
  return (*(v12 + 8))(v17, v11);
}

void sub_1E5D833D0(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E5D833FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1E5D83444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t static FitnessUIArchivableView.registerWidgetViewDecoders()()
{
  type metadata accessor for ActivityStatisticsArchivableView();
  sub_1E5D8350C();
  sub_1E5DA896C();
  sub_1E5D73D54();
  sub_1E5DA896C();
  sub_1E5D78EA8();
  return sub_1E5DA896C();
}

unint64_t sub_1E5D8350C()
{
  result = qword_1ED7FF688;
  if (!qword_1ED7FF688)
  {
    type metadata accessor for ActivityStatisticsArchivableView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF688);
  }

  return result;
}

id sub_1E5D83564()
{
  result = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  qword_1ED06D4B8 = result;
  return result;
}

uint64_t *sub_1E5D83598()
{
  if (qword_1ED06BA30 != -1)
  {
    swift_once();
  }

  return &qword_1ED06D4B8;
}

id sub_1E5D8360C()
{
  type metadata accessor for FIUIWheelchairStatusProvider();
  if (qword_1ED06BA30 != -1)
  {
    swift_once();
  }

  result = sub_1E5D57C14(qword_1ED06D4B8);
  qword_1ED06D4C0 = result;
  return result;
}

uint64_t *sub_1E5D8367C()
{
  if (qword_1ED06BA38 != -1)
  {
    swift_once();
  }

  return &qword_1ED06D4C0;
}

uint64_t sub_1E5D836CC()
{
  if (qword_1ED06BA38 != -1)
  {
    swift_once();
  }
}

void sub_1E5D83728()
{
  if (qword_1ED06BA30 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED06D4B8;
  v1 = objc_allocWithZone(FIUIUnitManager);
  v2 = v0;
  v3 = [v1 initWithHealthStore_];

  v4 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager_];
  if (v4)
  {
    qword_1ED06D4C8 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1E5D837EC()
{
  if (qword_1ED06BA40 != -1)
  {
    swift_once();
  }

  return &qword_1ED06D4C8;
}

id sub_1E5D83860(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id NSNumber.init(value:)(double a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithDouble_];
}

uint64_t sub_1E5D83984()
{
  v1 = *v0;
  sub_1E5DA968C();
  MEMORY[0x1E693D380](v1);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D839F8()
{
  v1 = *v0;
  sub_1E5DA968C();
  MEMORY[0x1E693D380](v1);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D83A64()
{
  sub_1E5DA968C();
  MEMORY[0x1E693D380](0);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D83AA8()
{
  sub_1E5DA968C();
  MEMORY[0x1E693D380](0);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D83B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_1E5D84620(a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);

    if (!*(v12 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_6:
      sub_1E5D83C9C(a3);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5DB2290;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(inited + 32) = sub_1E5D8468C;
  *(inited + 40) = v14;

  sub_1E5D846B8(inited);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_1E5D84A4C(v12, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v8) = v17;
  return swift_endAccess();
}

id sub_1E5D83C9C(uint64_t a1)
{
  if (a1 <= 15)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        return [v1 addTarget:v1 action:sel_touchDragInside_ forControlEvents:4];
      }

      if (a1 == 8)
      {
        return [v1 addTarget:v1 action:sel_touchDragOutside_ forControlEvents:8];
      }
    }

    else
    {
      if (a1 == 1)
      {
        return [v1 addTarget:v1 action:sel_touchDown_ forControlEvents:1];
      }

      if (a1 == 2)
      {
        return [v1 addTarget:v1 action:sel_touchDownRepeat_ forControlEvents:2];
      }
    }
  }

  else if (a1 <= 63)
  {
    if (a1 == 16)
    {
      return [v1 addTarget:v1 action:sel_touchDragEnter_ forControlEvents:16];
    }

    if (a1 == 32)
    {
      return [v1 addTarget:v1 action:sel_touchDragExit_ forControlEvents:32];
    }
  }

  else
  {
    switch(a1)
    {
      case 64:
        return [v1 addTarget:v1 action:sel_touchUpInside_ forControlEvents:64];
      case 128:
        return [v1 addTarget:v1 action:sel_touchUpOutside_ forControlEvents:128];
      case 256:
        return [v1 addTarget:v1 action:sel_touchCancel_ forControlEvents:256];
    }
  }

  sub_1E5D84CD0();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1E5D83E6C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (*(v6 + 16))
  {
    result = sub_1E5D84620(a1);
    if (v7)
    {
      v8 = *(*(v6 + 56) + 8 * result);
      v9 = *(v8 + 16);

      if (v9)
      {
        v10 = 0;
        v11 = v8 + 40;
        while (v10 < *(v8 + 16))
        {
          ++v10;
          v12 = *(v11 - 8);
          v13 = v2;

          v12(&v13);

          v11 += 16;
          if (v9 == v10)
          {
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1E5D84218(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents;
  result = swift_beginAccess();
  v7 = *(v4 + v5);
  if (*(v7 + 16))
  {
    result = sub_1E5D84620(a2);
    if (v8)
    {
      v9 = *(*(v7 + 56) + 8 * result);
      v10 = *(v9 + 16);

      if (v10)
      {
        v11 = 0;
        v12 = v9 + 40;
        while (v11 < *(v9 + 16))
        {
          ++v11;
          v13 = *(v12 - 8);
          v14 = v4;

          v13(&v14);

          v12 += 16;
          if (v10 == v11)
          {
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

id sub_1E5D8434C(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1E5D843B0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents] = MEMORY[0x1E69E7CC8];
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ModernButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1E5D844AC(void *a1)
{
  *&v1[OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents] = MEMORY[0x1E69E7CC8];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ModernButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E5D845AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E5D84604@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1E5D84620(uint64_t a1)
{
  sub_1E5DA968C();
  MEMORY[0x1E693D380](a1);
  v2 = sub_1E5DA96CC();

  return sub_1E5D84D24(a1, v2);
}

void *sub_1E5D846B8(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1E5D84EEC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABB0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E5D847BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABA8);
  v30 = a2;
  result = sub_1E5DA956C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1E5DA968C();
      MEMORY[0x1E693D380](v20);
      result = sub_1E5DA96CC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1E5D84A4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E5D84620(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1E5D847BC(v14, a3 & 1);
      result = sub_1E5D84620(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for Event();
        result = sub_1E5DA961C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1E5D84D90();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1E5D84BC0()
{
  result = qword_1ED06AB88;
  if (!qword_1ED06AB88)
  {
    type metadata accessor for Event();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AB88);
  }

  return result;
}

void type metadata accessor for Event()
{
  if (!qword_1ED06AB98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED06AB98);
    }
  }
}

unint64_t sub_1E5D84C6C()
{
  result = qword_1ED06AB90;
  if (!qword_1ED06AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AB90);
  }

  return result;
}

unint64_t sub_1E5D84CD0()
{
  result = qword_1ED06ABA0;
  if (!qword_1ED06ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06ABA0);
  }

  return result;
}

unint64_t sub_1E5D84D24(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1E5D84D90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABA8);
  v2 = *v0;
  v3 = sub_1E5DA955C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E5D84EEC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AB80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E5D85020()
{
  v0 = [objc_opt_self() defaultCenter];
  sub_1E5DA935C();
}

uint64_t FIUIUnitPreferenceUpdateObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  FIUIUnitPreferenceUpdateObserver.init()();
  return v0;
}

uint64_t FIUIUnitPreferenceUpdateObserver.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  swift_defaultActor_initialize();
  v5 = [objc_opt_self() defaultCenter];
  sub_1E5DA935C();

  *(v1 + OBJC_IVAR____TtC9FitnessUI32FIUIUnitPreferenceUpdateObserver_observerTask) = 0;
  v6 = sub_1E5DA92BC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_1E5D57DE8(0, 0, v4, &unk_1E5DB3C30, v7);

  return v1;
}

uint64_t sub_1E5D85244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1E5D8528C, a4, 0);
}

uint64_t sub_1E5D8528C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1E5DA934C();
  sub_1E5D85984(&qword_1ED06ABB8, MEMORY[0x1E6969F20]);
  v5 = sub_1E5DA88AC();

  *(v1 + OBJC_IVAR____TtC9FitnessUI32FIUIUnitPreferenceUpdateObserver_observerTask) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5D853C8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5D594BC;

  return sub_1E5D85244(v3, v4, v5, v2);
}

uint64_t sub_1E5D8545C()
{
  v0 = sub_1E5DA864C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5D805C0();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1E5DA862C();
  v6 = sub_1E5DA933C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    v9 = sub_1E5DA96DC();
    v11 = sub_1E5D67320(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E5D0F000, v5, v6, "%s Received received unit preference update", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E693E930](v8, -1, -1);
    MEMORY[0x1E693E930](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for FIUIUnitPreferenceUpdateObserver();
    sub_1E5D85984(&qword_1ED7FF5A8, type metadata accessor for FIUIUnitPreferenceUpdateObserver);
    sub_1E5DA888C();

    sub_1E5DA889C();
  }

  return result;
}

uint64_t FIUIUnitPreferenceUpdateObserver.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9FitnessUI32FIUIUnitPreferenceUpdateObserver_observerTask))
  {

    sub_1E5DA887C();
  }

  v2 = OBJC_IVAR____TtC9FitnessUI32FIUIUnitPreferenceUpdateObserver_unitPreferencePublisher;
  v3 = sub_1E5DA934C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t FIUIUnitPreferenceUpdateObserver.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9FitnessUI32FIUIUnitPreferenceUpdateObserver_observerTask))
  {

    sub_1E5DA887C();
  }

  v2 = OBJC_IVAR____TtC9FitnessUI32FIUIUnitPreferenceUpdateObserver_unitPreferencePublisher;
  v3 = sub_1E5DA934C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v1);
}

uint64_t sub_1E5D85818@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FIUIUnitPreferenceUpdateObserver();
  result = sub_1E5DA888C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for FIUIUnitPreferenceUpdateObserver()
{
  result = qword_1ED800220;
  if (!qword_1ED800220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5D858AC()
{
  result = sub_1E5DA934C();
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

uint64_t sub_1E5D85984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5D85A2C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id MindfulnessSessionViewModel.__allocating_init(uuid:startDate:endDate:duration:metadata:sourceRevision:mindfulnessSessions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v30 = v9;
  v13 = objc_allocWithZone(v9);
  v14 = OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_uuid;
  v15 = sub_1E5DA841C();
  v16 = *(v15 - 8);
  v31 = a1;
  (*(v16 + 16))(&v13[v14], a1, v15);
  v17 = OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_startDate;
  v18 = sub_1E5DA83DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(&v13[v17], a2, v18);
  v20(&v13[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_endDate], a3, v18);
  if (a5)
  {
    sub_1E5DA838C();
  }

  else
  {
    v21 = a4;
  }

  *&v13[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_duration] = v21;
  *&v13[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata] = a6;
  *&v13[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_sourceRevision] = a7;
  *&v13[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_mindfulnessSessions] = a8;
  v32.receiver = v13;
  v32.super_class = v30;
  v22 = objc_msgSendSuper2(&v32, sel_init);
  v23 = *(v19 + 8);
  v23(a3, v18);
  v23(a2, v18);
  (*(v16 + 8))(v31, v15);
  return v22;
}

id MindfulnessSessionViewModel.init(uuid:startDate:endDate:duration:metadata:sourceRevision:mindfulnessSessions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_uuid;
  v14 = sub_1E5DA841C();
  v15 = *(v14 - 8);
  v29 = a1;
  (*(v15 + 16))(&v9[v13], a1, v14);
  v16 = OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_startDate;
  v17 = sub_1E5DA83DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(&v9[v16], a2, v17);
  v19(&v9[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_endDate], a3, v17);
  if (a5)
  {
    sub_1E5DA838C();
  }

  else
  {
    v20 = a4;
  }

  *&v9[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_duration] = v20;
  *&v9[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata] = a6;
  *&v9[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_sourceRevision] = a7;
  *&v9[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_mindfulnessSessions] = a8;
  v30.receiver = v9;
  v30.super_class = type metadata accessor for MindfulnessSessionViewModel();
  v21 = objc_msgSendSuper2(&v30, sel_init);
  v22 = *(v18 + 8);
  v22(a3, v17);
  v22(a2, v17);
  (*(v15 + 8))(v29, v14);
  return v21;
}

uint64_t type metadata accessor for MindfulnessSessionViewModel()
{
  result = qword_1ED06BDD0;
  if (!qword_1ED06BDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5D86028()
{
  v1 = v0;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1E5DA941C();
  v17.receiver = v0;
  v17.super_class = type metadata accessor for MindfulnessSessionViewModel();
  v2 = objc_msgSendSuper2(&v17, sel_description);
  v3 = sub_1E5DA915C();
  v5 = v4;

  MEMORY[0x1E693CEB0](v3, v5);

  MEMORY[0x1E693CEB0](0x3A6469757520, 0xE600000000000000);
  sub_1E5DA841C();
  sub_1E5D86380(&qword_1ED06A780, MEMORY[0x1E69695A8]);
  v6 = sub_1E5DA95AC();
  MEMORY[0x1E693CEB0](v6);

  MEMORY[0x1E693CEB0](0x6144747261747320, 0xEB000000003A6574);
  sub_1E5DA83DC();
  sub_1E5D86380(&qword_1ED06AB50, MEMORY[0x1E6969530]);
  v7 = sub_1E5DA95AC();
  MEMORY[0x1E693CEB0](v7);

  MEMORY[0x1E693CEB0](0x65746144646E6520, 0xE90000000000003ALL);
  v8 = sub_1E5DA95AC();
  MEMORY[0x1E693CEB0](v8);

  MEMORY[0x1E693CEB0](0x6F69746172756420, 0xEA00000000003A6ELL);
  sub_1E5DA92EC();
  MEMORY[0x1E693CEB0](0x7461646174656D20, 0xEA00000000003A61);
  if (!*&v1[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata])
  {
    sub_1E5D876B4(MEMORY[0x1E69E7CC0]);
  }

  v9 = sub_1E5DA909C();
  v11 = v10;

  MEMORY[0x1E693CEB0](v9, v11);

  MEMORY[0x1E693CEB0](0xD000000000000010, 0x80000001E5DB7900);
  v12 = [*&v1[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_sourceRevision] description];
  v13 = sub_1E5DA915C();
  v15 = v14;

  MEMORY[0x1E693CEB0](v13, v15);

  return v18;
}

uint64_t sub_1E5D86380(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E5D863C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = sub_1E5DA915C();
  if (*(v1 + 16))
  {
    v4 = sub_1E5D81510(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_1E5D685FC(*(v1 + 56) + 32 * v4, v15);
      sub_1E5D56E18(0, &qword_1ED06A3F8);
      if (swift_dynamicCast())
      {
        v7 = [v14 integerValue];

        return v7;
      }
    }
  }

  else
  {
  }

  v9 = sub_1E5DA915C();
  if (!*(v1 + 16))
  {

    goto LABEL_12;
  }

  v11 = sub_1E5D81510(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_12:
    memset(v15, 0, sizeof(v15));
    sub_1E5D877C4(v15);
    return 0;
  }

  sub_1E5D685FC(*(v1 + 56) + 32 * v11, v15);
  sub_1E5D877C4(v15);
  return 0;
}

id MindfulnessSessionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MindfulnessSessionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindfulnessSessionViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static MindfulnessSessionViewModel.makeMindfulnessSessionViewModels(from:)()
{
  v112 = sub_1E5DA841C();
  v0 = *(v112 - 8);
  v1 = MEMORY[0x1EEE9AC00](v112);
  v111 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v87 - v3;
  v105 = sub_1E5DA83DC();
  v5 = *(v105 - 8);
  v6 = MEMORY[0x1EEE9AC00](v105);
  v110 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v109 = &v87 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v87 - v14;
  v118 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v13 = v86)
  {
    if (i < 1)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v94 = v15;
    v93 = v12;
    v95 = v4;
    v15 = 0;
    v102 = v13 & 0xC000000000000001;
    v96 = "lnessSessionViewModel";
    v104 = (v5 + 8);
    v103 = (v0 + 16);
    v99 = (v5 + 16);
    v98 = (v0 + 8);
    v17 = MEMORY[0x1E69E7CC0];
    v18 = &selRef_initWithString_;
    v97 = xmmword_1E5DB3860;
    v101 = v13;
    v100 = i;
    while (1)
    {
      if (v102)
      {
        v19 = MEMORY[0x1E693D110](v15);
      }

      else
      {
        v19 = *(v13 + 8 * v15 + 32);
      }

      v0 = v19;
      v20 = [v0 v18[202]];
      v108 = v15;
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = v20;
      v5 = sub_1E5DA908C();

      if (!*(v5 + 16) || (v22 = sub_1E5D81510(0xD000000000000022, v96 | 0x8000000000000000), (v23 & 1) == 0))
      {
LABEL_26:

LABEL_27:
        v35 = [v0 UUID];
        sub_1E5DA83FC();

        v36 = v0;
        v37 = [v36 startDate];
        sub_1E5DA83BC();

        v38 = [v36 endDate];
        sub_1E5DA83BC();

        v39 = [v36 v18[202]];
        if (v39)
        {
          v40 = v39;
          v107 = sub_1E5DA908C();
        }

        else
        {
          v107 = 0;
        }

        v106 = [v36 sourceRevision];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A8F8);
        v41 = swift_allocObject();
        *(v41 + 16) = v97;
        *(v41 + 32) = v36;
        v42 = type metadata accessor for MindfulnessSessionViewModel();
        v43 = objc_allocWithZone(v42);
        v44 = v111;
        (*v103)(&v43[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_uuid], v111, v112);
        v45 = *v99;
        v46 = v109;
        v47 = v105;
        (*v99)(&v43[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_startDate], v109, v105);
        v48 = v110;
        v45(&v43[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_endDate], v110, v47);
        v49 = v36;
        sub_1E5DA838C();
        *&v43[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_duration] = v50;
        *&v43[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata] = v107;
        *&v43[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_sourceRevision] = v106;
        *&v43[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_mindfulnessSessions] = v41;
        v116.receiver = v43;
        v116.super_class = v42;
        v51 = objc_msgSendSuper2(&v116, sel_init);
        v4 = v104;
        v52 = *v104;
        (*v104)(v48, v47);
        v52(v46, v47);
        (*v98)(v44, v112);
        v53 = v51;
        MEMORY[0x1E693CF00]();
        if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E5DA924C();
        }

        sub_1E5DA925C();

        v17 = v118;
        v13 = v101;
        v54 = v100;
        v55 = v108;
        v18 = &selRef_initWithString_;
        goto LABEL_33;
      }

      sub_1E5D685FC(*(v5 + 56) + 32 * v22, &v117);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_27;
      }

      v24 = v114;
      v12 = v115;
      v25 = v17 >> 62;
      if (v17 >> 62)
      {
        v26 = sub_1E5DA94FC();
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      v27 = __OFSUB__(v26, 1);
      v28 = v26 - 1;
      if (v27)
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E693D110](v28, v17);
      }

      else
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if (v28 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v29 = *(v17 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata;
      v32 = *&v29[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata];
      if (!v32 || !*(v32 + 16) || (v33 = sub_1E5D81510(0xD000000000000022, v96 | 0x8000000000000000), (v34 & 1) == 0) || (sub_1E5D685FC(*(v32 + 56) + 32 * v33, &v117), (swift_dynamicCast() & 1) == 0))
      {

        goto LABEL_27;
      }

      if (v114 == v24 && v115 == v12)
      {
      }

      else
      {
        v56 = sub_1E5DA95CC();

        if ((v56 & 1) == 0)
        {

          goto LABEL_27;
        }
      }

      v57 = *&v30[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_duration];
      v58 = v0;
      v59 = [v58 endDate];
      v60 = v94;
      sub_1E5DA83BC();

      v61 = [v58 startDate];
      v62 = v93;
      sub_1E5DA83BC();

      sub_1E5DA838C();
      v64 = v63;
      v65 = *v104;
      v66 = v105;
      v106 = v65;
      v65(v62, v105);
      v65(v60, v66);
      v67 = *&v30[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_mindfulnessSessions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A8F8);
      inited = swift_initStackObject();
      *(inited + 16) = v97;
      *(inited + 32) = v58;
      v117 = v67;
      v69 = v58;

      sub_1E5D87330(inited);
      v92 = v117;
      v91 = *v103;
      v91(v95, &v30[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_uuid], v112);
      v70 = [v69 startDate];
      v88 = v69;

      sub_1E5DA83BC();
      v71 = *v99;
      v72 = v93;
      v73 = v105;
      (*v99)(v93, &v30[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_endDate], v105);
      v89 = *&v30[v31];
      v107 = v30;
      v90 = *&v30[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_sourceRevision];
      v74 = type metadata accessor for MindfulnessSessionViewModel();
      v75 = objc_allocWithZone(v74);
      v91(&v75[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_uuid], v95, v112);
      v71(&v75[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_startDate], v94, v73);
      v76 = v72;
      v71(&v75[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_endDate], v72, v73);
      *&v75[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_duration] = v57 + v64;
      *&v75[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_metadata] = v89;
      v77 = v90;
      *&v75[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_sourceRevision] = v90;
      *&v75[OBJC_IVAR____TtC9FitnessUI27MindfulnessSessionViewModel_mindfulnessSessions] = v92;
      v113.receiver = v75;
      v113.super_class = v74;

      v78 = v77;
      v79 = objc_msgSendSuper2(&v113, sel_init);
      v80 = v106;
      v106(v76, v73);
      v80(v94, v73);
      (*v98)(v95, v112);
      if (v25)
      {
        v81 = sub_1E5DA94FC();
      }

      else
      {
        v81 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = v100;
      v82 = v81 - 1;
      v4 = v101;
      v55 = v108;
      v18 = &selRef_initWithString_;
      v83 = v107;
      if (__OFSUB__(v81, 1))
      {
        goto LABEL_58;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v25 || !isUniquelyReferenced_nonNull_bridgeObject)
      {
        v17 = sub_1E5D87420(v17);
      }

      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v82 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v85 = *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v82 + 0x20);
      *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v82 + 0x20) = v79;

      v118 = v17;
      v13 = v4;
LABEL_33:
      v15 = v55 + 1;
      if (v54 == v15)
      {
        return;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v86 = v13;
    i = sub_1E5DA94FC();
  }
}

uint64_t sub_1E5D87330(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E5DA94FC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1E5DA94FC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1E5D87484(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E5D87524(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E5D87420(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E5DA94FC();
  }

  return sub_1E5DA943C();
}

uint64_t sub_1E5D87484(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1E5DA94FC();
LABEL_9:
  result = sub_1E5DA943C();
  *v1 = result;
  return result;
}

uint64_t sub_1E5D87524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E5DA94FC();
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
      result = sub_1E5DA94FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E5D879B4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABD0);
            v9 = sub_1E5D80450(v13, i, a3);
            v11 = *v10;
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
        sub_1E5D56E18(0, &qword_1ED06ABC8);
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

unint64_t sub_1E5D876B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABE0);
    v3 = sub_1E5DA958C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5D87A18(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1E5D81510(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E5D818E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5D877C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5D87834()
{
  result = sub_1E5DA841C();
  if (v1 <= 0x3F)
  {
    result = sub_1E5DA83DC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1E5D879B4()
{
  result = qword_1ED06ABD8;
  if (!qword_1ED06ABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06ABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06ABD8);
  }

  return result;
}

uint64_t sub_1E5D87A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06ABE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id UIButton.title(_:for:)()
{
  v0 = sub_1E5DA911C();
  [v2 setTitle:v0 forState:{objc_msgSend(v2, sel_state)}];

  return v2;
}

id UIButton.titleColor(_:for:)(uint64_t a1)
{
  [v3 setTitleColor:a1 forState:{objc_msgSend(v1, sel_state)}];

  return v3;
}

id UIButton.titleLabelFont(_:)(uint64_t a1)
{
  v3 = [v1 titleLabel];
  [v3 setFont_];

  return v5;
}

id UIButton.backgroundImage(_:for:)(uint64_t a1, uint64_t a2)
{
  [v2 setBackgroundImage:a1 forState:a2];

  return v4;
}

id UIButton.adjustTitleLabelFontForDynamicType(_:)(char a1)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
  }

  return v6;
}

id sub_1E5D87CB0()
{

  v0 = sub_1E5DA911C();

  return v0;
}

uint64_t sub_1E5D87D18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1E5DA915C();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

uint64_t sub_1E5D87EC0(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_1E5DA915C();

  return v3;
}

uint64_t FIUIFormattedDepthStringComponents.unitString.getter()
{
  v1 = [v0 _unitString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E5DA915C();

  return v3;
}

char *FIUIFormattedDepthStringComponents.init(formattedString:valueString:unitString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = &v12[OBJC_IVAR___FIUIFormattedDepthStringComponents__formattedString];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = v12;

  v15 = &v14[OBJC_IVAR___FIUIFormattedDepthStringComponents__unitString];
  *v15 = a5;
  *(v15 + 1) = a6;

  v16 = &v14[OBJC_IVAR___FIUIFormattedDepthStringComponents__valueString];
  *v16 = a3;
  *(v16 + 1) = a4;

  return v14;
}

void __swiftcall FIUIDepthFormatter.init(unitManager:)(FIUIDepthFormatter *__return_ptr retstr, FIUIUnitManager unitManager)
{
  isa = unitManager.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnitManager_];
}

id FIUIDepthFormatter.init(unitManager:)(void *a1)
{
  v2 = sub_1E5D8934C(a1);

  return v2;
}

Swift::String __swiftcall FIUIDepthFormatter.formatWaterTemperatureValue(_:)(Swift::Double a1)
{
  v1 = sub_1E5DA906C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5DA8FCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x1E6999C20], v1);
  sub_1E5DA902C();
  (*(v6 + 104))(v8, *MEMORY[0x1E6999C08], v5);
  v9 = sub_1E5DA8F7C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall FIUIDepthFormatter.formatWaterTemperatureRange(withLower:upper:)(Swift::Double withLower, Swift::Double upper)
{
  v2 = sub_1E5DA906C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5DA901C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AC10);
  v10 = *MEMORY[0x1E6999C20];
  v11 = *(v3 + 104);
  v11(v5, v10, v2);
  sub_1E5DA902C();
  v11(v5, v10, v2);
  sub_1E5DA902C();
  (*(v7 + 104))(v9, *MEMORY[0x1E6999C10], v6);
  v12 = sub_1E5DA8F9C();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall FIUIDepthFormatter.formatUnderwaterTime(_:)(Swift::Double a1)
{
  v1 = sub_1E5DA8F8C();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

char *FIUIDepthFormatter.formatMaxDepth(from:)()
{
  v0 = sub_1E5DA8F2C();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E5DA8F0C();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AC18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_1E5DA8FBC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5DA8ECC();
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DA8FFC();
  sub_1E5DA900C();
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E6999C00], v9);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1E5D89844(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  sub_1E5DA8F1C();
  sub_1E5DA8F5C();
  (*(v34 + 8))(v2, v35);
  v17 = sub_1E5DA8EFC();
  v19 = v18;
  v20 = sub_1E5DA8EEC();
  v34 = v21;
  v35 = v20;
  v22 = sub_1E5DA8EDC();
  v24 = v23;
  v25 = [objc_allocWithZone(FIUIFormattedDepthStringComponents) init];
  (*(v36 + 8))(v5, v37);
  (*(v10 + 8))(v12, v9);
  (*(v32 + 8))(v15, v33);
  v26 = &v25[OBJC_IVAR___FIUIFormattedDepthStringComponents__formattedString];
  *v26 = v17;
  v26[1] = v19;
  v27 = v25;

  v28 = &v27[OBJC_IVAR___FIUIFormattedDepthStringComponents__unitString];
  *v28 = v22;
  v28[1] = v24;

  v29 = &v27[OBJC_IVAR___FIUIFormattedDepthStringComponents__valueString];
  v30 = v34;
  *v29 = v35;
  v29[1] = v30;

  return v27;
}

char *FIUIDepthFormatter.formatZeroDepth()()
{
  v0 = sub_1E5DA8F0C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DA8F4C();
  v4 = sub_1E5DA8EFC();
  v6 = v5;
  v7 = sub_1E5DA8EEC();
  v9 = v8;
  v10 = sub_1E5DA8EDC();
  v12 = v11;
  v13 = [objc_allocWithZone(FIUIFormattedDepthStringComponents) init];
  (*(v1 + 8))(v3, v0);
  v14 = &v13[OBJC_IVAR___FIUIFormattedDepthStringComponents__formattedString];
  *v14 = v4;
  v14[1] = v6;
  v15 = v13;

  v16 = &v15[OBJC_IVAR___FIUIFormattedDepthStringComponents__unitString];
  *v16 = v10;
  v16[1] = v12;

  v17 = &v15[OBJC_IVAR___FIUIFormattedDepthStringComponents__valueString];
  *v17 = v7;
  v17[1] = v9;

  return v15;
}

id FIUIDepthFormatter.formatGoalValue(forDive:)(uint64_t a1)
{
  v2 = [v1 formatMaxDepthFromWorkout_];

  return v2;
}

void __swiftcall FIUIDepthFormatter.init()(FIUIDepthFormatter *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1E5D892C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5DA8F3C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E6999BF0];
  if (a1 != 1)
  {
    v6 = MEMORY[0x1E6999BF8];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

id sub_1E5D8934C(void *a1)
{
  v3 = sub_1E5DA8FEC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1E5DA906C();
  v48 = *(v50 - 8);
  v5 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - v7;
  v42 = sub_1E5DA8F3C();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x1EEE9AC00](v42);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = sub_1E5DA905C();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  *(v1 + OBJC_IVAR___FIUIDepthFormatter_unitManager) = a1;
  v19 = a1;
  sub_1E5DA904C();
  sub_1E5D56E18(0, &qword_1ED7FF5A0);
  v20 = [v19 userDepthHKUnit];
  v21 = objc_opt_self();
  v22 = [v21 meterUnit];
  v23 = sub_1E5DA939C();

  v41 = v8;
  v24 = MEMORY[0x1E6999BF0];
  if ((v23 & 1) == 0)
  {
    v24 = MEMORY[0x1E6999BF8];
  }

  v25 = v42;
  (*(v8 + 104))(v13, *v24, v42);
  v26 = [v19 userWaterTemperatureHKUnit];
  v27 = [v21 degreeCelsiusUnit];
  v28 = sub_1E5DA939C();

  v29 = MEMORY[0x1E6999C20];
  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x1E6999C18];
  }

  v30 = v48;
  v31 = v46;
  v32 = v50;
  (*(v48 + 104))(v46, *v29, v50);
  v33 = v13;
  (*(v8 + 16))(v11, v13, v25);
  (*(v30 + 16))(v49, v31, v32);
  sub_1E5DA8FDC();
  sub_1E5DA903C();
  v34 = v44;
  v35 = v45;
  (*(v44 + 16))(v43, v18, v45);
  v36 = objc_allocWithZone(sub_1E5DA8FAC());
  v37 = sub_1E5DA8F6C();
  (*(v30 + 8))(v31, v32);
  (*(v41 + 8))(v33, v25);
  (*(v34 + 8))(v18, v35);
  v38 = v47;
  *&v47[OBJC_IVAR___FIUIDepthFormatter_depthFormatter] = v37;
  v52.receiver = v38;
  v52.super_class = FIUIDepthFormatter;
  return objc_msgSendSuper2(&v52, sel_init);
}

uint64_t sub_1E5D89844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E5D898E4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1ED06BDF8 = result;
  return result;
}

uint64_t sub_1E5D89938()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D508);
  __swift_project_value_buffer(v0, qword_1ED06D508);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D89A28()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D520);
  __swift_project_value_buffer(v0, qword_1ED06D520);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D89B18()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D538);
  __swift_project_value_buffer(v0, qword_1ED06D538);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D89C08()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D550);
  __swift_project_value_buffer(v0, qword_1ED06D550);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D89CF8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D568);
  __swift_project_value_buffer(v0, qword_1ED06D568);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D89DE8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D580);
  __swift_project_value_buffer(v0, qword_1ED06D580);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A090()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D5F8);
  __swift_project_value_buffer(v0, qword_1ED06D5F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A180()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D610);
  __swift_project_value_buffer(v0, qword_1ED06D610);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A270()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D628);
  __swift_project_value_buffer(v0, qword_1ED06D628);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A360()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D640);
  __swift_project_value_buffer(v0, qword_1ED06D640);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A450()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D658);
  __swift_project_value_buffer(v0, qword_1ED06D658);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A540()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D670);
  __swift_project_value_buffer(v0, qword_1ED06D670);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A70C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D6B8);
  __swift_project_value_buffer(v0, qword_1ED06D6B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8A94C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D718);
  __swift_project_value_buffer(v0, qword_1ED06D718);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8AA3C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D730);
  __swift_project_value_buffer(v0, qword_1ED06D730);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8AB2C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D748);
  __swift_project_value_buffer(v0, qword_1ED06D748);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8AC1C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D760);
  __swift_project_value_buffer(v0, qword_1ED06D760);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8AD0C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D778);
  __swift_project_value_buffer(v0, qword_1ED06D778);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8ADFC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D790);
  __swift_project_value_buffer(v0, qword_1ED06D790);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8AFCC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D7D8);
  __swift_project_value_buffer(v0, qword_1ED06D7D8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8B2EC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D868);
  __swift_project_value_buffer(v0, qword_1ED06D868);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8B5FC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D8F8);
  __swift_project_value_buffer(v0, qword_1ED06D8F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8B8B4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D970);
  __swift_project_value_buffer(v0, qword_1ED06D970);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8B9A4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06D988);
  __swift_project_value_buffer(v0, qword_1ED06D988);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8BCCC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DA18);
  __swift_project_value_buffer(v0, qword_1ED06DA18);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8BFE0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DAA8);
  __swift_project_value_buffer(v0, qword_1ED06DAA8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8C2FC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DB38);
  __swift_project_value_buffer(v0, qword_1ED06DB38);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8C698()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DBE0);
  __swift_project_value_buffer(v0, qword_1ED06DBE0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8CBF8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DCE8);
  __swift_project_value_buffer(v0, qword_1ED06DCE8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8CCE8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DD00);
  __swift_project_value_buffer(v0, qword_1ED06DD00);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8CDD8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DD18);
  __swift_project_value_buffer(v0, qword_1ED06DD18);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8CEC8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DD30);
  __swift_project_value_buffer(v0, qword_1ED06DD30);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8CFB8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DD48);
  __swift_project_value_buffer(v0, qword_1ED06DD48);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D0A8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DD60);
  __swift_project_value_buffer(v0, qword_1ED06DD60);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D198()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DD78);
  __swift_project_value_buffer(v0, qword_1ED06DD78);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D288()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DD90);
  __swift_project_value_buffer(v0, qword_1ED06DD90);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D378()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DDA8);
  __swift_project_value_buffer(v0, qword_1ED06DDA8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D468()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DDC0);
  __swift_project_value_buffer(v0, qword_1ED06DDC0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D558()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DDD8);
  __swift_project_value_buffer(v0, qword_1ED06DDD8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D648()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DDF0);
  __swift_project_value_buffer(v0, qword_1ED06DDF0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8D814()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DE38);
  __swift_project_value_buffer(v0, qword_1ED06DE38);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8DA54()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DE98);
  __swift_project_value_buffer(v0, qword_1ED06DE98);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8DB44()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DEB0);
  __swift_project_value_buffer(v0, qword_1ED06DEB0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8DC34()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DEC8);
  __swift_project_value_buffer(v0, qword_1ED06DEC8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8DD24()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DEE0);
  __swift_project_value_buffer(v0, qword_1ED06DEE0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8DE14()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DEF8);
  __swift_project_value_buffer(v0, qword_1ED06DEF8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8DF04()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DF10);
  __swift_project_value_buffer(v0, qword_1ED06DF10);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8DFF4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DF28);
  __swift_project_value_buffer(v0, qword_1ED06DF28);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E0E4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DF40);
  __swift_project_value_buffer(v0, qword_1ED06DF40);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E1D4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DF58);
  __swift_project_value_buffer(v0, qword_1ED06DF58);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E2C4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DF70);
  __swift_project_value_buffer(v0, qword_1ED06DF70);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E3B4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DF88);
  __swift_project_value_buffer(v0, qword_1ED06DF88);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E4A4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DFA0);
  __swift_project_value_buffer(v0, qword_1ED06DFA0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E594()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DFB8);
  __swift_project_value_buffer(v0, qword_1ED06DFB8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E6F8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06DFE8);
  __swift_project_value_buffer(v0, qword_1ED06DFE8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E7E8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E000);
  __swift_project_value_buffer(v0, qword_1ED06E000);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E8D8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E018);
  __swift_project_value_buffer(v0, qword_1ED06E018);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8E9C8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E030);
  __swift_project_value_buffer(v0, qword_1ED06E030);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8EAB8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E048);
  __swift_project_value_buffer(v0, qword_1ED06E048);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8EC84()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E090);
  __swift_project_value_buffer(v0, qword_1ED06E090);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8F004()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E138);
  __swift_project_value_buffer(v0, qword_1ED06E138);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8F4C0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E228);
  __swift_project_value_buffer(v0, qword_1ED06E228);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8F5B0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E240);
  __swift_project_value_buffer(v0, qword_1ED06E240);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8F6A0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E258);
  __swift_project_value_buffer(v0, qword_1ED06E258);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8F790()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E270);
  __swift_project_value_buffer(v0, qword_1ED06E270);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8F880()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E288);
  __swift_project_value_buffer(v0, qword_1ED06E288);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8F970()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E2A0);
  __swift_project_value_buffer(v0, qword_1ED06E2A0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8FAD0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E2D0);
  __swift_project_value_buffer(v0, qword_1ED06E2D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8FBC0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E2E8);
  __swift_project_value_buffer(v0, qword_1ED06E2E8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8FCB0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E300);
  __swift_project_value_buffer(v0, qword_1ED06E300);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8FDA0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E318);
  __swift_project_value_buffer(v0, qword_1ED06E318);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8FE90()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E330);
  __swift_project_value_buffer(v0, qword_1ED06E330);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D8FFF4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E360);
  __swift_project_value_buffer(v0, qword_1ED06E360);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D900E4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E378);
  __swift_project_value_buffer(v0, qword_1ED06E378);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D901D4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E390);
  __swift_project_value_buffer(v0, qword_1ED06E390);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D902C4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E3A8);
  __swift_project_value_buffer(v0, qword_1ED06E3A8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D903B4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E3C0);
  __swift_project_value_buffer(v0, qword_1ED06E3C0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D90584()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E408);
  __swift_project_value_buffer(v0, qword_1ED06E408);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D90674()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E420);
  __swift_project_value_buffer(v0, qword_1ED06E420);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D90B78()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E510);
  __swift_project_value_buffer(v0, qword_1ED06E510);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D90C68()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E528);
  __swift_project_value_buffer(v0, qword_1ED06E528);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D90D58()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E540);
  __swift_project_value_buffer(v0, qword_1ED06E540);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D90E48()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E558);
  __swift_project_value_buffer(v0, qword_1ED06E558);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D90F38()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E570);
  __swift_project_value_buffer(v0, qword_1ED06E570);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91028()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E588);
  __swift_project_value_buffer(v0, qword_1ED06E588);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D911F4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E5D0);
  __swift_project_value_buffer(v0, qword_1ED06E5D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91510()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E660);
  __swift_project_value_buffer(v0, qword_1ED06E660);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D917C4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E6D8);
  __swift_project_value_buffer(v0, qword_1ED06E6D8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D918B4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E6F0);
  __swift_project_value_buffer(v0, qword_1ED06E6F0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D919A4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E708);
  __swift_project_value_buffer(v0, qword_1ED06E708);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91A94()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E720);
  __swift_project_value_buffer(v0, qword_1ED06E720);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91B84()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E738);
  __swift_project_value_buffer(v0, qword_1ED06E738);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91CE4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E768);
  __swift_project_value_buffer(v0, qword_1ED06E768);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91DD4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E780);
  __swift_project_value_buffer(v0, qword_1ED06E780);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91EC4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E798);
  __swift_project_value_buffer(v0, qword_1ED06E798);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D91FB4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E7B0);
  __swift_project_value_buffer(v0, qword_1ED06E7B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D920A4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E7C8);
  __swift_project_value_buffer(v0, qword_1ED06E7C8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92194()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E7E0);
  __swift_project_value_buffer(v0, qword_1ED06E7E0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92284()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E7F8);
  __swift_project_value_buffer(v0, qword_1ED06E7F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92374()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E810);
  __swift_project_value_buffer(v0, qword_1ED06E810);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92464()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E828);
  __swift_project_value_buffer(v0, qword_1ED06E828);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92554()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E840);
  __swift_project_value_buffer(v0, qword_1ED06E840);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92644()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E858);
  __swift_project_value_buffer(v0, qword_1ED06E858);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92734()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E870);
  __swift_project_value_buffer(v0, qword_1ED06E870);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92824()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E888);
  __swift_project_value_buffer(v0, qword_1ED06E888);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92914()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E8A0);
  __swift_project_value_buffer(v0, qword_1ED06E8A0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92A04()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E8B8);
  __swift_project_value_buffer(v0, qword_1ED06E8B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92AF4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E8D0);
  __swift_project_value_buffer(v0, qword_1ED06E8D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92BE4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E8E8);
  __swift_project_value_buffer(v0, qword_1ED06E8E8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92CD4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E900);
  __swift_project_value_buffer(v0, qword_1ED06E900);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D92E90()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E948);
  __swift_project_value_buffer(v0, qword_1ED06E948);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D93130()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E9C0);
  __swift_project_value_buffer(v0, qword_1ED06E9C0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D93220()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06E9D8);
  __swift_project_value_buffer(v0, qword_1ED06E9D8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D934DC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EA50);
  __swift_project_value_buffer(v0, qword_1ED06EA50);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D935CC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EA68);
  __swift_project_value_buffer(v0, qword_1ED06EA68);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D936BC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EA80);
  __swift_project_value_buffer(v0, qword_1ED06EA80);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D937AC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EA98);
  __swift_project_value_buffer(v0, qword_1ED06EA98);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9389C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EAB0);
  __swift_project_value_buffer(v0, qword_1ED06EAB0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D93A68()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EAF8);
  __swift_project_value_buffer(v0, qword_1ED06EAF8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D93DEC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EBA0);
  __swift_project_value_buffer(v0, qword_1ED06EBA0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D943D4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06ECD8);
  __swift_project_value_buffer(v0, qword_1ED06ECD8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D94970()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EDF8);
  __swift_project_value_buffer(v0, qword_1ED06EDF8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D94C8C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EE88);
  __swift_project_value_buffer(v0, qword_1ED06EE88);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D95098()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EF48);
  __swift_project_value_buffer(v0, qword_1ED06EF48);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D95188()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EF60);
  __swift_project_value_buffer(v0, qword_1ED06EF60);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D95278()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EF78);
  __swift_project_value_buffer(v0, qword_1ED06EF78);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D954C4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06EFD8);
  __swift_project_value_buffer(v0, qword_1ED06EFD8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9569C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F020);
  __swift_project_value_buffer(v0, qword_1ED06F020);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D95800()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F050);
  __swift_project_value_buffer(v0, qword_1ED06F050);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D95A44()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F0B0);
  __swift_project_value_buffer(v0, qword_1ED06F0B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9609C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F1E8);
  __swift_project_value_buffer(v0, qword_1ED06F1E8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D965A0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F2D8);
  __swift_project_value_buffer(v0, qword_1ED06F2D8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D96770()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F320);
  __swift_project_value_buffer(v0, qword_1ED06F320);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D96860()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F338);
  __swift_project_value_buffer(v0, qword_1ED06F338);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D96D64()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F428);
  __swift_project_value_buffer(v0, qword_1ED06F428);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D96F34()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F470);
  __swift_project_value_buffer(v0, qword_1ED06F470);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97260()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F500);
  __swift_project_value_buffer(v0, qword_1ED06F500);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97350()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F518);
  __swift_project_value_buffer(v0, qword_1ED06F518);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97930()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F638);
  __swift_project_value_buffer(v0, qword_1ED06F638);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97BEC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F6B0);
  __swift_project_value_buffer(v0, qword_1ED06F6B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97CDC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F6C8);
  __swift_project_value_buffer(v0, qword_1ED06F6C8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97DCC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F6E0);
  __swift_project_value_buffer(v0, qword_1ED06F6E0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97EBC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F6F8);
  __swift_project_value_buffer(v0, qword_1ED06F6F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D97FAC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F710);
  __swift_project_value_buffer(v0, qword_1ED06F710);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D98110()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F740);
  __swift_project_value_buffer(v0, qword_1ED06F740);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D98200()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F758);
  __swift_project_value_buffer(v0, qword_1ED06F758);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D982F0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F770);
  __swift_project_value_buffer(v0, qword_1ED06F770);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D983E0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F788);
  __swift_project_value_buffer(v0, qword_1ED06F788);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D984D0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F7A0);
  __swift_project_value_buffer(v0, qword_1ED06F7A0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D985C0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F7B8);
  __swift_project_value_buffer(v0, qword_1ED06F7B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D986B0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F7D0);
  __swift_project_value_buffer(v0, qword_1ED06F7D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D987A0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F7E8);
  __swift_project_value_buffer(v0, qword_1ED06F7E8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D98890()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F800);
  __swift_project_value_buffer(v0, qword_1ED06F800);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D98980()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F818);
  __swift_project_value_buffer(v0, qword_1ED06F818);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D98A70()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F830);
  __swift_project_value_buffer(v0, qword_1ED06F830);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D98B60()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F848);
  __swift_project_value_buffer(v0, qword_1ED06F848);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D98D24()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F890);
  __swift_project_value_buffer(v0, qword_1ED06F890);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99198()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F968);
  __swift_project_value_buffer(v0, qword_1ED06F968);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99288()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F980);
  __swift_project_value_buffer(v0, qword_1ED06F980);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99378()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F998);
  __swift_project_value_buffer(v0, qword_1ED06F998);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99468()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F9B0);
  __swift_project_value_buffer(v0, qword_1ED06F9B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99558()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F9C8);
  __swift_project_value_buffer(v0, qword_1ED06F9C8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99648()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F9E0);
  __swift_project_value_buffer(v0, qword_1ED06F9E0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99738()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06F9F8);
  __swift_project_value_buffer(v0, qword_1ED06F9F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99828()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FA10);
  __swift_project_value_buffer(v0, qword_1ED06FA10);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99918()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FA28);
  __swift_project_value_buffer(v0, qword_1ED06FA28);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99A08()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FA40);
  __swift_project_value_buffer(v0, qword_1ED06FA40);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99AF8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FA58);
  __swift_project_value_buffer(v0, qword_1ED06FA58);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99BE8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FA70);
  __swift_project_value_buffer(v0, qword_1ED06FA70);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99DB8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FAB8);
  __swift_project_value_buffer(v0, qword_1ED06FAB8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D99EA8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FAD0);
  __swift_project_value_buffer(v0, qword_1ED06FAD0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9A48C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FBF0);
  __swift_project_value_buffer(v0, qword_1ED06FBF0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9A57C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FC08);
  __swift_project_value_buffer(v0, qword_1ED06FC08);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9AAF0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FD10);
  __swift_project_value_buffer(v0, qword_1ED06FD10);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9ABE0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FD28);
  __swift_project_value_buffer(v0, qword_1ED06FD28);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9ACD0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FD40);
  __swift_project_value_buffer(v0, qword_1ED06FD40);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9AF1C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FDA0);
  __swift_project_value_buffer(v0, qword_1ED06FDA0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B0F4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FDE8);
  __swift_project_value_buffer(v0, qword_1ED06FDE8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B258()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FE18);
  __swift_project_value_buffer(v0, qword_1ED06FE18);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B3BC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FE48);
  __swift_project_value_buffer(v0, qword_1ED06FE48);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B4AC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FE60);
  __swift_project_value_buffer(v0, qword_1ED06FE60);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B59C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FE78);
  __swift_project_value_buffer(v0, qword_1ED06FE78);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B68C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FE90);
  __swift_project_value_buffer(v0, qword_1ED06FE90);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B77C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FEA8);
  __swift_project_value_buffer(v0, qword_1ED06FEA8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B8D8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FED8);
  __swift_project_value_buffer(v0, qword_1ED06FED8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9B9C8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FEF0);
  __swift_project_value_buffer(v0, qword_1ED06FEF0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9BD60()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED06FF98);
  __swift_project_value_buffer(v0, qword_1ED06FF98);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9C30C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0700B8);
  __swift_project_value_buffer(v0, qword_1ED0700B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9C540()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070118);
  __swift_project_value_buffer(v0, qword_1ED070118);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9C630()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070130);
  __swift_project_value_buffer(v0, qword_1ED070130);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9C720()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070148);
  __swift_project_value_buffer(v0, qword_1ED070148);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9C810()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070160);
  __swift_project_value_buffer(v0, qword_1ED070160);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9C900()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070178);
  __swift_project_value_buffer(v0, qword_1ED070178);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9C9F0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070190);
  __swift_project_value_buffer(v0, qword_1ED070190);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9CB50()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0701C0);
  __swift_project_value_buffer(v0, qword_1ED0701C0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9CC40()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0701D8);
  __swift_project_value_buffer(v0, qword_1ED0701D8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9CD30()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0701F0);
  __swift_project_value_buffer(v0, qword_1ED0701F0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9CE20()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070208);
  __swift_project_value_buffer(v0, qword_1ED070208);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9CF10()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070220);
  __swift_project_value_buffer(v0, qword_1ED070220);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9D0D4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070268);
  __swift_project_value_buffer(v0, qword_1ED070268);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9D3E4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0702F8);
  __swift_project_value_buffer(v0, qword_1ED0702F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9D698()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070370);
  __swift_project_value_buffer(v0, qword_1ED070370);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9D788()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070388);
  __swift_project_value_buffer(v0, qword_1ED070388);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9D878()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0703A0);
  __swift_project_value_buffer(v0, qword_1ED0703A0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9D968()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0703B8);
  __swift_project_value_buffer(v0, qword_1ED0703B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9DA58()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0703D0);
  __swift_project_value_buffer(v0, qword_1ED0703D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9DBB8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070400);
  __swift_project_value_buffer(v0, qword_1ED070400);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9DCA8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070418);
  __swift_project_value_buffer(v0, qword_1ED070418);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9DD98()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070430);
  __swift_project_value_buffer(v0, qword_1ED070430);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9DE88()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070448);
  __swift_project_value_buffer(v0, qword_1ED070448);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9DF78()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070460);
  __swift_project_value_buffer(v0, qword_1ED070460);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E0D8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070490);
  __swift_project_value_buffer(v0, qword_1ED070490);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E1C8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0704A8);
  __swift_project_value_buffer(v0, qword_1ED0704A8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E2B8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0704C0);
  __swift_project_value_buffer(v0, qword_1ED0704C0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E3A8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0704D8);
  __swift_project_value_buffer(v0, qword_1ED0704D8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E498()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0704F0);
  __swift_project_value_buffer(v0, qword_1ED0704F0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E65C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070538);
  __swift_project_value_buffer(v0, qword_1ED070538);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E90C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0705B0);
  __swift_project_value_buffer(v0, qword_1ED0705B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9E9FC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0705C8);
  __swift_project_value_buffer(v0, qword_1ED0705C8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9EAEC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0705E0);
  __swift_project_value_buffer(v0, qword_1ED0705E0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9EBDC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0705F8);
  __swift_project_value_buffer(v0, qword_1ED0705F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9ECCC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070610);
  __swift_project_value_buffer(v0, qword_1ED070610);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9EE98()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070658);
  __swift_project_value_buffer(v0, qword_1ED070658);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9F0E4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0706B8);
  __swift_project_value_buffer(v0, qword_1ED0706B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9F248()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0706E8);
  __swift_project_value_buffer(v0, qword_1ED0706E8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9F40C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070730);
  __swift_project_value_buffer(v0, qword_1ED070730);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9F720()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0707C0);
  __swift_project_value_buffer(v0, qword_1ED0707C0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9F9D0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070838);
  __swift_project_value_buffer(v0, qword_1ED070838);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9FAC0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070850);
  __swift_project_value_buffer(v0, qword_1ED070850);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9FBB0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070868);
  __swift_project_value_buffer(v0, qword_1ED070868);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9FCA0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070880);
  __swift_project_value_buffer(v0, qword_1ED070880);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9FD90()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070898);
  __swift_project_value_buffer(v0, qword_1ED070898);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9FE80()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0708B0);
  __swift_project_value_buffer(v0, qword_1ED0708B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5D9FF70()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0708C8);
  __swift_project_value_buffer(v0, qword_1ED0708C8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0060()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0708E0);
  __swift_project_value_buffer(v0, qword_1ED0708E0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0150()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0708F8);
  __swift_project_value_buffer(v0, qword_1ED0708F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0240()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070910);
  __swift_project_value_buffer(v0, qword_1ED070910);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0330()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070928);
  __swift_project_value_buffer(v0, qword_1ED070928);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0420()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070940);
  __swift_project_value_buffer(v0, qword_1ED070940);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0584()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070970);
  __swift_project_value_buffer(v0, qword_1ED070970);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0674()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070988);
  __swift_project_value_buffer(v0, qword_1ED070988);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0764()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0709A0);
  __swift_project_value_buffer(v0, qword_1ED0709A0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0854()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0709B8);
  __swift_project_value_buffer(v0, qword_1ED0709B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0944()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0709D0);
  __swift_project_value_buffer(v0, qword_1ED0709D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0B10()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070A18);
  __swift_project_value_buffer(v0, qword_1ED070A18);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0DC0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070A90);
  __swift_project_value_buffer(v0, qword_1ED070A90);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0EB0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070AA8);
  __swift_project_value_buffer(v0, qword_1ED070AA8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA0FA0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070AC0);
  __swift_project_value_buffer(v0, qword_1ED070AC0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA1090()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070AD8);
  __swift_project_value_buffer(v0, qword_1ED070AD8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA1180()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070AF0);
  __swift_project_value_buffer(v0, qword_1ED070AF0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA13C0()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070B50);
  __swift_project_value_buffer(v0, qword_1ED070B50);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA19FC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070C88);
  __swift_project_value_buffer(v0, qword_1ED070C88);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA1F58()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070D90);
  __swift_project_value_buffer(v0, qword_1ED070D90);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2048()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070DA8);
  __swift_project_value_buffer(v0, qword_1ED070DA8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2138()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070DC0);
  __swift_project_value_buffer(v0, qword_1ED070DC0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2228()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070DD8);
  __swift_project_value_buffer(v0, qword_1ED070DD8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2318()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070DF0);
  __swift_project_value_buffer(v0, qword_1ED070DF0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2554()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070E50);
  __swift_project_value_buffer(v0, qword_1ED070E50);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2B08()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070F70);
  __swift_project_value_buffer(v0, qword_1ED070F70);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2DBC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED070FE8);
  __swift_project_value_buffer(v0, qword_1ED070FE8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2EAC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071000);
  __swift_project_value_buffer(v0, qword_1ED071000);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA2F9C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071018);
  __swift_project_value_buffer(v0, qword_1ED071018);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA308C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071030);
  __swift_project_value_buffer(v0, qword_1ED071030);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA317C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071048);
  __swift_project_value_buffer(v0, qword_1ED071048);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA326C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071060);
  __swift_project_value_buffer(v0, qword_1ED071060);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA335C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071078);
  __swift_project_value_buffer(v0, qword_1ED071078);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA344C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071090);
  __swift_project_value_buffer(v0, qword_1ED071090);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA353C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0710A8);
  __swift_project_value_buffer(v0, qword_1ED0710A8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA362C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0710C0);
  __swift_project_value_buffer(v0, qword_1ED0710C0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA371C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0710D8);
  __swift_project_value_buffer(v0, qword_1ED0710D8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA380C()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0710F0);
  __swift_project_value_buffer(v0, qword_1ED0710F0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA38FC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071108);
  __swift_project_value_buffer(v0, qword_1ED071108);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA39EC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071120);
  __swift_project_value_buffer(v0, qword_1ED071120);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA3ADC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071138);
  __swift_project_value_buffer(v0, qword_1ED071138);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA3BCC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071150);
  __swift_project_value_buffer(v0, qword_1ED071150);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA3CBC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071168);
  __swift_project_value_buffer(v0, qword_1ED071168);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA3E18()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071198);
  __swift_project_value_buffer(v0, qword_1ED071198);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA3F08()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0711B0);
  __swift_project_value_buffer(v0, qword_1ED0711B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA41C8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071228);
  __swift_project_value_buffer(v0, qword_1ED071228);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA42B8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071240);
  __swift_project_value_buffer(v0, qword_1ED071240);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA43A8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071258);
  __swift_project_value_buffer(v0, qword_1ED071258);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4498()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071270);
  __swift_project_value_buffer(v0, qword_1ED071270);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4588()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071288);
  __swift_project_value_buffer(v0, qword_1ED071288);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA46E4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0712B8);
  __swift_project_value_buffer(v0, qword_1ED0712B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA47D4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0712D0);
  __swift_project_value_buffer(v0, qword_1ED0712D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4A90()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071348);
  __swift_project_value_buffer(v0, qword_1ED071348);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4B80()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071360);
  __swift_project_value_buffer(v0, qword_1ED071360);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4C70()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071378);
  __swift_project_value_buffer(v0, qword_1ED071378);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4D60()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071390);
  __swift_project_value_buffer(v0, qword_1ED071390);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4E50()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0713A8);
  __swift_project_value_buffer(v0, qword_1ED0713A8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA4F40()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0713C0);
  __swift_project_value_buffer(v0, qword_1ED0713C0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA50A4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0713F0);
  __swift_project_value_buffer(v0, qword_1ED0713F0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5194()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071408);
  __swift_project_value_buffer(v0, qword_1ED071408);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5284()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071420);
  __swift_project_value_buffer(v0, qword_1ED071420);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5374()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071438);
  __swift_project_value_buffer(v0, qword_1ED071438);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5464()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071450);
  __swift_project_value_buffer(v0, qword_1ED071450);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5554()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071468);
  __swift_project_value_buffer(v0, qword_1ED071468);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5644()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071480);
  __swift_project_value_buffer(v0, qword_1ED071480);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5734()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071498);
  __swift_project_value_buffer(v0, qword_1ED071498);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5824()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0714B0);
  __swift_project_value_buffer(v0, qword_1ED0714B0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5914()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0714C8);
  __swift_project_value_buffer(v0, qword_1ED0714C8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5A04()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0714E0);
  __swift_project_value_buffer(v0, qword_1ED0714E0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5AF4()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0714F8);
  __swift_project_value_buffer(v0, qword_1ED0714F8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5C58()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071528);
  __swift_project_value_buffer(v0, qword_1ED071528);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5D48()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071540);
  __swift_project_value_buffer(v0, qword_1ED071540);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5E38()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071558);
  __swift_project_value_buffer(v0, qword_1ED071558);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA5F28()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071570);
  __swift_project_value_buffer(v0, qword_1ED071570);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA6018()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071588);
  __swift_project_value_buffer(v0, qword_1ED071588);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA6108()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0715A0);
  __swift_project_value_buffer(v0, qword_1ED0715A0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA61F8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0715B8);
  __swift_project_value_buffer(v0, qword_1ED0715B8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA62E8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0715D0);
  __swift_project_value_buffer(v0, qword_1ED0715D0);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA63D8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED0715E8);
  __swift_project_value_buffer(v0, qword_1ED0715E8);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA64C8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071600);
  __swift_project_value_buffer(v0, qword_1ED071600);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA65B8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071618);
  __swift_project_value_buffer(v0, qword_1ED071618);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA66A8()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071630);
  __swift_project_value_buffer(v0, qword_1ED071630);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA6878()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071678);
  __swift_project_value_buffer(v0, qword_1ED071678);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA6BFC()
{
  v0 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v0, qword_1ED071720);
  __swift_project_value_buffer(v0, qword_1ED071720);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA7058(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E5DA860C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_1ED06BDF0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED06BDF8;
  return sub_1E5DA85FC();
}

uint64_t sub_1E5DA7120(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1E5DA860C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1E5DA7198@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E5DA860C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void _FIUIUserContactFromAddressBook_cold_1()
{
  dlerror();
  abort_report_np();
  FIUIEdgeInsetsForDesiredButtonFrame_cold_1();
}

void __FIUIHealthStoreForDevice_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "Error reading profile identifier for satellite paired watch. error=%@", &v2, 0xCu);
}

void _activityTypePrefix_cold_1(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 effectiveTypeIdentifier];
  _os_log_fault_impl(&dword_1E5D0F000, v3, OS_LOG_TYPE_FAULT, "Unsupported activity_type=%lu in _activityTypePrefix() in FIUIWorkoutIconProvider", &v4, 0xCu);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x1EEDBEF98](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}