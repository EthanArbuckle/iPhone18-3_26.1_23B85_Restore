uint64_t sub_1E48568CC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v23 = a5;
  a5(0, v15, 0);
  v16 = v28;
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = a3 + v24;
  v18 = *(v11 + 72);
  while (1)
  {
    v26(v17);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v23(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    sub_1E485910C(v14, v16 + v24 + v20 * v18, v25);
    v17 += v18;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t NextEventTimelineEntryProvider.placeholder(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  sub_1E4878A3C();
  v10 = (*(v3 + 88))(v9, v2);
  if (v10 == *MEMORY[0x1E6985820] || v10 == *MEMORY[0x1E6985830] || v10 == *MEMORY[0x1E6985808])
  {
    sub_1E4878A3C();
    v13 = sub_1E4856D30(v7);
    (*(v3 + 8))(v7, v2);
    type metadata accessor for FakeEvents();
    sub_1E4806788(a1);
    v14 = type metadata accessor for CalendarEventsTimelineEntry(0);
    result = sub_1E4806788(a1 + v14[5]);
    *(a1 + v14[6]) = v13;
    *(a1 + v14[7]) = 0;
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD00000000000001BLL, 0x80000001E48A64A0);
    sub_1E4878A3C();
    sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v15 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v15);

    (*(v3 + 8))(v7, v2);
    MEMORY[0x1E69192D0](0xD00000000000001CLL, 0x80000001E48A64C0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4856D30(uint64_t a1)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6985820])
  {
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x1E6985830])
  {
    type metadata accessor for FakeEvents();
    return sub_1E480446C();
  }

  if (v7 == *MEMORY[0x1E6985808])
  {
LABEL_5:
    type metadata accessor for FakeEvents();
    return sub_1E4806FA8();
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD00000000000001BLL, 0x80000001E48A64A0);
    sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v9 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v9);

    MEMORY[0x1E69192D0](0xD00000000000001CLL, 0x80000001E48A64C0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

id NextEventTimelineEntryProvider.getSnapshot(for:in:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v58 = a4;
  v59 = a3;
  *&v65 = a1;
  v5 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487894C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487732C();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v54[0] = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v54 - v17;
  v63 = *v4;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (!result)
  {
    goto LABEL_10;
  }

  v20 = result;
  sub_1E48772FC();

  v21 = [objc_opt_self() shared];
  v55 = [v21 stopTimeDemoModeActive];

  sub_1E4878A3C();
  v60 = *(v9 + 8);
  v60(v12, v8);
  v61 = sub_1E4878DEC();
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E487AC40;
  sub_1E4858B94(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
  v62 = v13;
  v23 = sub_1E48790CC();
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1E478B950();
  v28 = MEMORY[0x1E69E6530];
  v29 = MEMORY[0x1E69E65A8];
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  *(v22 + 96) = v28;
  *(v22 + 104) = v29;
  *(v22 + 64) = v27;
  *(v22 + 72) = 2;
  sub_1E4878A3C();
  sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840]);
  v30 = sub_1E48790CC();
  v32 = v31;
  v60(v12, v8);
  *(v22 + 136) = v26;
  *(v22 + 144) = v27;
  v60 = v27;
  *(v22 + 112) = v30;
  *(v22 + 120) = v32;
  sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
  v33 = sub_1E4878E4C();
  sub_1E4877AAC();

  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  v34 = v65;
  v35 = v63;
  sub_1E4858810(v18, v65, v63, type metadata accessor for NextEventComplicationConfigurationIntent, &off_1F5E7CA00, sub_1E4859174);
  v36 = [v34 mirrorCalendarApp];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 BOOLValue];
  }

  else
  {
    v38 = 0;
  }

  v39 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  v65 = xmmword_1E487A7E0;
  *(v42 + 16) = xmmword_1E487A7E0;
  v43 = v62;
  (*(v39 + 16))(v42 + v41, v18, v62);
  v44 = v35[8];

  v45 = sub_1E47A5614(v42, v44, 2, v38);

  swift_setDeallocating();
  v46 = *(v39 + 8);
  v46(v42 + v41, v43);
  result = swift_deallocClassInstance();
  if (!*(v45 + 16))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v47 = v57;
  sub_1E4858E18(v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v57, type metadata accessor for CalendarEventsTimelineEntry);

  if (v55)
  {
    v48 = v54[0];
    sub_1E487731C();
    (*(v39 + 40))(v47, v48, v43);
  }

  sub_1E4878DBC();
  v49 = swift_allocObject();
  *(v49 + 16) = v65;
  v50 = CalendarEventsTimelineEntry.description.getter();
  v51 = v60;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = v51;
  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  v53 = sub_1E4878E4C();
  sub_1E4877AAC();

  v59(v47);
  v46(v18, v43);
  return sub_1E4858E80(v47, type metadata accessor for CalendarEventsTimelineEntry);
}

id NextEventTimelineEntryProvider.getTimeline(for:in:completion:)(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v102 = a3;
  v108 = a2;
  v99 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC8, &unk_1E487BF70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v85 - v9;
  v107 = sub_1E487894C();
  v11 = *(v107 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v100 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - v15;
  v17 = sub_1E48789CC();
  v104 = *(v17 - 8);
  v105 = v17;
  v18 = *(v104 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v103 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v85 - v21;
  v110 = sub_1E487732C();
  v101 = *(v110 - 8);
  v23 = *(v101 + 64);
  v24 = MEMORY[0x1EEE9AC00](v110);
  v85 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v85 - v26;
  v28 = *v4;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v30 = result;
    v93 = v28;
    v98 = a4;
    v109 = v27;
    sub_1E48772FC();

    v31 = [objc_opt_self() shared];
    v32 = [v31 stopTimeDemoModeActive];

    sub_1E48789AC();
    v90 = v32;
    v96 = v7;
    v97 = v6;
    v94 = v22;
    v95 = v10;
    if (v32)
    {
      v33 = v22;
      v34 = v11;
      v35 = v103;
      sub_1E48789BC();
      v36 = v104;
      v37 = v22;
      v38 = v105;
      (*(v104 + 8))(v37, v105);
      (*(v36 + 32))(v33, v35, v38);
      v39 = 1;
    }

    else
    {
      v34 = v11;
      v39 = 20;
    }

    v106 = v39;
    sub_1E4878A3C();
    v40 = *(v34 + 8);
    v41 = v107;
    v40(v16, v107);
    v86 = sub_1E4878DEC();
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E487BC70;
    sub_1E4858B94(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
    v43 = sub_1E48790CC();
    v45 = v44;
    v46 = MEMORY[0x1E69E6158];
    *(v42 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1E478B950();
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    v48 = MEMORY[0x1E69E6530];
    v49 = MEMORY[0x1E69E65A8];
    *(v42 + 96) = MEMORY[0x1E69E6530];
    *(v42 + 104) = v49;
    v50 = v106;
    *(v42 + 64) = v47;
    *(v42 + 72) = v50;
    *(v42 + 136) = v48;
    *(v42 + 144) = v49;
    *(v42 + 112) = 2;
    sub_1E4878A3C();
    sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v51 = sub_1E48790CC();
    v53 = v52;
    v88 = v34 + 8;
    v87 = v40;
    v40(v16, v41);
    *(v42 + 176) = v46;
    *(v42 + 184) = v47;
    v92 = v47;
    *(v42 + 152) = v51;
    *(v42 + 160) = v53;
    v89 = sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
    v54 = sub_1E4878E4C();
    sub_1E4877AAC();
    v55 = v109;

    v56 = v100;
    sub_1E4878A3C();
    [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
    v57 = v99;
    v58 = v93;
    sub_1E4858810(v55, v99, v93, type metadata accessor for NextEventComplicationConfigurationIntent, &off_1F5E7CA00, sub_1E4859174);
    v59 = v58[7];

    v61 = sub_1E47A6300(v60, v55, v106);

    v62 = [v57 mirrorCalendarApp];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 BOOLValue];
    }

    else
    {
      v64 = 0;
    }

    v65 = v101;
    v66 = v58[8];

    v67 = sub_1E47A5614(v61, v66, 2, v64);

    v87(v56, v107);
    v68 = v110;
    if (v90)
    {
      v69 = v85;
      v70 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v70);
      *(&v85 - 2) = v69;
      v71 = sub_1E48568CC(sub_1E4858BDC, (&v85 - 4), v67, type metadata accessor for CalendarEventsTimelineEntry, sub_1E4858168, type metadata accessor for CalendarEventsTimelineEntry);

      (*(v65 + 8))(v69, v68);
      v67 = v71;
    }

    sub_1E4878DEC();
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1E487A7F0;
    v73 = *(v67 + 16);
    *(v72 + 56) = MEMORY[0x1E69E6530];
    *(v72 + 64) = MEMORY[0x1E69E65A8];
    *(v72 + 32) = v73;
    v74 = *(type metadata accessor for CalendarEventsTimelineEntry(0) - 8);
    v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);

    v76 = sub_1E4878E9C();
    v78 = v77;

    v79 = v92;
    *(v72 + 96) = MEMORY[0x1E69E6158];
    *(v72 + 104) = v79;
    *(v72 + 72) = v76;
    *(v72 + 80) = v78;
    v80 = sub_1E4878E4C();
    sub_1E4877AAC();

    v81 = v104;
    v82 = v94;
    v83 = v105;
    (*(v104 + 16))(v103, v94, v105);
    sub_1E4858B94(qword_1EE2B45D0, type metadata accessor for CalendarEventsTimelineEntry);
    v84 = v95;
    sub_1E4878A5C();
    v102(v84);
    (*(v96 + 8))(v84, v97);
    (*(v81 + 8))(v82, v83);
    return (*(v65 + 8))(v109, v110);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static NextEventTimelineEntryProvider.defaultConfiguration.getter()
{
  v0 = [objc_allocWithZone(type metadata accessor for NextEventComplicationConfigurationIntent()) init];
  sub_1E48493B4(0, &qword_1EE2B0D28, 0x1E696AD98);
  v1 = sub_1E4878E1C();
  [v0 setMirrorCalendarApp_];

  [v0 setCalendars_];
  return v0;
}

size_t sub_1E4858038(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
  *v3 = result;
  return result;
}

char *sub_1E485807C(char *a1, int64_t a2, char a3)
{
  result = sub_1E48582B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E485809C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7DB40, &qword_1E48836D8, type metadata accessor for ColorBarView.Styling);
  *v3 = result;
  return result;
}

size_t sub_1E48580E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7BED0, &qword_1E487BF80, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

size_t sub_1E4858124(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7D930, &unk_1E4882C40, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
  *v3 = result;
  return result;
}

size_t sub_1E4858168(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7DB38, &unk_1E48836C8, type metadata accessor for CalendarEventsTimelineEntry);
  *v3 = result;
  return result;
}

char *sub_1E48581AC(char *a1, int64_t a2, char a3)
{
  result = sub_1E48583EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E48581CC(char *a1, int64_t a2, char a3)
{
  result = sub_1E48584FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E48581EC(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7DB28, &unk_1E48836B0, type metadata accessor for CalendarDateTimelineEntry);
  *v3 = result;
  return result;
}

size_t sub_1E4858230(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7D3A0, &unk_1E4880E90, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  *v3 = result;
  return result;
}

size_t sub_1E4858274(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7D398, &qword_1E48836E0, MEMORY[0x1E6968848]);
  *v3 = result;
  return result;
}

char *sub_1E48582B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
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

char *sub_1E48583EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB48, &qword_1E48836E8);
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

char *sub_1E48584FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB30, &qword_1E48836C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1E4858600(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1E4858810(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(char *))
{
  v36 = a5;
  v37 = a6;
  v10 = sub_1E487753C();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  sub_1E48772AC();
  sub_1E4877A7C();
  sub_1E487745C();
  v22 = __swift_project_boxed_opaque_existential_0(a3 + 2, a3[5]);
  v23 = sub_1E4858ACC(v19, v21, a2, *v22, a4, v36);
  v41 = a1;

  v24 = sub_1E48560AC(v37, v40, v23);
  v25 = a3[7];
  a3[7] = v24;

  type metadata accessor for Utils();
  v26 = a3[7];

  v28 = sub_1E485B794(v27, v21);

  v29 = a3[8];
  a3[8] = v28;

  v30 = *(v23 + 16);

  v31 = a3[8];
  LOBYTE(v30) = v30 != *(a3[7] + 16);

  v32 = sub_1E486C514(v30, v19, v31);

  v33 = *(v15 + 8);
  v33(v19, v14);
  (*(v38 + 8))(v13, v39);
  v33(v21, v14);
  v34 = a3[8];
  a3[8] = v32;
}

uint64_t sub_1E4858ACC(void *a1, unint64_t a2, void *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v11 = *a4;
  v16[3] = a5(0);
  v16[4] = a6;
  v16[0] = a3;
  v12 = MEMORY[0x1E6919990](a3);
  sub_1E48451EC(a4, v16, a1, a2, &v15);
  objc_autoreleasePoolPop(v12);
  v13 = v15;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_1E4858B94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4858BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E4858E18(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  v5 = sub_1E487732C();
  return (*(*(v5 - 8) + 24))(a2, v4, v5);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for NextEventTimelineEntryProvider(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NextEventTimelineEntryProvider(uint64_t result, int a2, int a3)
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

uint64_t sub_1E4858E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4858E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4858EE0(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v9 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v21 = *(v9 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a5 >> 1;
  v26 = a4;
  v13 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1E48581CC(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v14 = v28;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v26 + v15) >= v25 || v15 >= v13)
      {
        goto LABEL_14;
      }

      sub_1E4858E18(v24 + *(v21 + 72) * (v26 + v15), v12, type metadata accessor for CalendarEventsTimelineEntry);
      v22(&v27, v12);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      sub_1E4858E80(v12, type metadata accessor for CalendarEventsTimelineEntry);
      v17 = v27;
      v28 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1E48581CC((v18 > 1), v19 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v17;
      ++v15;
      if (v16 == v13)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  sub_1E4858E80(v12, type metadata accessor for CalendarEventsTimelineEntry);

  __break(1u);
  return result;
}

uint64_t sub_1E485910C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4859194()
{
  v0 = sub_1E487861C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D0]);
  result = sub_1E487870C();
  qword_1EE2B3C70 = result;
  return result;
}

uint64_t sub_1E48592A4()
{
  v0 = sub_1E487861C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D0]);
  sub_1E487870C();
  v4 = sub_1E48786DC();

  qword_1EE2B3C58 = v4;
  return result;
}

uint64_t sub_1E48593B8(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t static PlatterStyling.textColor(from:)(void *a1)
{
  sub_1E477090C();
  v2 = a1;
  sub_1E48785FC();
  return sub_1E4878E0C();
}

uint64_t Collection<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v11 + 8);
  swift_getAssociatedTypeWitness();
  v20 = sub_1E4878A6C();
  (*(v7 + 16))(v10, v3, a1);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = &v20;
  v13 = sub_1E4878C6C();

  return v13;
}

void *sub_1E48595A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X8>)
{
  v214 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v202 = &v195[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v201 = &v195[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v204 = &v195[-v15];
  v207 = sub_1E487757C();
  v206 = *(v207 - 8);
  v16 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v205 = &v195[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1E487720C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v218 = &v195[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v221 = sub_1E487751C();
  v213 = *(v221 - 8);
  v21 = v213[8];
  MEMORY[0x1EEE9AC00](v221);
  v23 = &v195[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v195[-v26];
  v225 = sub_1E487732C();
  v222 = *(v225 - 8);
  v28 = *(v222 + 64);
  v29 = MEMORY[0x1EEE9AC00](v225);
  v203 = &v195[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v224 = &v195[-v32];
  MEMORY[0x1EEE9AC00](v31);
  v223 = &v195[-v33];
  v34 = type metadata accessor for Event();
  v226 = *(v34 - 8);
  v227 = v34;
  v35 = *(v226 + 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v195[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v195[-v40];
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v195[-v42];
  v44 = sub_1E487719C();
  v216 = *(v44 - 8);
  v217 = v44;
  v45 = *(v216 + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v211 = &v195[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v212 = &v195[-v48];
  v49 = type metadata accessor for DayEvents();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v219 = &v195[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v220 = a3;
  v52 = sub_1E485E54C(v219, a1, a2, a3);
  v54 = v53;
  result = 0;
  v56 = 0;
  v57 = v52;
  v58 = *(v52 + 16);
  v215 = v54;
  if ((v54 & 1) == 0)
  {
    if (qword_1EE2B4848 != -1)
    {
LABEL_58:
      swift_once();
    }

    result = sub_1E48771EC();
  }

  if (v58 != 1)
  {
    if (!v58)
    {

      v59 = v219[*(v49 + 28)];
      sub_1E487043C(v219, type metadata accessor for DayEvents);
      *a5 = v59;
      type metadata accessor for RectangularNextEventContentViewModel(0);
      return swift_storeEnumTagMultiPayload();
    }

    v23 = *(v57 + 2);
    if (v23)
    {
      v58 = v57;
      v200 = a1;
      v208 = result;
      v209 = v56;
      v210 = a5;
      a1 = &v57[(v226[80] + 32) & ~v226[80]];
      v85 = (v222 + 16);
      v222 += 8;
      v223 = v85;

      v43 = 1;
      do
      {
        a5 = v43;
        if (v23 == v43)
        {
          break;
        }

        sub_1E48703D4(&a1[*(v226 + 9) * v43], v41, type metadata accessor for Event);
        if (!*(v58 + 2))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        ++v43;
        v27 = v224;
        v86 = v225;
        (*v223)(v224, &a1[v227[6]], v225);
        v49 = sub_1E48772EC();
        v87 = v86;
        v58 = v57;
        (*v222)(v27, v87);
        sub_1E487043C(v41, type metadata accessor for Event);
      }

      while ((v49 & 1) != 0);

      result = sub_1E487748C();
      if (!*(v58 + 2))
      {
        goto LABEL_61;
      }

      v212 = v227[5];
      v199 = v58;
      v88 = *v223;
      v57 = v224;
      v89 = v225;
      v221 = result;
      (v88)(v224, &a1[v212], v225);
      v198 = sub_1E48772BC();
      v90 = a1;
      v91 = *v222;
      (*v222)(v57, v89);
      v92 = v91;
      v204 = v91;
      v197 = v227[6];
      v213 = v88;
      (v88)(v57, &a1[v197], v89);
      v93 = sub_1E48772BC();
      v92(v57, v89);
      v94 = v221;
      v95 = v198;
      v196 = [v221 cal:v198 isMultidayEventForUIWithStartDate:v93 endDate:?];

      v41 = v212;
      (v213)(v57, &v90[v212], v89);
      LODWORD(v198) = sub_1E48774CC();
      v96 = v204;
      (v204)(v57, v89);
      v221 = v90;
      (v213)(v57, &v90[v41], v89);
      a1 = sub_1E4871B7C();
      v27 = v96;
      v58 = v199;
      (v27)(v57, v89);
      v43 = 0;
      while (1)
      {
        v49 = v43;
        if (v23 == v43)
        {
          break;
        }

        if (v43 >= *(v58 + 2))
        {
          goto LABEL_57;
        }

        sub_1E48703D4(v221 + *(v226 + 9) * v43++, v38, type metadata accessor for Event);
        v41 = v38[v227[14]];
        sub_1E487043C(v38, type metadata accessor for Event);
        if ((v41 & 0xFE) == 6)
        {
          if (v23 == a5)
          {
            goto LABEL_32;
          }

          goto LABEL_51;
        }
      }

LABEL_31:
      if (v23 != a5)
      {
        goto LABEL_38;
      }

LABEL_32:
      if (v215)
      {
        if (!(v196 & 1 | ((v198 & 1) == 0)))
        {
          goto LABEL_34;
        }
      }

      else if (!(v196 & 1 | ((a1 & 1) == 0)))
      {
LABEL_34:
        v104 = v221;
        v106 = v224;
        v105 = v225;
        v107 = v213;
        (v213)(v224, v221 + v212, v225);
        v108 = v203;
        v107(v203, &v104[v197], v105);
        LODWORD(v227) = sub_1E48772EC();
        (v27)(v108, v105);
        (v27)(v106, v105);
        v107(v106, &v104[v212], v105);
        if (v23 != v49 || (v227 & 1) != 0)
        {
LABEL_53:
          v180 = objc_opt_self();
          v181 = sub_1E48772BC();
          v182 = sub_1E487748C();
          v183 = [v180 timeAttributedTextWithDate:v181 calendar:v182 font:0 options:0];

          v184 = [v183 string];
          sub_1E4878BDC();

          sub_1E48771FC();
          a1 = v211;
          sub_1E48771AC();
          v185 = v214;
          aBlock = v214;
          sub_1E47C4180();

          sub_1E48771BC();
          v186 = *MEMORY[0x1E6993360];
          v187 = [v183 length];
          v188 = swift_allocObject();
          *(v188 + 16) = a1;
          *(v188 + 24) = v185;
          v189 = swift_allocObject();
          *(v189 + 16) = sub_1E47C43D8;
          *(v189 + 24) = v188;
          v232 = sub_1E47C43DC;
          v233 = v189;
          aBlock = MEMORY[0x1E69E9820];
          v229 = 1107296256;
          v230 = sub_1E48373C0;
          v231 = &block_descriptor_62;
          v190 = _Block_copy(&aBlock);

          [v183 enumerateAttribute:v186 inRange:0 options:v187 usingBlock:{0, v190}];

          _Block_release(v190);
          (v204)(v224, v225);
          sub_1E487043C(v219, type metadata accessor for DayEvents);
          LOBYTE(v183) = swift_isEscapingClosureAtFileLocation();

          v122 = v210;
          if ((v183 & 1) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_63;
        }

        (v213)(v203, &v104[v197], v225);
        v109 = objc_opt_self();
        v110 = sub_1E48772BC();
        v111 = sub_1E48772BC();
        v112 = sub_1E487748C();
        v113 = [v109 timeIntervalAttributedTextWithStartDate:v110 endDate:v111 calendar:v112 keepRedundantDesignator:0];

        v114 = [v113 string];
        sub_1E4878BDC();

        sub_1E48771FC();
        a1 = v211;
        sub_1E48771AC();
        v27 = v214;
        aBlock = v214;
        sub_1E47C4180();

        sub_1E48771BC();
        v115 = *MEMORY[0x1E6993360];
        v116 = [v113 length];
        v117 = swift_allocObject();
        *(v117 + 16) = a1;
        *(v117 + 24) = v27;
        v118 = swift_allocObject();
        *(v118 + 16) = sub_1E47C43D8;
        *(v118 + 24) = v117;
        v232 = sub_1E47C43DC;
        v233 = v118;
        aBlock = MEMORY[0x1E69E9820];
        v229 = 1107296256;
        v230 = sub_1E48373C0;
        v231 = &block_descriptor_51;
        v119 = _Block_copy(&aBlock);

        [v113 enumerateAttribute:v115 inRange:0 options:v116 usingBlock:{0, v119}];

        _Block_release(v119);
        v120 = v225;
        v121 = v204;
        (v204)(v203, v225);
        v121(v224, v120);
        sub_1E487043C(v219, type metadata accessor for DayEvents);
        LOBYTE(v113) = swift_isEscapingClosureAtFileLocation();

        v122 = v210;
        if ((v113 & 1) == 0)
        {
LABEL_54:
          v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF10, &qword_1E487C180);
          v192 = &v122[*(v191 + 48)];
          v193 = *(v191 + 64);
          (*(v216 + 32))(v122, a1, v217);
          v194 = v209;
          *v192 = v208;
          v192[1] = v194;
          *&v122[v193] = v58;
          type metadata accessor for RectangularNextEventContentViewModel(0);
          return swift_storeEnumTagMultiPayload();
        }

        __break(1u);
LABEL_38:
        if (v215)
        {
          v123 = v202;
          if ((v198 & 1) == 0)
          {
LABEL_40:
            v124 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
            v125 = sub_1E487748C();
            [v124 setCalendar_];

            v126 = v205;
            sub_1E487750C();
            v127 = sub_1E487756C();
            (*(v206 + 8))(v126, v207);
            [v124 setTimeZone_];

            sub_1E48774EC();
            v128 = sub_1E487744C();
            v129 = *(v128 - 8);
            v130 = 0;
            if ((*(v129 + 48))(v123, 1, v128) != 1)
            {
              v130 = sub_1E48773DC();
              (*(v129 + 8))(v123, v128);
            }

            [v124 setLocale_];

            [v124 setFormattingContext_];
            v131 = sub_1E4878B9C();
            [v124 setLocalizedDateFormatFromTemplate_];

            v133 = v224;
            v132 = v225;
            (v213)(v224, v221 + v212, v225);
            v134 = sub_1E48772BC();
            (v27)(v133, v132);
            v135 = [v124 stringFromDate_];
LABEL_47:
            v151 = v219;
            a1 = v211;

            sub_1E4878BDC();
            sub_1E48771FC();
            sub_1E48771AC();

            sub_1E487043C(v151, type metadata accessor for DayEvents);
            v122 = v210;
            goto LABEL_54;
          }
        }

        else
        {
          v123 = v202;
          if ((a1 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_51:
        (v213)();
        v169 = objc_opt_self();
        v170 = sub_1E48772BC();
        v171 = sub_1E487748C();
        v172 = [v169 timeAttributedTextWithDate:v170 calendar:v171 font:0 options:0];

        v173 = [v172 string];
        sub_1E4878BDC();

        sub_1E48771FC();
        a1 = v211;
        sub_1E48771AC();
        v174 = v214;
        aBlock = v214;
        sub_1E47C4180();

        sub_1E48771BC();
        v175 = *MEMORY[0x1E6993360];
        v176 = [v172 length];
        v177 = swift_allocObject();
        *(v177 + 16) = a1;
        *(v177 + 24) = v174;
        v178 = swift_allocObject();
        *(v178 + 16) = sub_1E47C43D8;
        *(v178 + 24) = v177;
        v232 = sub_1E47C43DC;
        v233 = v178;
        aBlock = MEMORY[0x1E69E9820];
        v229 = 1107296256;
        v230 = sub_1E48373C0;
        v231 = &block_descriptor_73;
        v179 = _Block_copy(&aBlock);

        [v172 enumerateAttribute:v175 inRange:0 options:v176 usingBlock:{0, v179}];

        _Block_release(v179);
        (v204)(v224, v225);
        sub_1E487043C(v219, type metadata accessor for DayEvents);
        LOBYTE(v172) = swift_isEscapingClosureAtFileLocation();

        v122 = v210;

        if ((v172 & 1) == 0)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_53;
      }

      v136 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
      v137 = sub_1E487748C();
      [v136 setCalendar_];

      v138 = v205;
      sub_1E487750C();
      v139 = sub_1E487756C();
      (*(v206 + 8))(v138, v207);
      [v136 setTimeZone_];

      v140 = v201;
      sub_1E48774EC();
      v141 = sub_1E487744C();
      v142 = *(v141 - 8);
      v143 = 0;
      if ((*(v142 + 48))(v140, 1, v141) != 1)
      {
        v143 = sub_1E48773DC();
        (*(v142 + 8))(v140, v141);
      }

      [v136 setLocale_];

      v144 = sub_1E4878B9C();
      [v136 setDateTemplate_];

      v145 = v221;
      v147 = v224;
      v146 = v225;
      v148 = v213;
      (v213)(v224, v221 + v212, v225);
      v227 = sub_1E48772BC();
      v149 = v204;
      (v204)(v147, v146);
      v148(v147, &v145[v197], v146);
      v134 = sub_1E48772BC();
      v149(v147, v146);
      v124 = v136;
      v150 = v227;
      v135 = [v136 stringFromDate:v227 toDate:v134];

      goto LABEL_47;
    }

    goto LABEL_60;
  }

  if (!*(v57 + 2))
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v208 = result;
  v209 = v56;
  v210 = a5;
  sub_1E48703D4(&v57[(v226[80] + 32) & ~v226[80]], v43, type metadata accessor for Event);
  v60 = sub_1E487748C();
  v61 = v227;
  v226 = v27;
  v62 = v227[5];
  v63 = sub_1E48772BC();
  v64 = v61[6];
  v65 = sub_1E48772BC();
  LODWORD(v211) = [v60 cal:v63 isMultidayEventForUIWithStartDate:v65 endDate:?];

  LODWORD(v203) = sub_1E48774CC();
  v66 = sub_1E4871B7C();
  v67 = v213;
  v68 = v221;
  (v213[13])(v23, *MEMORY[0x1E6969A58], v221);
  v224 = v62;
  v69 = v226;
  sub_1E48774BC();
  (v67[1])(v23, v68);
  v70 = v222;
  v71 = v225;
  result = (*(v222 + 48))(v69, 1, v225);
  if (result != 1)
  {

    (*(v70 + 32))(v223, v69, v71);
    sub_1E486CD08(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
    v72 = sub_1E4878AEC();
    if (v215)
    {
      v27 = v212;
      if ((v203 & (v72 | ~v211) & 1) == 0)
      {
LABEL_11:
        v73 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
        v74 = sub_1E487748C();
        [v73 setCalendar_];

        v75 = v205;
        sub_1E487750C();
        v76 = sub_1E487756C();
        (*(v206 + 8))(v75, v207);
        [v73 setTimeZone_];

        v77 = v204;
        sub_1E48774EC();
        v78 = sub_1E487744C();
        v79 = *(v78 - 8);
        v80 = 0;
        if ((*(v79 + 48))(v77, 1, v78) != 1)
        {
          v80 = sub_1E48773DC();
          (*(v79 + 8))(v77, v78);
        }

        [v73 setLocale_];

        v81 = sub_1E4878B9C();
        [v73 setDateTemplate_];

        v82 = sub_1E48772BC();
        v83 = sub_1E48772BC();
        v84 = [v73 stringFromDate:v82 toDate:v83];

        sub_1E4878BDC();
        sub_1E48771FC();
        sub_1E48771AC();

        (*(v70 + 8))(v223, v71);
        sub_1E487043C(v219, type metadata accessor for DayEvents);
        goto LABEL_49;
      }
    }

    else
    {
      v27 = v212;
      if (v211 & 1 | ((v66 & 1) == 0))
      {
        goto LABEL_11;
      }
    }

    if ((sub_1E48772EC() & 1) != 0 || (*(v43 + v227[14]) & 0xFE) == 6)
    {
      v97 = objc_opt_self();
      v98 = sub_1E48772BC();
      v99 = sub_1E487748C();
      v100 = [v97 timeAttributedTextWithDate:v98 calendar:v99 font:0 options:0];

      v101 = [v100 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      sub_1E48771AC();
      v58 = v214;
      aBlock = v214;
      sub_1E47C4180();

      sub_1E48771BC();
      a5 = *MEMORY[0x1E6993360];
      v102 = [v100 length];
      v49 = swift_allocObject();
      *(v49 + 16) = v27;
      *(v49 + 24) = v58;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_1E47C43D8;
      *(v103 + 24) = v49;
      v232 = sub_1E47C43DC;
      v233 = v103;
      aBlock = MEMORY[0x1E69E9820];
      v229 = 1107296256;
      v230 = sub_1E48373C0;
      v231 = &block_descriptor_95;
      a1 = _Block_copy(&aBlock);
      v23 = v233;

      [v100 enumerateAttribute:a5 inRange:0 options:v102 usingBlock:{0, a1}];

      _Block_release(a1);
      (*(v222 + 8))(v223, v225);
      sub_1E487043C(v219, type metadata accessor for DayEvents);
      LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

      if (v100)
      {
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v152 = objc_opt_self();
      v153 = sub_1E48772BC();
      v154 = sub_1E48772BC();
      v155 = sub_1E487748C();
      v156 = [v152 timeIntervalAttributedTextWithStartDate:v153 endDate:v154 calendar:v155 keepRedundantDesignator:0];

      v157 = [v156 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      sub_1E48771AC();
      v158 = v214;
      aBlock = v214;
      sub_1E47C4180();

      sub_1E48771BC();
      v159 = *MEMORY[0x1E6993360];
      v160 = [v156 length];
      v161 = swift_allocObject();
      *(v161 + 16) = v27;
      *(v161 + 24) = v158;
      v162 = swift_allocObject();
      *(v162 + 16) = sub_1E47C43D8;
      *(v162 + 24) = v161;
      v232 = sub_1E47C43DC;
      v233 = v162;
      aBlock = MEMORY[0x1E69E9820];
      v229 = 1107296256;
      v230 = sub_1E48373C0;
      v231 = &block_descriptor_84;
      v163 = _Block_copy(&aBlock);

      [v156 enumerateAttribute:v159 inRange:0 options:v160 usingBlock:{0, v163}];

      _Block_release(v163);
      (*(v222 + 8))(v223, v225);
      sub_1E487043C(v219, type metadata accessor for DayEvents);
      LOBYTE(v156) = swift_isEscapingClosureAtFileLocation();

      if (v156)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

LABEL_49:
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF18, &qword_1E487C188);
    v165 = v210;
    v166 = &v210[*(v164 + 48)];
    v167 = *(v164 + 64);
    (*(v216 + 32))(v210, v27, v217);
    v168 = v209;
    *v166 = v208;
    v166[1] = v168;
    sub_1E487049C(v43, &v165[v167], type metadata accessor for Event);
    type metadata accessor for RectangularNextEventContentViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1E485B794(uint64_t a1, void (**a2)(void, void))
{
  v227 = a2;
  v3 = sub_1E487751C();
  v226 = *(v3 - 8);
  v4 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v195 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v193 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v194 = &v177 - v10;
  v183 = type metadata accessor for DayEvents();
  v182 = *(v183 - 8);
  v11 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v13 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1E48770FC();
  v216 = *(v223 - 8);
  v14 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v225 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_1E487706C();
  *&v217 = *(v229 - 8);
  v16 = *(v217 + 64);
  v17 = MEMORY[0x1EEE9AC00](v229);
  v191 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v224 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v231 = &v177 - v21;
  v22 = type metadata accessor for Event();
  v239 = *(v22 - 8);
  v23 = v239[8];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v213 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v212 = &v177 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v177 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v236 = &v177 - v31;
  v235 = sub_1E487732C();
  v32 = *(v235 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x1EEE9AC00](v235);
  v190 = &v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v189 = &v177 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v188 = &v177 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v205 = &v177 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v209 = &v177 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v192 = &v177 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v177 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v238 = &v177 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v208 = &v177 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v179 = &v177 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v177 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v200 = &v177 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v180 = &v177 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v177 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v177 - v65;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D940, &qword_1E4882DA8);
  v67 = *(*(v221 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v221);
  v220 = &v177 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v178 = &v177 - v70;
  v199 = sub_1E487753C();
  v71 = *(*(v199 - 8) + 64);
  v72 = MEMORY[0x1EEE9AC00](v199);
  MEMORY[0x1EEE9AC00](v72);
  v76 = *(a1 + 16);
  if (!v76)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v204 = v75;
  v177 = v74;
  v222 = v48;
  v181 = v13;
  v215 = v32;
  v230 = &v177 - v73;
  v198 = v76;
  sub_1E4877A7C();
  v77 = v239;
  v211 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v78 = a1 + v211;
  v79 = *(v22 + 20);
  v201 = v32;
  v80 = v32[2];
  v232 = v66;
  v81 = v66;
  v82 = v235;
  v80(v81, v78 + v79, v235);
  v83 = v78 + *(v22 + 24);
  v237 = v64;
  v240 = v80;
  v80(v64, v83, v82);
  v233 = v77[9];
  v239 = v32 + 2;
  v84 = (v32 + 1);
  v187 = v78;
  v85 = v78;
  v86 = v198;
  v87 = v236;
  v234 = v22;
  do
  {
    sub_1E48703D4(v85, v87, type metadata accessor for Event);
    v88 = v235;
    v240(v57, v87 + *(v22 + 20), v235);
    v89 = v232;
    if (sub_1E48772DC())
    {
      (*v84)(v89, v88);
      v240(v89, v57, v88);
    }

    v90 = *(v22 + 24);
    v87 = v236;
    v91 = sub_1E48772CC();
    v210 = *v84;
    v210(v57, v88);
    if (v91)
    {
      v92 = v237;
      v93 = v235;
      v210(v237, v235);
      v240(v92, v87 + v90, v93);
    }

    sub_1E487043C(v87, type metadata accessor for Event);
    v22 = v234;
    v85 += v233;
    --v86;
  }

  while (v86);
  v94 = v221;
  v95 = *(v221 + 48);
  v96 = v201 + 4;
  v97 = v201[4];
  v98 = v178;
  v99 = v235;
  v97(v178, v232, v235);
  v97((v98 + v95), v237, v99);
  v100 = v220;
  sub_1E4773850(v98, v220, &qword_1ECF7D940, &qword_1E4882DA8);
  v101 = *(v94 + 48);
  v201 = v96;
  v186 = v97;
  v97(v180, v100, v99);
  v210((v100 + v101), v99);
  v102 = sub_1E486CD08(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  v103 = v227;
  v197 = v102;
  v104 = sub_1E4878ACC();
  v105 = v200;
  if (v104)
  {
    v106 = v200;
    v107 = v103;
  }

  else
  {
    v107 = (v98 + v95);
    v106 = v200;
  }

  v109 = v240;
  v240(v106, v107, v99);
  v110 = v208;
  v196 = v84;
  v111 = v179;
  sub_1E487745C();
  v109(v110, v111, v99);
  sub_1E4870D68(v231);
  if ((sub_1E4878AEC() & 1) == 0)
  {
    v171 = *(v217 + 8);
    v206 = MEMORY[0x1E69E7CC0];
    v172 = v110;
    v174 = v178;
    v173 = v180;
    v171(v231, v229);
    goto LABEL_55;
  }

  LODWORD(v221) = *MEMORY[0x1E6969A58];
  v232 = (v226 + 104);
  LODWORD(v220) = *MEMORY[0x1E6969A88];
  v219 = *MEMORY[0x1E6969A98];
  v218 = *MEMORY[0x1E6969A00];
  v216 += 8;
  v228 = (v217 + 8);
  v203 = *MEMORY[0x1E6969A48];
  v185 = (v177 + 8);
  v184 = (v217 + 32);
  v217 = xmmword_1E487BC70;
  v206 = MEMORY[0x1E69E7CC0];
  v112 = v235;
  v227 = (v226 + 8);
  v202 = (v215 + 6);
  while (2)
  {
    v113 = v187;
    v114 = v198;
    v215 = MEMORY[0x1E69E7CC0];
    v214 = MEMORY[0x1E69E7CC0];
    do
    {
      v236 = v114;
      v237 = v113;
      sub_1E48703D4(v113, v30, type metadata accessor for Event);
      v117 = v30;
      v118 = v234;
      v240(v238, v117 + *(v234 + 20), v112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
      v119 = v226;
      v120 = *(v226 + 72);
      v121 = (*(v226 + 80) + 32) & ~*(v226 + 80);
      v122 = swift_allocObject();
      *(v122 + 16) = v217;
      v123 = v122 + v121;
      v124 = *(v119 + 104);
      v124(v123, v221, v3);
      v124(v123 + v120, v220, v3);
      v124(v123 + 2 * v120, v219, v3);
      v124(v123 + 3 * v120, v218, v3);
      sub_1E486B81C(v122);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v125 = *(v118 + 24);
      v30 = v117;
      v126 = v225;
      sub_1E487747C();

      result = sub_1E48770AC();
      if (v127)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (result)
      {
        goto LABEL_23;
      }

      result = sub_1E48770CC();
      if (v128)
      {
        goto LABEL_57;
      }

      if (result)
      {
        goto LABEL_23;
      }

      result = sub_1E48770DC();
      if (v129)
      {
        goto LABEL_58;
      }

      if (result)
      {
LABEL_23:
        sub_1E48772DC();
LABEL_24:
        (*v216)(v126, v223);
        v130 = v117 + v125;
        v112 = v235;
        v240(v222, v130, v235);
        goto LABEL_25;
      }

      result = sub_1E487707C();
      if (v144)
      {
        goto LABEL_59;
      }

      v145 = result;
      if ((sub_1E48772DC() & 1) == 0 || v145)
      {
        goto LABEL_24;
      }

      sub_1E48772AC();
      (*v216)(v126, v223);
      v112 = v235;
LABEL_25:
      v131 = v227;
      v132 = v224;
      sub_1E487702C();
      v133 = sub_1E487700C();
      v134 = *v228;
      (*v228)(v132, v229);
      if (v133)
      {
        v116 = v237;
        if (v30[*(v234 + 48)] == 1)
        {
          sub_1E48703D4(v30, v212, type metadata accessor for Event);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v215 = sub_1E4860CF4(0, v215[2] + 1, 1, v215, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          v136 = v215[2];
          v135 = v215[3];
          if (v136 >= v135 >> 1)
          {
            v215 = sub_1E4860CF4(v135 > 1, v136 + 1, 1, v215, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          sub_1E487043C(v30, type metadata accessor for Event);
          v137 = v215;
          v215[2] = v136 + 1;
          v115 = v233;
          v138 = v137 + v211 + v136 * v233;
          v139 = &v241;
        }

        else
        {
          sub_1E48703D4(v30, v213, type metadata accessor for Event);
          v140 = v214;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_1E4860CF4(0, v140[2] + 1, 1, v140, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          v214 = v140;
          v142 = v140[2];
          v141 = v140[3];
          if (v142 >= v141 >> 1)
          {
            v214 = sub_1E4860CF4(v141 > 1, v142 + 1, 1, v214, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          sub_1E487043C(v30, type metadata accessor for Event);
          v143 = v214;
          v214[2] = v142 + 1;
          v115 = v233;
          v138 = v143 + v211 + v142 * v233;
          v139 = &v242;
        }

        sub_1E487049C(*(v139 - 32), v138, type metadata accessor for Event);
        v112 = v235;
      }

      else
      {
        sub_1E487043C(v117, type metadata accessor for Event);
        v115 = v233;
        v116 = v237;
      }

      v113 = v116 + v115;
      v114 = v236 - 1;
    }

    while (v236 != 1);
    v146 = v214;
    v147 = v214[2];
    v207 = v124;
    if (v147 || v215[2])
    {
      v148 = v181;
      v240(v181, v208, v112);
      v149 = v183;
      *(v148 + *(v183 + 20)) = v146;
      *(v148 + *(v149 + 24)) = v215;
      *(v148 + *(v149 + 28)) = 0;

      v150 = v206;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v203;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v150 = sub_1E4860CF4(0, v150[2] + 1, 1, v150, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v154 = v150[2];
      v153 = v150[3];
      if (v154 >= v153 >> 1)
      {
        v150 = sub_1E4860CF4(v153 > 1, v154 + 1, 1, v150, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v150[2] = v154 + 1;
      sub_1E487049C(v148, v150 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v154, type metadata accessor for DayEvents);
      v124 = v207;
    }

    else
    {
      v150 = v206;
      v152 = v203;
    }

    v206 = v150;
    v155 = v195;
    v124(v195, v152, v3);
    v156 = v194;
    v157 = v208;
    sub_1E48774BC();
    v237 = *v131;
    (v237)(v155, v3);
    v158 = v235;
    v236 = *v202;
    result = (v236)(v156, 1, v235);
    if (result == 1)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v159 = v192;
    sub_1E487745C();
    v160 = v210;
    v210(v157, v158);
    v160(v156, v158);
    v186(v157, v159, v158);
    sub_1E4877A7C();
    sub_1E487745C();
    v207(v155, v203, v3);
    v161 = v193;
    sub_1E48774BC();
    (v237)(v155, v3);
    result = (v236)(v161, 1, v158);
    if (result == 1)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    v162 = v205;
    sub_1E487745C();
    v210(v161, v158);
    v163 = v189;
    v164 = v240;
    v240(v189, v162, v158);
    v165 = v188;
    sub_1E487728C();
    v164(v163, v209, v158);
    v164(v190, v165, v158);
    v166 = v191;
    sub_1E487702C();
    v167 = v210;
    v210(v165, v235);
    v167(v205, v235);
    v167(v209, v235);
    (*v185)(v204, v199);
    v168 = v231;
    v169 = v229;
    v134(v231, v229);
    v112 = v235;
    (*v184)(v168, v166, v169);

    v170 = v208;
    v105 = v200;
    if (sub_1E4878AEC())
    {
      continue;
    }

    break;
  }

  v172 = v170;
  v173 = v180;
  v174 = v178;
  v134(v231, v229);
LABEL_55:
  v175 = v235;
  v176 = v210;
  v210(v172, v235);
  v176(v179, v175);
  v176(v105, v175);
  v176(v173, v175);
  sub_1E47738B8(v174, &qword_1ECF7D940, &qword_1E4882DA8);
  (*(v177 + 8))(v230, v199);
  return v206;
}

void sub_1E485CFF8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v126 = a4;
  v127 = a5;
  v128 = a3;
  v133 = a2;
  v131 = a1;
  v122 = sub_1E487713C();
  v5 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v123 = v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4878B8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1E487714C();
  v117 = *(v118 - 8);
  v10 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v116 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4878B6C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v115 = v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1E487719C();
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v124 = v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E487720C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v129 = v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v113 - v25;
  v132 = sub_1E487732C();
  v130 = *(v132 - 8);
  v27 = *(v130 + 64);
  v28 = MEMORY[0x1EEE9AC00](v132);
  v125 = v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v113 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v114 = v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v113 - v36;
  v38 = sub_1E487757C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v44 = sub_1E487748C();
  [v43 setCalendar_];

  sub_1E487750C();
  v45 = sub_1E487756C();
  (*(v39 + 8))(v42, v38);
  [v43 setTimeZone_];

  sub_1E48774EC();
  v46 = sub_1E487744C();
  v47 = *(v46 - 8);
  v48 = 0;
  if ((*(v47 + 48))(v37, 1, v46) != 1)
  {
    v48 = sub_1E48773DC();
    (*(v47 + 8))(v37, v46);
  }

  [v43 setLocale_];

  sub_1E4773850(v133, v26, &unk_1ECF7C880, &qword_1E4882710);
  v49 = v130;
  v50 = *(v130 + 48);
  v51 = v132;
  if (v50(v26, 1, v132) == 1)
  {
    sub_1E47738B8(v26, &unk_1ECF7C880, &qword_1E4882710);
    v52 = 0;
  }

  else
  {
    (*(v49 + 32))(v31, v26, v51);
    v52 = sub_1E48772EC();
    (*(v49 + 8))(v31, v51);
  }

  sub_1E4773850(v133, v24, &unk_1ECF7C880, &qword_1E4882710);
  if (v50(v24, 1, v51) != 1)
  {
    v53 = v125;
    (*(v49 + 32))(v125, v24, v51);
    if (v52)
    {
      (*(v49 + 8))(v53, v51);
      goto LABEL_10;
    }

    if (sub_1E48774CC())
    {
      v133 = v43;
      v70 = sub_1E487748C();
      v71 = sub_1E48772BC();
      v72 = sub_1E48772BC();
      v73 = v53;
      v74 = [v70 cal:v71 isMultidayEventForUIWithStartDate:v72 endDate:?];

      if (v74 && (sub_1E48774CC() & 1) == 0)
      {
        v102 = objc_opt_self();
        v103 = sub_1E48772BC();
        v104 = sub_1E487748C();
        v105 = [v102 timeAttributedTextWithDate:v103 calendar:v104 font:0 options:0];

        v106 = [v105 string];
        sub_1E4878BDC();

        sub_1E48771FC();
        v107 = v127;
        sub_1E48771AC();
        v108 = v126;
        aBlock = v126;
        sub_1E47C4180();

        sub_1E48771BC();
        v109 = *MEMORY[0x1E6993360];
        v51 = [v105 length];
        v110 = swift_allocObject();
        *(v110 + 16) = v107;
        *(v110 + 24) = v108;
        v111 = swift_allocObject();
        *(v111 + 16) = sub_1E47C43D8;
        *(v111 + 24) = v110;
        v138 = sub_1E47C43DC;
        v139 = v111;
        aBlock = MEMORY[0x1E69E9820];
        v135 = 1107296256;
        v136 = sub_1E48373C0;
        v137 = &block_descriptor_40;
        v53 = _Block_copy(&aBlock);
        v43 = v139;

        [v105 enumerateAttribute:v109 inRange:0 options:v51 usingBlock:{0, v53}];

        _Block_release(v53);
        v112 = *(v49 + 8);
        v49 += 8;
        v112(v73, v132);
        LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

        if ((v105 & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_29;
      }

      v75 = objc_opt_self();
      v76 = sub_1E48772BC();
      v77 = sub_1E48772BC();
      v78 = sub_1E487748C();
      v79 = [v75 timeIntervalAttributedTextWithStartDate:v76 endDate:v77 calendar:v78 keepRedundantDesignator:0];

      v80 = [v79 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      v81 = v127;
      sub_1E48771AC();
      v82 = v126;
      aBlock = v126;
      sub_1E47C4180();

      sub_1E48771BC();
      v83 = *MEMORY[0x1E6993360];
      v51 = [v79 length];
      v84 = swift_allocObject();
      *(v84 + 16) = v81;
      *(v84 + 24) = v82;
      v85 = swift_allocObject();
      *(v85 + 16) = sub_1E47C43D8;
      *(v85 + 24) = v84;
      v138 = sub_1E47C43DC;
      v139 = v85;
      aBlock = MEMORY[0x1E69E9820];
      v135 = 1107296256;
      v136 = sub_1E48373C0;
      v137 = &block_descriptor_29;
      v53 = _Block_copy(&aBlock);
      v43 = v139;

      [v79 enumerateAttribute:v83 inRange:0 options:v51 usingBlock:{0, v53}];

      _Block_release(v53);
      v86 = *(v49 + 8);
      v49 += 8;
      v86(v73, v132);
      LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

      if ((v79 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    if ((sub_1E48774CC() & 1) == 0)
    {
      if (qword_1EE2B4848 == -1)
      {
LABEL_26:
        sub_1E48771EC();
        sub_1E48771FC();
        sub_1E48771AC();

        (*(v49 + 8))(v53, v51);
        return;
      }

LABEL_30:
      swift_once();
      goto LABEL_26;
    }

    v87 = v43;
    v88 = objc_opt_self();
    v89 = sub_1E48772BC();
    v90 = sub_1E487748C();
    v91 = [v88 timeAttributedTextWithDate:v89 calendar:v90 font:0 options:0];

    v92 = [v91 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v53 = v124;
    sub_1E48771AC();
    v49 = v126;
    aBlock = v126;
    sub_1E47C4180();

    sub_1E48771BC();
    v93 = *MEMORY[0x1E6993360];
    v51 = [v91 length];
    v94 = swift_allocObject();
    *(v94 + 16) = v53;
    *(v94 + 24) = v49;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_1E47C43D8;
    *(v95 + 24) = v94;
    v138 = sub_1E47C43DC;
    v139 = v95;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1E48373C0;
    v137 = &block_descriptor_18;
    v96 = _Block_copy(&aBlock);
    v43 = v139;

    [v91 enumerateAttribute:v93 inRange:0 options:v51 usingBlock:{0, v96}];

    _Block_release(v96);
    LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

    if ((v91 & 1) == 0)
    {
      sub_1E4878B5C();
      sub_1E4878B4C();
      v97 = MEMORY[0x1E69E7CC0];
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1E486CD08(&qword_1EE2B4680, MEMORY[0x1E69686F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
      sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78);
      v98 = v116;
      v99 = v118;
      sub_1E4878ECC();
      sub_1E4878B1C();
      (*(v117 + 8))(v98, v99);
      sub_1E4878B4C();
      sub_1E4878B7C();
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      v100 = qword_1EE2BAF40;
      (*(v113[0] + 56))(v114, 1, 1, v113[1]);
      aBlock = v97;
      sub_1E486CD08(&qword_1EE2B4688, MEMORY[0x1E69686B0]);
      v101 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
      sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80);
      sub_1E4878ECC();
      sub_1E487717C();

      (*(v130 + 8))(v125, v132);
      (*(v119 + 8))(v53, v120);
      return;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1E47738B8(v24, &unk_1ECF7C880, &qword_1E4882710);
LABEL_10:
  if (sub_1E48774CC())
  {
    v54 = objc_opt_self();
    v55 = sub_1E48772BC();
    v56 = sub_1E487748C();
    v57 = [v54 timeAttributedTextWithDate:v55 calendar:v56 font:0 options:0];

    v58 = [v57 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v59 = v43;
    v60 = v127;
    sub_1E48771AC();
    v61 = v126;
    aBlock = v126;
    sub_1E47C4180();

    sub_1E48771BC();
    v62 = *MEMORY[0x1E6993360];
    v63 = [v57 length];
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    *(v64 + 24) = v61;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1E47C41D4;
    *(v65 + 24) = v64;
    v138 = sub_1E47C41DC;
    v139 = v65;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1E48373C0;
    v137 = &block_descriptor_7;
    v66 = _Block_copy(&aBlock);
    v43 = v139;

    [v57 enumerateAttribute:v62 inRange:0 options:v63 usingBlock:{0, v66}];

    _Block_release(v66);
    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if ((v57 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  [v43 setFormattingContext_];
  v67 = sub_1E4878B9C();
  [v43 setLocalizedDateFormatFromTemplate_];

  v68 = sub_1E48772BC();
  v69 = [v43 stringFromDate_];

  sub_1E4878BDC();
  sub_1E48771FC();
  sub_1E48771AC();
}

uint64_t sub_1E485E54C(uint64_t a1, char *a2, uint64_t a3, char *a4)
{
  v124 = a4;
  v127 = a1;
  v128 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = v102 - v7;
  v116 = sub_1E487751C();
  v119 = *(v116 - 8);
  v8 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487753C();
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v112 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487732C();
  v129 = *(v13 - 8);
  v14 = *(v129 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v108 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v107 = v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v122 = (v102 - v22);
  v23 = type metadata accessor for DayEvents();
  v126 = *(v23 - 1);
  v24 = *(v126 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v106 = v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v105 = v102 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v121 = v102 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v123 = v102 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB90, &qword_1E4883750);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v125 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v102 - v36;
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v38 = qword_1EE2B1870;
  v39 = sub_1E48772BC();
  v40 = [v38 stringFromDate_];

  v41 = sub_1E4878BDC();
  v43 = v42;

  v44 = *(v32 + 48);
  v45 = *(v32 + 64);
  v46 = *(v129 + 16);
  v120 = v13;
  v110 = v46;
  v47 = (v46)(v37, a2, v13);
  v48 = MEMORY[0x1E69E7CC0];
  *&v37[v23[5]] = MEMORY[0x1E69E7CC0];
  *&v37[v23[6]] = v48;
  v37[v23[7]] = 0;
  *&v37[v44] = v48;
  v37[v45] = 1;
  if (!*(v128 + 16))
  {
    sub_1E4878DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1E487A7E0;
    *(v62 + 56) = MEMORY[0x1E69E6158];
    *(v62 + 64) = sub_1E478B950();
    *(v62 + 32) = v41;
    *(v62 + 40) = v43;
    sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
    v63 = sub_1E4878E4C();
    sub_1E4877AAC();

    v64 = v125;
    sub_1E477372C(v37, v125, &qword_1ECF7DB90, &qword_1E4883750);
    v65 = *&v64[*(v32 + 48)];
    v66 = *(v32 + 64);
LABEL_15:
    v86 = v64[v66];
    goto LABEL_16;
  }

  v103 = v41;
  v117 = v37;
  v104 = v32;
  v118 = v43;
  MEMORY[0x1EEE9AC00](v47);
  v49 = a2;
  v50 = v124;
  v102[-2] = v124;
  v102[-1] = a2;
  v51 = v122;
  sub_1E47F8D94(sub_1E4870D0C, v52, v122);
  v102[1] = 0;
  v53 = v126 + 48;
  v54 = *(v126 + 48);
  if ((v54)(v51, 1, v23) == 1)
  {
    sub_1E47738B8(v51, &qword_1ECF7C380, &qword_1E4882C20);
    v55 = sub_1E4878DCC();
    sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
    v56 = sub_1E4878E4C();
    v57 = os_log_type_enabled(v56, v55);
    v58 = v118;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v130 = v60;
      *v59 = 136315138;
      v61 = sub_1E47A0DEC(v103, v58, &v130);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_1E475C000, v56, v55, "upNextEventsToDisplay for date: %s contains nil todayDayEvents", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1E6919FE0](v60, -1, -1);
      MEMORY[0x1E6919FE0](v59, -1, -1);
    }

    else
    {
    }

    v64 = v125;
    sub_1E477372C(v117, v125, &qword_1ECF7DB90, &qword_1E4883750);
    v65 = *&v64[*(v104 + 48)];
    v66 = *(v104 + 64);
    goto LABEL_15;
  }

  v125 = v54;
  v126 = v53;

  v67 = v123;
  sub_1E487049C(v51, v123, type metadata accessor for DayEvents);
  type metadata accessor for Utils();
  v64 = v121;
  sub_1E485F9F4(v67, v49, v50, 0, v121);
  v65 = *&v64[v23[5]];
  if (*(v65 + 16))
  {
    goto LABEL_10;
  }

  v68 = v50;
  v69 = v111;
  (v110)(v111, v49, v120);
  v70 = v112;
  sub_1E4877A7C();
  v71 = *MEMORY[0x1E6969A58];
  v72 = v119;
  v73 = v115;
  v74 = v116;
  v118 = *(v119 + 104);
  v118(v115, v71, v116);
  v75 = sub_1E487752C();
  v110 = v23;
  v76 = v68;
  v77 = v49;
  v78 = v75;
  v79 = *(v72 + 8);
  v119 = v72 + 8;
  v122 = v79;
  v79(v73, v74);
  (*(v113 + 1))(v70, v114);
  v81 = v129 + 8;
  v80 = *(v129 + 8);
  v82 = v69;
  v64 = v121;
  v80(v82, v120);
  if (v78 < 17)
  {
LABEL_10:
    sub_1E487043C(v123, type metadata accessor for DayEvents);
    v83 = &qword_1ECF7DB90;
    v84 = &qword_1E4883750;
    v85 = v117;
  }

  else
  {
    v88 = v76;
    v113 = v80;
    v114 = v81;
    v89 = v115;
    v90 = v116;
    v118(v115, *MEMORY[0x1E6969A48], v116);
    v91 = v109;
    sub_1E48774BC();
    v122(v89, v90);
    v92 = v129;
    v93 = v120;
    if ((*(v129 + 48))(v91, 1, v120) != 1)
    {
      v94 = v91;
      v95 = v108;
      v96 = (*(v92 + 32))(v108, v94, v93);
      MEMORY[0x1EEE9AC00](v96);
      v102[-2] = v76;
      v102[-1] = v95;
      v97 = v107;
      sub_1E47F8D94(sub_1E486E0AC, v128, v107);
      v98 = v110;
      if ((v125)(v97, 1, v110) != 1)
      {
        v99 = v97;
        v100 = v105;
        sub_1E487049C(v99, v105, type metadata accessor for DayEvents);
        v101 = v106;
        sub_1E485F9F4(v100, v77, v88, 1, v106);
        sub_1E487043C(v100, type metadata accessor for DayEvents);
        sub_1E487043C(v123, type metadata accessor for DayEvents);
        sub_1E47738B8(v117, &qword_1ECF7DB90, &qword_1E4883750);
        v65 = *(v101 + v98[5]);

        sub_1E487043C(v101, type metadata accessor for DayEvents);
        v113(v95, v93);
        goto LABEL_16;
      }

      sub_1E487043C(v123, type metadata accessor for DayEvents);
      sub_1E47738B8(v117, &qword_1ECF7DB90, &qword_1E4883750);
      sub_1E47738B8(v97, &qword_1ECF7C380, &qword_1E4882C20);
      v113(v95, v93);
      goto LABEL_12;
    }

    sub_1E487043C(v123, type metadata accessor for DayEvents);
    sub_1E47738B8(v117, &qword_1ECF7DB90, &qword_1E4883750);
    v83 = &unk_1ECF7C880;
    v84 = &qword_1E4882710;
    v85 = v91;
  }

  sub_1E47738B8(v85, v83, v84);
LABEL_12:

LABEL_16:
  sub_1E487049C(v64, v127, type metadata accessor for DayEvents);
  return v65;
}

uint64_t sub_1E485F184()
{
  v1 = sub_1E487742C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x1EEE9AC00](v1);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v20 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v21 = v0;
  sub_1E487743C();
  v13 = *MEMORY[0x1E6969750];
  v20 = v2[13];
  v20(v10, v13, v1);
  sub_1E486CD08(&qword_1EE2B4648, MEMORY[0x1E6969760]);
  sub_1E4878C7C();
  sub_1E4878C7C();
  if (v26 == v24 && v27 == v25)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1E48790EC();
  }

  v15 = v2[1];
  v15(v10, v1);
  v15(v12, v1);

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v17 = v22;
    sub_1E487743C();
    v18 = v23;
    v20(v23, *MEMORY[0x1E6969758], v1);
    sub_1E4878C7C();
    sub_1E4878C7C();
    if (v26 == v24 && v27 == v25)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_1E48790EC();
    }

    v15(v18, v1);
    v15(v17, v1);
  }

  return v16 & 1;
}

id sub_1E485F488()
{
  type metadata accessor for Utils();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2BAF40 = result;
  return result;
}

uint64_t sub_1E485F4DC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1E4878F0C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1E48672DC(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1E4878F0C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1E4878F0C();
  v2 = sub_1E4862FC8(v5, v6);
LABEL_10:

  return sub_1E4867EFC(a1, v2);
}

uint64_t sub_1E485F5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for ColorBarView.Styling(0) + 40);
  v6 = sub_1E487736C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

void sub_1E485F654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = a6;
  v28[2] = a3;
  v8 = sub_1E487719C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB68, &qword_1E4883728);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB70, &qword_1E4883730);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  sub_1E4773850(a1, v30, &qword_1ECF7C1B8, &unk_1E487C760);
  if (!v31)
  {
    v23 = &qword_1ECF7C1B8;
    v24 = &unk_1E487C760;
    v25 = v30;
LABEL_7:
    sub_1E47738B8(v25, v23, v24);
    return;
  }

  sub_1E48493B4(0, &qword_1EE2B0D28, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v22 = v29;
    if ([v29 BOOLValue])
    {
      (*(v9 + 16))(v12, a5, v8);
      sub_1E486CD08(&qword_1EE2B4670, MEMORY[0x1E6968848]);
      sub_1E4878DAC();
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {

        v23 = &qword_1ECF7DB68;
        v24 = &qword_1E4883728;
        v25 = v16;
      }

      else
      {
        sub_1E477372C(v16, v21, &qword_1ECF7DB70, &qword_1E4883730);
        v26 = sub_1E487830C();
        sub_1E4773680(&qword_1EE2B0D98, &qword_1ECF7DB70, &qword_1E4883730);
        v27 = sub_1E48771CC();
        v29 = v26;
        sub_1E47C4180();
        sub_1E487721C();
        v27(v30, 0);

        v25 = v21;
        v23 = &qword_1ECF7DB70;
        v24 = &qword_1E4883730;
      }

      goto LABEL_7;
    }
  }
}

uint64_t sub_1E485F9F4@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v120 = a4;
  v129 = a2;
  v130 = a3;
  v134 = type metadata accessor for Event();
  v131 = *(v134 - 8);
  v7 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v117 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1E487751C();
  v112 = *(v113 - 8);
  v9 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v110 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E487753C();
  v109 = *(v111 - 8);
  v11 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487732C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v107 = &v105 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v121 = &v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v119 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v105 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v127 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v116 = &v105 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v126 = &v105 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v118 = &v105 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v105 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v105 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v105 - v44;
  v46 = type metadata accessor for DayEvents();
  v47 = v46;
  v48 = *&a1[*(v46 + 20)];
  if (!*(v48 + 16))
  {
    result = (*(v14 + 16))(a5, a1, v13);
    v58 = a1[v47[7]];
    v59 = MEMORY[0x1E69E7CC0];
    *(a5 + v47[5]) = MEMORY[0x1E69E7CC0];
    *(a5 + v47[6]) = v59;
    *(a5 + v47[7]) = v58;
    return result;
  }

  v114 = v46;
  v105 = v18;
  v115 = a5;
  v49 = *(v14 + 56);
  v125 = v45;
  v50 = v48;
  v132 = v49;
  v133 = v14 + 56;
  v51 = (v49)(v45, 1, 1, v13);
  MEMORY[0x1EEE9AC00](v51);
  *(&v105 - 2) = v129;

  v124 = v50;
  v52 = sub_1E48560AC(sub_1E486E0E4, (&v105 - 4), v50);
  MEMORY[0x1EEE9AC00](v52);
  *(&v105 - 2) = v130;
  *(&v105 - 1) = a1;
  sub_1E47F8DE8(sub_1E486E104, v52, v27);
  v123 = 0;

  v53 = v131;
  v54 = v134;
  v106 = *(v131 + 48);
  v55 = v106(v27, 1, v134);
  v122 = a1;
  if (v55 == 1)
  {
    sub_1E47738B8(v27, &qword_1ECF7B950, &unk_1E487AE90);
    v56 = 1;
  }

  else
  {
    (*(v14 + 16))(v43, &v27[*(v54 + 20)], v13);
    sub_1E487043C(v27, type metadata accessor for Event);
    v56 = 0;
  }

  v132(v43, v56, 1, v13);
  sub_1E4773850(v43, v40, &unk_1ECF7C880, &qword_1E4882710);
  v128 = *(v14 + 48);
  v60 = v128(v40, 1, v13);
  v61 = sub_1E47738B8(v40, &unk_1ECF7C880, &qword_1E4882710);
  if (v60 == 1)
  {
    MEMORY[0x1EEE9AC00](v61);
    *(&v105 - 2) = v129;
    v62 = v124;

    v63 = v123;
    v64 = sub_1E48560AC(sub_1E486E120, (&v105 - 4), v62);
    MEMORY[0x1EEE9AC00](v64);
    v65 = v122;
    *(&v105 - 2) = v130;
    *(&v105 - 1) = v65;
    v66 = v119;
    sub_1E47F8DE8(sub_1E4870D4C, v64, v119);
    v123 = v63;
    v67 = v66;

    sub_1E47738B8(v43, &unk_1ECF7C880, &qword_1E4882710);
    v68 = v134;
    v69 = v106(v66, 1, v134);
    v70 = v125;
    if (v69 == 1)
    {
      sub_1E47738B8(v67, &qword_1ECF7B950, &unk_1E487AE90);
      v71 = 1;
      v72 = v14;
      v73 = v126;
      v74 = v118;
    }

    else
    {
      v72 = v14;
      v74 = v118;
      (*(v14 + 16))(v118, v67 + *(v68 + 20), v13);
      sub_1E487043C(v67, type metadata accessor for Event);
      v71 = 0;
      v73 = v126;
    }

    v132(v74, v71, 1, v13);
    sub_1E477372C(v74, v43, &unk_1ECF7C880, &qword_1E4882710);
    v53 = v131;
  }

  else
  {
    v70 = v125;
    v73 = v126;
    v72 = v14;
    v68 = v134;
  }

  sub_1E4773850(v43, v73, &unk_1ECF7C880, &qword_1E4882710);
  if (v128(v73, 1, v13) == 1)
  {
    result = sub_1E47738B8(v73, &unk_1ECF7C880, &qword_1E4882710);
    v75 = v127;
    if (!*(v124 + 16))
    {
      __break(1u);
      return result;
    }

    v76 = v43;
    v77 = v117;
    sub_1E48703D4(v124 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v117, type metadata accessor for Event);
    sub_1E47738B8(v70, &unk_1ECF7C880, &qword_1E4882710);
    v78 = v116;
    (*(v72 + 16))(v116, v77 + *(v68 + 20), v13);
    v79 = v77;
    v43 = v76;
    sub_1E487043C(v79, type metadata accessor for Event);
    v132(v78, 0, 1, v13);
    sub_1E477372C(v78, v70, &unk_1ECF7C880, &qword_1E4882710);
  }

  else
  {
    v80 = *(v72 + 32);
    v81 = v121;
    v80(v121, v73, v13);
    if ((v120 & 1) == 0)
    {
      goto LABEL_17;
    }

    v82 = *(v72 + 16);
    v134 = v80;
    v83 = v107;
    v82(v107, v81, v13);
    v84 = v108;
    sub_1E4877A7C();
    v85 = v43;
    v86 = v112;
    v87 = v110;
    v88 = v113;
    (*(v112 + 104))(v110, *MEMORY[0x1E6969A58], v113);
    v131 = sub_1E487752C();
    (*(v86 + 8))(v87, v88);
    v43 = v85;
    (*(v109 + 8))(v84, v111);
    v89 = *(v72 + 8);
    v90 = v83;
    v80 = v134;
    v89(v90, v13);
    v81 = v121;
    if (v131 >= 17)
    {
      v89(v121, v13);
      v70 = v125;
    }

    else
    {
LABEL_17:
      v91 = v125;
      sub_1E47738B8(v125, &unk_1ECF7C880, &qword_1E4882710);
      v80(v91, v81, v13);
      v70 = v91;
      v132(v91, 0, 1, v13);
    }

    v75 = v127;
  }

  sub_1E4773850(v70, v75, &unk_1ECF7C880, &qword_1E4882710);
  if (v128(v75, 1, v13) == 1)
  {
    sub_1E47738B8(v75, &unk_1ECF7C880, &qword_1E4882710);
    v92 = v115;
    v93 = v122;
    (*(v72 + 16))(v115, v122, v13);
    sub_1E47738B8(v43, &unk_1ECF7C880, &qword_1E4882710);
    result = sub_1E47738B8(v70, &unk_1ECF7C880, &qword_1E4882710);
    v94 = v114;
    v95 = v93[*(v114 + 28)];
    v96 = MEMORY[0x1E69E7CC0];
    *(v92 + *(v114 + 20)) = MEMORY[0x1E69E7CC0];
    *(v92 + *(v94 + 24)) = v96;
    *(v92 + *(v94 + 28)) = v95;
  }

  else
  {
    v97 = v105;
    v98 = (*(v72 + 32))(v105, v75, v13);
    MEMORY[0x1EEE9AC00](v98);
    *(&v105 - 2) = v97;
    v99 = v124;

    v100 = sub_1E48560AC(sub_1E486E1A4, (&v105 - 4), v99);
    v101 = v115;
    v102 = v122;
    (*(v72 + 16))(v115, v122, v13);
    sub_1E47738B8(v43, &unk_1ECF7C880, &qword_1E4882710);
    sub_1E47738B8(v70, &unk_1ECF7C880, &qword_1E4882710);
    v103 = v114;
    v104 = v102[*(v114 + 28)];
    *(v101 + *(v114 + 20)) = v100;
    *(v101 + *(v103 + 24)) = MEMORY[0x1E69E7CC0];
    *(v101 + *(v103 + 28)) = v104;
    return (*(v72 + 8))(v97, v13);
  }

  return result;
}

uint64_t sub_1E4860780()
{
  sub_1E487732C();
  v0 = *(type metadata accessor for Event() + 20);
  sub_1E486CD08(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  return sub_1E4878ADC() & 1;
}

uint64_t sub_1E4860824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(v7 + 16))(v11, a1, AssociatedTypeWitness);
  sub_1E4878D9C();
  v14 = sub_1E4878D7C();
  (*(v7 + 8))(v13, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t sub_1E48609C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *sub_1E4860A30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB78, &qword_1E4883738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1E4860B84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB8, &qword_1E48837C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E4860CF4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_1E4860F48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB8, &qword_1E48837C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1E486106C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1E4861210(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1E4878F0C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1E4846C4C(v2, 0);

    v1 = sub_1E486A12C(&v5, (v3 + 32), v2, v1);
    sub_1E47A7300();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1E48612C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD8, &unk_1E48837E0);
  result = sub_1E487907C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1E487913C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E4861524(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBC8, &qword_1E48837D0);
  result = sub_1E487907C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 48);
      v22 = *(v21 + 8 * v20);
      v23 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      sub_1E487914C();
      sub_1E487820C();
      result = sub_1E487917C();
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
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1E48617B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DayEvents();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBA0, &qword_1E4883760);
  v48 = a2;
  result = sub_1E487907C();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1E487049C(v31 + v32 * v28, v52, type metadata accessor for DayEvents);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1E48703D4(v33 + v32 * v28, v52, type metadata accessor for DayEvents);
      }

      v34 = *(v16 + 40);
      sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
      result = sub_1E4878A9C();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1E487049C(v52, *(v16 + 56) + v32 * v24, type metadata accessor for DayEvents);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

void *sub_1E4861C50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD8, &unk_1E48837E0);
  v2 = *v0;
  v3 = sub_1E487906C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1E4861D9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBC8, &qword_1E48837D0);
  v2 = *v0;
  v3 = sub_1E487906C();
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

char *sub_1E4861EF8()
{
  v1 = v0;
  v2 = type metadata accessor for DayEvents();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E487732C();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBA0, &qword_1E4883760);
  v7 = *v0;
  v8 = sub_1E487906C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1E48703D4(*(v7 + 56) + v28, v37, type metadata accessor for DayEvents);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1E487049C(v27, *(v29 + 56) + v28, type metadata accessor for DayEvents);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1E4862224(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E487914C();
  sub_1E4878C0C();
  v9 = sub_1E487917C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1E48790EC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1E4864514(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E4862374(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  v36 = a2;
  v13 = sub_1E4878A9C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1E486CD08(&qword_1EE2B59F8, MEMORY[0x1E6969530]);
      v23 = sub_1E4878AFC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1E4864694(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E4862654(uint64_t a1, void *a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for Event();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  v12 = sub_1E487917C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1E48703D4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for Event);
      v17 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1E487043C(v9, type metadata accessor for Event);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1E487043C(a2, type metadata accessor for Event);
    sub_1E48703D4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for Event);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E48703D4(a2, v9, type metadata accessor for Event);
    v23 = *v3;
    sub_1E4864938(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23;
    sub_1E487049C(a2, v20, type metadata accessor for Event);
    return 1;
  }
}

uint64_t sub_1E48628B0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1E487914C();
  sub_1E487820C();
  v8 = sub_1E487917C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v13 = sub_1E48781DC();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E4864B98(v16, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1E48629F0(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v5 = *(EventContentView - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](EventContentView);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v36 - v10;
  v37 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E487914C();
  sub_1E487736C();
  sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8]);
  sub_1E4878AAC();
  v13 = *(EventContentView + 20);
  sub_1E487719C();
  sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v40 = *(a2 + *(EventContentView + 24));
  sub_1E487916C();
  v14 = sub_1E487917C();
  v15 = v11 + 56;
  v16 = -1 << *(v11 + 32);
  v17 = v14 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    v39 = v19;
    do
    {
      v20 = v19 * v17;
      sub_1E48703D4(*(v11 + 48) + v19 * v17, v9, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      if (sub_1E487734C() & 1) != 0 && (v21 = *(EventContentView + 20), (sub_1E487715C()))
      {
        v22 = *(EventContentView + 24);
        v23 = v18;
        v24 = v15;
        v25 = a2;
        v26 = v11;
        v27 = EventContentView;
        v28 = v13;
        v29 = v9[v22];
        sub_1E487043C(v9, type metadata accessor for InlineNextEventContentViewModel.TextOption);
        v30 = v40 == v29;
        v13 = v28;
        EventContentView = v27;
        v11 = v26;
        a2 = v25;
        v15 = v24;
        v18 = v23;
        v19 = v39;
        if (v30)
        {
          sub_1E487043C(a2, type metadata accessor for InlineNextEventContentViewModel.TextOption);
          sub_1E48703D4(*(v11 + 48) + v20, v38, type metadata accessor for InlineNextEventContentViewModel.TextOption);
          return 0;
        }
      }

      else
      {
        sub_1E487043C(v9, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v32 = v37;
  v33 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v36;
  sub_1E48703D4(a2, v36, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  v41 = *v32;
  sub_1E4864D08(v35, v17, isUniquelyReferenced_nonNull_native);
  *v32 = v41;
  sub_1E487049C(a2, v38, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  return 1;
}

uint64_t sub_1E4862D90(void *a1, void *a2)
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

    v9 = sub_1E4878F1C();

    if (v9)
    {

      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1E4878F0C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1E4862FC8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1E4864268(v22 + 1);
    }

    v20 = v8;
    sub_1E4864490(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v11 = *(v6 + 40);
  v12 = sub_1E4878E2C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1E486503C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1E4878E3C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1E4862FC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
    v2 = sub_1E4878F6C();
    v16 = v2;
    sub_1E4878EFC();
    if (sub_1E4878F2C())
    {
      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1E4864268(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1E4878E2C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1E4878F2C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1E48631B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB0, &qword_1E4883770);
  result = sub_1E4878F5C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1E487914C();
      sub_1E4878C0C();
      result = sub_1E487917C();
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
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
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
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1E4863418(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E487732C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB80, &qword_1E4883740);
  result = sub_1E4878F5C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
      result = sub_1E4878A9C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1E4863774(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for Event();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v13 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  result = sub_1E4878F5C();
  v15 = result;
  if (*(v12 + 16))
  {
    v46 = v1;
    v47 = v8;
    v16 = 0;
    v17 = (v12 + 56);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v22 = result + 56;
    v49 = v7;
    v50 = v12;
    v48 = result;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v53 = (v20 - 1) & v20;
LABEL_17:
      v27 = *(v12 + 48);
      v52 = *(v51 + 72);
      sub_1E487049C(v27 + v52 * (v24 | (v16 << 6)), v11, type metadata accessor for Event);
      v28 = v15[5];
      sub_1E487914C();
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_1E4773850(&v11[*(v8 + 44)], v7, &unk_1ECF7B688, &qword_1E487C160);
      v29 = sub_1E487725C();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v7, 1, v29) == 1)
      {
        sub_1E47738B8(v7, &unk_1ECF7B688, &qword_1E487C160);
        v31 = 0;
        v32 = 0xE000000000000000;
      }

      else
      {
        v33 = sub_1E487723C();
        v34 = v7;
        v31 = v33;
        v32 = v35;
        (*(v30 + 8))(v34, v29);
      }

      MEMORY[0x1E69192D0](v31, v32);

      MEMORY[0x1E69192D0](45, 0xE100000000000000);
      v8 = v47;
      if (v11[*(v47 + 52)])
      {
        v36 = 1702195828;
      }

      else
      {
        v36 = 0x65736C6166;
      }

      if (v11[*(v47 + 52)])
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      MEMORY[0x1E69192D0](v36, v37);

      sub_1E4878C0C();

      result = sub_1E487917C();
      v15 = v48;
      v38 = -1 << *(v48 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      v12 = v50;
      if (((-1 << v39) & ~*(v22 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v7 = v49;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v22 + 8 * v40);
          if (v44 != -1)
          {
            v23 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v39) & ~*(v22 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v7 = v49;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1E487049C(v11, v15[6] + v23 * v52, type metadata accessor for Event);
      ++v15[2];
      v20 = v53;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v53 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    v45 = 1 << *(v12 + 32);
    if (v45 >= 64)
    {
      bzero(v17, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v45;
    }

    v2 = v46;
    *(v12 + 16) = 0;
  }

  *v2 = v15;
  return result;
}

uint64_t sub_1E4863C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD0, &qword_1E48837D8);
  result = sub_1E4878F5C();
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1E487914C();
      sub_1E487820C();
      result = sub_1E487917C();
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

uint64_t sub_1E4863EA0(uint64_t a1)
{
  v2 = v1;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v38 = *(EventContentView - 8);
  v39 = EventContentView;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](EventContentView);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB98, &qword_1E4883758);
  result = sub_1E4878F5C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v40 = *(v38 + 72);
      sub_1E487049C(v23 + v40 * (v20 | (v12 << 6)), v7, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      v24 = *(v11 + 40);
      sub_1E487914C();
      sub_1E487736C();
      sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8]);
      sub_1E4878AAC();
      v25 = v39;
      v26 = *(v39 + 20);
      sub_1E487719C();
      sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848]);
      sub_1E4878AAC();
      v27 = v7[*(v25 + 24)];
      sub_1E487916C();
      result = sub_1E487917C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1E487049C(v7, *(v11 + 48) + v19 * v40, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v8 + 32);
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1E4864268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  result = sub_1E4878F5C();
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
      v19 = *(v6 + 40);
      result = sub_1E4878E2C();
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1E4864490(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1E4878E2C();
  v5 = -1 << *(a2 + 32);
  result = sub_1E4878EEC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1E4864514(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E48631B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E48651AC();
      goto LABEL_16;
    }

    sub_1E4865BF8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1E487914C();
  sub_1E4878C0C();
  result = sub_1E487917C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E48790EC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E487911C();
  __break(1u);
  return result;
}

uint64_t sub_1E4864694(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E4863418(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E4865308();
      goto LABEL_12;
    }

    sub_1E4865E30(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  v15 = sub_1E4878A9C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1E486CD08(&qword_1EE2B59F8, MEMORY[0x1E6969530]);
      v23 = sub_1E4878AFC();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E487911C();
  __break(1u);
  return result;
}

uint64_t sub_1E4864938(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1E4863774(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1E4865540();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1E486614C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  v18 = sub_1E487917C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1E48703D4(*(v16 + 48) + v21 * a2, v13, type metadata accessor for Event);
      v22 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1E487043C(v13, type metadata accessor for Event);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1E487049C(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for Event);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E487911C();
  __break(1u);
  return result;
}

uint64_t sub_1E4864B98(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E4863C50(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1E486574C();
      goto LABEL_12;
    }

    sub_1E48665F8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1E487914C();
  sub_1E487820C();
  result = sub_1E487917C();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v14 = sub_1E48781DC();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E487911C();
  __break(1u);
  return result;
}

uint64_t sub_1E4864D08(uint64_t a1, unint64_t a2, char a3)
{
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v28 = *(EventContentView - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](EventContentView);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v27 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1E4863EA0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E486589C();
      goto LABEL_16;
    }

    sub_1E4866820(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E487914C();
  sub_1E487736C();
  sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8]);
  sub_1E4878AAC();
  v15 = *(EventContentView + 20);
  sub_1E487719C();
  sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v29 = *(a1 + *(EventContentView + 24));
  sub_1E487916C();
  v16 = sub_1E487917C();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v28 + 72);
    do
    {
      sub_1E48703D4(*(v13 + 48) + v19 * a2, v10, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      if (sub_1E487734C() & 1) != 0 && (v20 = *(EventContentView + 20), (sub_1E487715C()))
      {
        v21 = v10[*(EventContentView + 24)];
        sub_1E487043C(v10, type metadata accessor for InlineNextEventContentViewModel.TextOption);
        if (v29 == v21)
        {
          sub_1E487911C();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_1E487043C(v10, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v22 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1E487049C(a1, *(v22 + 48) + *(v28 + 72) * a2, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

void sub_1E486503C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E4864268(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1E4865AA8();
      goto LABEL_12;
    }

    sub_1E4866BBC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1E4878E2C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1E4878E3C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1E487911C();
  __break(1u);
}

void *sub_1E48651AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB0, &qword_1E4883770);
  v2 = *v0;
  v3 = sub_1E4878F4C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1E4865308()
{
  v1 = v0;
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB80, &qword_1E4883740);
  v7 = *v0;
  v8 = sub_1E4878F4C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1E4865540()
{
  v1 = v0;
  v2 = type metadata accessor for Event();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  v7 = *v0;
  v8 = sub_1E4878F4C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1E48703D4(*(v7 + 48) + v22, v6, type metadata accessor for Event);
        result = sub_1E487049C(v6, *(v9 + 48) + v22, type metadata accessor for Event);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1E486574C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD0, &qword_1E48837D8);
  v2 = *v0;
  v3 = sub_1E4878F4C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1E486589C()
{
  v1 = v0;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v3 = *(EventContentView - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](EventContentView - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB98, &qword_1E4883758);
  v7 = *v0;
  v8 = sub_1E4878F4C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1E48703D4(*(v7 + 48) + v22, v6, type metadata accessor for InlineNextEventContentViewModel.TextOption);
        result = sub_1E487049C(v6, *(v9 + 48) + v22, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

id sub_1E4865AA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  v2 = *v0;
  v3 = sub_1E4878F4C();
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

uint64_t sub_1E4865BF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB0, &qword_1E4883770);
  result = sub_1E4878F5C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1E487914C();

      sub_1E4878C0C();
      result = sub_1E487917C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1E4865E30(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E487732C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB80, &qword_1E4883740);
  v10 = sub_1E4878F5C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
      result = sub_1E4878A9C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1E486614C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for Event();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v13 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  result = sub_1E4878F5C();
  v15 = result;
  if (*(v12 + 16))
  {
    v45 = v1;
    v46 = result;
    v16 = 0;
    v17 = v12 + 56;
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v22 = result + 56;
    v48 = v12;
    v49 = v7;
    v47 = v8;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v52 = (v20 - 1) & v20;
LABEL_17:
      v27 = *(v12 + 48);
      v51 = *(v50 + 72);
      sub_1E48703D4(v27 + v51 * (v24 | (v16 << 6)), v11, type metadata accessor for Event);
      v28 = v15[5];
      sub_1E487914C();
      v53 = 0;
      v54 = 0xE000000000000000;
      v29 = v11;
      sub_1E4773850(&v11[*(v8 + 44)], v7, &unk_1ECF7B688, &qword_1E487C160);
      v30 = sub_1E487725C();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v7, 1, v30) == 1)
      {
        sub_1E47738B8(v7, &unk_1ECF7B688, &qword_1E487C160);
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v32 = sub_1E487723C();
        v34 = v7;
        v33 = v35;
        (*(v31 + 8))(v34, v30);
      }

      MEMORY[0x1E69192D0](v32, v33);

      MEMORY[0x1E69192D0](45, 0xE100000000000000);
      v8 = v47;
      v11 = v29;
      if (v29[*(v47 + 52)])
      {
        v36 = 1702195828;
      }

      else
      {
        v36 = 0x65736C6166;
      }

      if (v29[*(v47 + 52)])
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      MEMORY[0x1E69192D0](v36, v37);

      sub_1E4878C0C();

      result = sub_1E487917C();
      v15 = v46;
      v38 = -1 << *(v46 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v22 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v12 = v48;
        v7 = v49;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v22 + 8 * v40);
          if (v44 != -1)
          {
            v23 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_39;
      }

      v23 = __clz(__rbit64((-1 << v39) & ~*(v22 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v12 = v48;
      v7 = v49;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1E487049C(v11, v15[6] + v23 * v51, type metadata accessor for Event);
      ++v15[2];
      v20 = v52;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v2 = v45;
        goto LABEL_37;
      }

      v26 = *(v17 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v52 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

LABEL_37:
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1E48665F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD0, &qword_1E48837D8);
  result = sub_1E4878F5C();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1E487914C();

      sub_1E487820C();
      result = sub_1E487917C();
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
      *(*(v6 + 48) + 8 * v13) = v17;
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

uint64_t sub_1E4866820(uint64_t a1)
{
  v2 = v1;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v37 = *(EventContentView - 8);
  v38 = EventContentView;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](EventContentView);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB98, &qword_1E4883758);
  result = sub_1E4878F5C();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v39 = *(v37 + 72);
      sub_1E48703D4(v23 + v39 * (v20 | (v12 << 6)), v7, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      v24 = *(v11 + 40);
      sub_1E487914C();
      sub_1E487736C();
      sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8]);
      sub_1E4878AAC();
      v25 = v38;
      v26 = *(v38 + 20);
      sub_1E487719C();
      sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848]);
      sub_1E4878AAC();
      v27 = v7[*(v25 + 24)];
      sub_1E487916C();
      result = sub_1E487917C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v8 = v36;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v8 = v36;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1E487049C(v7, *(v11 + 48) + v19 * v39, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1E4866BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  result = sub_1E4878F5C();
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
      result = sub_1E4878E2C();
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

uint64_t sub_1E4866E80(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E4878F0C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1E4878FBC();
}

unint64_t sub_1E4866EE4(unint64_t result, uint64_t a2, uint64_t a3)
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

    v5 = sub_1E4860B84(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1E4866FB8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1E4866FB8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_1E47738B8(a4, &qword_1ECF7DBC0, &qword_1E48837C8);
  }

  result = sub_1E47A1524(a4, v10);
  if (a3 == 1)
  {
    return sub_1E47738B8(a4, &qword_1ECF7DBC0, &qword_1E48837C8);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E48670D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Event();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_1E47738B8(v6, &qword_1ECF7B950, &unk_1E487AE90))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1E48703D4(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for Event);
      sub_1E486857C(v12, v6);
      sub_1E487043C(v12, type metadata accessor for Event);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1E48672DC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_1E4878F0C())
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
    sub_1E4878EFC();
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    sub_1E486CD68();
    sub_1E4878D8C();
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
      sub_1E47A7300();
      return;
    }

    while (1)
    {
      v18 = sub_1E48687CC(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1E4878F2C())
      {
        sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
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

uint64_t sub_1E48674FC(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - v8;
  v79 = type metadata accessor for Event();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v79);
  v82 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v66 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v80 = (&v66 - v17);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_53;
  }

  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v78 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v71 = (63 - v20) >> 6;
  v77 = (v10 + 56);
  v76 = (v10 + 48);
  v81 = (a2 + 56);

  v24 = 0;
  v75 = a1;
  v74 = a1 + 56;
  v67 = v9;
  for (i = v10; ; v10 = i)
  {
    v25 = v22;
    v26 = v24;
    v68 = v22;
    if (v22)
    {
LABEL_15:
      v22 = (v25 - 1) & v25;
      sub_1E48703D4(*(a1 + 48) + *(v10 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v9, type metadata accessor for Event);
      v30 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_56;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v19 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      v22 = 0;
      v30 = 1;
    }

    v31 = v79;
    v73 = *v77;
    v73(v9, v30, 1, v79);
    v83 = a1;
    v84 = v19;
    v85 = v78;
    v86 = v28;
    v87 = v22;
    v72 = *v76;
    if (v72(v9, 1, v31) == 1)
    {
      sub_1E47738B8(v9, &qword_1ECF7B950, &unk_1E487AE90);
      goto LABEL_51;
    }

    sub_1E487049C(v9, v80, type metadata accessor for Event);
    v32 = *(a2 + 40);
    sub_1E487914C();
    sub_1E47CDCB4();
    sub_1E4878C0C();

    v33 = sub_1E487917C();
    v34 = -1 << *(a2 + 32);
    v24 = v33 & ~v34;
    v10 = v24 >> 6;
    v9 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1E487043C(v80, type metadata accessor for Event);
    v24 = v28;
    a1 = v75;
    v19 = v74;
    v9 = v67;
  }

  v35 = ~v34;
  v26 = *(i + 72);
  v19 = a2;
  while (1)
  {
    sub_1E48703D4(*(a2 + 48) + v26 * v24, v16, type metadata accessor for Event);
    v36 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v16, v80);
    sub_1E487043C(v16, type metadata accessor for Event);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v35;
    v10 = v24 >> 6;
    v9 = 1 << v24;
    a2 = v19;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v37 = sub_1E487043C(v80, type metadata accessor for Event);
  a2 = v19;
  v38 = *(v19 + 32);
  v67 = ((1 << v38) + 63) >> 6;
  v23 = (8 * v67);
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v68 = &v66;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v10] & ~v9;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v10] = v41;
    v43 = v42 - 1;
    v24 = v75;
    v10 = v74;
    v44 = v71;
LABEL_25:
    i = v43;
    while (v22)
    {
      v45 = v28;
LABEL_37:
      v48 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_1E48703D4(*(v24 + 48) + (v48 | (v45 << 6)) * v26, a1, type metadata accessor for Event);
      v49 = 0;
LABEL_38:
      v50 = v79;
      v73(a1, v49, 1, v79);
      v83 = v24;
      v84 = v10;
      v85 = v78;
      v86 = v28;
      v87 = v22;
      if (v72(a1, 1, v50) == 1)
      {
        sub_1E47738B8(a1, &qword_1ECF7B950, &unk_1E487AE90);
        a2 = sub_1E48690A0(v80, v67, i, a2);
        goto LABEL_51;
      }

      sub_1E487049C(a1, v82, type metadata accessor for Event);
      v51 = *(a2 + 40);
      sub_1E487914C();
      sub_1E47CDCB4();
      sub_1E4878C0C();

      v52 = sub_1E487917C();
      v53 = -1 << *(a2 + 32);
      v54 = v52 & ~v53;
      v9 = v54 >> 6;
      v55 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        sub_1E48703D4(*(v19 + 48) + v54 * v26, v16, type metadata accessor for Event);
        v56 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v16, v82);
        sub_1E487043C(v16, type metadata accessor for Event);
        if ((v56 & 1) == 0)
        {
          v57 = ~v53;
          do
          {
            v54 = (v54 + 1) & v57;
            v9 = v54 >> 6;
            v55 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_1E48703D4(*(v19 + 48) + v54 * v26, v16, type metadata accessor for Event);
            v58 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v16, v82);
            sub_1E487043C(v16, type metadata accessor for Event);
          }

          while ((v58 & 1) == 0);
        }

        sub_1E487043C(v82, type metadata accessor for Event);
        v59 = v80[v9];
        v80[v9] = v59 & ~v55;
        v60 = (v59 & v55) == 0;
        a2 = v19;
        v24 = v75;
        a1 = v70;
        v10 = v74;
        v44 = v71;
        if (!v60)
        {
          v43 = i - 1;
          if (__OFSUB__(i, 1))
          {
            __break(1u);
          }

          if (i == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_1E487043C(v82, type metadata accessor for Event);
        a2 = v19;
        v24 = v75;
        a1 = v70;
        v10 = v74;
        v44 = v71;
      }
    }

    if (v44 <= (v28 + 1))
    {
      v46 = v28 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v22 = 0;
        v49 = 1;
        v28 = v47;
        goto LABEL_38;
      }

      v22 = *(v10 + 8 * v45);
      ++v28;
      if (v22)
      {
        v28 = v45;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v80 = v23;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v63 = v80;
  v64 = swift_slowAlloc();
  memcpy(v64, v81, v63);
  v65 = sub_1E4868964(v64, v67, a2, v24, &v83);

  MEMORY[0x1E6919FE0](v64, -1, -1);
  a2 = v65;
LABEL_51:
  sub_1E47A7300();
LABEL_53:
  v61 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1E4867EFC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v86 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_63;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4878EFC();
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    sub_1E486CD68();
    sub_1E4878D8C();
    v4 = v81;
    v6 = v82;
    v7 = v83;
    v8 = v84;
    v9 = v85;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v76 = v4;
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v67 = v7;
  v13 = (v7 + 64) >> 6;
  v73 = (v3 + 56);
  v80 = v9;
  v70 = v6;
  v71 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_1E4878F2C();
      if (!v21)
      {
        goto LABEL_62;
      }

      v74 = v21;
      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      swift_dynamicCast();
      v19 = v75;
      v17 = v8;
      v2 = v9;
      if (!v75)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v76 = v4;
      v77 = v6;
      v78 = v67;
      v79 = v17;
      v80 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = *(v3 + 40);
    v23 = v19;
    v24 = sub_1E4878E2C();
    v25 = -1 << *(v3 + 32);
    v8 = v24 & ~v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v70;
    v4 = v71;
  }

  v26 = ~v25;
  v27 = sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v28 = *(*(v3 + 48) + 8 * v8);
  v72 = v27;
  while (1)
  {
    v29 = sub_1E4878E3C();

    if (v29)
    {
      break;
    }

    v8 = (v8 + 1) & v26;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v3 + 48) + 8 * v8);
  }

  v31 = *(v3 + 32);
  v64 = ((1 << v31) + 63) >> 6;
  v5 = 8 * v64;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v65 = &v63;
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v73, v32);
    v34 = *&v33[8 * v4] & ~v15;
    v35 = *(v3 + 16);
    v66 = v33;
    *&v33[8 * v4] = v34;
    v4 = v35 - 1;
    v37 = v70;
    v36 = v71;
    v38 = i;
LABEL_33:
    v68 = v4;
    while (v36 < 0)
    {
      v39 = sub_1E4878F2C();
      if (!v39)
      {
        goto LABEL_61;
      }

      v74 = v39;
      swift_dynamicCast();
      v40 = v75;
      if (!v75)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = *(v3 + 40);
      v46 = sub_1E4878E2C();
      v47 = v3;
      v48 = -1 << *(v3 + 32);
      v49 = v46 & ~v48;
      v50 = v49 >> 6;
      v51 = 1 << v49;
      if (((1 << v49) & v73[v49 >> 6]) != 0)
      {
        v52 = ~v48;
        while (1)
        {
          v8 = *(*(v47 + 48) + 8 * v49);
          v53 = sub_1E4878E3C();

          if (v53)
          {
            break;
          }

          v49 = (v49 + 1) & v52;
          v50 = v49 >> 6;
          v51 = 1 << v49;
          if (((1 << v49) & v73[v49 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v54 = v66[v50];
        v66[v50] = v54 & ~v51;
        v55 = (v54 & v51) == 0;
        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
        if (!v55)
        {
          v4 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v36 + 48) + ((v15 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v15;
LABEL_49:
      v76 = v36;
      v77 = v37;
      v78 = v67;
      v79 = v42;
      v17 = v42;
      v80 = v2;
      if (!v40)
      {
LABEL_61:
        v3 = sub_1E486952C(v66, v64, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v38 <= v17 + 1)
    {
      v41 = v17 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v38)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v58 = v5;

    v59 = v58;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v73, v59);
  sub_1E4868E04(v60, v64, v3, v8, &v76);
  v62 = v61;

  MEMORY[0x1E6919FE0](v60, -1, -1);
  v3 = v62;
LABEL_62:
  sub_1E47A7300();
LABEL_63:
  v56 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1E486857C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Event();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  v12 = sub_1E487917C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1E48703D4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for Event);
      v17 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_1E487043C(v9, type metadata accessor for Event);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v27 = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E4865540();
      v22 = v27;
    }

    a2 = v26;
    sub_1E487049C(*(v22 + 48) + v16 * v14, v26, type metadata accessor for Event);
    sub_1E4869888(v14);
    v18 = 0;
    *v19 = v27;
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_1E48687CC(void *a1)
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
    v7 = sub_1E4878F3C();

    if (v7)
    {
      v8 = sub_1E4869720();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v11 = *(v3 + 40);
  v12 = sub_1E4878E2C();
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
    v17 = sub_1E4878E3C();

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
    sub_1E4865AA8();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1E4869CE8(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1E4868964(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v49 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v48 - v11;
  v55 = type metadata accessor for Event();
  v12 = *(*(v55 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v55);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v13);
  v51 = a1;
  v52 = (&v48 - v17);
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v19 = v18 - 1;
  v53 = (v20 + 48);
  v54 = (v20 + 56);
  v59 = a3;
  v57 = v20;
  v58 = a3 + 56;
  while (2)
  {
    v50 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v32 = 1;
              v31 = v56;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        v31 = v56;
        sub_1E48703D4(*(v21 + 48) + *(v57 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v56, type metadata accessor for Event);
        v32 = 0;
        v29 = v26;
LABEL_14:
        v33 = v55;
        (*v54)(v31, v32, 1, v55);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v53)(v31, 1, v33) == 1)
        {
          sub_1E47738B8(v31, &qword_1ECF7B950, &unk_1E487AE90);
          v47 = v59;

          return sub_1E48690A0(v51, v49, v50, v47);
        }

        v34 = v52;
        sub_1E487049C(v31, v52, type metadata accessor for Event);
        v35 = v59;
        v36 = *(v59 + 40);
        sub_1E487914C();
        sub_1E47CDCB4();
        sub_1E4878C0C();

        v37 = sub_1E487917C();
        v38 = -1 << *(v35 + 32);
        v39 = v37 & ~v38;
        v40 = v39 >> 6;
        v41 = 1 << v39;
        if (((1 << v39) & *(v58 + 8 * (v39 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_1E487043C(v34, type metadata accessor for Event);
      }

      v42 = *(v57 + 72);
      sub_1E48703D4(*(v59 + 48) + v42 * v39, v15, type metadata accessor for Event);
      v43 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v15, v34);
      sub_1E487043C(v15, type metadata accessor for Event);
      if ((v43 & 1) == 0)
      {
        v44 = ~v38;
        do
        {
          v39 = (v39 + 1) & v44;
          v40 = v39 >> 6;
          v41 = 1 << v39;
          if (((1 << v39) & *(v58 + 8 * (v39 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_1E48703D4(*(v59 + 48) + v42 * v39, v15, type metadata accessor for Event);
          v45 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v15, v34);
          sub_1E487043C(v15, type metadata accessor for Event);
        }

        while ((v45 & 1) == 0);
      }

      result = sub_1E487043C(v34, type metadata accessor for Event);
      v46 = v51[v40];
      v51[v40] = v46 & ~v41;
    }

    while ((v46 & v41) == 0);
    v19 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v50 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

void sub_1E4868E04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1E4878F2C())
          {
            goto LABEL_30;
          }

          sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1E486952C(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_1E4878E2C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_1E4878E3C();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_1E4878E3C();

          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1E48690A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for Event();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  result = sub_1E4878F7C();
  v16 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v20 = result + 56;
  v47 = v11;
  v48 = a4;
  v45 = v15;
  v46 = v12;
  v44 = result;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_16:
    v24 = *(a4 + 48);
    v51 = *(v49 + 72);
    sub_1E48703D4(v24 + v51 * (v21 | (v19 << 6)), v15, type metadata accessor for Event);
    v25 = v16[5];
    sub_1E487914C();
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1E4773850(&v15[*(v12 + 44)], v11, &unk_1ECF7B688, &qword_1E487C160);
    v26 = sub_1E487725C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v11, 1, v26) == 1)
    {
      sub_1E47738B8(v11, &unk_1ECF7B688, &qword_1E487C160);
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    else
    {
      v30 = sub_1E487723C();
      v31 = v11;
      v28 = v30;
      v29 = v32;
      (*(v27 + 8))(v31, v26);
    }

    MEMORY[0x1E69192D0](v28, v29);

    MEMORY[0x1E69192D0](45, 0xE100000000000000);
    v15 = v45;
    v12 = v46;
    if (v45[*(v46 + 52)])
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v45[*(v46 + 52)])
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v33, v34);

    sub_1E4878C0C();

    result = sub_1E487917C();
    v16 = v44;
    v35 = -1 << *(v44 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v11 = v47;
      a4 = v48;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v20 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_35;
        }
      }

      goto LABEL_40;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v11 = v47;
    a4 = v48;
LABEL_35:
    *(v20 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    result = sub_1E487049C(v15, v16[6] + v38 * v51, type metadata accessor for Event);
    ++v16[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_41;
    }

    v18 = v50;
    if (!a3)
    {
LABEL_37:

      return v16;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      goto LABEL_37;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v50 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1E486952C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  result = sub_1E4878F7C();
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
    result = sub_1E4878E2C();
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

uint64_t sub_1E4869720()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1E4878F0C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1E4862FC8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1E4878E2C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1E4878E3C();

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
  sub_1E4869CE8(v9);
  result = sub_1E4878E3C();
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

uint64_t sub_1E4869888(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v38 - v5;
  v44 = type metadata accessor for Event();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v44);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *v1 + 56;
  v13 = -1 << *(*v1 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_1E4878EDC();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v40 = (v16 + 1) & v15;
      v41 = v15;
      v17 = *(v6 + 72);
      v18 = v44;
      v42 = v12;
      v39 = v17;
      while (1)
      {
        v19 = a1;
        v20 = v17 * v14;
        sub_1E48703D4(*(v11 + 48) + v17 * v14, v10, type metadata accessor for Event);
        v21 = v11;
        v22 = *(v11 + 40);
        sub_1E487914C();
        v45 = 0;
        v46 = 0xE000000000000000;
        v23 = v43;
        sub_1E4773850(&v10[*(v18 + 44)], v43, &unk_1ECF7B688, &qword_1E487C160);
        v24 = sub_1E487725C();
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(v23, 1, v24) == 1)
        {
          sub_1E47738B8(v23, &unk_1ECF7B688, &qword_1E487C160);
          v26 = 0;
          v27 = 0xE000000000000000;
        }

        else
        {
          v26 = sub_1E487723C();
          v27 = v28;
          (*(v25 + 8))(v23, v24);
        }

        MEMORY[0x1E69192D0](v26, v27);

        MEMORY[0x1E69192D0](45, 0xE100000000000000);
        v18 = v44;
        v29 = v10[*(v44 + 52)] ? 1702195828 : 0x65736C6166;
        v30 = v10[*(v44 + 52)] ? 0xE400000000000000 : 0xE500000000000000;
        MEMORY[0x1E69192D0](v29, v30);

        sub_1E4878C0C();

        v31 = sub_1E487917C();
        sub_1E487043C(v10, type metadata accessor for Event);
        v32 = v31 & v41;
        v33 = v41;
        a1 = v19;
        v11 = v21;
        if (v19 >= v40)
        {
          break;
        }

        v12 = v42;
        v17 = v39;
        if (v32 < v40)
        {
          goto LABEL_20;
        }

LABEL_21:
        v34 = v17 * a1;
        if ((v17 * a1) < v20 || *(v21 + 48) + v17 * a1 >= *(v21 + 48) + v20 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v14;
          if (v34 == v20)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v14;
LABEL_6:
        v14 = (v14 + 1) & v33;
        if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v12 = v42;
      v17 = v39;
      if (v32 < v40)
      {
        goto LABEL_6;
      }

LABEL_20:
      if (a1 < v32)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_25:

    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v35 = *(v11 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v37;
    ++*(v11 + 36);
  }

  return result;
}