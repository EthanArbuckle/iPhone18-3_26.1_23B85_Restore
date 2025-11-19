uint64_t sub_1E47B2A28()
{
  v1 = *(v0 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  v2 = *(v0 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id + 8);

  return v1;
}

uint64_t sub_1E47B2A64()
{
  v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E47A1524(v6, v7);
      sub_1E47A1524(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
      if (swift_dynamicCast())
      {
        break;
      }

      ++v5;
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v6 += 40;
      if (v3 == v5)
      {
        goto LABEL_6;
      }
    }

    sub_1E47B488C(v7, v8);
    if (swift_dynamicCast())
    {
      return *&v7[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_6:

    return 0;
  }
}

uint64_t sub_1E47B2BAC()
{
  v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v0 = v2 + 40 * v3 - 8;
    while (v3 <= *(v2 + 16))
    {
      sub_1E47A1524(v0, v7);
      sub_1E47B488C(v7, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_7;
      }

      v0 -= 40;
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    __break(1u);
LABEL_7:

    sub_1E47A1524(v0, v6);

    sub_1E47B488C(v6, v7);
    swift_dynamicCast();
    return v5;
  }

  return result;
}

uint64_t sub_1E47B2CEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = *(v4 + 16);
  if (!v5)
  {
    v9 = 0.0;
    v15 = -1;
LABEL_9:
    v16 = v9 + *(v1 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104) * (v15 & ~(v15 >> 63));
    return result;
  }

  v6 = v4 + 32;
  v7 = *(v1 + v2);

  v8 = 0;
  v9 = 0.0;
  while (1)
  {
    sub_1E47A1524(v6, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_0(v17, v18);
    if ((*(v13 + 16))(v12, v13) > 0.0 && __OFADD__(v8++, 1))
    {
      break;
    }

    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_0(v17, v18);
    v9 = v9 + (*(v11 + 16))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:

  v15 = v8 - 1;
  if (!__OFSUB__(v8, 1))
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47B2E50()
{
  v16 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel(0);
  v15[0] = v0;
  __swift_project_boxed_opaque_existential_0(v15, v16);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v1 = sub_1E4878BFC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v15);
  v4 = v1;
  v19 = v1;
  v20 = v3;
  v5 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return v4;
  }

  v8 = v6 + 32;

  do
  {
    sub_1E47A1524(v8, v15);
    v9 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v10 = *(v9 + 8);
    v11 = sub_1E48790CC();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E69192D0](v11, v13);

    MEMORY[0x1E69192D0](10, 0xE100000000000000);

    v8 += 40;
    --v7;
  }

  while (v7);

  return v19;
}

size_t sub_1E47B2FC4()
{
  v1 = sub_1E487732C();
  v98 = *(v1 - 8);
  v99 = v1;
  v2 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v97 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Event();
  v106 = *(v103 - 8);
  v4 = *(v106 + 64);
  v5 = MEMORY[0x1EEE9AC00](v103);
  v92 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v101 = &v91 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v100 = &v91 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v93 = &v91 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v96 = &v91 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v91 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v91 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v91 - v20;
  v22 = type metadata accessor for DayEvents();
  v107 = *(v22 - 8);
  v108 = v22;
  v23 = *(v107 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v94 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v91 - v26;
  v28 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v95 = v0;
  result = *(v0 + v28);
  v30 = *(result + 16);
  if (v30)
  {
    v31 = result + 32;
    v105 = *(v0 + v28);

    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E47A1524(v31, v110);
      v33 = v111;
      v34 = v112;
      __swift_project_boxed_opaque_existential_0(v110, v111);
      v35 = (*(v34 + 32))(v33, v34);
      result = __swift_destroy_boxed_opaque_existential_1(v110);
      v36 = *(v35 + 16);
      v37 = v32[2];
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        goto LABEL_66;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v38 <= v32[3] >> 1)
      {
        if (*(v35 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v37 <= v38)
        {
          v39 = v37 + v36;
        }

        else
        {
          v39 = v37;
        }

        result = sub_1E4860B34(result, v39, 1, v32);
        v32 = result;
        if (*(v35 + 16))
        {
LABEL_14:
          if ((v32[3] >> 1) - v32[2] < v36)
          {
            goto LABEL_68;
          }

          v40 = (*(v107 + 80) + 32) & ~*(v107 + 80);
          v41 = *(v107 + 72);
          swift_arrayInitWithCopy();

          if (v36)
          {
            v42 = v32[2];
            v43 = __OFADD__(v42, v36);
            v44 = v42 + v36;
            if (v43)
            {
              goto LABEL_69;
            }

            v32[2] = v44;
          }

          goto LABEL_4;
        }
      }

      if (v36)
      {
        goto LABEL_67;
      }

LABEL_4:
      v31 += 40;
      if (!--v30)
      {

        goto LABEL_20;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v110[0] = MEMORY[0x1E69E7CD0];
  v105 = v32[2];
  if (v105)
  {
    v45 = 0;
    v104 = v32 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    while (v45 < v32[2])
    {
      sub_1E47B4C1C(&v104[*(v107 + 72) * v45], v27, type metadata accessor for DayEvents);
      v46 = *&v27[*(v108 + 20)];
      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = v46 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v49 = *(v106 + 72);
        do
        {
          sub_1E47B4C1C(v48, v19, type metadata accessor for Event);
          sub_1E4862654(v21, v19);
          sub_1E47B4C84(v21, type metadata accessor for Event);
          v48 += v49;
          --v47;
        }

        while (v47);
      }

      v50 = *&v27[*(v108 + 24)];
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = v50 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v53 = *(v106 + 72);
        do
        {
          sub_1E47B4C1C(v52, v19, type metadata accessor for Event);
          sub_1E4862654(v21, v19);
          sub_1E47B4C84(v21, type metadata accessor for Event);
          v52 += v53;
          --v51;
        }

        while (v51);
      }

      ++v45;
      result = sub_1E47B4C84(v27, type metadata accessor for DayEvents);
      if (v45 == v105)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:

    (*(v98 + 16))(v97, v95 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date, v99);
    v54 = v110[0];
    v55 = v110[0] + 56;
    v56 = 1 << *(v110[0] + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v110[0] + 56);
    v59 = (v56 + 63) >> 6;

    v60 = 0;
    v61 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v62 = v96;
    v63 = v60;
    if (!v58)
    {
      goto LABEL_36;
    }

    do
    {
      v60 = v63;
LABEL_39:
      v64 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v65 = *(v106 + 72);
      sub_1E47B4C1C(*(v54 + 48) + v65 * (v64 | (v60 << 6)), v62, type metadata accessor for Event);
      v66 = v102;
      sub_1E47B49FC(v62, v102, type metadata accessor for Event);
      if ((*(v66 + *(v103 + 48)) & 1) == 0)
      {
        sub_1E47B49FC(v66, v93, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v61 + 16) + 1, 1);
          v61 = v109;
        }

        v69 = *(v61 + 16);
        v68 = *(v61 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1E4858038(v68 > 1, v69 + 1, 1);
          v61 = v109;
        }

        *(v61 + 16) = v69 + 1;
        result = sub_1E47B49FC(v93, v61 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + v69 * v65, type metadata accessor for Event);
        goto LABEL_34;
      }

      result = sub_1E47B4C84(v66, type metadata accessor for Event);
      v63 = v60;
    }

    while (v58);
    while (1)
    {
LABEL_36:
      v60 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v60 >= v59)
      {
        break;
      }

      v58 = *(v55 + 8 * v60);
      ++v63;
      if (v58)
      {
        goto LABEL_39;
      }
    }

    v70 = 0;
    v71 = 1 << *(v54 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v54 + 56);
    v74 = (v71 + 63) >> 6;
    v75 = MEMORY[0x1E69E7CC0];
    while (v73)
    {
      v76 = v70;
LABEL_55:
      v77 = __clz(__rbit64(v73));
      v73 &= v73 - 1;
      v78 = *(v106 + 72);
      v79 = v101;
      sub_1E47B4C1C(*(v54 + 48) + v78 * (v77 | (v76 << 6)), v101, type metadata accessor for Event);
      v80 = v79;
      v81 = v100;
      sub_1E47B49FC(v80, v100, type metadata accessor for Event);
      if (*(v81 + *(v103 + 48)) == 1)
      {
        sub_1E47B49FC(v81, v92, type metadata accessor for Event);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v75;
        if ((v82 & 1) == 0)
        {
          sub_1E4858038(0, *(v75 + 16) + 1, 1);
          v75 = v109;
        }

        v84 = *(v75 + 16);
        v83 = *(v75 + 24);
        v85 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          sub_1E4858038(v83 > 1, v84 + 1, 1);
          v85 = v84 + 1;
          v75 = v109;
        }

        *(v75 + 16) = v85;
        result = sub_1E47B49FC(v92, v75 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + v84 * v78, type metadata accessor for Event);
        v70 = v76;
      }

      else
      {
        result = sub_1E47B4C84(v81, type metadata accessor for Event);
        v70 = v76;
      }
    }

    while (1)
    {
      v76 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v76 >= v74)
      {

        v86 = v94;
        (*(v98 + 32))(v94, v97, v99);
        v87 = v108;
        *(v86 + *(v108 + 20)) = v61;
        *(v86 + *(v87 + 24)) = v75;
        *(v86 + *(v87 + 28)) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
        v88 = *(v107 + 72);
        v89 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1E487A7E0;
        sub_1E47B49FC(v86, v90 + v89, type metadata accessor for DayEvents);
        return v90;
      }

      v73 = *(v55 + 8 * v76);
      ++v70;
      if (v73)
      {
        goto LABEL_55;
      }
    }

LABEL_64:
    __break(1u);
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

id sub_1E47B3A40()
{
  result = sub_1E47B3A60();
  qword_1EE2B2890 = result;
  return result;
}

id sub_1E47B3A60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_1E487744C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = sub_1E4878B9C();
  [v9 setDateFormat_];

  sub_1E487737C();
  v11 = sub_1E48773DC();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_1E487755C();
  v12 = sub_1E487757C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_1E487756C();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  return v9;
}

id sub_1E47B3CB0()
{
  result = sub_1E47B3CD0();
  qword_1EE2B28A8 = result;
  return result;
}

id sub_1E47B3CD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_1E487744C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = sub_1E4878B9C();
  [v9 setDateFormat_];

  sub_1E487737C();
  v11 = sub_1E48773DC();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_1E487755C();
  v12 = sub_1E487757C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_1E487756C();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  return v9;
}

uint64_t sub_1E47B3F20()
{
  v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
  v2 = sub_1E487732C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B4004()
{
  v1 = (*v0 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1E47B410C()
{
  result = sub_1E487732C();
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

uint64_t sub_1E47B4244()
{
  result = type metadata accessor for Event();
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

uint64_t sub_1E47B43E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
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

uint64_t sub_1E47B44A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E47B44C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1E47B451C(uint64_t a1)
{
  result = sub_1E47B45D0(qword_1EE2B4CD8, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4578(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B29D0, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B45D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E47B4618(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B4E28, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4670(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B5178, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B46C8(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B5318, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4720(uint64_t a1)
{
  result = sub_1E47B45D0(qword_1EE2B4FD8, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B477C(uint64_t a1)
{
  result = sub_1E47B45D0(&qword_1ECF7C420, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B47D8(uint64_t a1)
{
  result = sub_1E47B45D0(&qword_1ECF7C428, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4834(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(&qword_1ECF7C430, a2, type metadata accessor for NarrowMultidayLayout.MultiDayViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B488C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E47B48A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E487732C() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E47AC5A0(a1, v6, a2);
}

uint64_t sub_1E47B4924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E487732C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1E47ACADC(a1, v6, v7, a2);
}

unint64_t sub_1E47B49A8()
{
  result = qword_1EE2B2A18[0];
  if (!qword_1EE2B2A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B2A18);
  }

  return result;
}

uint64_t sub_1E47B49FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47B4A84()
{
  result = qword_1EE2B1230;
  if (!qword_1EE2B1230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C530, &qword_1E487D8E0);
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView);
    sub_1E47B4B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1230);
  }

  return result;
}

unint64_t sub_1E47B4B44()
{
  result = qword_1EE2B0EB0;
  if (!qword_1EE2B0EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C518, &qword_1E487D8C8);
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0EB0);
  }

  return result;
}

uint64_t sub_1E47B4C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47B4C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47B4CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47B4D48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = a2;
  v67 = type metadata accessor for Event();
  v64 = *(v67 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - v19;
  v21 = a4 >> 1;
  v59 = a3;
  v22 = v21 - a3;
  if (__OFSUB__(v21, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = v18;
  v23 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v22;
  if (__OFADD__(v24, v22))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v23;
  if (result)
  {
    v27 = *(v23 + 24) >> 1;
    if (v27 >= v25)
    {
      goto LABEL_12;
    }

    if (v24 <= v25)
    {
      v28 = v24 + v22;
    }

    else
    {
      v28 = v24;
    }
  }

  else if (v24 <= v25)
  {
    v28 = v24 + v22;
  }

  else
  {
    v28 = v24;
  }

  result = sub_1E4858038(result, v28, 1);
  v23 = *v4;
  v27 = *(*v4 + 24) >> 1;
LABEL_12:
  v63 = v10;
  v29 = v23;
  v30 = *(v23 + 16);
  v31 = v27 - v30;
  if (v21 == v59)
  {
    if (v22 <= 0)
    {
      v32 = v59;
      if (v31)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v29;
        return result;
      }

LABEL_21:
      v54 = a1;
      v37 = *(v23 + 16);
      v38 = v64;
      v39 = *(v64 + 56);
      v40 = v67;
      v61 = v64 + 56;
      v62 = v21;
      v60 = v39;
      v39(v20, 1, 1, v67);
      v41 = v56;
      sub_1E4773850(v20, v56, &qword_1ECF7B950, &unk_1E487AE90);
      v65 = *(v38 + 48);
      v66 = v38 + 48;
      if (v65(v41, 1, v40) != 1)
      {
        v55 = v4;
        do
        {
          sub_1E47738B8(v41, &qword_1ECF7B950, &unk_1E487AE90);
          v44 = *(v29 + 24);
          if (v37 + 1 > (v44 >> 1))
          {
            sub_1E4858038(v44 > 1, v37 + 1, 1);
          }

          v45 = *v4;
          v46 = *(*v4 + 24);
          v47 = *(v64 + 80);
          sub_1E4773850(v20, v15, &qword_1ECF7B950, &unk_1E487AE90);
          v48 = v65(v15, 1, v67);
          v57 = v45;
          if (v48 != 1)
          {
            v49 = v45 + ((v47 + 32) & ~v47);
            if (v37 <= (v46 >> 1))
            {
              v42 = v46 >> 1;
            }

            else
            {
              v42 = v37;
            }

            do
            {
              v52 = v63;
              sub_1E47B49FC(v15, v63, type metadata accessor for Event);
              if (v42 == v37)
              {
                sub_1E47B4C84(v52, type metadata accessor for Event);
                v37 = v42;
                goto LABEL_26;
              }

              sub_1E47738B8(v20, &qword_1ECF7B950, &unk_1E487AE90);
              v53 = *(v64 + 72);
              result = sub_1E47B49FC(v52, v49 + v53 * v37, type metadata accessor for Event);
              if (v32 == v62)
              {
                v50 = 1;
                v32 = v62;
              }

              else
              {
                if (v32 < v59 || v32 >= v62)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_1E47B4C1C(v58 + v53 * v32, v20, type metadata accessor for Event);
                v50 = 0;
                ++v32;
              }

              v51 = v67;
              v60(v20, v50, 1, v67);
              sub_1E4773850(v20, v15, &qword_1ECF7B950, &unk_1E487AE90);
              ++v37;
            }

            while (v65(v15, 1, v51) != 1);
          }

          sub_1E47738B8(v15, &qword_1ECF7B950, &unk_1E487AE90);
          v42 = v37;
LABEL_26:
          v41 = v56;
          v29 = v57;
          *(v57 + 16) = v42;
          sub_1E4773850(v20, v41, &qword_1ECF7B950, &unk_1E487AE90);
          v43 = v65(v41, 1, v67);
          v4 = v55;
        }

        while (v43 != 1);
      }

      sub_1E47738B8(v20, &qword_1ECF7B950, &unk_1E487AE90);
      swift_unknownObjectRelease();
      result = sub_1E47738B8(v41, &qword_1ECF7B950, &unk_1E487AE90);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v31 < v22)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v33 = v23 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v30;
  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_20:
    v32 = v21;
    if (v22 != v31)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v34 = *(v23 + 16);
  v35 = __OFADD__(v34, v22);
  v36 = v34 + v22;
  if (!v35)
  {
    *(v23 + 16) = v36;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1E47B52D0(uint64_t result, uint64_t a2)
{
  if (result < 0 || (*v3 <= result ? (v4 = *(v3 + 16) <= result) : (v4 = 1), v4))
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = *(v3 + 32);
    if (!(v3 >> 62))
    {
      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v6 = result;
  v7 = sub_1E4878F0C();
  result = v6;
  if (v7 <= v6)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:
    MEMORY[0x1E6919650]();
    return v2;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v5 = *(v3 + 8 * result + 32);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47B53A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 >= 1)
  {
    if (v7 < 0 || v7 >= a3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a3)
  {
    return 0;
  }

LABEL_9:
  v6 = result;
  v8 = __OFADD__(result, a3);
  result += a3;
  if (v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0)
  {
    if (a6 >> 62)
    {
      goto LABEL_19;
    }

    if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10) == v6)
    {
      a2 = v6;
    }
  }

  while (1)
  {
    v8 = __OFADD__(a2, a3);
    a2 += a3;
    if (!v8)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    v14 = result;
    v9 = a3;
    v10 = a2;
    v11 = sub_1E4878F0C();
    a2 = v10;
    a3 = v9;
    v12 = v11;
    result = v14;
    if (v12 == v6)
    {
      v13 = sub_1E4878F0C();
      a3 = v9;
      a2 = v13;
      result = v14;
    }
  }

  return result;
}

void *sub_1E47B549C(uint64_t a1, uint64_t a2, void *a3)
{
  v225 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v228 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v227 = &v215 - v9;
  v10 = type metadata accessor for Event();
  v231 = *(v10 - 8);
  v11 = *(v231 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v240 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v237 = &v215 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v236 = &v215 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v243 = &v215 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v249 = &v215 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v215 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v251 = &v215 - v25;
  v26 = sub_1E487732C();
  v252 = *(v26 - 8);
  v27 = *(v252 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v224 = &v215 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v215 - v33;
  v238 = type metadata accessor for DayEvents();
  v35 = *(v238 - 1);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v38 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1E487753C();
  v216 = *(v217 - 8);
  v39 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v41 = &v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NarrowMultidayLayout.MultiDayViewModel();
  v42 = swift_allocObject();
  v44 = a3[14];
  v43 = a3[15];
  v241 = a3;
  v45 = v38;
  v42[5] = v43;
  v42[6] = v43;
  v42[2] = 0xD000000000000011;
  v42[3] = 0x80000001E487D190;
  v42[4] = MEMORY[0x1E69E7CC0];
  v223 = v42 + 4;
  v215 = v42;
  v42[7] = v44;
  v229 = v41;
  sub_1E4877A7C();
  v262 = MEMORY[0x1E69E7CD0];
  v222 = *(a2 + 16);
  if (v222)
  {
    v46 = 0;
    v256 = (v252 + 16);
    v250 = v252 + 32;
    v226 = 0x80000001E48A76C0;
    v230 = 0x80000001E48A7690;
    v219 = 0x80000001E48A7660;
    v221 = a2 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v220 = *(v35 + 72);
    v239 = v10;
    v253 = v34;
    v254 = v24;
    v218 = v30;
    v233 = v38;
    v244 = (v252 + 8);
    v246 = v26;
    while (1)
    {
      sub_1E47B4C1C(v221 + v220 * v46, v45, type metadata accessor for DayEvents);
      if (*(v262 + 16) >= 0xAuLL)
      {
        (*(v216 + 8))(v229, v217);
        sub_1E47B4C84(v45, type metadata accessor for DayEvents);
        goto LABEL_114;
      }

      v232 = v46;
      v47 = *(v45 + v238[5]);
      v48 = *(v47 + 16);
      v235 = v47;
      if (v48)
      {
        *&v257 = MEMORY[0x1E69E7CC0];
        sub_1E48580E0(0, v48, 0);
        v49 = v257;
        v50 = v47 + ((*(v231 + 80) + 32) & ~*(v231 + 80));
        v51 = *(v231 + 72);
        v52 = v218;
        do
        {
          v53 = v251;
          sub_1E47B4C1C(v50, v251, type metadata accessor for Event);
          (*v256)(v52, (v53 + *(v10 + 20)), v26);
          sub_1E47B4C84(v53, type metadata accessor for Event);
          *&v257 = v49;
          v55 = *(v49 + 16);
          v54 = *(v49 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_1E48580E0(v54 > 1, v55 + 1, 1);
            v49 = v257;
          }

          *(v49 + 16) = v55 + 1;
          (*(v252 + 32))(v49 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v55, v52, v26);
          v50 += v51;
          --v48;
        }

        while (v48);
        v34 = v253;
        v24 = v254;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v49 + 16);
      v57 = v256;
      v248 = v256 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v58 = v224;
      if (v56)
      {
        v59 = v49 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
        v60 = *(v252 + 72);
        v61 = *(v252 + 16);
        v62 = v244;
        do
        {
          v61(v58, v59, v26);
          sub_1E4862374(v34, v58);
          (*v62)(v34, v26);
          v59 += v60;
          --v56;
        }

        while (v56);

        v63 = v61;
        v24 = v254;
      }

      else
      {

        v63 = *v57;
      }

      v64 = v233;
      v63(v34, v233, v26);
      v65 = *(v64 + v238[7]);
      v66 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel(0);
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      v247 = swift_allocObject();
      sub_1E47B2838(v34, v65, v241);
      if ((sub_1E48774CC() & 1) == 0)
      {
        v63(v34, v64, v26);
        v69 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel(0);
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        v72 = swift_allocObject();
        sub_1E47B23BC(v241, v34);
        v73 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        v74 = v247;
        swift_beginAccess();
        v75 = *(v74 + v73);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v74 + v73) = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_1E4860B84(0, v75[2] + 1, 1, v75);
          *(v247 + v73) = v75;
        }

        v78 = v75[2];
        v77 = v75[3];
        if (v78 >= v77 >> 1)
        {
          v75 = sub_1E4860B84((v77 > 1), v78 + 1, 1, v75);
        }

        v258 = v69;
        v259 = sub_1E47B45D0(&qword_1EE2B4CD0, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel);
        *&v257 = v72;
        v75[2] = v78 + 1;
        sub_1E47B488C(&v257, &v75[5 * v78 + 4]);
        *(v247 + v73) = v75;
        swift_endAccess();
        v24 = v254;
      }

      v245 = v63;
      v79 = *(v64 + v238[6]);
      v10 = v239;
      v80 = v247;
      if (*(v79 + 16))
      {
        v81 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        v82 = swift_allocObject();

        sub_1E47B1858(v241, v79);
        v83 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        swift_beginAccess();
        v84 = *(v80 + v83);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        *(v80 + v83) = v84;
        if ((v85 & 1) == 0)
        {
          v84 = sub_1E4860B84(0, v84[2] + 1, 1, v84);
          *(v80 + v83) = v84;
        }

        v88 = v84[2];
        v87 = v84[3];
        if (v88 >= v87 >> 1)
        {
          v84 = sub_1E4860B84((v87 > 1), v88 + 1, 1, v84);
        }

        v258 = v81;
        v259 = sub_1E47B45D0(&qword_1EE2B5170, v86, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel);
        *&v257 = v82;
        v84[2] = v88 + 1;
        sub_1E47B488C(&v257, &v84[5 * v88 + 4]);
        *(v80 + v83) = v84;
        swift_endAccess();
        v24 = v254;
      }

      v89 = *(v235 + 16);
      if (v89)
      {
        v242 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        v255 = (*(v231 + 80) + 32) & ~*(v231 + 80);
        v90 = v235 + v255;
        v91 = *(v231 + 72);
        v92 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E47B4C1C(v90, v24, type metadata accessor for Event);
          if (v92[2])
          {
            v100 = v10;
            v101 = v92 + v255;
            v102 = v92 + v255 + *(v10 + 20);
            v103 = v34;
            v95 = v24;
            v104 = v34;
            v105 = v246;
            v245(v103, v102, v246);
            v106 = sub_1E48772EC();
            (*v244)(v104, v105);
            if (v106)
            {
              sub_1E47B4C1C(v95, v243, type metadata accessor for Event);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v92 = sub_1E4860A08(0, v92[2] + 1, 1, v92);
              }

              v10 = v100;
              v98 = v92[2];
              v107 = v92[3];
              v99 = v98 + 1;
              if (v98 >= v107 >> 1)
              {
                v92 = sub_1E4860A08(v107 > 1, v98 + 1, 1, v92);
              }

              v96 = v243;
            }

            else
            {
              v109 = v92[2];
              if (v109)
              {
                if (v109 == 1)
                {
                  if ((*(v101 + *(v100 + 56)) & 0xFE) == 6)
                  {
                    v110 = v236;
                    sub_1E47B4C1C(v101, v236, type metadata accessor for Event);
                    v111 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
                    v112 = *(v111 + 48);
                    v113 = *(v111 + 52);
                    v234 = v111;
                    v114 = swift_allocObject();
                    *(v114 + 16) = v241[5];
                    v235 = v114;
                    sub_1E47B4C1C(v110, v114 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, type metadata accessor for Event);
                    *&v257 = 0;
                    *(&v257 + 1) = 0xE000000000000000;
                    sub_1E4878F9C();

                    *&v257 = 0xD000000000000026;
                    *(&v257 + 1) = v230;
                    v260 = 0;
                    v261 = 0xE000000000000000;
                    v115 = v227;
                    sub_1E4773850(v110 + *(v100 + 44), v227, &unk_1ECF7B688, &qword_1E487C160);
                    v116 = sub_1E487725C();
                    v117 = *(v116 - 8);
                    if ((*(v117 + 48))(v115, 1, v116) == 1)
                    {
                      sub_1E47738B8(v115, &unk_1ECF7B688, &qword_1E487C160);
                      v118 = 0;
                      v119 = 0xE000000000000000;
                    }

                    else
                    {
                      v141 = sub_1E487723C();
                      v119 = v142;
                      (*(v117 + 8))(v115, v116);
                      v118 = v141;
                    }

                    MEMORY[0x1E69192D0](v118, v119);

                    MEMORY[0x1E69192D0](45, 0xE100000000000000);
                    v100 = v239;
                    v143 = v236;
                    if (*(v236 + *(v239 + 52)))
                    {
                      v144 = 1702195828;
                    }

                    else
                    {
                      v144 = 0x65736C6166;
                    }

                    if (*(v236 + *(v239 + 52)))
                    {
                      v145 = 0xE400000000000000;
                    }

                    else
                    {
                      v145 = 0xE500000000000000;
                    }

                    MEMORY[0x1E69192D0](v144, v145);

                    MEMORY[0x1E69192D0](v260, v261);

                    v147 = *(&v257 + 1);
                    v146 = v257;
                    sub_1E47B4C84(v143, type metadata accessor for Event);
                    v148 = v235;
                    *(v235 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_id) = __PAIR128__(v147, v146);
                    v149 = v247;
                    v150 = v242;
                    swift_beginAccess();
                    v151 = *(v149 + v150);
                    v152 = swift_isUniquelyReferenced_nonNull_native();
                    *(v149 + v150) = v151;
                    if ((v152 & 1) == 0)
                    {
                      v151 = sub_1E4860B84(0, v151[2] + 1, 1, v151);
                      *(v247 + v242) = v151;
                    }

                    v154 = v151[2];
                    v153 = v151[3];
                    v155 = v154 + 1;
                    if (v154 >= v153 >> 1)
                    {
                      v151 = sub_1E4860B84((v153 > 1), v154 + 1, 1, v151);
                    }

                    v258 = v234;
                    v93 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel;
                    v94 = &qword_1ECF7C550;
                  }

                  else
                  {
                    v129 = v237;
                    sub_1E47B4C1C(v101, v237, type metadata accessor for Event);
                    v130 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
                    v131 = *(v130 + 48);
                    v132 = *(v130 + 52);
                    v234 = v130;
                    v133 = swift_allocObject();
                    *(v133 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 0;
                    *(v133 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 0;
                    v134 = v241;
                    v135 = v241[3];
                    *(v133 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithTwoLines) = v241[2];
                    *(v133 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithThreeLines) = v135;
                    *(v133 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithFourLines) = v134[4];
                    v235 = v133;
                    sub_1E47B4C1C(v129, v133 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, type metadata accessor for Event);
                    *&v257 = 0;
                    *(&v257 + 1) = 0xE000000000000000;
                    sub_1E4878F9C();

                    *&v257 = 0xD000000000000023;
                    *(&v257 + 1) = v226;
                    v260 = 0;
                    v261 = 0xE000000000000000;
                    v136 = v228;
                    sub_1E4773850(v129 + *(v100 + 44), v228, &unk_1ECF7B688, &qword_1E487C160);
                    v137 = sub_1E487725C();
                    v138 = *(v137 - 8);
                    if ((*(v138 + 48))(v136, 1, v137) == 1)
                    {
                      sub_1E47738B8(v136, &unk_1ECF7B688, &qword_1E487C160);
                      v139 = 0;
                      v140 = 0xE000000000000000;
                    }

                    else
                    {
                      v139 = sub_1E487723C();
                      v140 = v156;
                      (*(v138 + 8))(v136, v137);
                    }

                    MEMORY[0x1E69192D0](v139, v140);

                    MEMORY[0x1E69192D0](45, 0xE100000000000000);
                    v100 = v239;
                    v157 = v237;
                    if (*(v237 + *(v239 + 52)))
                    {
                      v158 = 1702195828;
                    }

                    else
                    {
                      v158 = 0x65736C6166;
                    }

                    if (*(v237 + *(v239 + 52)))
                    {
                      v159 = 0xE400000000000000;
                    }

                    else
                    {
                      v159 = 0xE500000000000000;
                    }

                    MEMORY[0x1E69192D0](v158, v159);

                    MEMORY[0x1E69192D0](v260, v261);

                    v161 = *(&v257 + 1);
                    v160 = v257;
                    sub_1E47B4C84(v157, type metadata accessor for Event);
                    v148 = v235;
                    *(v235 + 16) = __PAIR128__(v161, v160);
                    v162 = v247;
                    v163 = v242;
                    swift_beginAccess();
                    v151 = *(v162 + v163);
                    v164 = swift_isUniquelyReferenced_nonNull_native();
                    *(v162 + v163) = v151;
                    if ((v164 & 1) == 0)
                    {
                      v151 = sub_1E4860B84(0, v151[2] + 1, 1, v151);
                      *(v247 + v242) = v151;
                    }

                    v165 = v234;
                    v154 = v151[2];
                    v166 = v151[3];
                    v155 = v154 + 1;
                    if (v154 >= v166 >> 1)
                    {
                      v151 = sub_1E4860B84((v166 > 1), v154 + 1, 1, v151);
                    }

                    v258 = v165;
                    v93 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel;
                    v94 = &qword_1EE2B4FD0;
                  }

                  v259 = sub_1E47B45D0(v94, 255, v93);
                  *&v257 = v148;
                  v151[2] = v155;
                  sub_1E47B488C(&v257, &v151[5 * v154 + 4]);
                  *(v247 + v242) = v151;
                  swift_endAccess();
                }

                else
                {
                  v120 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
                  v121 = swift_allocObject();

                  sub_1E47B1034(v241, v92);
                  v122 = v247;
                  v123 = v242;
                  swift_beginAccess();
                  v124 = *(v122 + v123);
                  v125 = swift_isUniquelyReferenced_nonNull_native();
                  *(v122 + v123) = v124;
                  if ((v125 & 1) == 0)
                  {
                    v124 = sub_1E4860B84(0, v124[2] + 1, 1, v124);
                    *(v247 + v242) = v124;
                  }

                  v128 = v124[2];
                  v127 = v124[3];
                  if (v128 >= v127 >> 1)
                  {
                    v124 = sub_1E4860B84((v127 > 1), v128 + 1, 1, v124);
                  }

                  v258 = v120;
                  v259 = sub_1E47B45D0(&qword_1EE2B5310, v126, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel);
                  *&v257 = v121;
                  v124[2] = v128 + 1;
                  sub_1E47B488C(&v257, &v124[5 * v128 + 4]);
                  *(v247 + v242) = v124;
                  swift_endAccess();
                  v100 = v239;
                }

                v95 = v254;
              }

              v96 = v240;
              sub_1E47B4C1C(v95, v240, type metadata accessor for Event);
              v92 = sub_1E4860A08(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v98 = v92[2];
              v97 = v92[3];
              v99 = v98 + 1;
              if (v98 >= v97 >> 1)
              {
                v92 = sub_1E4860A08(v97 > 1, v98 + 1, 1, v92);
              }

              v10 = v100;
            }
          }

          else
          {
            sub_1E47B4C1C(v24, v249, type metadata accessor for Event);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v92 = sub_1E4860A08(0, 1, 1, v92);
            }

            v98 = v92[2];
            v108 = v92[3];
            v99 = v98 + 1;
            if (v98 >= v108 >> 1)
            {
              v92 = sub_1E4860A08(v108 > 1, v98 + 1, 1, v92);
            }

            v96 = v249;
          }

          v24 = v254;
          sub_1E47B4C84(v254, type metadata accessor for Event);
          v92[2] = v99;
          sub_1E47B49FC(v96, v92 + v255 + v98 * v91, type metadata accessor for Event);
          v90 += v91;
          --v89;
          v34 = v253;
        }

        while (v89);
      }

      else
      {
        v92 = MEMORY[0x1E69E7CC0];
      }

      v167 = v92[2];
      v26 = v246;
      if (v167)
      {
        break;
      }

LABEL_105:
      v201 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
      v202 = swift_allocObject();
      *(v202 + 48) = 1;
      *(v202 + 40) = v241[6];
      v203 = MEMORY[0x1E69E7CC0];
      *(v202 + 16) = 0xD000000000000021;
      *(v202 + 24) = v219;
      *(v202 + 32) = v203;
      v204 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v205 = v247;
      swift_beginAccess();
      v206 = *(v205 + v204);
      v207 = swift_isUniquelyReferenced_nonNull_native();
      *(v205 + v204) = v206;
      if ((v207 & 1) == 0)
      {
        v206 = sub_1E4860B84(0, v206[2] + 1, 1, v206);
        *(v247 + v204) = v206;
      }

      v210 = v206[2];
      v209 = v206[3];
      if (v210 >= v209 >> 1)
      {
        v206 = sub_1E4860B84((v209 > 1), v210 + 1, 1, v206);
      }

      v258 = v201;
      v259 = sub_1E47B45D0(&qword_1EE2B4E20, v208, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel);
      *&v257 = v202;
      v206[2] = v210 + 1;
      sub_1E47B488C(&v257, &v206[5 * v210 + 4]);
      *(v247 + v204) = v206;
      swift_endAccess();
      v211 = v223;
      swift_beginAccess();

      MEMORY[0x1E6919330](v212);
      if (*((*v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v213 = *((*v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1E4878CCC();
      }

      v46 = v232 + 1;
      sub_1E4878CEC();
      swift_endAccess();

      v45 = v233;
      sub_1E47B4C84(v233, type metadata accessor for DayEvents);

      v34 = v253;
      v24 = v254;
      if (v46 == v222)
      {
        goto LABEL_112;
      }
    }

    if (v167 == 1)
    {
      v168 = v92 + ((*(v231 + 80) + 32) & ~*(v231 + 80));
      v169 = *(v168 + *(v10 + 56)) & 0xFE;
      v170 = v251;
      sub_1E47B4C1C(v168, v251, type metadata accessor for Event);
      if (v169 == 6)
      {
        v171 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
        v172 = *(v171 + 48);
        v173 = *(v171 + 52);
        v174 = swift_allocObject();
        *(v174 + 16) = v241[5];
        sub_1E47B4C1C(v170, v174 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, type metadata accessor for Event);
        *&v257 = 0;
        *(&v257 + 1) = 0xE000000000000000;
        sub_1E4878F9C();

        *&v257 = 0xD000000000000026;
        *(&v257 + 1) = v230;
        v175 = sub_1E47CDCB4();
        MEMORY[0x1E69192D0](v175);

        v176 = v170;
        v178 = *(&v257 + 1);
        v177 = v257;
        sub_1E47B4C84(v176, type metadata accessor for Event);
        *(v174 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_id) = __PAIR128__(v178, v177);
        v179 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        v180 = v247;
        swift_beginAccess();
        v181 = *(v180 + v179);
        v182 = swift_isUniquelyReferenced_nonNull_native();
        *(v180 + v179) = v181;
        if ((v182 & 1) == 0)
        {
          v181 = sub_1E4860B84(0, v181[2] + 1, 1, v181);
          *(v247 + v179) = v181;
        }

        v184 = v181[2];
        v183 = v181[3];
        if (v184 >= v183 >> 1)
        {
          v181 = sub_1E4860B84((v183 > 1), v184 + 1, 1, v181);
        }

        v258 = v171;
        v259 = sub_1E47B45D0(&qword_1ECF7C550, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel);
        *&v257 = v174;
        v181[2] = v184 + 1;
        sub_1E47B488C(&v257, &v181[5 * v184 + 4]);
        *(v247 + v179) = v181;
        goto LABEL_104;
      }

      v194 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
      v195 = *(v194 + 48);
      v196 = *(v194 + 52);
      v197 = swift_allocObject();
      sub_1E47B07AC(v241, v170);
      v187 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v198 = v247;
      swift_beginAccess();
      v189 = *(v198 + v187);
      v199 = swift_isUniquelyReferenced_nonNull_native();
      *(v198 + v187) = v189;
      if ((v199 & 1) == 0)
      {
        v189 = sub_1E4860B84(0, v189[2] + 1, 1, v189);
        *(v247 + v187) = v189;
      }

      v193 = v189[2];
      v200 = v189[3];
      if (v193 >= v200 >> 1)
      {
        v189 = sub_1E4860B84((v200 > 1), v193 + 1, 1, v189);
      }

      v258 = v194;
      v259 = sub_1E47B45D0(&qword_1EE2B4FD0, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel);
      *&v257 = v197;
      v189[2] = v193 + 1;
    }

    else
    {
      v185 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
      v186 = swift_allocObject();

      sub_1E47B1034(v241, v92);
      v187 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v188 = v247;
      swift_beginAccess();
      v189 = *(v188 + v187);
      v190 = swift_isUniquelyReferenced_nonNull_native();
      *(v188 + v187) = v189;
      if ((v190 & 1) == 0)
      {
        v189 = sub_1E4860B84(0, v189[2] + 1, 1, v189);
        *(v247 + v187) = v189;
      }

      v193 = v189[2];
      v192 = v189[3];
      if (v193 >= v192 >> 1)
      {
        v189 = sub_1E4860B84((v192 > 1), v193 + 1, 1, v189);
      }

      v258 = v185;
      v259 = sub_1E47B45D0(&qword_1EE2B5310, v191, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel);
      *&v257 = v186;
      v189[2] = v193 + 1;
    }

    sub_1E47B488C(&v257, &v189[5 * v193 + 4]);
    *(v247 + v187) = v189;
LABEL_104:
    swift_endAccess();
    goto LABEL_105;
  }

LABEL_112:
  (*(v216 + 8))(v229, v217);
LABEL_114:

  return v215;
}

uint64_t sub_1E47B70C4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_eventsExistBeforeFirst);
  v16 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
  v7 = swift_allocObject();
  *(v7 + 32) = (v6 & 1) == 0;
  *(v7 + 33) = a2;
  *(v7 + 40) = *(a1 + 56);
  *(v7 + 16) = 0xD000000000000026;
  *(v7 + 24) = 0x80000001E48A7630;
  v8 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v9 = *(a3 + v8);
  v10 = *(v9 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_1E47A1524(v13, &v18);
      sub_1E47B488C(&v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
      result = swift_dynamicCast();
      if (result)
      {

        v15 = v12 + 1;
        goto LABEL_8;
      }

      ++v12;
      v13 += 40;
      if (v10 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v15 = 0;
LABEL_8:
    v19 = v16;
    v20 = sub_1E47B45D0(&qword_1EE2B29C8, v14, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel);
    *&v18 = v7;
    result = swift_beginAccess();
    if (*(*(a3 + v8) + 16) >= v15)
    {
      sub_1E47B488C(&v18, v17);

      sub_1E4866EE4(v15, v15, v17);
      swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47B72E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 1 - v1;
  for (i = a1 + 40 * v1 - 8; ; i -= 40)
  {
    sub_1E47A1524(i, v6);
    sub_1E47A1524(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
    if (swift_dynamicCast() || (sub_1E47A1524(v6, v5), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0), (swift_dynamicCast() & 1) != 0))
    {

      __swift_destroy_boxed_opaque_existential_1(v6);
      return -v2;
    }

    sub_1E47B488C(v6, v5);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
    if (swift_dynamicCast())
    {
      break;
    }

    if (++v2 == 1)
    {
      return 0;
    }
  }

  return -v2;
}

uint64_t sub_1E47B743C(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 1;
  v5 = *(a2 + 40);
  v6 = sub_1E47AFE3C();
  v7 = v6;
  v44 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_61;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    goto LABEL_3;
  }

LABEL_22:
  while (1)
  {
    v24 = v44 ? sub_1E4878F0C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (__OFSUB__(v24, 1))
    {
      break;
    }

    result = 1;
    if (v5 + *(a2 + 56) * ((v24 - 1) & ~((v24 - 1) >> 63)) <= a3)
    {
      return result;
    }

    *(a1 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 1;
    v5 = *(a2 + 40);
    v26 = sub_1E47AFE3C();
    v3 = v26;
    v44 = v26 >> 62;
    if (v26 >> 62)
    {
      goto LABEL_64;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_48;
    }

LABEL_29:
    v7 = 0;
    v47 = v27;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E6919650](v7, v3);
        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v28 = *(v3 + 32 + 8 * v7);

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_57;
        }
      }

      v29 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v30 = *(v28 + v29);
      v31 = *(v30 + 16);
      if (v31)
      {
        break;
      }

      v34 = 0.0;
      v39 = -1;
LABEL_47:
      v40 = (v39 & ~(v39 >> 63));
      v41 = *(v28 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v5 = v5 + v34 + v41 * v40;
      if (v7 == v27)
      {
        goto LABEL_48;
      }
    }

    v32 = v30 + 32;

    v33 = 0;
    v34 = 0.0;
    while (1)
    {
      sub_1E47A1524(v32, v48);
      v37 = v49;
      v38 = v50;
      __swift_project_boxed_opaque_existential_0(v48, v49);
      if ((*(v38 + 16))(v37, v38) > 0.0)
      {
        v11 = __OFADD__(v33++, 1);
        if (v11)
        {
          break;
        }
      }

      v35 = v49;
      v36 = v50;
      __swift_project_boxed_opaque_existential_0(v48, v49);
      v34 = v34 + (*(v36 + 16))(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v32 += 40;
      if (!--v31)
      {

        v27 = v47;
        v39 = v33 - 1;
        if (__OFSUB__(v33, 1))
        {
          goto LABEL_58;
        }

        goto LABEL_47;
      }
    }

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
LABEL_60:
    __break(1u);
LABEL_61:
    v8 = sub_1E4878F0C();
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v46 = v8;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E6919650](v9, v7);
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v10 = *(v7 + 32 + 8 * v9);

          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            goto LABEL_55;
          }
        }

        v12 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        swift_beginAccess();
        v13 = *(v10 + v12);
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = v13 + 32;

          v3 = 0;
          v16 = 0.0;
          do
          {
            sub_1E47A1524(v15, v48);
            v20 = v49;
            v19 = v50;
            __swift_project_boxed_opaque_existential_0(v48, v49);
            if ((*(v19 + 16))(v20, v19) > 0.0)
            {
              v11 = __OFADD__(v3++, 1);
              if (v11)
              {
                __break(1u);
                goto LABEL_54;
              }
            }

            v17 = v49;
            v18 = v50;
            __swift_project_boxed_opaque_existential_0(v48, v49);
            v16 = v16 + (*(v18 + 16))(v17, v18);
            __swift_destroy_boxed_opaque_existential_1(v48);
            v15 += 40;
            --v14;
          }

          while (v14);

          v8 = v46;
          v21 = v3 - 1;
          if (__OFSUB__(v3, 1))
          {
            goto LABEL_56;
          }
        }

        else
        {
          v3 = 0;
          v16 = 0.0;
          v21 = -1;
        }

        v22 = (v21 & ~(v21 >> 63));
        v23 = *(v10 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

        v5 = v5 + v16 + v23 * v22;
        if (v9 == v8)
        {
          goto LABEL_22;
        }
      }
    }
  }

  __break(1u);
LABEL_64:
  v27 = sub_1E4878F0C();
  if (v27)
  {
    goto LABEL_29;
  }

LABEL_48:
  if (v44)
  {
    v42 = sub_1E4878F0C();
  }

  else
  {
    v42 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!__OFSUB__(v42, 1))
  {
    return v5 + *(a2 + 56) * ((v42 - 1) & ~((v42 - 1) >> 63)) <= a3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E47B7960(unint64_t a1, uint64_t *a2, int a3, int a4, int a5, double a6)
{
  v234 = a5;
  v236 = a4;
  v242 = a3;
  v9 = type metadata accessor for Event();
  v232 = *(v9 - 8);
  v10 = *(v232 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v231 = &v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v233 = &v230 - v13;
  v14 = *a2;
  swift_beginAccess();
  v245 = v14;
  v15 = *(v14 + 32);
  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v16 = *(v15 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

LABEL_330:

  v16 = MEMORY[0x1E6919650](a1, v15);

LABEL_5:
  v17 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v241 = v16;
  v238 = v17;
  v18 = *(v16 + v17);

  v20 = sub_1E47B72E4(v19);
  v15 = v21;

  if (v15)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_334;
  }

  v23 = *(v241 + v238);
  if (v20 >= *(v23 + 16))
  {
    goto LABEL_335;
  }

  v235 = v20;
  sub_1E47A1524(v23 + 40 * v20 + 32, v255);
  sub_1E47A1524(v255, v252);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  v237 = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
    a1 = v245;
    goto LABEL_46;
  }

  v25 = 0;
  v240 = v251;
  v239 = *(*(v251 + 32) + 16);
  v26 = 1;
  a1 = v245;
  while (1)
  {
    v27 = v239;
    if ((v26 & 1) == 0)
    {
      v27 = v25 - 1;
      if (v25 < 1)
      {
        goto LABEL_327;
      }
    }

    v243 = v27;
    *(v240 + 40) = v27;
    v28 = *(a1 + 40);
    v29 = sub_1E47AFE3C();
    v15 = v29;
    v244 = v29 >> 62;
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        break;
      }

      goto LABEL_35;
    }

    v30 = sub_1E4878F0C();
    if (v30)
    {
      break;
    }

LABEL_35:
    if (v244)
    {
      a1 = sub_1E4878F0C();
    }

    else
    {
      a1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
      goto LABEL_330;
    }

    a1 = v245;
    v49 = v28 + *(v245 + 56) * (v48 & ~(v48 >> 63));
    if (v49 <= a6)
    {
      goto LABEL_297;
    }

    if ((v242 & 1) != 0 && v49 - *(v245 + 40) <= a6)
    {
      goto LABEL_42;
    }

    v26 = 0;
    v25 = v243;
    if (!v243)
    {
      swift_beginAccess();
      sub_1E47AC06C(v235, v252);
      __swift_destroy_boxed_opaque_existential_1(v252);
      swift_endAccess();
      if ((v236 & 1) == 0)
      {
        goto LABEL_256;
      }

      *(sub_1E47B2BAC() + 48) = 1;

      sub_1E47B2BAC();
      v191 = *(v240 + 32);
      swift_beginAccess();

      sub_1E4844E98(v192);
      swift_endAccess();

      v193 = *(v245 + 40);
      result = sub_1E47AFE3C();
      v194 = result;
      v244 = result >> 62;
      if (result >> 62)
      {
        result = sub_1E4878F0C();
        v195 = result;
        if (result)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v195 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v195)
        {
LABEL_233:
          v196 = 0;
          v249 = v194;
          v250 = v194 & 0xC000000000000001;
          v246 = v194 + 32;
          v247 = v194 & 0xFFFFFFFFFFFFFF8;
          v248 = v195;
          while (1)
          {
            if (v250)
            {
              result = MEMORY[0x1E6919650](v196, v194);
              v197 = result;
            }

            else
            {
              if (v196 >= *(v247 + 16))
              {
                goto LABEL_355;
              }

              v197 = *(v246 + 8 * v196);
            }

            v33 = __OFADD__(v196++, 1);
            if (v33)
            {
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
              goto LABEL_356;
            }

            v198 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            result = swift_beginAccess();
            v199 = *(v197 + v198);
            v200 = *(v199 + 16);
            if (v200)
            {
              break;
            }

            v203 = 0;
            v204 = 0.0;
LABEL_248:
            if (__OFSUB__(v203, 1))
            {
              goto LABEL_353;
            }

            v209 = *(v197 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v193 = v193 + v204 + v209 * ((v203 - 1) & ~((v203 - 1) >> 63));
            if (v196 == v195)
            {
              goto LABEL_250;
            }
          }

          v201 = v199 + 32;
          v202 = *(v197 + v198);

          v203 = 0;
          v204 = 0.0;
          while (1)
          {
            sub_1E47A1524(v201, v252);
            v207 = v253;
            v208 = v254;
            __swift_project_boxed_opaque_existential_0(v252, v253);
            if ((*(v208 + 16))(v207, v208) > 0.0)
            {
              v33 = __OFADD__(v203++, 1);
              if (v33)
              {
                break;
              }
            }

            v205 = v253;
            v206 = v254;
            __swift_project_boxed_opaque_existential_0(v252, v253);
            v204 = v204 + (*(v206 + 16))(v205, v206);
            __swift_destroy_boxed_opaque_existential_1(v252);
            v201 += 40;
            if (!--v200)
            {

              v195 = v248;
              v194 = v249;
              goto LABEL_248;
            }
          }

LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
          goto LABEL_297;
        }
      }

LABEL_250:
      if (v244)
      {
        v210 = sub_1E4878F0C();
      }

      else
      {
        v210 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v210, 1))
      {
        goto LABEL_357;
      }

      if (v193 + *(v245 + 56) * ((v210 - 1) & ~((v210 - 1) >> 63)) <= a6)
      {
        goto LABEL_297;
      }

      *(sub_1E47B2BAC() + 48) = 0;

LABEL_256:
      v211 = *(v245 + 40);
      result = sub_1E47AFE3C();
      v212 = result;
      v244 = result >> 62;
      if (result >> 62)
      {
        result = sub_1E4878F0C();
        v213 = result;
        if (result)
        {
          goto LABEL_258;
        }
      }

      else
      {
        v213 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v213)
        {
LABEL_258:
          v214 = 0;
          v249 = v212;
          v250 = v212 & 0xC000000000000001;
          v246 = v212 + 32;
          v247 = v212 & 0xFFFFFFFFFFFFFF8;
          v248 = v213;
          while (1)
          {
            if (v250)
            {
              result = MEMORY[0x1E6919650](v214, v212);
              v215 = result;
            }

            else
            {
              if (v214 >= *(v247 + 16))
              {
                goto LABEL_354;
              }

              v215 = *(v246 + 8 * v214);
            }

            v33 = __OFADD__(v214++, 1);
            if (v33)
            {
              __break(1u);
LABEL_351:
              __break(1u);
              goto LABEL_352;
            }

            v216 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            result = swift_beginAccess();
            v217 = *(v215 + v216);
            v218 = *(v217 + 16);
            if (v218)
            {
              break;
            }

            v221 = 0;
            v222 = 0.0;
LABEL_273:
            if (__OFSUB__(v221, 1))
            {
              goto LABEL_351;
            }

            v227 = *(v215 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v211 = v211 + v222 + v227 * ((v221 - 1) & ~((v221 - 1) >> 63));
            if (v214 == v213)
            {
              goto LABEL_275;
            }
          }

          v219 = v217 + 32;
          v220 = *(v215 + v216);

          v221 = 0;
          v222 = 0.0;
          while (1)
          {
            sub_1E47A1524(v219, v252);
            v225 = v253;
            v226 = v254;
            __swift_project_boxed_opaque_existential_0(v252, v253);
            if ((*(v226 + 16))(v225, v226) > 0.0)
            {
              v33 = __OFADD__(v221++, 1);
              if (v33)
              {
                break;
              }
            }

            v223 = v253;
            v224 = v254;
            __swift_project_boxed_opaque_existential_0(v252, v253);
            v222 = v222 + (*(v224 + 16))(v223, v224);
            __swift_destroy_boxed_opaque_existential_1(v252);
            v219 += 40;
            if (!--v218)
            {

              v213 = v248;
              v212 = v249;
              goto LABEL_273;
            }
          }

LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
          goto LABEL_343;
        }
      }

LABEL_275:
      if (v244)
      {
        v228 = sub_1E4878F0C();
      }

      else
      {
        v228 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v228, 1))
      {
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
        return result;
      }

      v229 = (v228 - 1) & ~((v228 - 1) >> 63);
      a1 = v245;
      if (v211 + *(v245 + 56) * v229 <= a6)
      {
        goto LABEL_308;
      }

LABEL_46:
      sub_1E47A1524(v255, v252);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_141;
      }

      v50 = v251;
      v244 = v251;
      if (v242)
      {
        v51 = *(a1 + 40);
        v52 = sub_1E47AFE3C();
        v15 = v52;
        v243 = v52 >> 62;
        if (v52 >> 62)
        {
          v53 = sub_1E4878F0C();
          if (v53)
          {
LABEL_50:
            v54 = 0;
            v249 = v15;
            v250 = v15 & 0xC000000000000001;
            v246 = v15 + 32;
            v247 = v15 & 0xFFFFFFFFFFFFFF8;
            v248 = v53;
            while (1)
            {
              if (v250)
              {
                v55 = MEMORY[0x1E6919650](v54, v15);
                v33 = __OFADD__(v54++, 1);
                if (v33)
                {
                  goto LABEL_320;
                }
              }

              else
              {
                if (v54 >= *(v247 + 16))
                {
                  goto LABEL_336;
                }

                v55 = *(v246 + 8 * v54);

                v33 = __OFADD__(v54++, 1);
                if (v33)
                {
                  goto LABEL_320;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v56 = *(v55 + a1);
              v57 = *(v56 + 16);
              if (v57)
              {
                break;
              }

              v61 = 0.0;
              v66 = -1;
LABEL_68:
              v67 = (v66 & ~(v66 >> 63));
              v68 = *(v55 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v51 = v51 + v61 + v68 * v67;
              if (v54 == v53)
              {
                goto LABEL_69;
              }
            }

            v58 = v56 + 32;
            v59 = *(v55 + a1);

            v60 = 0;
            v61 = 0.0;
            while (1)
            {
              sub_1E47A1524(v58, v252);
              v64 = v253;
              v65 = v254;
              __swift_project_boxed_opaque_existential_0(v252, v253);
              if ((*(v65 + 16))(v64, v65) > 0.0)
              {
                v33 = __OFADD__(v60++, 1);
                if (v33)
                {
                  goto LABEL_304;
                }
              }

              v62 = v253;
              v63 = v254;
              a1 = __swift_project_boxed_opaque_existential_0(v252, v253);
              v61 = v61 + (*(v63 + 16))(v62, v63);
              __swift_destroy_boxed_opaque_existential_1(v252);
              v58 += 40;
              if (!--v57)
              {

                v53 = v248;
                v15 = v249;
                v66 = v60 - 1;
                if (__OFSUB__(v60, 1))
                {
                  goto LABEL_321;
                }

                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v53)
          {
            goto LABEL_50;
          }
        }

LABEL_69:
        v50 = v244;
        if (v243)
        {
          v69 = sub_1E4878F0C();
        }

        else
        {
          v69 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v70 = v69 - 1;
        if (__OFSUB__(v69, 1))
        {
          goto LABEL_345;
        }

        a1 = v245;
        v49 = v51 + *(v245 + 56) * (v70 & ~(v70 >> 63));
        if (v49 - *(v245 + 40) <= a6)
        {
          goto LABEL_42;
        }
      }

      if (v234)
      {
        v71 = *(v241 + v238);
        v72 = *(v71 + 16);
        if (v72 < v235)
        {
          goto LABEL_344;
        }

        if (v72 == v235)
        {
          v74 = *(v241 + v238);
        }

        else
        {
          sub_1E4860F48(*(v241 + v238), v71 + 32, 0, (2 * v235) | 1);
          v71 = v73;
        }

        sub_1E47B72E4(v71);
        v76 = v75;

        if (v76)
        {
          v77 = v245;
          if (sub_1E47B743C(v50, v245, a6))
          {
            goto LABEL_297;
          }

          *(v50 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 0;
          *(v50 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 0;
          v78 = *(v77 + 40);
          *(v77 + 40) = 0;
          if (sub_1E47B743C(v50, v77, a6))
          {
            goto LABEL_297;
          }

          *(v77 + 40) = v78;
        }
      }

      swift_beginAccess();
      sub_1E47AC06C(v235, v252);
      __swift_destroy_boxed_opaque_existential_1(v252);
      swift_endAccess();
      if (v236)
      {
        *(sub_1E47B2BAC() + 48) = 1;

        v79 = sub_1E47B2BAC();
        sub_1E47B4C1C(v50 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, v233, type metadata accessor for Event);
        swift_beginAccess();
        v80 = *(v79 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v79 + 32) = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v80 = sub_1E4860A08(0, v80[2] + 1, 1, v80);
          *(v79 + 32) = v80;
        }

        v83 = v80[2];
        v82 = v80[3];
        if (v83 >= v82 >> 1)
        {
          v80 = sub_1E4860A08(v82 > 1, v83 + 1, 1, v80);
        }

        v80[2] = v83 + 1;
        sub_1E47B49FC(v233, v80 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v83, type metadata accessor for Event);
        *(v79 + 32) = v80;
        swift_endAccess();

        a1 = v245;
        v84 = *(v245 + 40);
        v85 = sub_1E47AFE3C();
        v86 = v85;
        v243 = v85 >> 62;
        if (v85 >> 62)
        {
          v15 = sub_1E4878F0C();
          if (v15)
          {
LABEL_90:
            v87 = 0;
            v249 = v86;
            v250 = v86 & 0xC000000000000001;
            v246 = v86 + 32;
            v247 = v86 & 0xFFFFFFFFFFFFFF8;
            v248 = v15;
            while (1)
            {
              if (v250)
              {
                v88 = MEMORY[0x1E6919650](v87, v86);
                v33 = __OFADD__(v87++, 1);
                if (v33)
                {
                  goto LABEL_322;
                }
              }

              else
              {
                if (v87 >= *(v247 + 16))
                {
                  goto LABEL_337;
                }

                v88 = *(v246 + 8 * v87);

                v33 = __OFADD__(v87++, 1);
                if (v33)
                {
                  goto LABEL_322;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v89 = *(v88 + a1);
              v90 = *(v89 + 16);
              if (v90)
              {
                break;
              }

              v94 = 0.0;
              v99 = -1;
LABEL_108:
              v100 = (v99 & ~(v99 >> 63));
              v101 = *(v88 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v84 = v84 + v94 + v101 * v100;
              if (v87 == v15)
              {
                goto LABEL_109;
              }
            }

            v91 = v89 + 32;
            v92 = *(v88 + a1);

            v93 = 0;
            v94 = 0.0;
            while (1)
            {
              sub_1E47A1524(v91, v252);
              v97 = v253;
              v98 = v254;
              __swift_project_boxed_opaque_existential_0(v252, v253);
              if ((*(v98 + 16))(v97, v98) > 0.0)
              {
                v33 = __OFADD__(v93++, 1);
                if (v33)
                {
                  goto LABEL_305;
                }
              }

              v95 = v253;
              v96 = v254;
              a1 = __swift_project_boxed_opaque_existential_0(v252, v253);
              v94 = v94 + (*(v96 + 16))(v95, v96);
              __swift_destroy_boxed_opaque_existential_1(v252);
              v91 += 40;
              if (!--v90)
              {

                v15 = v248;
                v86 = v249;
                v99 = v93 - 1;
                if (__OFSUB__(v93, 1))
                {
                  goto LABEL_323;
                }

                goto LABEL_108;
              }
            }
          }
        }

        else
        {
          v15 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15)
          {
            goto LABEL_90;
          }
        }

LABEL_109:
        if (v243)
        {
          v102 = sub_1E4878F0C();
        }

        else
        {
          v102 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v102, 1))
        {
          goto LABEL_346;
        }

        if (v84 + *(v245 + 56) * ((v102 - 1) & ~((v102 - 1) >> 63)) <= a6)
        {
          goto LABEL_297;
        }

        *(sub_1E47B2BAC() + 48) = 0;
      }

      a1 = v245;
      v103 = *(v245 + 40);
      v104 = sub_1E47AFE3C();
      v105 = v104;
      v243 = v104 >> 62;
      if (v104 >> 62)
      {
        v15 = sub_1E4878F0C();
        if (v15)
        {
LABEL_117:
          v106 = 0;
          v249 = v105;
          v250 = v105 & 0xC000000000000001;
          v246 = v105 + 32;
          v247 = v105 & 0xFFFFFFFFFFFFFF8;
          v248 = v15;
          while (1)
          {
            if (v250)
            {
              v107 = MEMORY[0x1E6919650](v106, v105);
              v33 = __OFADD__(v106++, 1);
              if (v33)
              {
                goto LABEL_315;
              }
            }

            else
            {
              if (v106 >= *(v247 + 16))
              {
                goto LABEL_329;
              }

              v107 = *(v246 + 8 * v106);

              v33 = __OFADD__(v106++, 1);
              if (v33)
              {
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                __break(1u);
LABEL_318:
                __break(1u);
                goto LABEL_319;
              }
            }

            a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            swift_beginAccess();
            v108 = *(v107 + a1);
            v109 = *(v108 + 16);
            if (v109)
            {
              break;
            }

            v113 = 0.0;
            v118 = -1;
LABEL_135:
            v119 = (v118 & ~(v118 >> 63));
            v120 = *(v107 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v103 = v103 + v113 + v120 * v119;
            if (v106 == v15)
            {
              goto LABEL_136;
            }
          }

          v110 = v108 + 32;
          v111 = *(v107 + a1);

          v112 = 0;
          v113 = 0.0;
          while (1)
          {
            sub_1E47A1524(v110, v252);
            v116 = v253;
            v117 = v254;
            __swift_project_boxed_opaque_existential_0(v252, v253);
            if ((*(v117 + 16))(v116, v117) > 0.0)
            {
              v33 = __OFADD__(v112++, 1);
              if (v33)
              {
                goto LABEL_301;
              }
            }

            v114 = v253;
            v115 = v254;
            a1 = __swift_project_boxed_opaque_existential_0(v252, v253);
            v113 = v113 + (*(v115 + 16))(v114, v115);
            __swift_destroy_boxed_opaque_existential_1(v252);
            v110 += 40;
            if (!--v109)
            {

              v15 = v248;
              v105 = v249;
              v118 = v112 - 1;
              if (__OFSUB__(v112, 1))
              {
                goto LABEL_316;
              }

              goto LABEL_135;
            }
          }
        }
      }

      else
      {
        v15 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_117;
        }
      }

LABEL_136:
      if (v243)
      {
        v121 = sub_1E4878F0C();
      }

      else
      {
        v121 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v122 = v121 - 1;
      if (__OFSUB__(v121, 1))
      {
        goto LABEL_341;
      }

      a1 = v245;
      if (v103 + *(v245 + 56) * (v122 & ~(v122 >> 63)) <= a6)
      {
        goto LABEL_308;
      }

LABEL_141:
      sub_1E47A1524(v255, v252);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v142 = v241;
        goto LABEL_228;
      }

      v244 = v251;
      if (v242)
      {
        v123 = *(a1 + 40);
        v124 = sub_1E47AFE3C();
        v15 = v124;
        v243 = v124 >> 62;
        if (v124 >> 62)
        {
          v125 = sub_1E4878F0C();
          if (v125)
          {
LABEL_145:
            v126 = 0;
            v249 = v15;
            v250 = v15 & 0xC000000000000001;
            v246 = v15 + 32;
            v247 = v15 & 0xFFFFFFFFFFFFFF8;
            v248 = v125;
            while (1)
            {
              if (v250)
              {
                v127 = MEMORY[0x1E6919650](v126, v15);
                v33 = __OFADD__(v126++, 1);
                if (v33)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                if (v126 >= *(v247 + 16))
                {
                  goto LABEL_338;
                }

                v127 = *(v246 + 8 * v126);

                v33 = __OFADD__(v126++, 1);
                if (v33)
                {
                  goto LABEL_324;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v128 = *(v127 + a1);
              v129 = *(v128 + 16);
              if (v129)
              {
                break;
              }

              v133 = 0.0;
              v138 = -1;
LABEL_163:
              v139 = (v138 & ~(v138 >> 63));
              v140 = *(v127 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v123 = v123 + v133 + v140 * v139;
              if (v126 == v125)
              {
                goto LABEL_164;
              }
            }

            v130 = v128 + 32;
            v131 = *(v127 + a1);

            v132 = 0;
            v133 = 0.0;
            while (1)
            {
              sub_1E47A1524(v130, v252);
              v136 = v253;
              v137 = v254;
              __swift_project_boxed_opaque_existential_0(v252, v253);
              if ((*(v137 + 16))(v136, v137) > 0.0)
              {
                v33 = __OFADD__(v132++, 1);
                if (v33)
                {
                  goto LABEL_306;
                }
              }

              v134 = v253;
              v135 = v254;
              a1 = __swift_project_boxed_opaque_existential_0(v252, v253);
              v133 = v133 + (*(v135 + 16))(v134, v135);
              __swift_destroy_boxed_opaque_existential_1(v252);
              v130 += 40;
              if (!--v129)
              {

                v125 = v248;
                v15 = v249;
                v138 = v132 - 1;
                if (__OFSUB__(v132, 1))
                {
                  goto LABEL_325;
                }

                goto LABEL_163;
              }
            }
          }
        }

        else
        {
          v125 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v125)
          {
            goto LABEL_145;
          }
        }

LABEL_164:
        if (v243)
        {
          v141 = sub_1E4878F0C();
        }

        else
        {
          v141 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v143 = v141 - 1;
        if (__OFSUB__(v141, 1))
        {
          goto LABEL_347;
        }

        a1 = v245;
        v49 = v123 + *(v245 + 56) * (v143 & ~(v143 >> 63));
        if (v49 - *(v245 + 40) <= a6)
        {
LABEL_42:
          __swift_destroy_boxed_opaque_existential_1(v255);

          *(a1 + 40) = *(a1 + 40) - (v49 - a6);
          return 1;
        }
      }

      swift_beginAccess();
      sub_1E47AC06C(v235, v252);
      __swift_destroy_boxed_opaque_existential_1(v252);
      swift_endAccess();
      if (v236)
      {
        *(sub_1E47B2BAC() + 48) = 1;

        v144 = sub_1E47B2BAC();
        sub_1E47B4C1C(v244 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, v231, type metadata accessor for Event);
        swift_beginAccess();
        v145 = *(v144 + 32);
        v146 = swift_isUniquelyReferenced_nonNull_native();
        *(v144 + 32) = v145;
        if ((v146 & 1) == 0)
        {
          v145 = sub_1E4860A08(0, v145[2] + 1, 1, v145);
          *(v144 + 32) = v145;
        }

        v148 = v145[2];
        v147 = v145[3];
        if (v148 >= v147 >> 1)
        {
          v145 = sub_1E4860A08(v147 > 1, v148 + 1, 1, v145);
        }

        v145[2] = v148 + 1;
        sub_1E47B49FC(v231, v145 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v148, type metadata accessor for Event);
        *(v144 + 32) = v145;
        swift_endAccess();

        a1 = v245;
        v149 = *(v245 + 40);
        v150 = sub_1E47AFE3C();
        v15 = v150;
        v243 = v150 >> 62;
        if (v150 >> 62)
        {
          v151 = sub_1E4878F0C();
          if (v151)
          {
LABEL_177:
            v152 = 0;
            v249 = v15;
            v250 = v15 & 0xC000000000000001;
            v246 = v15 + 32;
            v247 = v15 & 0xFFFFFFFFFFFFFF8;
            v248 = v151;
            while (1)
            {
              if (v250)
              {
                v153 = MEMORY[0x1E6919650](v152, v15);
                v33 = __OFADD__(v152++, 1);
                if (v33)
                {
                  goto LABEL_326;
                }
              }

              else
              {
                if (v152 >= *(v247 + 16))
                {
                  goto LABEL_339;
                }

                v153 = *(v246 + 8 * v152);

                v33 = __OFADD__(v152++, 1);
                if (v33)
                {
                  goto LABEL_326;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v154 = *(v153 + a1);
              v155 = *(v154 + 16);
              if (v155)
              {
                break;
              }

              v159 = 0.0;
              v164 = -1;
LABEL_195:
              v165 = (v164 & ~(v164 >> 63));
              v166 = *(v153 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v149 = v149 + v159 + v166 * v165;
              if (v152 == v151)
              {
                goto LABEL_196;
              }
            }

            v156 = v154 + 32;
            v157 = *(v153 + a1);

            v158 = 0;
            v159 = 0.0;
            while (1)
            {
              sub_1E47A1524(v156, v252);
              v162 = v253;
              v163 = v254;
              __swift_project_boxed_opaque_existential_0(v252, v253);
              if ((*(v163 + 16))(v162, v163) > 0.0)
              {
                v33 = __OFADD__(v158++, 1);
                if (v33)
                {
                  goto LABEL_307;
                }
              }

              v160 = v253;
              v161 = v254;
              a1 = __swift_project_boxed_opaque_existential_0(v252, v253);
              v159 = v159 + (*(v161 + 16))(v160, v161);
              __swift_destroy_boxed_opaque_existential_1(v252);
              v156 += 40;
              if (!--v155)
              {

                v151 = v248;
                v15 = v249;
                v164 = v158 - 1;
                if (__OFSUB__(v158, 1))
                {
                  goto LABEL_328;
                }

                goto LABEL_195;
              }
            }
          }
        }

        else
        {
          v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v151)
          {
            goto LABEL_177;
          }
        }

LABEL_196:
        if (v243)
        {
          v167 = sub_1E4878F0C();
        }

        else
        {
          v167 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v167, 1))
        {
          goto LABEL_348;
        }

        if (v149 + *(v245 + 56) * ((v167 - 1) & ~((v167 - 1) >> 63)) <= a6)
        {
LABEL_297:
          __swift_destroy_boxed_opaque_existential_1(v255);

          goto LABEL_298;
        }

        *(sub_1E47B2BAC() + 48) = 0;
      }

      a1 = v245;
      v168 = *(v245 + 40);
      v169 = sub_1E47AFE3C();
      v15 = v169;
      v243 = v169 >> 62;
      if (v169 >> 62)
      {
        v170 = sub_1E4878F0C();
        if (v170)
        {
LABEL_204:
          v171 = 0;
          v249 = v15;
          v250 = v15 & 0xC000000000000001;
          v246 = v15 + 32;
          v247 = v15 & 0xFFFFFFFFFFFFFF8;
          v248 = v170;
          while (1)
          {
            if (v250)
            {
              v172 = MEMORY[0x1E6919650](v171, v15);
              v33 = __OFADD__(v171++, 1);
              if (v33)
              {
                goto LABEL_317;
              }
            }

            else
            {
              if (v171 >= *(v247 + 16))
              {
                goto LABEL_333;
              }

              v172 = *(v246 + 8 * v171);

              v33 = __OFADD__(v171++, 1);
              if (v33)
              {
                goto LABEL_317;
              }
            }

            a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            swift_beginAccess();
            v173 = *(v172 + a1);
            v174 = *(v173 + 16);
            if (v174)
            {
              break;
            }

            v178 = 0.0;
            v183 = -1;
LABEL_222:
            v184 = (v183 & ~(v183 >> 63));
            v185 = *(v172 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v168 = v168 + v178 + v185 * v184;
            if (v171 == v170)
            {
              goto LABEL_223;
            }
          }

          v175 = v173 + 32;
          v176 = *(v172 + a1);

          v177 = 0;
          v178 = 0.0;
          while (1)
          {
            sub_1E47A1524(v175, v252);
            v181 = v253;
            v182 = v254;
            __swift_project_boxed_opaque_existential_0(v252, v253);
            if ((*(v182 + 16))(v181, v182) > 0.0)
            {
              v33 = __OFADD__(v177++, 1);
              if (v33)
              {
                goto LABEL_302;
              }
            }

            v179 = v253;
            v180 = v254;
            a1 = __swift_project_boxed_opaque_existential_0(v252, v253);
            v178 = v178 + (*(v180 + 16))(v179, v180);
            __swift_destroy_boxed_opaque_existential_1(v252);
            v175 += 40;
            if (!--v174)
            {

              v170 = v248;
              v15 = v249;
              v183 = v177 - 1;
              if (__OFSUB__(v177, 1))
              {
                goto LABEL_318;
              }

              goto LABEL_222;
            }
          }
        }
      }

      else
      {
        v170 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v170)
        {
          goto LABEL_204;
        }
      }

LABEL_223:
      if (v243)
      {
        v186 = sub_1E4878F0C();
      }

      else
      {
        v186 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v187 = v186 - 1;
      if (__OFSUB__(v186, 1))
      {
        goto LABEL_342;
      }

      v142 = v241;
      if (v168 + *(v245 + 56) * (v187 & ~(v187 >> 63)) <= a6)
      {
        goto LABEL_308;
      }

LABEL_228:
      v188 = *(v142 + v238);

      v20 = sub_1E47B72E4(v189);
      v15 = v190;

      __swift_destroy_boxed_opaque_existential_1(v255);
      if (v15)
      {
LABEL_6:

        return 0;
      }

      goto LABEL_7;
    }
  }

  v31 = 0;
  v249 = v15;
  v250 = v15 & 0xC000000000000001;
  v246 = v15 + 32;
  v247 = v15 & 0xFFFFFFFFFFFFFF8;
  v248 = v30;
  while (v250)
  {
    v32 = MEMORY[0x1E6919650](v31, v15);
    v33 = __OFADD__(v31++, 1);
    if (v33)
    {
      goto LABEL_299;
    }

LABEL_23:
    v34 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
    swift_beginAccess();
    v35 = *(v32 + v34);
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = v35 + 32;
      v38 = *(v32 + v34);

      v39 = 0;
      v40 = 0.0;
      do
      {
        sub_1E47A1524(v37, v252);
        v44 = v253;
        v43 = v254;
        __swift_project_boxed_opaque_existential_0(v252, v253);
        if ((*(v43 + 16))(v44, v43) > 0.0)
        {
          v33 = __OFADD__(v39++, 1);
          if (v33)
          {
            __break(1u);
            goto LABEL_297;
          }
        }

        v41 = v253;
        v42 = v254;
        __swift_project_boxed_opaque_existential_0(v252, v253);
        v40 = v40 + (*(v42 + 16))(v41, v42);
        __swift_destroy_boxed_opaque_existential_1(v252);
        v37 += 40;
        --v36;
      }

      while (v36);

      v30 = v248;
      v15 = v249;
      v45 = v39 - 1;
      if (__OFSUB__(v39, 1))
      {
        goto LABEL_300;
      }
    }

    else
    {
      v40 = 0.0;
      v45 = -1;
    }

    v46 = (v45 & ~(v45 >> 63));
    v47 = *(v32 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

    v28 = v28 + v40 + v47 * v46;
    if (v31 == v30)
    {
      goto LABEL_35;
    }
  }

  if (v31 >= *(v247 + 16))
  {
    goto LABEL_303;
  }

  v32 = *(v246 + 8 * v31);

  v33 = __OFADD__(v31++, 1);
  if (!v33)
  {
    goto LABEL_23;
  }

LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __swift_destroy_boxed_opaque_existential_1(v255);
LABEL_298:

  return 1;
}

uint64_t sub_1E47B96D8(unint64_t a1, uint64_t *a2, double a3)
{
  v5 = *a2;
  result = swift_beginAccess();
  v7 = *(v5 + 32);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v14 = *(v5 + 32);

    v8 = MEMORY[0x1E6919650](a1, v7);

LABEL_5:
    v9 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
    swift_beginAccess();
    v10 = *(v8 + v9);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = v10 + 40 * v11 - 8;
      while (v11 <= *(v10 + 16))
      {
        sub_1E47A1524(v12, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
        if (swift_dynamicCast())
        {
          v13 = sub_1E47B743C(v15, v5, a3);

          if (v13)
          {

            return 1;
          }
        }

        v12 -= 40;
        if (!--v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_13:

      return 0;
    }

LABEL_17:

    return 0;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v8 = *(v7 + 8 * a1 + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double *sub_1E47B98A8(uint64_t a1, void *a2, void *a3, int a4, int a5, int a6, double a7)
{
  LODWORD(v238) = a6;
  LODWORD(v239) = a5;
  LODWORD(v234) = a4;
  v233 = a2;
  j = sub_1E487751C();
  v11 = *(j - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](j);
  v14 = &v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1E487753C();
  v15 = *(v232 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v232);
  v231 = &v214 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v214 - v19;
  v21 = sub_1E487732C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  i = &v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E47ABFD0())
  {
    type metadata accessor for NarrowMultidayLayout.MultiDayViewModel();
    result = swift_allocObject();
    result[2] = -2.31584178e77;
    *(result + 3) = 0x80000001E487D190;
    *(result + 4) = MEMORY[0x1E69E7CC0];
    v28 = a3[14];
    v27 = a3[15];
    *(result + 5) = v27;
    *(result + 6) = v27;
    *(result + 7) = v28;
    return result;
  }

  v236 = a1;
  v237 = a3;
  (*(v22 + 16))(i, a1, v21);
  sub_1E4877A7C();
  v29 = j;
  (*(v11 + 104))(v14, *MEMORY[0x1E6969A58], j);
  v30 = sub_1E487752C();
  v32 = *(v11 + 8);
  v31 = v11 + 8;
  v32(v14, v29);
  v35 = *(v15 + 8);
  v33 = v15 + 8;
  v34 = v35;
  v35(v20, v232);
  (*(v22 + 8))(i, v21);
  if (v30 < 17)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  v220 = v30;
  if (v30 <= 9)
  {
    LOBYTE(v37) = 0;
  }

  else
  {
    LOBYTE(v37) = v36;
  }

  v223 = v34;
  v224 = v33;
  if (v234 == 2 && v37 != 2)
  {
    if (!v233[2])
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_14;
  }

  v38 = v233;

  while (1)
  {
    v233 = v38;
    v43 = sub_1E47B549C(v236, v38, v237);
    v245 = v43;

    sub_1E4877A7C();
    swift_beginAccess();
    v235 = v43;
    v30 = v43[4];
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_102;
    }

    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      v233 = sub_1E4866DE4(v233);
LABEL_14:
      v39 = v233;
      v40 = v233[2];
      if (!v40)
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        if (sub_1E4878F0C() < 2)
        {
          goto LABEL_112;
        }

LABEL_39:
        v50 = *(v30 + 32);
        if ((v50 & 0xC000000000000001) != 0)
        {

          v51 = MEMORY[0x1E6919650](1, v50);
        }

        else
        {
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
            goto LABEL_369;
          }

          v51 = *(v50 + 40);
        }

        v30 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        swift_beginAccess();
        v52 = *(v51 + v30);
        i = *(v52 + 16);
        j = v51;

        if (!i)
        {
LABEL_80:

          goto LABEL_113;
        }

        v53 = 0;
        v54 = v52 + 32;
LABEL_64:
        if (v53 >= *(v52 + 16))
        {
          continue;
        }

        sub_1E47A1524(v54, &v250);
        sub_1E47A1524(&v250, &v246);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
        if (swift_dynamicCast())
        {
          v37 = v242;
          if (*(v242 + 48))
          {
            swift_beginAccess();
            v31 = *(*(v37 + 32) + 16);

            __swift_destroy_boxed_opaque_existential_1(&v250);
            if (v31)
            {
              goto LABEL_74;
            }

            goto LABEL_63;
          }
        }

        else
        {
          sub_1E47A1524(&v250, &v246);
          type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
          if ((swift_dynamicCast() & 1) != 0 || (sub_1E47A1524(&v250, &v246), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v250, &v246), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v250, &v246), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel(), swift_dynamicCast()))
          {

            __swift_destroy_boxed_opaque_existential_1(&v250);
LABEL_74:

            v37 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            v60 = v227;
            swift_beginAccess();
            v61 = *(v60 + v37);
            v62 = v61[2];
            if (!v62)
            {
              v63 = 0;
              goto LABEL_99;
            }

            v63 = 0;
            v64 = 9;
            while (1)
            {
              if (v63 >= v61[2])
              {
                goto LABEL_106;
              }

              sub_1E47A1524(&v61[v64 - 5], &v250);
              sub_1E47B488C(&v250, &v246);
              type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
              if (swift_dynamicCast())
              {
                break;
              }

              ++v63;
              v64 += 5;
              if (v62 == v63)
              {
                v63 = v61[2];
                v62 = v63;
                goto LABEL_99;
              }
            }

            v62 = v63 + 1;
            v65 = v61[2];
            if (v65 - 1 != v63)
            {
              i = 40;
              do
              {
                if (v62 >= v65)
                {
                  goto LABEL_110;
                }

                sub_1E47A1524(&v61[v64], &v250);
                sub_1E47B488C(&v250, &v246);
                if (swift_dynamicCast())
                {
                }

                else
                {
                  if (v62 != v63)
                  {
                    if ((v63 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_364;
                    }

                    v66 = v61[2];
                    if (v63 >= v66)
                    {
                      goto LABEL_365;
                    }

                    sub_1E47A1524(&v61[5 * v63 + 4], &v250);
                    if (v62 >= v66)
                    {
                      goto LABEL_366;
                    }

                    sub_1E47A1524(&v61[v64], &v246);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v68 = v227;
                    *(v227 + v37) = v61;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v70 = v68;
                      v61 = sub_1E4866DD0(v61);
                      *(v70 + v37) = v61;
                    }

                    if (v63 >= v61[2])
                    {
                      goto LABEL_367;
                    }

                    v69 = &v61[5 * v63];
                    __swift_destroy_boxed_opaque_existential_1(v69 + 4);
                    sub_1E47B488C(&v246, (v69 + 4));
                    v31 = v227;
                    *(v227 + v37) = v61;
                    if (v62 >= v61[2])
                    {
                      goto LABEL_368;
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v61[v64]);
                    sub_1E47B488C(&v250, &v61[v64]);
                    *(v31 + v37) = v61;
                  }

                  ++v63;
                }

                ++v62;
                v65 = v61[2];
                v64 += 5;
              }

              while (v62 != v65);
              if (v62 < v63)
              {
                goto LABEL_373;
              }
            }

LABEL_99:
            sub_1E486D088(v63, v62);
            swift_endAccess();
            goto LABEL_129;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v250);
LABEL_63:
        ++v53;
        v54 += 40;
        if (i == v53)
        {
          goto LABEL_80;
        }

        goto LABEL_64;
      }

      break;
    }

    v41 = v40 - 1;
    v42 = *(type metadata accessor for DayEvents() - 8);
    sub_1E47B4C84(v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41, type metadata accessor for DayEvents);
    v39[2] = v41;
    v38 = v39;
  }

  v227 = *(v30 + 32);

  if ((v239 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  v44 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  v45 = v227;
  swift_beginAccess();
  v30 = *(v45 + v44);
  v46 = *(v30 + 16);

  if (!v46)
  {
    goto LABEL_60;
  }

  i = 0;
  v47 = v30 + 32;
  while (1)
  {
    if (i >= *(v30 + 16))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:

      v227 = MEMORY[0x1E6919650](0, v30);

      if ((v239 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    sub_1E47A1524(v47, &v250);
    sub_1E47A1524(&v250, &v246);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
    if (!swift_dynamicCast())
    {
      break;
    }

    v48 = v242;
    if ((*(v242 + 48) & 1) == 0)
    {

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1(&v250);
      goto LABEL_23;
    }

    swift_beginAccess();
    v31 = *(*(v48 + 32) + 16);

    __swift_destroy_boxed_opaque_existential_1(&v250);
    if (v31)
    {
      goto LABEL_34;
    }

LABEL_23:
    ++i;
    v47 += 40;
    if (v46 == i)
    {
      goto LABEL_60;
    }
  }

  sub_1E47A1524(&v250, &v246);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E47A1524(&v250, &v246);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
    if (!swift_dynamicCast())
    {
      sub_1E47A1524(&v250, &v246);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
      if (!swift_dynamicCast())
      {
        sub_1E47A1524(&v250, &v246);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (!swift_dynamicCast())
        {
          goto LABEL_22;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v250);
LABEL_34:

LABEL_35:
  v30 = v235;
  if (v234 != 2)
  {
    goto LABEL_132;
  }

  if (v37 != 2)
  {
    v55 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
    v56 = v227;
    swift_beginAccess();
    v30 = *(v56 + v55);
    v37 = *(v30 + 16);

    if (!v37)
    {
LABEL_60:

      v30 = v235;
      v235[5] = 0.0;
      sub_1E47B70C4(v237, v238 & 1, v227);
      goto LABEL_132;
    }

    v57 = 0;
    v58 = v30 + 32;
    while (1)
    {
      if (v57 >= *(v30 + 16))
      {
        goto LABEL_101;
      }

      sub_1E47A1524(v58, &v250);
      sub_1E47A1524(&v250, &v246);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
      if (!swift_dynamicCast())
      {
        break;
      }

      v59 = v242;
      if ((*(v242 + 48) & 1) == 0)
      {

LABEL_47:
        __swift_destroy_boxed_opaque_existential_1(&v250);
        goto LABEL_48;
      }

      swift_beginAccess();
      i = *(*(v59 + 32) + 16);

      __swift_destroy_boxed_opaque_existential_1(&v250);
      if (i)
      {
        goto LABEL_59;
      }

LABEL_48:
      ++v57;
      v58 += 40;
      if (v37 == v57)
      {
        goto LABEL_60;
      }
    }

    sub_1E47A1524(&v250, &v246);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
    if ((swift_dynamicCast() & 1) != 0 || (sub_1E47A1524(&v250, &v246), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v250, &v246), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v250, &v246), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1(&v250);
LABEL_59:

      goto LABEL_130;
    }

    goto LABEL_47;
  }

  v49 = *(v235 + 4);
  if (v49 >> 62)
  {
    goto LABEL_111;
  }

  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_39;
  }

LABEL_112:
  j = 0;
LABEL_113:
  v71 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  v72 = v227;
  swift_beginAccess();
  v73 = *(v72 + v71);
  v74 = *(v73 + 16);

  if (!v74)
  {
LABEL_131:

    v30 = v235;
    v235[5] = 0.0;
    sub_1E47B70C4(v237, v238 & 1, v227);

    goto LABEL_132;
  }

  v75 = 0;
  v76 = v73 + 32;
  while (2)
  {
    if (v75 >= *(v73 + 16))
    {
      goto LABEL_308;
    }

    sub_1E47A1524(v76, &v250);
    sub_1E47A1524(&v250, &v246);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
    if (swift_dynamicCast())
    {
      v77 = v242;
      if (*(v242 + 48))
      {
        swift_beginAccess();
        i = *(*(v77 + 32) + 16);

        __swift_destroy_boxed_opaque_existential_1(&v250);
        if (i)
        {
          goto LABEL_128;
        }

        goto LABEL_117;
      }

LABEL_116:
      __swift_destroy_boxed_opaque_existential_1(&v250);
LABEL_117:
      ++v75;
      v76 += 40;
      if (v74 == v75)
      {
        goto LABEL_131;
      }

      continue;
    }

    break;
  }

  sub_1E47A1524(&v250, &v246);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E47A1524(&v250, &v246);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
    if (!swift_dynamicCast())
    {
      sub_1E47A1524(&v250, &v246);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
      if (!swift_dynamicCast())
      {
        sub_1E47A1524(&v250, &v246);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (!swift_dynamicCast())
        {
          goto LABEL_116;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v250);
LABEL_128:

LABEL_129:

LABEL_130:
  v30 = v235;
LABEL_132:
  v7 = *(v30 + 40);
  v78 = sub_1E47AFE3C();
  v75 = v78;
  v230 = v78 >> 62;
  if (v78 >> 62)
  {
    goto LABEL_155;
  }

  for (i = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4878F0C())
  {
    v79 = 0;
    v239 = v75;
    j = v75 & 0xC000000000000001;
    v236 = v75 + 32;
    v237 = (v75 & 0xFFFFFFFFFFFFFF8);
    v238 = i;
    while (1)
    {
      if (j)
      {
        v83 = MEMORY[0x1E6919650](v79, v75);
        v84 = __OFADD__(v79++, 1);
        if (v84)
        {
          goto LABEL_153;
        }
      }

      else
      {
        if (v79 >= v237[2])
        {
          goto LABEL_154;
        }

        v83 = *(v236 + 8 * v79);

        v84 = __OFADD__(v79++, 1);
        if (v84)
        {
          goto LABEL_153;
        }
      }

      v85 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v86 = *(v83 + v85);
      v87 = *(v86 + 16);
      if (v87)
      {
        break;
      }

      v90 = 0.0;
      v80 = -1;
LABEL_136:
      v81 = (v80 & ~(v80 >> 63));
      v82 = *(v83 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v7 = v7 + v90 + v82 * v81;
      if (v79 == i)
      {
        goto LABEL_156;
      }
    }

    v75 = v86 + 32;
    v88 = *(v83 + v85);

    v89 = 0;
    v90 = 0.0;
    while (1)
    {
      sub_1E47A1524(v75, &v250);
      v92 = v252;
      v31 = v253;
      __swift_project_boxed_opaque_existential_0(&v250, v252);
      if ((*(v31 + 16))(v92, v31) > 0.0)
      {
        v84 = __OFADD__(v89++, 1);
        if (v84)
        {
          break;
        }
      }

      v91 = v252;
      v31 = v253;
      __swift_project_boxed_opaque_existential_0(&v250, v252);
      v90 = v90 + (*(v31 + 16))(v91, v31);
      __swift_destroy_boxed_opaque_existential_1(&v250);
      v75 += 40;
      if (!--v87)
      {

        i = v238;
        v75 = v239;
        v80 = v89 - 1;
        if (!__OFSUB__(v89, 1))
        {
          goto LABEL_136;
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    ;
  }

LABEL_156:
  if (v230)
  {
    v93 = sub_1E4878F0C();
  }

  else
  {
    v93 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v94 = v93 - 1;
  if (__OFSUB__(v93, 1))
  {
    goto LABEL_309;
  }

  v95 = v235;
  v96 = v7 + v235[7] * (v94 & ~(v94 >> 63));
  if (v234 == 1)
  {
    if (v96 <= a7)
    {
      goto LABEL_222;
    }

    v97 = *(v235 + 4);
    v216 = v97 >> 62;
    if (v97 >> 62)
    {
      goto LABEL_356;
    }

    v219 = v97 & 0xFFFFFFFFFFFFFF8;
    v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v98)
    {
      goto LABEL_222;
    }

    v221 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v222 = v98;
LABEL_165:
    v220 = v97 & 0xC000000000000001;
    if (v97 < 0)
    {
      v99 = v97;
    }

    else
    {
      v99 = v219;
    }

    v214 = v99;
    v215 = v97 + 32;
    v217 = v97;

    v100 = 0;
    while (1)
    {
      v101 = v98 - 1;
      if (__OFSUB__(v98, 1))
      {
        goto LABEL_310;
      }

      if (v98 == v222)
      {
        if (v216)
        {
          v97 = sub_1E4878F0C();
          v100 = v97;
        }

        else
        {
          v100 = *(v219 + 16);
        }
      }

      v84 = __OFSUB__(v100--, 1);
      if (v84)
      {
        goto LABEL_311;
      }

      if (v101 < 0 || v101 >= v221)
      {
        goto LABEL_312;
      }

      if (v220)
      {
        v229 = MEMORY[0x1E6919650](v98 - 1, v217);
      }

      else
      {
        if (v101 >= *(v219 + 16))
        {
          __break(1u);
LABEL_356:
          v219 = v97 & 0xFFFFFFFFFFFFFF8;
          v190 = v97;
          v191 = sub_1E4878F0C();
          if (!v191)
          {
            goto LABEL_222;
          }

          v98 = v191;
          v222 = sub_1E4878F0C();
          v221 = sub_1E4878F0C();
          v97 = v190;
          goto LABEL_165;
        }

        v229 = *(v215 + 8 * v101);
      }

      if (sub_1E47B7960(v100, &v245, 1, 0, 1, a7))
      {

        goto LABEL_264;
      }

      v225 = v98 - 1;
      v102 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v103 = v229;
      swift_beginAccess();
      v218 = v102;
      v104 = *(v103 + v102);
      v105 = *(v104 + 16);

      if (v105)
      {
        v106 = 0;
        v107 = v104 + 32;
        while (1)
        {
          if (v106 >= *(v104 + 16))
          {
            goto LABEL_271;
          }

          v237 = v106;
          sub_1E47A1524(v107, &v250);
          sub_1E47B488C(&v250, &v246);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
          type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
          if (swift_dynamicCast())
          {
            break;
          }

          v106 = (v237 + 1);
          v107 += 40;
          if (v105 == (v237 + 1))
          {
            goto LABEL_187;
          }
        }

        v108 = sub_1E47B2A64();
        v109 = v235;
        v228 = v100;
        v226 = v108;
        if (!v108)
        {
          goto LABEL_425;
        }

        while (1)
        {
          v110 = *(v108 + 48);
          if (v110 < 2)
          {
            break;
          }

          *(v108 + 48) = v110 - 1;
          v7 = v109[5];
          v111 = sub_1E47AFE3C();
          v112 = v111;
          v230 = v111 >> 62;
          if (v111 >> 62)
          {
            v75 = sub_1E4878F0C();
            if (v75)
            {
LABEL_194:
              v113 = 0;
              v239 = v112;
              j = v112 & 0xC000000000000001;
              v236 = v112 & 0xFFFFFFFFFFFFFF8;
              v234 = v112 + 32;
              v238 = v75;
              do
              {
                if (j)
                {
                  i = MEMORY[0x1E6919650](v113, v112);
                  v84 = __OFADD__(v113++, 1);
                  if (v84)
                  {
                    goto LABEL_267;
                  }
                }

                else
                {
                  if (v113 >= *(v236 + 16))
                  {
                    goto LABEL_270;
                  }

                  i = *(v234 + 8 * v113);

                  v84 = __OFADD__(v113++, 1);
                  if (v84)
                  {
                    goto LABEL_267;
                  }
                }

                v117 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
                swift_beginAccess();
                v118 = *(i + v117);
                v119 = *(v118 + 16);
                if (v119)
                {
                  v120 = v118 + 32;
                  v121 = *(i + v117);

                  v122 = 0;
                  v123 = 0.0;
                  do
                  {
                    sub_1E47A1524(v120, &v250);
                    v126 = v252;
                    v125 = v253;
                    __swift_project_boxed_opaque_existential_0(&v250, v252);
                    if ((*(v125 + 16))(v126, v125) > 0.0)
                    {
                      v84 = __OFADD__(v122++, 1);
                      if (v84)
                      {
                        goto LABEL_376;
                      }
                    }

                    v124 = v252;
                    v31 = v253;
                    __swift_project_boxed_opaque_existential_0(&v250, v252);
                    v123 = v123 + (*(v31 + 16))(v124, v31);
                    __swift_destroy_boxed_opaque_existential_1(&v250);
                    v120 += 40;
                    --v119;
                  }

                  while (v119);

                  v75 = v238;
                  v112 = v239;
                  v114 = v122 - 1;
                  if (__OFSUB__(v122, 1))
                  {
                    goto LABEL_268;
                  }
                }

                else
                {
                  v123 = 0.0;
                  v114 = -1;
                }

                v115 = (v114 & ~(v114 >> 63));
                v116 = *(i + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

                v7 = v7 + v123 + v116 * v115;
              }

              while (v113 != v75);
            }
          }

          else
          {
            v75 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v75)
            {
              goto LABEL_194;
            }
          }

          v100 = v228;
          if (v230)
          {
            v127 = sub_1E4878F0C();
          }

          else
          {
            v127 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v128 = v127 - 1;
          if (__OFSUB__(v127, 1))
          {
            goto LABEL_305;
          }

          v109 = v235;
          v108 = v226;
          if (v7 + v235[7] * (v128 & ~(v128 >> 63)) <= a7)
          {
            goto LABEL_217;
          }
        }

        *(v108 + 40) = 1;
        sub_1E47AF9D4();
        if (v129 <= a7)
        {
          goto LABEL_217;
        }

        swift_beginAccess();
        sub_1E47AC06C(v237, &v250);
        __swift_destroy_boxed_opaque_existential_1(&v250);
        swift_endAccess();
        sub_1E47AF9D4();
        v7 = v130;

        if (v7 <= a7)
        {
          goto LABEL_377;
        }
      }

      else
      {
LABEL_187:
      }

      v98 = v225;
      if (!v225)
      {
        goto LABEL_377;
      }
    }
  }

  if (v96 <= a7)
  {
    goto LABEL_222;
  }

  v134 = *(v235 + 4);
  if (v134 >> 62)
  {
    if (v134 < 0)
    {
      v192 = *(v235 + 4);
    }

    v135 = sub_1E4878F0C();
    if (v135)
    {
      goto LABEL_226;
    }
  }

  else
  {
    v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v135)
    {
LABEL_226:
      v226 = v134 & 0xC000000000000001;
      v221 = v134 + 32;
      v222 = v134 & 0xFFFFFFFFFFFFFF8;

      v225 = v134;
      while (1)
      {
        v84 = __OFSUB__(v135--, 1);
        if (v84)
        {
          break;
        }

        if (v226)
        {
          v136 = MEMORY[0x1E6919650](v135, v134);
        }

        else
        {
          if ((v135 & 0x8000000000000000) != 0)
          {
            goto LABEL_306;
          }

          if (v135 >= *(v222 + 16))
          {
            goto LABEL_307;
          }

          v136 = *(v221 + 8 * v135);
        }

        v137 = sub_1E47B2A64();
        if (v137)
        {
          v229 = v137;
          *(v137 + 40) = 1;
          v7 = v235[5];
          v138 = sub_1E47AFE3C();
          v139 = v138;
          v228 = v138 >> 62;
          if (v138 >> 62)
          {
            v140 = sub_1E4878F0C();
          }

          else
          {
            v140 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v230 = v136;
          v234 = v135;
          if (v140)
          {
            i = 0;
            v239 = v139;
            j = v139 & 0xC000000000000001;
            v236 = v139 + 32;
            v237 = (v139 & 0xFFFFFFFFFFFFFF8);
            v238 = v140;
            do
            {
              if (j)
              {
                v31 = MEMORY[0x1E6919650](i, v139);
                v84 = __OFADD__(i++, 1);
                if (v84)
                {
                  goto LABEL_265;
                }
              }

              else
              {
                if (i >= v237[2])
                {
                  goto LABEL_269;
                }

                v31 = *(v236 + 8 * i);

                v84 = __OFADD__(i++, 1);
                if (v84)
                {
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
LABEL_271:
                  __break(1u);
LABEL_217:

LABEL_264:

LABEL_222:

                  goto LABEL_223;
                }
              }

              v144 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v145 = *(v31 + v144);
              v146 = *(v145 + 16);
              if (v146)
              {
                v147 = v145 + 32;
                v148 = *(v31 + v144);

                v75 = 0;
                v149 = 0.0;
                do
                {
                  sub_1E47A1524(v147, &v250);
                  v153 = v252;
                  v152 = v253;
                  __swift_project_boxed_opaque_existential_0(&v250, v252);
                  if ((*(v152 + 16))(v153, v152) > 0.0)
                  {
                    v84 = __OFADD__(v75++, 1);
                    if (v84)
                    {
LABEL_375:
                      __break(1u);
LABEL_376:
                      __break(1u);
                      goto LABEL_377;
                    }
                  }

                  v150 = v252;
                  v151 = v253;
                  __swift_project_boxed_opaque_existential_0(&v250, v252);
                  v149 = v149 + (*(v151 + 16))(v150, v151);
                  __swift_destroy_boxed_opaque_existential_1(&v250);
                  v147 += 40;
                  --v146;
                }

                while (v146);

                v140 = v238;
                v139 = v239;
                v141 = v75 - 1;
                if (__OFSUB__(v75, 1))
                {
                  goto LABEL_266;
                }
              }

              else
              {
                v75 = 0;
                v149 = 0.0;
                v141 = -1;
              }

              v142 = (v141 & ~(v141 >> 63));
              v143 = *(v31 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v7 = v7 + v149 + v143 * v142;
            }

            while (i != v140);
          }

          if (v228)
          {
            v154 = sub_1E4878F0C();
          }

          else
          {
            v154 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v134 = v225;
          v135 = v234;

          v155 = v154 - 1;
          if (__OFSUB__(v154, 1))
          {
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:

            goto LABEL_314;
          }

          v95 = v235;
          if (v7 + v235[7] * (v155 & ~(v155 >> 63)) <= a7)
          {
            goto LABEL_377;
          }
        }

        else
        {

          v95 = v235;
        }

        if (!v135)
        {
          goto LABEL_274;
        }
      }

      __break(1u);
LABEL_274:
    }
  }

  sub_1E47ABE98(1, *(v95 + 4), &v246);
  v156 = v249;
  v157 = v246;
  v158 = v247;
  j = v249;
  if (v247 != v246)
  {
    v159 = v248;
    v160 = v249 & 0xFFFFFFFFFFFFFF8;
    v161 = v249 >> 62;
    if (v249 >> 62)
    {
      v162 = sub_1E4878F0C();
    }

    else
    {
      v162 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v163 = v158;
    while (1)
    {
      v164 = v163 - 1;
      if (__OFSUB__(v163, 1))
      {
        break;
      }

      if (v162 == v163)
      {
        if (v161)
        {
          v159 = sub_1E4878F0C();
        }

        else
        {
          v159 = *(v160 + 16);
        }
      }

      v84 = __OFSUB__(v159--, 1);
      if (v84)
      {
        goto LABEL_370;
      }

      if (v164 < 0 || v164 < v157 || v164 >= v158)
      {
        goto LABEL_371;
      }

      if (v161)
      {
        v165 = sub_1E4878F0C();
      }

      else
      {
        v165 = *(v160 + 16);
      }

      if (v164 >= v165)
      {
        goto LABEL_372;
      }

      if ((v156 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6919650](v164, j);
        swift_unknownObjectRelease();
      }

      else if (v164 >= *(v160 + 16))
      {
        goto LABEL_375;
      }

      if (sub_1E47B96D8(v159, &v245, a7))
      {
        goto LABEL_377;
      }

      v163 = v164;
      if (v164 == v157)
      {
        goto LABEL_297;
      }
    }

LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
LABEL_371:
    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:

    goto LABEL_222;
  }

LABEL_379:

LABEL_297:

  sub_1E47ABE98(1, *(v235 + 4), &v250);
  v218 = v253;
  v229 = v250;
  if (v251 != v250)
  {
    v31 = v251;
    v75 = v252;
    v222 = v218 >> 62;
    v219 = v218 & 0xFFFFFFFFFFFFFF8;
    if (v218 >> 62)
    {
      v221 = sub_1E4878F0C();
    }

    else
    {
      v221 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v218;
    if (v218 >= 0)
    {
      v166 = v219;
    }

    v217 = v166;

    i = v221;
    while (1)
    {
      if (__OFSUB__(v31, 1))
      {
        goto LABEL_384;
      }

      if (v31 == i)
      {
        if (v222)
        {
          v75 = sub_1E4878F0C();
        }

        else
        {
          v75 = *(v219 + 16);
        }
      }

      v84 = __OFSUB__(v75--, 1);
      if (v84)
      {
        break;
      }

      v230 = --v31;
      v167 = sub_1E47B52D0(v31, v75);
      v169 = v168;
      if (sub_1E47B7960(v167, &v245, 0, 1, 0, a7))
      {
        goto LABEL_374;
      }

      v170 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v237 = v169;
      v171 = *(v169 + v170);
      v172 = *(v171 + 16);

      if (!v172)
      {
        goto LABEL_313;
      }

      v173 = 0;
      v174 = v171 + 32;
      while (1)
      {
        if (v173 >= *(v171 + 16))
        {
          __break(1u);
          goto LABEL_379;
        }

        sub_1E47A1524(v174, &v242);
        sub_1E47B488C(&v242, v241);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        ++v173;
        v174 += 40;
        if (v172 == v173)
        {
          goto LABEL_313;
        }
      }

      v225 = v31;
      v226 = v75;

      swift_beginAccess();
      sub_1E47AC06C(v173, &v242);
      __swift_destroy_boxed_opaque_existential_1(&v242);
      swift_endAccess();
      v7 = v235[5];
      v238 = sub_1E47AFE3C();
      v228 = v238 >> 62;
      if (v238 >> 62)
      {
        j = sub_1E4878F0C();
        if (j)
        {
          goto LABEL_330;
        }
      }

      else
      {
        j = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (j)
        {
LABEL_330:
          v175 = 0;
          v239 = v238 & 0xC000000000000001;
          v236 = v238 & 0xFFFFFFFFFFFFFF8;
          v234 = v238 + 32;
          while (1)
          {
            if (v239)
            {
              v176 = MEMORY[0x1E6919650](v175, v238);
            }

            else
            {
              if (v175 >= *(v236 + 16))
              {
                goto LABEL_383;
              }

              v176 = *(v234 + 8 * v175);
            }

            v84 = __OFADD__(v175++, 1);
            if (v84)
            {
              break;
            }

            v177 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            swift_beginAccess();
            v178 = *(v176 + v177);
            v179 = *(v178 + 16);
            if (v179)
            {
              v180 = v178 + 32;
              v181 = *(v176 + v177);

              v182 = 0;
              v183 = 0.0;
              do
              {
                sub_1E47A1524(v180, &v242);
                v186 = v243;
                v187 = v244;
                __swift_project_boxed_opaque_existential_0(&v242, v243);
                if ((*(v187 + 16))(v186, v187) > 0.0)
                {
                  v84 = __OFADD__(v182++, 1);
                  if (v84)
                  {
                    goto LABEL_376;
                  }
                }

                v184 = v243;
                v185 = v244;
                __swift_project_boxed_opaque_existential_0(&v242, v243);
                v183 = v183 + (*(v185 + 16))(v184, v185);
                __swift_destroy_boxed_opaque_existential_1(&v242);
                v180 += 40;
                --v179;
              }

              while (v179);
            }

            else
            {
              v182 = 0;
              v183 = 0.0;
            }

            if (__OFSUB__(v182, 1))
            {
              goto LABEL_382;
            }

            v188 = *(v176 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v7 = v7 + v183 + v188 * ((v182 - 1) & ~((v182 - 1) >> 63));
            if (v175 == j)
            {
              goto LABEL_347;
            }
          }

          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
          break;
        }
      }

LABEL_347:
      if (v228)
      {
        v189 = sub_1E4878F0C();
      }

      else
      {
        v189 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v189, 1))
      {
        goto LABEL_386;
      }

      v31 = v225;
      v75 = v226;
      i = v221;
      if (v7 + v235[7] * ((v189 - 1) & ~((v189 - 1) >> 63)) <= a7)
      {
LABEL_377:

        goto LABEL_222;
      }

LABEL_314:
      if (v230 == v229)
      {
        goto LABEL_388;
      }
    }

    __break(1u);
LABEL_386:
    __break(1u);
  }

LABEL_388:

  if (v220 - 10 >= 7)
  {
LABEL_395:

LABEL_396:
    if ((sub_1E47B96D8(0, &v245, a7) & 1) == 0)
    {
      sub_1E47B7960(0, &v245, 1, 1, 0, a7);
    }

LABEL_223:
    v131 = sub_1E47AFE3C();

    v223(v231, v232);
    v132 = *(v235 + 4);
    *(v235 + 4) = v131;
    v133 = v235;

    return v133;
  }

  v193 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  v194 = v227;
  swift_beginAccess();
  v195 = *(v194 + v193);
  v196 = *(v195 + 16);

  if (!v196)
  {
LABEL_394:

    goto LABEL_395;
  }

  v197 = 0;
  v198 = v195 + 32;
  while (1)
  {
    if (v197 >= *(v195 + 16))
    {
LABEL_424:
      __break(1u);
LABEL_425:
      sub_1E487903C();
      __break(1u);
      goto LABEL_426;
    }

    sub_1E47A1524(v198, &v242);
    sub_1E47B488C(&v242, v241);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v197;
    v198 += 40;
    if (v196 == v197)
    {
      goto LABEL_394;
    }
  }

  swift_beginAccess();
  sub_1E47AC06C(v197, &v242);
  __swift_destroy_boxed_opaque_existential_1(&v242);
  swift_endAccess();
  v7 = v235[5];
  v238 = sub_1E47AFE3C();
  v234 = v238 >> 62;
  if (v238 >> 62)
  {
    goto LABEL_429;
  }

  for (j = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1E4878F0C())
  {
    v199 = 0;
    v239 = v238 & 0xC000000000000001;
    v236 = v238 + 32;
    v237 = (v238 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v239)
      {
        v200 = MEMORY[0x1E6919650](v199, v238);
      }

      else
      {
        if (v199 >= v237[2])
        {
          goto LABEL_428;
        }

        v200 = *(v236 + 8 * v199);
      }

      v84 = __OFADD__(v199++, 1);
      if (v84)
      {
        break;
      }

      v201 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v202 = *(v200 + v201);
      v203 = *(v202 + 16);
      if (v203)
      {
        v204 = v202 + 32;
        v205 = *(v200 + v201);

        v206 = 0;
        v207 = 0.0;
        do
        {
          sub_1E47A1524(v204, &v242);
          v210 = v243;
          v211 = v244;
          __swift_project_boxed_opaque_existential_0(&v242, v243);
          if ((*(v211 + 16))(v210, v211) > 0.0)
          {
            v84 = __OFADD__(v206++, 1);
            if (v84)
            {
              __break(1u);
              goto LABEL_424;
            }
          }

          v208 = v243;
          v209 = v244;
          __swift_project_boxed_opaque_existential_0(&v242, v243);
          v207 = v207 + (*(v209 + 16))(v208, v209);
          __swift_destroy_boxed_opaque_existential_1(&v242);
          v204 += 40;
          --v203;
        }

        while (v203);
      }

      else
      {
        v206 = 0;
        v207 = 0.0;
      }

      if (__OFSUB__(v206, 1))
      {
        goto LABEL_427;
      }

      v212 = *(v200 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v7 = v7 + v207 + v212 * ((v206 - 1) & ~((v206 - 1) >> 63));
      if (v199 == j)
      {
        goto LABEL_417;
      }
    }

LABEL_426:
    __break(1u);
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    ;
  }

LABEL_417:
  if (v234)
  {
    v213 = sub_1E4878F0C();
  }

  else
  {
    v213 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!__OFSUB__(v213, 1))
  {
    if (v7 + v235[7] * ((v213 - 1) & ~((v213 - 1) >> 63)) > a7)
    {
      goto LABEL_396;
    }

    goto LABEL_223;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WideXMoreView()
{
  result = qword_1EE2B3D08;
  if (!qword_1EE2B3D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47BBE98()
{
  sub_1E47BBFDC(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E47BBFDC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      sub_1E47BBFDC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E47BBFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47BC05C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);

  if ((v7 & 1) == 0)
  {
    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1E47BC19C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideXMoreView();
  sub_1E4773850(v1 + *(v12 + 24), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47BC3A4()
{
  v19 = type metadata accessor for Event();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v19);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v0;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      sub_1E47BD004(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v7[*(v19 + 56)];

      if ((v13 & 0xFE) == 6)
      {
        sub_1E4770850(v7, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v10 + 16) + 1, 1);
          v10 = v20;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1E4858038(v15 > 1, v16 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v16 + 1;
        result = sub_1E4770850(v18, v10 + v11 + v16 * v12);
      }

      else
      {
        result = sub_1E47710AC(v7);
      }

      if (v17 == ++v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E47BC600()
{
  v1 = *(*v0 + 16);
  v2 = *(sub_1E47BC3A4() + 16);

  v3 = *(sub_1E47BC3A4() + 16);

  v4 = v1 - v2;
  if (v1 != v2 || v3 == 0)
  {
    v6 = __OFADD__(v4, v3);
    v3 += v4;
    if (v6)
    {
      __break(1u);
    }

    else if (qword_1EE2B4848 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1E487A7E0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v3;
  v10 = sub_1E4878BAC();

  return v10;
}

uint64_t sub_1E47BC7EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1E47BC05C() + 72);

  *a1 = sub_1E4877F6C();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C560, &qword_1E487D9A8);
  sub_1E47BC910(v1, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_1E487815C();
  v5 = *(v1 + *(type metadata accessor for WideXMoreView() + 32));
  sub_1E4877B0C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C568, &qword_1E487D9B0) + 36);
  *v14 = v3;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  LOBYTE(v3) = sub_1E487813C();
  v15 = *(sub_1E47BC05C() + 48);

  sub_1E4877B0C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C570, &qword_1E487D9B8);
  v25 = a1 + *(result + 36);
  *v25 = v3;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1E47BC910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1E4877B3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - v12;
  sub_1E4878D2C();
  v42[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(sub_1E47BC05C() + 104);

  *v13 = sub_1E4877F6C();
  *(v13 + 1) = v14;
  v13[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0) + 44);
  v16 = *a1;
  sub_1E47BC19C(v7);
  v17 = sub_1E486B590(v16, 5, v7);
  (*(v4 + 8))(v7, v3);
  v45 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E47BCF54(qword_1EE2B58D8, type metadata accessor for ColorBarView);
  sub_1E47BCF54(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling);
  sub_1E487886C();

  v45 = sub_1E47BC600();
  v46 = v18;
  sub_1E477A374();
  v19 = sub_1E487848C();
  v21 = v20;
  v23 = v22;
  sub_1E48786FC();
  v24 = sub_1E48783FC();
  v26 = v25;
  v28 = v27;
  v42[0] = v13;

  sub_1E477A3C8(v19, v21, v23 & 1);

  v29 = *(a1 + *(type metadata accessor for WideXMoreView() + 28));
  v30 = sub_1E487842C();
  v32 = v31;
  LOBYTE(v21) = v33;
  v35 = v34;
  sub_1E477A3C8(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v37 = v42[0];
  v38 = v44;
  sub_1E4773850(v42[0], v44, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v39 = v43;
  sub_1E4773850(v38, v43, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C578, &qword_1E487D9F0) + 48);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v21 & 1;
  *(v40 + 24) = v35;
  *(v40 + 32) = KeyPath;
  *(v40 + 40) = 1;
  *(v40 + 48) = 0;
  sub_1E478B8E0(v30, v32, v21 & 1);

  sub_1E47BCF9C(v37);
  sub_1E477A3C8(v30, v32, v21 & 1);

  sub_1E47BCF9C(v38);
}

uint64_t sub_1E47BCE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47BD004(a1, a2, type metadata accessor for ColorBarView.Styling);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for ColorBarView(0);
  *(a2 + *(v5 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();

  v8 = a2 + *(v5 + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1E47BCF54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47BCF9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47BD004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47BD09C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E47BD120()
{
  result = qword_1EE2B1478;
  if (!qword_1EE2B1478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C580, &qword_1E487DA50);
    sub_1E4773680(&qword_1EE2B0F78, &qword_1ECF7C588, qword_1E487DA58);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1478);
  }

  return result;
}

uint64_t type metadata accessor for WideEventDetailsView()
{
  result = qword_1EE2B2778;
  if (!qword_1EE2B2778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47BD24C()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CellDisplayContext(319);
    if (v1 <= 0x3F)
    {
      sub_1E47BD3A0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v2 <= 0x3F)
      {
        sub_1E47BD3A0(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v3 <= 0x3F)
        {
          sub_1E47BD3A0(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v4 <= 0x3F)
          {
            sub_1E47BD3A0(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
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

void sub_1E47BD3A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E47BD410@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideEventDetailsView();
  sub_1E4773850(v1 + *(v12 + 24), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47BD618@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideEventDetailsView();
  sub_1E4773850(v1 + *(v12 + 28), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47BD820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideEventDetailsView();
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47BDA28()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideEventDetailsView() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E47BDB78()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideEventDetailsView() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 136);

  return v10;
}

uint64_t sub_1E47BDCDC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideEventDetailsView() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 128);

  return v10;
}

void sub_1E47BDE40(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v59 - v6;
  v60 = sub_1E487757C();
  v7 = *(v60 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v60);
  isEscapingClosureAtFileLocation = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487720C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487753C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - v20;
  sub_1E47BD410(&v59 - v20);
  v22 = type metadata accessor for Event();
  v24 = *(v22 + 20);
  v23 = *(v22 + 24);
  v64 = a1;
  v61 = v23;
  v25 = sub_1E48774CC();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v26 = v28;
  v28(v21, v14);
  if ((v25 & 1) == 0)
  {
LABEL_5:
    v59 = v24;
    v38 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E47BD410(v21);
    v39 = sub_1E487748C();
    v26(v21, v14);
    [v38 setCalendar_];

    sub_1E47BD410(v21);
    sub_1E487750C();
    v26(v21, v14);
    v40 = sub_1E487756C();
    (v7[1])(isEscapingClosureAtFileLocation, v60);
    [v38 setTimeZone_];

    sub_1E47BD410(v19);
    v41 = v62;
    sub_1E48774EC();
    v26(v19, v14);
    v42 = sub_1E487744C();
    v43 = *(v42 - 8);
    v44 = 0;
    if ((*(v43 + 48))(v41, 1, v42) != 1)
    {
      v44 = sub_1E48773DC();
      (*(v43 + 8))(v41, v42);
    }

    [v38 setLocale_];

    v45 = sub_1E4878B9C();
    [v38 setLocalizedDateFormatFromTemplate_];

    goto LABEL_10;
  }

  v59 = v26;
  v60 = v27;
  v62 = v14;
  sub_1E47BD410(v21);
  v29 = *(sub_1E47BDA28() + 136);

  v26 = sub_1E48781CC();

  v30 = objc_opt_self();
  if (v63)
  {
    v31 = sub_1E48772BC();
    v32 = sub_1E487748C();
    v33 = [v30 timeAttributedTextWithDate:v31 calendar:v32 font:0 options:16];

    v34 = [v33 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v35 = v66;
    sub_1E48771AC();
    aBlock = v26;
    sub_1E47C4180();

    sub_1E48771BC();
    v36 = *MEMORY[0x1E6993360];
    v24 = [v33 length];
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v26;
    v19 = swift_allocObject();
    *(v19 + 2) = sub_1E47C43D8;
    *(v19 + 3) = v37;
    v71 = sub_1E47C43DC;
    v72 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1E48373C0;
    v70 = &block_descriptor_70;
    v7 = _Block_copy(&aBlock);

    [v33 enumerateAttribute:v36 inRange:0 options:v24 usingBlock:{0, v7}];

    _Block_release(v7);

    v59(v21, v62);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  v46 = sub_1E48772BC();
  v47 = sub_1E487748C();
  v48 = [v30 timeAttributedTextWithDate:v46 calendar:v47 font:0 options:16];

  v49 = [v48 string];
  sub_1E4878BDC();

  sub_1E48771FC();
  v50 = v66;
  sub_1E48771AC();
  aBlock = v26;
  sub_1E47C4180();

  sub_1E48771BC();
  v51 = *MEMORY[0x1E6993360];
  v38 = [v48 length];
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v26;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1E47C43D8;
  *(v53 + 24) = v52;
  v71 = sub_1E47C43DC;
  v72 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1E48373C0;
  v70 = &block_descriptor_81;
  v54 = _Block_copy(&aBlock);

  [v48 enumerateAttribute:v51 inRange:0 options:v38 usingBlock:{0, v54}];

  _Block_release(v54);

  v59(v21, v62);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if ((v48 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v55 = sub_1E48772BC();
  v56 = [v38 stringFromDate_];

  sub_1E4878BDC();
  sub_1E48771FC();
  sub_1E48771AC();
  v57 = *(sub_1E47BDA28() + 136);

  v58 = sub_1E48781CC();

  aBlock = v58;
  sub_1E47C4180();
  sub_1E48771BC();
}

uint64_t sub_1E47BE840@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_1E487720C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CellDisplayContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487732C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  v24 = type metadata accessor for Event();
  v25 = -*(v1 + *(v24 + 28));
  v26 = v1 + *(v24 + 20);
  v76 = v23;
  sub_1E48772AC();
  v27 = type metadata accessor for WideEventDetailsView();
  sub_1E47C41FC(v2 + *(v27 + 20), v15, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = v17;
    v71 = v16;
    v72 = v11;
    sub_1E47BD410(v11);
    v28 = *(sub_1E47BDA28() + 136);

    v29 = sub_1E48781CC();

    v30 = objc_opt_self();
    v31 = sub_1E48772BC();
    v32 = sub_1E487748C();
    v33 = [v30 timeAttributedTextWithDate:v31 calendar:v32 font:0 options:16];

    v34 = [v33 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v35 = v73;
    sub_1E48771AC();
    aBlock = v29;
    sub_1E47C4180();

    sub_1E48771BC();
    v36 = *MEMORY[0x1E6993360];
    v37 = [v33 length];
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = v29;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1E47C41D4;
    *(v39 + 24) = v38;
    v81 = sub_1E47C41DC;
    v82 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1E48373C0;
    v80 = &block_descriptor_0;
    v40 = _Block_copy(&aBlock);

    [v33 enumerateAttribute:v36 inRange:0 options:v37 usingBlock:{0, v40}];

    _Block_release(v40);

    (*(v75 + 8))(v72, v74);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return (*(v70 + 8))(v76, v71);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v69 = v6;
  v43 = v73;
  (*(v17 + 32))(v21, v15, v16);
  sub_1E47BD410(v11);
  v44 = sub_1E48774CC();
  v45 = v16;
  v47 = v75 + 8;
  v46 = *(v75 + 8);
  v46(v11, v74);
  v50 = *(v17 + 8);
  v48 = v17 + 8;
  v49 = v50;
  v50(v21, v45);
  if (v44)
  {
    v68 = v49;
    v70 = v48;
    v71 = v45;
    v72 = v11;
    sub_1E47BD410(v11);
    v51 = sub_1E47BDA28();
    v75 = v47;
    v52 = *(v51 + 136);

    v53 = sub_1E48781CC();

    v54 = objc_opt_self();
    v55 = sub_1E48772BC();
    v56 = sub_1E487748C();
    v57 = [v54 timeAttributedTextWithDate:v55 calendar:v56 font:0 options:16];

    v58 = [v57 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v59 = v43;
    sub_1E48771AC();
    aBlock = v53;
    sub_1E47C4180();

    sub_1E48771BC();
    v60 = *MEMORY[0x1E6993360];
    v61 = [v57 length];
    v62 = swift_allocObject();
    *(v62 + 16) = v59;
    *(v62 + 24) = v53;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1E47C43D8;
    *(v63 + 24) = v62;
    v81 = sub_1E47C43DC;
    v82 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1E48373C0;
    v80 = &block_descriptor_36;
    v64 = _Block_copy(&aBlock);

    [v57 enumerateAttribute:v60 inRange:0 options:v61 usingBlock:{0, v64}];

    _Block_release(v64);

    v46(v72, v74);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if ((v54 & 1) == 0)
    {
      return v68(v76, v71);
    }

    goto LABEL_10;
  }

  sub_1E487712C();
  v65 = *(sub_1E47BDA28() + 136);

  v66 = sub_1E48781CC();

  aBlock = v66;
  sub_1E47C4180();
  sub_1E48771BC();
  return v49(v76, v45);
}

void sub_1E47BF0F0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E487720C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E487753C();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CellDisplayContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487732C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WideEventDetailsView();
  sub_1E47C41FC(v2 + *(v21 + 20), v15, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E47BDE40(v2, 0, a1);
    return;
  }

  v41[0] = v7;
  v42 = a1;
  (*(v17 + 32))(v20, v15, v16);
  sub_1E47BD410(v11);
  v22 = type metadata accessor for Event();
  v23 = v22[5];
  v24 = sub_1E48774CC();
  v25 = *(v8 + 8);
  v41[1] = v8 + 8;
  v25(v11, v43);
  isEscapingClosureAtFileLocation = v25;
  if (v24)
  {
    (*(v17 + 8))(v20, v16);
    sub_1E47BD410(v11);
    v27 = *(sub_1E47BDA28() + 136);

    v16 = sub_1E48781CC();

    v28 = objc_opt_self();
    v29 = sub_1E48772BC();
    v30 = sub_1E487748C();
    v31 = [v28 timeAttributedTextWithDate:v29 calendar:v30 font:0 options:16];

    v32 = [v31 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v33 = v42;
    sub_1E48771AC();
    aBlock[0] = v16;
    sub_1E47C4180();

    sub_1E48771BC();
    v34 = *MEMORY[0x1E6993360];
    v20 = [v31 length];
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v16;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1E47C43D8;
    *(v36 + 24) = v35;
    aBlock[4] = sub_1E47C43DC;
    v45 = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E48373C0;
    aBlock[3] = &block_descriptor_92;
    v22 = _Block_copy(aBlock);
    v17 = v45;

    [v31 enumerateAttribute:v34 inRange:0 options:v20 usingBlock:{0, v22}];

    _Block_release(v22);

    (isEscapingClosureAtFileLocation)(v11, v43);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_1E47BD410(v11);
  v37 = v22[6];
  v38 = sub_1E48774CC();
  (isEscapingClosureAtFileLocation)(v11, v43);
  (*(v17 + 8))(v20, v16);
  if (v38)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_1E48771EC();
  sub_1E48771FC();
  sub_1E48771AC();
  v39 = *(sub_1E47BDA28() + 136);

  v40 = sub_1E48781CC();

  aBlock[0] = v40;
  sub_1E47C4180();
  sub_1E48771BC();
}

void sub_1E47BF804(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1E487720C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1E487753C();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CellDisplayContext(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Event();
  v20 = *(v19 + 20);
  v21 = *(v19 + 24);
  LODWORD(v48) = sub_1E48772EC();
  v22 = type metadata accessor for WideEventDetailsView();
  sub_1E47C41FC(v2 + *(v22 + 20), v13, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E47BDE40(v2, 1, v49);
    return;
  }

  v45 = v15;
  v46 = v14;
  (*(v15 + 32))(v18, v13, v14);
  sub_1E47BD410(v9);
  v23 = sub_1E487748C();
  v24 = *(v6 + 8);
  v24(v9, v50);
  v25 = sub_1E48772BC();
  v26 = sub_1E48772BC();
  v27 = [v23 cal:v25 isMultidayEventForUIWithStartDate:v26 endDate:?];

  v44[0] = v24;
  v44[1] = v6 + 8;
  if (v27)
  {
    sub_1E47BD410(v9);
    v28 = sub_1E48774CC();
    v24(v9, v50);
    v29 = v49;
    v30 = v9;
    if (!(v48 & 1 | ((v28 & 1) == 0)))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1E487712C();
    v42 = *(sub_1E47BDA28() + 136);

    v43 = sub_1E48781CC();

    aBlock[0] = v43;
    sub_1E47C4180();
    sub_1E48771BC();
    (*(v45 + 8))(v18, v46);
    return;
  }

  v29 = v49;
  v30 = v9;
  if (v48)
  {
    goto LABEL_8;
  }

LABEL_5:
  v48 = v18;
  sub_1E47BD410(v30);
  v31 = *(sub_1E47BDA28() + 136);

  v32 = sub_1E48781CC();

  v33 = objc_opt_self();
  v34 = sub_1E48772BC();
  v35 = sub_1E487748C();
  v36 = [v33 timeAttributedTextWithDate:v34 calendar:v35 font:0 options:16];

  v37 = [v36 string];
  sub_1E4878BDC();

  sub_1E48771FC();
  sub_1E48771AC();
  aBlock[0] = v32;
  sub_1E47C4180();

  sub_1E48771BC();
  v49 = *MEMORY[0x1E6993360];
  v38 = [v36 length];
  v39 = swift_allocObject();
  *(v39 + 16) = v29;
  *(v39 + 24) = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1E47C43D8;
  *(v40 + 24) = v39;
  aBlock[4] = sub_1E47C43DC;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E48373C0;
  aBlock[3] = &block_descriptor_59_0;
  v41 = _Block_copy(aBlock);

  [v36 enumerateAttribute:v49 inRange:0 options:v38 usingBlock:{0, v41}];

  _Block_release(v41);

  (v44[0])(v30, v50);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
  }

  else
  {
    (*(v45 + 8))(v48, v46);
  }
}

uint64_t sub_1E47BFE5C()
{
  v1 = sub_1E487753C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CellDisplayContext(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  v21 = *(type metadata accessor for WideEventDetailsView() + 20);
  v34 = v0;
  sub_1E47C41FC(v0 + v21, v8, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = 1;
  }

  else
  {
    v23 = v2;
    v24 = v1;
    v25 = *(v10 + 32);
    v25(v13, v8, v9);
    v25(v20, v13, v9);
    v1 = v24;
    v2 = v23;
    v22 = 0;
  }

  v26 = *(v10 + 56);
  v26(v20, v22, 1, v9);
  v27 = type metadata accessor for Event();
  v28 = *(v27 + 20);
  v29 = v34;
  (*(v10 + 16))(v18, v34 + *(v27 + 24), v9);
  v26(v18, 0, 1, v9);
  v30 = v33;
  sub_1E47BD410(v33);
  v31 = sub_1E486D148(v29 + v28, v18, v20, v30);
  (*(v2 + 8))(v30, v1);
  sub_1E47738B8(v18, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E47738B8(v20, &unk_1ECF7C880, &qword_1E4882710);
  return v31;
}

uint64_t sub_1E47C01C8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v39 - v4;
  v5 = sub_1E487725C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CellDisplayContext(0);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4877CCC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = v1;
  sub_1E47BD618(&v39 - v18);
  sub_1E4877CAC();
  sub_1E47C42C4(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v21 = sub_1E4878EAC();
  v22 = *(v13 + 8);
  v22(v17, v12);
  v22(v19, v12);
  if (v21)
  {
    return (*(v6 + 56))(v42, 1, 1, v5);
  }

  v24 = v6;
  v25 = v42;
  v26 = type metadata accessor for WideEventDetailsView();
  sub_1E47C41FC(v20 + *(v26 + 20), v11, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = v20;
  if (EnumCaseMultiPayload)
  {
    v29 = v41;
    if (EnumCaseMultiPayload != 1)
    {
      v37 = type metadata accessor for Event();
      sub_1E4773850(v28 + *(v37 + 44), v25, &unk_1ECF7B688, &qword_1E487C160);
      v38 = sub_1E487732C();
      return (*(*(v38 - 8) + 8))(v11, v38);
    }

    v30 = *v11;
  }

  else
  {
    v30 = v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C408, &qword_1E487DDD0) + 48)];
    v31 = sub_1E487732C();
    (*(*(v31 - 8) + 8))(v11, v31);
    v29 = v41;
  }

  v32 = type metadata accessor for Event();
  sub_1E4773850(v28 + *(v32 + 44), v29, &unk_1ECF7B688, &qword_1E487C160);
  v33 = v24;
  v34 = v5;
  if ((*(v24 + 48))(v29, 1, v5) == 1)
  {
    sub_1E47738B8(v29, &unk_1ECF7B688, &qword_1E487C160);
  }

  else
  {
    v35 = *(v24 + 32);
    v36 = v39;
    v35(v39, v29, v34);
    if (v30)
    {
      v35(v25, v36, v34);
      return (*(v33 + 56))(v25, 0, 1, v34);
    }

    (*(v33 + 8))(v36, v34);
  }

  return (*(v33 + 56))(v25, 1, 1, v34);
}

uint64_t sub_1E47C068C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877B3C();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event();
  v36 = sub_1E486DF20(*(v1 + *(v6 + 28)));
  v37 = v7;
  sub_1E477A374();
  v8 = sub_1E487848C();
  v10 = v9;
  v12 = v11;
  v13 = *(v1 + *(v6 + 56)) - 3;
  v14 = sub_1E48783EC();
  v16 = v15;
  LOBYTE(v6) = v17;
  sub_1E477A3C8(v8, v10, v12 & 1);

  sub_1E47BDB78();
  v18 = sub_1E487842C();
  v20 = v19;
  v22 = v21;
  v32[1] = v23;

  sub_1E477A3C8(v14, v16, v6 & 1);

  v24 = v33;
  sub_1E47BD820(v33);
  sub_1E476F0D0(v1, v24);
  sub_1E48785FC();
  (*(v34 + 8))(v24, v35);
  v25 = sub_1E48783FC();
  v27 = v26;
  LOBYTE(v6) = v28;
  v30 = v29;

  sub_1E477A3C8(v18, v20, v22 & 1);

  result = swift_getKeyPath();
  *a1 = v25;
  *(a1 + 8) = v27;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1E47C08DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v55 = type metadata accessor for CellDisplayContext(0);
  v3 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for EventBackgroundView();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5C0, &qword_1E487DB18);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5C8, &qword_1E487DB20);
  v18 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v20 = &v55 - v19;
  sub_1E4878D2C();
  v57 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_1E4877F5C();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5D0, &qword_1E487DB28);
  sub_1E47C0E80(a1, &v17[*(v21 + 44)]);
  v22 = *(sub_1E47BDA28() + 48);

  v23 = sub_1E487814C();
  sub_1E4877B0C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5D8, &qword_1E487DB30) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_1E487818C();
  v34 = *(sub_1E47BDA28() + 48);

  sub_1E4877B0C();
  v35 = &v17[*(v14 + 36)];
  *v35 = v33;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  sub_1E47C41FC(a1, v9, type metadata accessor for Event);
  v40 = type metadata accessor for Event();
  (*(*(v40 - 8) + 56))(v9, 0, 1, v40);
  v41 = type metadata accessor for WideEventDetailsView();
  sub_1E47C41FC(a1 + *(v41 + 20), v5, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v43 = sub_1E487732C();
    (*(*(v43 - 8) + 8))(v5, v43);
  }

  else
  {
    sub_1E47C4264(v5, type metadata accessor for CellDisplayContext);
  }

  v44 = EnumCaseMultiPayload != 2;
  KeyPath = swift_getKeyPath();
  *&v13[v10[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v13[v10[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v13[v10[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v46 = swift_getKeyPath();
  sub_1E477372C(v9, v13, &qword_1ECF7B950, &unk_1E487AE90);
  *&v13[v10[5]] = 3;
  v13[v10[6]] = v44;
  v47 = &v13[v10[7]];
  *v47 = KeyPath;
  v47[8] = 0;
  v48 = &v13[v10[11]];
  *v48 = v46;
  v48[8] = 0;
  v49 = sub_1E487889C();
  v51 = v50;
  v52 = &v20[*(v56 + 36)];
  sub_1E47C411C(v13, v52);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v53 = v49;
  v53[1] = v51;
  sub_1E477372C(v17, v20, &qword_1ECF7C5C0, &qword_1E487DB18);
  sub_1E477372C(v20, v58, &qword_1ECF7C5C8, &qword_1E487DB20);
}

uint64_t sub_1E47C0E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5E0, &qword_1E487DC40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - v7;
  v9 = sub_1E4877B3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ColorBarView(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  sub_1E4878D2C();
  v43 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47BD820(v13);
  v21 = sub_1E4770A7C(a1, v13);
  (*(v10 + 8))(v13, v9);
  v22 = &v20[*(type metadata accessor for ColorBarView.Styling(0) + 40)];
  sub_1E487735C();
  v20[48] = 1;
  *v20 = v21;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *(v20 + 4) = 0;
  *(v20 + 5) = 0;
  *(v20 + 3) = 3;
  *&v20[*(v14 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v24 = &v20[*(v14 + 24)];
  *v24 = KeyPath;
  v24[8] = 0;
  v25 = *(sub_1E47BDA28() + 72);

  sub_1E487889C();
  sub_1E4877BCC();
  v41 = v51;
  v42 = v49;
  v39 = v54;
  v40 = v53;
  v48 = 1;
  v47 = v50;
  v46 = v52;
  *v8 = sub_1E4877FBC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5E8, &qword_1E487DC48);
  sub_1E47C12E8(a1, &v8[*(v26 + 44)]);
  sub_1E47C41FC(v20, v18, type metadata accessor for ColorBarView);
  v27 = v48;
  v28 = v8;
  v29 = v18;
  v30 = v47;
  v31 = v46;
  v32 = v45;
  sub_1E4773850(v28, v45, &qword_1ECF7C5E0, &qword_1E487DC40);
  v33 = v44;
  sub_1E47C41FC(v29, v44, type metadata accessor for ColorBarView);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5F0, &qword_1E487DC50);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = v27;
  v36 = v41;
  *(v35 + 16) = v42;
  *(v35 + 24) = v30;
  *(v35 + 32) = v36;
  *(v35 + 40) = v31;
  v37 = v39;
  *(v35 + 48) = v40;
  *(v35 + 56) = v37;
  sub_1E4773850(v32, v33 + *(v34 + 64), &qword_1ECF7C5E0, &qword_1E487DC40);
  sub_1E47738B8(v28, &qword_1ECF7C5E0, &qword_1E487DC40);
  sub_1E47C4264(v20, type metadata accessor for ColorBarView);
  sub_1E47738B8(v32, &qword_1ECF7C5E0, &qword_1E487DC40);
  sub_1E47C4264(v29, type metadata accessor for ColorBarView);
}

uint64_t sub_1E47C12E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5F8, &qword_1E487DC58);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v46 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C600, &qword_1E487DC60);
  v53 = *(v55 - 8);
  v6 = *(v53 + 64);
  v7 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C608, &qword_1E487DC68);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = (&v46 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C610, &qword_1E487DC70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C618, &qword_1E487DC78);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C620, &qword_1E487DC80);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v57 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v46 - v28;
  sub_1E4878D2C();
  v49 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for Event() + 28)) <= 0.0)
  {
    (*(v20 + 56))(v29, 1, 1, v19);
  }

  else
  {
    *v18 = sub_1E4877F4C();
    *(v18 + 1) = 0;
    v18[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C640, &qword_1E487DCA0);
    sub_1E47C1984(a1, &v18[*(v30 + 44)]);
    sub_1E4773680(&qword_1ECF7C648, &qword_1ECF7C610, &qword_1E487DC70);
    sub_1E48784AC();
    sub_1E47738B8(v18, &qword_1ECF7C610, &qword_1E487DC70);
    (*(v20 + 32))(v29, v23, v19);
    (*(v20 + 56))(v29, 0, 1, v19);
  }

  v47 = v29;
  v31 = sub_1E4877F4C();
  v32 = v48;
  *v48 = v31;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C628, &qword_1E487DC88);
  sub_1E47C2470(a1, v32 + *(v33 + 44));
  *v5 = sub_1E4877F4C();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C630, &qword_1E487DC90);
  sub_1E47C2F24(a1, &v5[*(v34 + 44)]);
  sub_1E4773680(&qword_1EE2B1008, &qword_1ECF7C5F8, &qword_1E487DC58);
  v35 = v50;
  sub_1E48784AC();
  sub_1E47738B8(v5, &qword_1ECF7C5F8, &qword_1E487DC58);
  v36 = v57;
  sub_1E4773850(v29, v57, &qword_1ECF7C620, &qword_1E487DC80);
  v37 = v52;
  sub_1E4773850(v32, v52, &qword_1ECF7C608, &qword_1E487DC68);
  v39 = v53;
  v38 = v54;
  v40 = *(v53 + 16);
  v41 = v55;
  v40(v54, v35, v55);
  v42 = v56;
  sub_1E4773850(v36, v56, &qword_1ECF7C620, &qword_1E487DC80);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C638, &qword_1E487DC98);
  sub_1E4773850(v37, v42 + *(v43 + 48), &qword_1ECF7C608, &qword_1E487DC68);
  v40((v42 + *(v43 + 64)), v38, v41);
  v44 = *(v39 + 8);
  v44(v35, v41);
  sub_1E47738B8(v32, &qword_1ECF7C608, &qword_1E487DC68);
  sub_1E47738B8(v47, &qword_1ECF7C620, &qword_1E487DC80);
  v44(v38, v41);
  sub_1E47738B8(v37, &qword_1ECF7C608, &qword_1E487DC68);
  sub_1E47738B8(v57, &qword_1ECF7C620, &qword_1E487DC80);
}

uint64_t sub_1E47C1984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1E4877B3C();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487719C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C650, &qword_1E487DCA8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  sub_1E4878D2C();
  v46 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(sub_1E47BDA28() + 96);

  *v15 = sub_1E4877F6C();
  *(v15 + 1) = v16;
  v15[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C658, &qword_1E487DCB0);
  sub_1E47C1DA0(a1, &v15[*(v17 + 44)]);
  sub_1E47BE840(v9);
  v18 = sub_1E487847C();
  v20 = v19;
  v22 = v21;
  v23 = *(a1 + *(type metadata accessor for Event() + 56)) - 3;
  v24 = sub_1E48783EC();
  v26 = v25;
  LOBYTE(v16) = v27;
  sub_1E477A3C8(v18, v20, v22 & 1);

  v28 = v43;
  sub_1E47BD820(v43);
  sub_1E476F0D0(a1, v28);
  sub_1E48785FC();
  (*(v44 + 8))(v28, v45);
  v29 = sub_1E48783FC();
  v31 = v30;
  LODWORD(v45) = v32;
  v34 = v33;

  sub_1E477A3C8(v24, v26, v16 & 1);

  KeyPath = swift_getKeyPath();
  v36 = v47;
  sub_1E4773850(v15, v47, &qword_1ECF7C650, &qword_1E487DCA8);
  v37 = v48;
  sub_1E4773850(v36, v48, &qword_1ECF7C650, &qword_1E487DCA8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C660, &qword_1E487DCE8);
  v39 = v37 + *(v38 + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v37 + *(v38 + 64);
  *v40 = v29;
  *(v40 + 8) = v31;
  v41 = v45;
  LOBYTE(v37) = v45 & 1;
  *(v40 + 16) = v45 & 1;
  *(v40 + 24) = v34;
  *(v40 + 32) = KeyPath;
  *(v40 + 40) = 1;
  *(v40 + 48) = 0;
  sub_1E478B8E0(v29, v31, v41 & 1);

  sub_1E47738B8(v15, &qword_1ECF7C650, &qword_1E487DCA8);
  sub_1E477A3C8(v29, v31, v37);

  sub_1E47738B8(v36, &qword_1ECF7C650, &qword_1E487DCA8);
}

uint64_t sub_1E47C1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1E4877B3C();
  v68 = *(v3 - 8);
  v4 = *(v68 + 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  v9 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v11 = (&v60 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  sub_1E4878D2C();
  v69 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = type metadata accessor for Event();
  if (*(a1 + *(v25 + 28)) <= 0.0)
  {
    (*(v13 + 56))(v24, 1, 1, v12);
  }

  else
  {
    v26 = *(a1 + *(v25 + 32));
    v61 = v12;
    v62 = v3;
    v27 = sub_1E487874C();
    v28 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v30 = *MEMORY[0x1E69816D0];
    v31 = sub_1E487877C();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = swift_getKeyPath();
    *v11 = v27;
    v32 = sub_1E47BDB78();
    KeyPath = swift_getKeyPath();
    v34 = (v11 + *(v63 + 36));
    *v34 = KeyPath;
    v34[1] = v32;
    sub_1E47BD820(v8);
    v35 = sub_1E476F0D0(a1, v8);
    v36 = v68;
    v37 = v64;
    v38 = v62;
    (*(v68 + 2))(v64, v8, v62);
    v39 = (*(v36 + 88))(v37, v38);
    if (v39 != *MEMORY[0x1E697DBC0] && v39 != *MEMORY[0x1E697DBB0])
    {
      (*(v36 + 8))(v37, v38);
    }

    CUIKOccurrenceLeadingIconAlphaScale();
    v40 = [v35 cuik_colorWithAlphaScaled_];

    v41 = sub_1E48785FC();
    (*(v36 + 8))(v8, v38);
    v42 = swift_getKeyPath();
    v43 = v66;
    sub_1E477372C(v11, v66, &qword_1ECF7B918, &unk_1E487AA60);
    v44 = v61;
    v45 = (v43 + *(v61 + 36));
    *v45 = v42;
    v45[1] = v41;
    v46 = v43;
    v47 = v65;
    sub_1E477372C(v46, v65, &qword_1ECF7B920, &unk_1E487DCF0);
    sub_1E477372C(v47, v24, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v13 + 56))(v24, 0, 1, v44);
  }

  v48 = v24;
  v67 = v24;
  sub_1E47C068C(v71);
  v49 = v71[0];
  v50 = v71[1];
  v51 = v72;
  v52 = v73;
  v53 = v74;
  v54 = v75;
  v55 = v76;
  sub_1E4773850(v48, v22, &qword_1ECF7B9D0, &qword_1E487AC00);
  v56 = v22;
  v68 = v22;
  v57 = v70;
  sub_1E4773850(v56, v70, &qword_1ECF7B9D0, &qword_1E487AC00);
  v58 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C668, &qword_1E487DD00) + 48);
  *v58 = v49;
  *(v58 + 8) = v50;
  *(v58 + 16) = v51;
  *(v58 + 24) = v52;
  *(v58 + 32) = v53;
  *(v58 + 40) = v54;
  *(v58 + 48) = v55;
  sub_1E478B8E0(v49, v50, v51);

  sub_1E47738B8(v67, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E477A3C8(v49, v50, v51);

  sub_1E47738B8(v68, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47C2470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = sub_1E487719C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C680, &qword_1E4882590);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v98 - v10;
  v113 = sub_1E4877B3C();
  v114 = *(v113 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v103 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v107 = *(v108 - 8);
  v13 = *(v107 + 64);
  v14 = MEMORY[0x1EEE9AC00](v108);
  v106 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v98 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F0, &qword_1E487D078);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v98 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F8, &qword_1E487DDC0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v105 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v98 - v26;
  sub_1E4878D2C();
  v104 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(a1 + *(type metadata accessor for Event() + 56));
  v112 = v27;
  if (v28 == 1)
  {
    v29 = sub_1E487874C();
    v30 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v32 = *MEMORY[0x1E69816D0];
    v33 = sub_1E487877C();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    *v21 = v29;
    v34 = sub_1E47BDCDC();
    KeyPath = swift_getKeyPath();
    v36 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v36 = KeyPath;
    v36[1] = v34;
    v37 = sub_1E487864C();
    v38 = swift_getKeyPath();
    v39 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v39 = v38;
    v39[1] = v37;
    LOBYTE(v37) = sub_1E487818C();
    sub_1E4877B0C();
    v40 = v21 + *(v17 + 36);
    *v40 = v37;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_1E477372C(v21, v27, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v18 + 56))(v27, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v27, 1, 1, v17);
  }

  *&v121 = sub_1E47CC708();
  *(&v121 + 1) = v45;
  sub_1E477A374();
  v46 = sub_1E487848C();
  v48 = v47;
  v50 = v49;
  v101 = (v28 - 3) < 2;
  v51 = sub_1E48783EC();
  v53 = v52;
  v55 = v54;
  sub_1E477A3C8(v46, v48, v50 & 1);

  v56 = a1;
  sub_1E47BDCDC();
  v57 = sub_1E487842C();
  v99 = a1;
  v59 = v58;
  v61 = v60;

  sub_1E477A3C8(v51, v53, v55 & 1);

  v62 = v103;
  sub_1E47BD820(v103);
  sub_1E476EA20(v56, v62);
  v63 = *(v114 + 8);
  v114 += 8;
  v100 = v63;
  v63(v62, v113);
  v64 = sub_1E48783FC();
  v66 = v65;
  LOBYTE(v56) = v67;
  v69 = v68;

  sub_1E477A3C8(v57, v59, v61 & 1);

  v70 = swift_getKeyPath();
  *&v121 = v64;
  *(&v121 + 1) = v66;
  LOBYTE(v122) = v56 & 1;
  *(&v122 + 1) = v69;
  *&v123 = v70;
  *(&v123 + 1) = 1;
  LOBYTE(v124) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v64, v66, v56 & 1);

  v71 = v99;
  sub_1E47BF0F0(v102);
  v72 = sub_1E487847C();
  v74 = v73;
  v76 = v75;
  v77 = sub_1E48783EC();
  v79 = v78;
  LOBYTE(v66) = v80;
  v82 = v81;
  sub_1E477A3C8(v72, v74, v76 & 1);

  v83 = swift_getKeyPath();
  sub_1E47BD820(v62);
  v84 = sub_1E476EA20(v71, v62);
  v100(v62, v113);
  v85 = swift_getKeyPath();
  v127 = v66 & 1;
  v126 = 0;
  *&v116 = v77;
  *(&v116 + 1) = v79;
  LOBYTE(v117) = v66 & 1;
  *(&v117 + 1) = v82;
  *&v118 = v83;
  *(&v118 + 1) = 1;
  LOBYTE(v119) = 0;
  *(&v119 + 1) = v85;
  v120 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
  sub_1E479A240();
  v86 = v109;
  sub_1E487852C();
  v123 = v118;
  v124 = v119;
  v125 = v120;
  v121 = v116;
  v122 = v117;
  sub_1E47738B8(&v121, &qword_1ECF7C000, &unk_1E48825D0);
  v87 = v105;
  sub_1E4773850(v112, v105, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v88 = v107;
  v89 = *(v107 + 16);
  v90 = v106;
  v91 = v108;
  v89(v106, v115, v108);
  v92 = v110;
  sub_1E4773850(v86, v110, &qword_1ECF7C680, &qword_1E4882590);
  v93 = v111;
  sub_1E4773850(v87, v111, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C688, &qword_1E487DDC8);
  v89((v93 + v94[12]), v90, v91);
  v95 = v93 + v94[16];
  *v95 = 0;
  *(v95 + 8) = 1;
  sub_1E4773850(v92, v93 + v94[20], &qword_1ECF7C680, &qword_1E4882590);
  sub_1E47738B8(v86, &qword_1ECF7C680, &qword_1E4882590);
  v96 = *(v88 + 8);
  v96(v115, v91);
  sub_1E47738B8(v112, &qword_1ECF7C3F8, &qword_1E487DDC0);
  sub_1E47738B8(v92, &qword_1ECF7C680, &qword_1E4882590);
  v96(v90, v91);
  sub_1E47738B8(v87, &qword_1ECF7C3F8, &qword_1E487DDC0);
}

uint64_t sub_1E47C2F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1E487719C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C670, &qword_1E487F240);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v58 - v11;
  v12 = sub_1E4877B3C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LocationView();
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v63 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - v21;
  sub_1E4878D2C();
  v62 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47C41FC(a1, &v22[v17[5]], type metadata accessor for Event);
  v23 = sub_1E47BDB78();
  sub_1E47BD820(v16);
  sub_1E476F0D0(a1, v16);
  v24 = sub_1E48785FC();
  v25 = *(v13 + 8);
  v58 = v13 + 8;
  KeyPath = v25;
  v25(v16, v12);
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v26 = a1;
  v27 = v17[11];
  *&v22[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v22[v17[6]] = v23;
  v22[v17[7]] = 0;
  *&v22[v17[8]] = v24;
  v22[v17[9]] = 1;
  v22[v17[10]] = 1;
  sub_1E47BF804(v6);
  v28 = sub_1E487847C();
  v30 = v29;
  v32 = v31;
  v33 = *(v26 + *(type metadata accessor for Event() + 56)) - 3;
  v34 = sub_1E48783EC();
  v59 = v12;
  v36 = v35;
  v61 = v22;
  v38 = v37;
  sub_1E477A3C8(v28, v30, v32 & 1);

  sub_1E47BD820(v16);
  sub_1E476F0D0(v26, v16);
  sub_1E48785FC();
  KeyPath(v16, v59);
  v39 = sub_1E48783FC();
  v41 = v40;
  v59 = v40;
  LOBYTE(v28) = v42;
  v44 = v43;

  sub_1E477A3C8(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  v69 = v39;
  v70 = v41;
  LOBYTE(v26) = v28 & 1;
  v71 = v28 & 1;
  v72 = v44;
  v73 = KeyPath;
  v74 = 1;
  v75 = 0;
  v67 = sub_1E47BFE5C();
  v68 = v45;
  sub_1E477A374();
  v46 = sub_1E487848C();
  v48 = v47;
  LOBYTE(v36) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v50 = v64;
  sub_1E487856C();
  sub_1E477A3C8(v46, v48, v36 & 1);

  sub_1E477A3C8(v39, v59, v26);

  v51 = v61;
  v52 = v63;
  sub_1E47C41FC(v61, v63, type metadata accessor for LocationView);
  v53 = v65;
  sub_1E4773850(v50, v65, &qword_1ECF7C670, &qword_1E487F240);
  v54 = v66;
  sub_1E47C41FC(v52, v66, type metadata accessor for LocationView);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C678, &unk_1E487DDA0);
  v56 = v54 + *(v55 + 48);
  *v56 = 0;
  *(v56 + 8) = 1;
  sub_1E4773850(v53, v54 + *(v55 + 64), &qword_1ECF7C670, &qword_1E487F240);
  sub_1E47738B8(v50, &qword_1ECF7C670, &qword_1E487F240);
  sub_1E47C4264(v51, type metadata accessor for LocationView);
  sub_1E47738B8(v53, &qword_1ECF7C670, &qword_1E487F240);
  sub_1E47C4264(v52, type metadata accessor for LocationView);
}

uint64_t sub_1E47C353C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C590, &qword_1E487DAD8);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v38 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C598, &qword_1E487DAE0);
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v38 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5A0, &qword_1E487DAE8);
  v7 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v38 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5A8, &unk_1E487DAF0);
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_1E487725C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  sub_1E47C01C8(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1E47738B8(v17, &unk_1ECF7B688, &qword_1E487C160);
    *v4 = sub_1E4877FBC();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5B0, &qword_1E487DB00);
    sub_1E47C08DC(v1, &v4[*(v26 + 44)]);
    v27 = type metadata accessor for Event();
    v45 = sub_1E47CC9E8(*(v1 + *(v27 + 56)));
    v46 = v28;
    sub_1E477A374();
    v29 = sub_1E487848C();
    v31 = v30;
    v33 = v32;
    sub_1E47C3CB4();
    v34 = v40;
    sub_1E487857C();
    sub_1E477A3C8(v29, v31, v33 & 1);

    sub_1E47738B8(v4, &qword_1ECF7C590, &qword_1E487DAD8);
    sub_1E4773850(v34, v9, &qword_1ECF7C598, &qword_1E487DAE0);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1088, &qword_1ECF7C5A8, &unk_1E487DAF0);
    sub_1E47C3D6C();
    sub_1E487803C();
    return sub_1E47738B8(v34, &qword_1ECF7C598, &qword_1E487DAE0);
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    v36 = (*(v19 + 16))(v23, v25, v18);
    MEMORY[0x1EEE9AC00](v36);
    *(&v38 - 2) = v1;
    sub_1E47C3D6C();
    sub_1E487831C();
    v37 = v42;
    (*(v10 + 16))(v9, v13, v42);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1088, &qword_1ECF7C5A8, &unk_1E487DAF0);
    sub_1E487803C();
    (*(v10 + 8))(v13, v37);
    return (*(v19 + 8))(v25, v18);
  }
}

uint64_t sub_1E47C3AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C590, &qword_1E487DAD8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_1E4877FBC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5B0, &qword_1E487DB00);
  sub_1E47C08DC(a1, &v5[*(v6 + 44)]);
  v7 = type metadata accessor for Event();
  v15[2] = sub_1E47CC9E8(*(a1 + *(v7 + 56)));
  v15[3] = v8;
  sub_1E477A374();
  v9 = sub_1E487848C();
  v11 = v10;
  v13 = v12;
  sub_1E47C3CB4();
  sub_1E487857C();
  sub_1E477A3C8(v9, v11, v13 & 1);

  sub_1E47738B8(v5, &qword_1ECF7C590, &qword_1E487DAD8);
}

unint64_t sub_1E47C3CB4()
{
  result = qword_1EE2B1458;
  if (!qword_1EE2B1458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C590, &qword_1E487DAD8);
    sub_1E4773680(&qword_1EE2B0F18, &qword_1ECF7C5B8, &unk_1E487DB08);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1458);
  }

  return result;
}

unint64_t sub_1E47C3D6C()
{
  result = qword_1EE2B1340;
  if (!qword_1EE2B1340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C598, &qword_1E487DAE0);
    sub_1E47C3CB4();
    sub_1E47C42C4(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1340);
  }

  return result;
}

double sub_1E47C3E30(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Event();
  v8 = 0.0;
  if (*(v1 + *(v7 + 28)) > 0.0)
  {
    v9 = *(sub_1E47BDA28() + 136);

    v10 = sub_1E48781CC();

    sub_1E487201C(v10, a1);
    v12 = v11;

    v13 = sub_1E47BDB78();
    sub_1E487201C(v13, a1);
    v15 = v14;

    if (v12 > v15)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    v8 = v16 + 0.0;
  }

  v17 = *(sub_1E47BDA28() + 136);

  v18 = sub_1E48781CC();

  sub_1E487201C(v18, a1);
  v20 = v19;

  v21 = sub_1E47BDCDC();
  sub_1E487201C(v21, a1);
  v23 = v22;

  sub_1E4773850(v1 + *(v7 + 60), v6, &qword_1ECF7C048, &qword_1E487C5F0);
  v24 = type metadata accessor for Location();
  LODWORD(v17) = (*(*(v24 - 8) + 48))(v6, 1, v24);
  sub_1E47738B8(v6, &qword_1ECF7C048, &qword_1E487C5F0);
  if (v17 == 1)
  {
    v25 = sub_1E47BDB78();
    sub_1E487201C(v25, a1);
    v27 = v26;

    v28 = *(sub_1E47BDA28() + 136);

    v29 = sub_1E48781CC();

    sub_1E487201C(v29, a1);
    v31 = v30;

    if (v27 <= v31)
    {
      v27 = v31;
    }
  }

  else
  {
    v32 = *(sub_1E47BDA28() + 136);

    v33 = sub_1E48781CC();

    sub_1E487201C(v33, a1);
    v27 = v34;
  }

  if (v20 > v23)
  {
    v35 = v20;
  }

  else
  {
    v35 = v23;
  }

  v36 = v8 + v35 + v27;
  v37 = *(sub_1E47BDA28() + 48);

  return v36 + v37 + v37;
}

uint64_t sub_1E47C411C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventBackgroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E47C4180()
{
  result = qword_1EE2B46A8;
  if (!qword_1EE2B46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B46A8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E47C41FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47C4264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47C42C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E47C430C()
{
  result = qword_1EE2B11B8;
  if (!qword_1EE2B11B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C690, qword_1E487DDD8);
    sub_1E4773680(&qword_1EE2B1088, &qword_1ECF7C5A8, &unk_1E487DAF0);
    sub_1E47C3D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11B8);
  }

  return result;
}

uint64_t type metadata accessor for NarrowReminderView()
{
  result = qword_1EE2B3280;
  if (!qword_1EE2B3280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47C4468()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    sub_1E487732C();
    if (v1 <= 0x3F)
    {
      sub_1E47C463C(319, &qword_1EE2B1690, MEMORY[0x1E6985840]);
      if (v2 <= 0x3F)
      {
        sub_1E47C463C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v3 <= 0x3F)
        {
          sub_1E47C463C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v4 <= 0x3F)
          {
            sub_1E478305C();
            if (v5 <= 0x3F)
            {
              sub_1E47C463C(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
              if (v6 <= 0x3F)
              {
                sub_1E47C463C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
                if (v7 <= 0x3F)
                {
                  sub_1E47C463C(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
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

void sub_1E47C463C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E47C46AC()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v1 + 104);
  v6 = (v1 + 8);
  if (sub_1E47C4844())
  {
    sub_1E48782EC();
    (*v5)(v4, *MEMORY[0x1E6980EA0], v0);
    sub_1E48782CC();

    (*v6)(v4, v0);
    v7 = sub_1E48781FC();
  }

  else
  {
    sub_1E48781BC();
    (*v5)(v4, *MEMORY[0x1E6980EA0], v0);
    sub_1E48782CC();

    (*v6)(v4, v0);
    sub_1E487827C();
    v7 = sub_1E487829C();
  }

  v8 = v7;

  return v8;
}

uint64_t sub_1E47C4844()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NarrowReminderView() + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E47C499C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowReminderView();
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47C4BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowReminderView();
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47C4DAC()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487893C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1E47C499C(&v19 - v12);
  sub_1E487892C();
  v14 = sub_1E48788FC();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14)
  {
    sub_1E47C4BA4(v5);
    sub_1E476F0D0(v0, v5);
    v16 = sub_1E48785FC();
    (*(v2 + 8))(v5, v1);
    return v16;
  }

  else
  {
    sub_1E47C499C(v13);
    sub_1E487890C();
    v18 = sub_1E48788FC();
    v15(v11, v6);
    v15(v13, v6);
    if (v18)
    {
      return sub_1E48786FC();
    }

    else
    {
      return sub_1E48786EC();
    }
  }
}

uint64_t sub_1E47C4FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowReminderView();
  sub_1E4773850(v1 + *(v12 + 28), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47C51E8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NarrowReminderView() + 48));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E47C5338@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C710, &qword_1E487DEA8);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v64 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6C8, &qword_1E487DE78);
  v4 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v64 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C708, &qword_1E487DE98);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6F8, &qword_1E487DE90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v64 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6E8, &qword_1E487DE88);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6D8, &qword_1E487DE80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v64 - v17;
  v18 = sub_1E47C4844();
  v68 = v15;
  if (v18)
  {
    if (qword_1ECF7B658 != -1)
    {
      swift_once();
    }

    v19 = qword_1ECF7EA78;
  }

  else
  {
    v19 = sub_1E4877FBC();
  }

  *v8 = v19;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C718, &qword_1E487DEB0);
  sub_1E47C5AB0(v1, &v8[*(v20 + 44)]);
  v64 = type metadata accessor for Event();
  v75 = sub_1E47CC9E8(*(v1 + *(v64 + 56)));
  v76 = v21;
  sub_1E477A374();
  v22 = sub_1E487848C();
  v24 = v23;
  v26 = v25;
  sub_1E4773680(&qword_1ECF7C700, &qword_1ECF7C708, &qword_1E487DE98);
  sub_1E487857C();
  sub_1E477A3C8(v22, v24, v26 & 1);

  sub_1E47738B8(v8, &qword_1ECF7C708, &qword_1E487DE98);
  v27 = sub_1E487813C();
  if (sub_1E47C4844())
  {
    v28 = *(sub_1E47C51E8() + 48);
  }

  sub_1E4877B0C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1E477372C(v74, v14, &qword_1ECF7C6F8, &qword_1E487DE90);
  v37 = &v14[*(v67 + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_1E487819C();
  v39 = *(sub_1E47C51E8() + 48);

  sub_1E4877B0C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v14;
  v49 = v69;
  sub_1E477372C(v48, v69, &qword_1ECF7C6E8, &qword_1E487DE88);
  v50 = v49 + *(v68 + 36);
  *v50 = v38;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  if (sub_1E47C4844())
  {
    v51 = v65;
    v52 = &v65[*(v71 + 36)];
    sub_1E47707EC(v1, v52);
    (*(*(v64 - 8) + 56))(v52, 0, 1);
    KeyPath = swift_getKeyPath();
    v54 = swift_getKeyPath();
    v55 = type metadata accessor for EventBackgroundView();
    *(v52 + v55[8]) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v52 + v55[9]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v52 + v55[10]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v56 = swift_getKeyPath();
    *(v52 + v55[5]) = 3;
    *(v52 + v55[6]) = 1;
    v57 = v52 + v55[7];
    *v57 = KeyPath;
    *(v57 + 8) = 0;
    v58 = v52 + v55[11];
    *v58 = v56;
    *(v58 + 8) = 0;
    v59 = sub_1E487889C();
    v61 = v60;
    v62 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
    *v62 = v59;
    v62[1] = v61;
    sub_1E4773850(v49, v51, &qword_1ECF7C6D8, &qword_1E487DE80);
    sub_1E4773850(v51, v72, &qword_1ECF7C6C8, &qword_1E487DE78);
    swift_storeEnumTagMultiPayload();
    sub_1E47C7CA8();
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    sub_1E487803C();
    sub_1E47738B8(v51, &qword_1ECF7C6C8, &qword_1E487DE78);
  }

  else
  {
    sub_1E4773850(v49, v72, &qword_1ECF7C6D8, &qword_1E487DE80);
    swift_storeEnumTagMultiPayload();
    sub_1E47C7CA8();
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    sub_1E487803C();
  }

  return sub_1E47738B8(v49, &qword_1ECF7C6D8, &qword_1E487DE80);
}

uint64_t sub_1E47C5AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v128 = sub_1E48782AC();
  v126 = *(v128 - 8);
  v3 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C728, &qword_1E487DFB8);
  v5 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v116 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C730, &qword_1E487DFC0);
  v7 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C738, &qword_1E487DFC8);
  v141 = *(v9 - 8);
  v142 = v9;
  v10 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C740, &qword_1E487DFD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v145 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v143 = &v116 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C748, &qword_1E487DFD8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v144 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v150 = (&v116 - v21);
  v121 = sub_1E4877B3C();
  v120 = *(v121 - 8);
  v22 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1E487893C();
  v122 = *(v123 - 8);
  v24 = *(v122 + 64);
  v25 = MEMORY[0x1EEE9AC00](v123);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v116 - v28;
  v30 = sub_1E487732C();
  v147 = *(v30 - 8);
  v148 = v30;
  v31 = *(v147 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v138 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v135 = &v116 - v34;
  v35 = type metadata accessor for Event();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v137 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v134 = &v116 - v39;
  v40 = type metadata accessor for NarrowEventTimeText(0);
  v41 = *(*(v40 - 1) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v116 - v45;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C750, &qword_1E487DFE0);
  v47 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v49 = &v116 - v48;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C758, &qword_1E487DFE8);
  v50 = *(v136 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v124 = &v116 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C760, &qword_1E487DFF0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  v140 = &v116 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v149 = &v116 - v57;
  sub_1E4878D2C();
  v139 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_1E47C4844())
  {
    (*(v50 + 56))(v149, 1, 1, v136);
  }

  else
  {
    v118 = v44;
    sub_1E47707EC(a1, v134);
    v58 = type metadata accessor for NarrowReminderView();
    (*(v147 + 16))(v135, a1 + *(v58 + 20), v148);
    v117 = sub_1E47C46AC();
    sub_1E47C499C(v29);
    sub_1E487892C();
    v59 = sub_1E48788FC();
    v60 = *(v122 + 8);
    v61 = v27;
    v62 = v123;
    v60(v61, v123);
    v60(v29, v62);
    if (v59)
    {
      v63 = v119;
      sub_1E47C4BA4(v119);
      v64 = sub_1E476EA20(a1, v63);
      (*(v120 + 8))(v63, v121);
    }

    else
    {
      v64 = sub_1E48786EC();
    }

    *&v46[v40[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v46[v40[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    sub_1E47C828C(v134, v46, type metadata accessor for Event);
    (*(v147 + 32))(&v46[v40[5]], v135, v148);
    *&v46[v40[6]] = v117;
    *&v46[v40[7]] = v64;
    v65 = sub_1E487816C();
    sub_1E4877B0C();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    sub_1E47C828C(v46, v49, type metadata accessor for NarrowEventTimeText);
    v74 = &v49[*(v125 + 36)];
    *v74 = v65;
    *(v74 + 1) = v67;
    *(v74 + 2) = v69;
    *(v74 + 3) = v71;
    *(v74 + 4) = v73;
    v74[40] = 0;
    sub_1E47C82F4(&qword_1EE2B15C0, &qword_1ECF7C750, &qword_1E487DFE0);
    v75 = v124;
    sub_1E48784AC();
    sub_1E47738B8(v49, &qword_1ECF7C750, &qword_1E487DFE0);
    v76 = v149;
    v77 = v136;
    (*(v50 + 32))(v149, v75, v136);
    (*(v50 + 56))(v76, 0, 1, v77);
    v44 = v118;
  }

  v78 = sub_1E4877F6C();
  v79 = *(sub_1E47C51E8() + 72);

  v80 = v150;
  *v150 = v78;
  v80[1] = v79;
  *(v80 + 16) = 0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C768, &qword_1E487E030);
  sub_1E47C69EC(a1, v80 + *(v81 + 44));
  if (sub_1E47C4844())
  {
    sub_1E47707EC(a1, v137);
    v82 = type metadata accessor for NarrowReminderView();
    (*(v147 + 16))(v138, a1 + *(v82 + 20), v148);
    v83 = sub_1E47C4844();
    v84 = (v126 + 104);
    v85 = (v126 + 8);
    if (v83)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781BC();
    }

    v90 = v127;
    v91 = v128;
    (*v84)(v127, *MEMORY[0x1E6980EA0], v128);
    v92 = sub_1E48782CC();

    (*v85)(v90, v91);
    v93 = sub_1E47C4DAC();
    *&v44[v40[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v44[v40[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    sub_1E47C828C(v137, v44, type metadata accessor for Event);
    (*(v147 + 32))(&v44[v40[5]], v138, v148);
    *&v44[v40[6]] = v92;
    *&v44[v40[7]] = v93;
    if (qword_1ECF7B658 != -1)
    {
      swift_once();
    }

    v94 = qword_1ECF7EA78;
    v95 = v131;
    sub_1E47C828C(v44, v131, type metadata accessor for NarrowEventTimeText);
    v96 = (v95 + *(v129 + 36));
    *v96 = v94;
    v96[1] = sub_1E47C8558;
    v96[2] = 0;
    LOBYTE(v94) = sub_1E487815C();
    sub_1E4877B0C();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = v132;
    sub_1E477372C(v95, v132, &qword_1ECF7C728, &qword_1E487DFB8);
    v106 = v105 + *(v133 + 36);
    *v106 = v94;
    *(v106 + 8) = v98;
    *(v106 + 16) = v100;
    *(v106 + 24) = v102;
    *(v106 + 32) = v104;
    *(v106 + 40) = 0;
    sub_1E47C83E4();
    v107 = v130;
    sub_1E48784AC();
    sub_1E47738B8(v105, &qword_1ECF7C730, &qword_1E487DFC0);
    v89 = v141;
    v88 = v142;
    v87 = v143;
    (*(v141 + 32))(v143, v107, v142);
    v86 = 0;
  }

  else
  {
    v86 = 1;
    v88 = v142;
    v87 = v143;
    v89 = v141;
  }

  (*(v89 + 56))(v87, v86, 1, v88);
  v108 = v149;
  v109 = v140;
  sub_1E4773850(v149, v140, &qword_1ECF7C760, &qword_1E487DFF0);
  v110 = v150;
  v111 = v144;
  sub_1E4773850(v150, v144, &qword_1ECF7C748, &qword_1E487DFD8);
  v112 = v145;
  sub_1E4773850(v87, v145, &qword_1ECF7C740, &qword_1E487DFD0);
  v113 = v146;
  sub_1E4773850(v109, v146, &qword_1ECF7C760, &qword_1E487DFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C770, &unk_1E487E038);
  sub_1E4773850(v111, v113 + *(v114 + 48), &qword_1ECF7C748, &qword_1E487DFD8);
  sub_1E4773850(v112, v113 + *(v114 + 64), &qword_1ECF7C740, &qword_1E487DFD0);
  sub_1E47738B8(v87, &qword_1ECF7C740, &qword_1E487DFD0);
  sub_1E47738B8(v110, &qword_1ECF7C748, &qword_1E487DFD8);
  sub_1E47738B8(v108, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v112, &qword_1ECF7C740, &qword_1E487DFD0);
  sub_1E47738B8(v111, &qword_1ECF7C748, &qword_1E487DFD8);
  sub_1E47738B8(v109, &qword_1ECF7C760, &qword_1E487DFF0);
}

uint64_t sub_1E47C69EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v104 = sub_1E487893C();
  v103 = *(v104 - 8);
  v3 = *(v103 + 64);
  v4 = MEMORY[0x1EEE9AC00](v104);
  v102 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v110 = *(v7 - 8);
  v111 = v7;
  v8 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v97 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C788, &qword_1E487E048);
  v10 = *(*(v108 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v108);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v107 = &v97 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v97 - v15;
  v116 = sub_1E4877B3C();
  v118 = *(v116 - 8);
  v16 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1E48782AC();
  v99 = *(v100 - 8);
  v18 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v97 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v97 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v29 = *(*(v98 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v98);
  v106 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v97 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v97 - v35;
  sub_1E4878D2C();
  v105 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for Event() + 56)) == 6)
  {
    v36 = MEMORY[0x1E69932E0];
  }

  else
  {
    v36 = MEMORY[0x1E69932F8];
  }

  v37 = *v36;
  sub_1E4878BDC();
  v38 = sub_1E487874C();
  v39 = (v24 + *(v21 + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v41 = *MEMORY[0x1E69816D8];
  v42 = sub_1E487877C();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  *v24 = v38;
  if (sub_1E47C4844())
  {
    v43 = sub_1E47C46AC();
  }

  else
  {
    v44 = sub_1E47C4844();
    v45 = (v99 + 104);
    v46 = (v99 + 8);
    if (v44)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781BC();
    }

    v47 = v100;
    (*v45)(v20, *MEMORY[0x1E6980EA0], v100);
    v43 = sub_1E48782CC();

    (*v46)(v20, v47);
  }

  KeyPath = swift_getKeyPath();
  sub_1E477372C(v24, v28, &qword_1ECF7B910, &unk_1E487E050);
  v49 = &v28[*(v25 + 36)];
  *v49 = KeyPath;
  v49[1] = v43;
  v50 = v115;
  sub_1E47C4BA4(v115);
  v51 = sub_1E4770A7C(a1, v50);
  v52 = *(v118 + 8);
  v118 += 8;
  v97 = v52;
  v52(v50, v116);
  v53 = swift_getKeyPath();
  sub_1E477372C(v28, v34, &qword_1ECF7B918, &unk_1E487AA60);
  v54 = &v34[*(v98 + 36)];
  *v54 = v53;
  v54[1] = v51;
  sub_1E477372C(v34, v117, &qword_1ECF7B920, &unk_1E487DCF0);
  v119 = sub_1E47CC708();
  v120 = v55;
  sub_1E477A374();
  v56 = sub_1E487848C();
  v58 = v57;
  v60 = v59;
  if (sub_1E47C4844())
  {
    sub_1E47C46AC();
  }

  else
  {
    v61 = sub_1E47C4844();
    v62 = (v99 + 104);
    v63 = (v99 + 8);
    if (v61)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781BC();
    }

    v64 = v100;
    (*v62)(v20, *MEMORY[0x1E6980EA0], v100);
    sub_1E48782CC();

    (*v63)(v20, v64);
  }

  v65 = sub_1E487842C();
  v67 = v66;
  v69 = v68;

  sub_1E477A3C8(v56, v58, v60 & 1);

  v70 = v101;
  sub_1E47C499C(v101);
  v71 = v102;
  sub_1E487892C();
  v72 = sub_1E48788FC();
  v73 = *(v103 + 8);
  v74 = v71;
  v75 = v104;
  v73(v74, v104);
  v73(v70, v75);
  if (v72)
  {
    v76 = v115;
    sub_1E47C4BA4(v115);
    sub_1E476EA20(a1, v76);
    v97(v76, v116);
  }

  else
  {
    sub_1E48786EC();
  }

  v77 = sub_1E48783FC();
  v79 = v78;
  v81 = v80;
  v83 = v82;

  sub_1E477A3C8(v65, v67, v69 & 1);

  v84 = swift_getKeyPath();
  v119 = v77;
  v120 = v79;
  v81 &= 1u;
  v121 = v81;
  v122 = v83;
  v123 = v84;
  v124 = 1;
  v125 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v85 = v109;
  sub_1E487855C();
  sub_1E477A3C8(v77, v79, v81);

  if (qword_1ECF7B658 != -1)
  {
    swift_once();
  }

  v86 = qword_1ECF7EA78;
  v87 = v107;
  (*(v110 + 32))(v107, v85, v111);
  v88 = (v87 + *(v108 + 36));
  *v88 = v86;
  v88[1] = sub_1E47C8558;
  v88[2] = 0;
  v89 = v112;
  sub_1E477372C(v87, v112, &qword_1ECF7C788, &qword_1E487E048);
  v90 = v117;
  v91 = v106;
  sub_1E4773850(v117, v106, &qword_1ECF7B920, &unk_1E487DCF0);
  v92 = v113;
  sub_1E4773850(v89, v113, &qword_1ECF7C788, &qword_1E487E048);
  v93 = v114;
  sub_1E4773850(v91, v114, &qword_1ECF7B920, &unk_1E487DCF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C790, &unk_1E487E120);
  sub_1E4773850(v92, v93 + *(v94 + 48), &qword_1ECF7C788, &qword_1E487E048);
  v95 = v93 + *(v94 + 64);
  *v95 = 0;
  *(v95 + 8) = 0;
  sub_1E47738B8(v89, &qword_1ECF7C788, &qword_1E487E048);
  sub_1E47738B8(v90, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E47738B8(v92, &qword_1ECF7C788, &qword_1E487E048);
  sub_1E47738B8(v91, &qword_1ECF7B920, &unk_1E487DCF0);
}