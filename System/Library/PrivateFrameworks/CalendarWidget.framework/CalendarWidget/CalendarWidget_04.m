uint64_t sub_1E47C7514@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C698, &qword_1E487DE58);
  v2 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v41 = &v38 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6A0, &qword_1E487DE60);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6A8, &unk_1E487DE68);
  v40 = *(v45 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v38 - v7;
  v8 = sub_1E4877CCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v38 - v18;
  v42 = sub_1E487725C();
  v20 = *(v42 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v42);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v38 = &v38 - v25;
  v26 = v1;
  sub_1E47C4FE0(v15);
  sub_1E4877CAC();
  sub_1E47C839C(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v27 = sub_1E4878EAC();
  v28 = *(v9 + 8);
  v28(v13, v8);
  v28(v15, v8);
  if (v27)
  {
    (*(v20 + 56))(v19, 1, 1, v42);
LABEL_4:
    sub_1E47738B8(v19, &unk_1ECF7B688, &qword_1E487C160);
    v31 = v41;
    sub_1E47C5338(v41);
    sub_1E4773850(v31, v44, &qword_1ECF7C698, &qword_1E487DE58);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C6B0, &qword_1ECF7C6A8, &unk_1E487DE68);
    sub_1E47C7BF0();
    sub_1E487803C();
    return sub_1E47738B8(v31, &qword_1ECF7C698, &qword_1E487DE58);
  }

  v29 = type metadata accessor for Event();
  sub_1E4773850(&v26[*(v29 + 44)], v19, &unk_1ECF7B688, &qword_1E487C160);
  v30 = v42;
  if ((*(v20 + 48))(v19, 1, v42) == 1)
  {
    goto LABEL_4;
  }

  v33 = v38;
  (*(v20 + 32))(v38, v19, v30);
  v34 = (*(v20 + 16))(v24, v33, v30);
  MEMORY[0x1EEE9AC00](v34);
  *(&v38 - 2) = v26;
  sub_1E47C7BF0();
  v35 = v39;
  sub_1E487831C();
  v36 = v40;
  v37 = v45;
  (*(v40 + 16))(v44, v35, v45);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1ECF7C6B0, &qword_1ECF7C6A8, &unk_1E487DE68);
  sub_1E487803C();
  (*(v36 + 8))(v35, v37);
  return (*(v20 + 8))(v33, v30);
}

uint64_t sub_1E47C7B3C@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47C5338(a1);
}

unint64_t sub_1E47C7BF0()
{
  result = qword_1ECF7C6B8;
  if (!qword_1ECF7C6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C698, &qword_1E487DE58);
    sub_1E47C7CA8();
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C6B8);
  }

  return result;
}

unint64_t sub_1E47C7CA8()
{
  result = qword_1ECF7C6C0;
  if (!qword_1ECF7C6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C6C8, &qword_1E487DE78);
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C6C0);
  }

  return result;
}

uint64_t sub_1E47C7DBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E47C7E40()
{
  result = qword_1ECF7C6F0;
  if (!qword_1ECF7C6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C6F8, &qword_1E487DE90);
    sub_1E4773680(&qword_1ECF7C700, &qword_1ECF7C708, &qword_1E487DE98);
    sub_1E47C839C(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C6F0);
  }

  return result;
}

uint64_t sub_1E47C7F30()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E487A7F0;
  *(v5 + 32) = sub_1E47C46AC();
  if (sub_1E47C4844())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA0], v0);
  v6 = sub_1E48782CC();

  (*(v1 + 8))(v4, v0);
  *(v5 + 40) = v6;
  return v5;
}

double sub_1E47C8088(uint64_t a1)
{
  v2 = sub_1E48782AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E47C46AC();
  sub_1E487201C(v7, a1);
  v9 = v8;

  if (sub_1E47C4844())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E6980EA0], v2);
  v10 = sub_1E48782CC();

  (*(v3 + 8))(v6, v2);
  v11 = v9 + -1.0;
  sub_1E487201C(v10, a1);
  v13 = v12;

  v14 = v11 + v13;
  v15 = *(sub_1E47C51E8() + 48);

  return v14 + v15;
}

uint64_t sub_1E47C8208()
{
  sub_1E47C8238();
  result = sub_1E4877FDC();
  qword_1ECF7EA78 = result;
  return result;
}

unint64_t sub_1E47C8238()
{
  result = qword_1ECF7C720;
  if (!qword_1ECF7C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C720);
  }

  return result;
}

uint64_t sub_1E47C828C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47C82F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E47C839C(qword_1EE2B2C48, type metadata accessor for NarrowEventTimeText);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E47C839C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E47C83E4()
{
  result = qword_1ECF7C778;
  if (!qword_1ECF7C778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C730, &qword_1E487DFC0);
    sub_1E47C82F4(&qword_1ECF7C780, &qword_1ECF7C728, &qword_1E487DFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C778);
  }

  return result;
}

unint64_t sub_1E47C84A0()
{
  result = qword_1ECF7C798;
  if (!qword_1ECF7C798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C7A0, &qword_1E487E148);
    sub_1E4773680(&qword_1ECF7C6B0, &qword_1ECF7C6A8, &unk_1E487DE68);
    sub_1E47C7BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C798);
  }

  return result;
}

unint64_t sub_1E47C8570()
{
  result = qword_1ECF7C7B0;
  if (!qword_1ECF7C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C7B0);
  }

  return result;
}

uint64_t sub_1E47C85C4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NarrowMultidayEventsView() + 36);
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

uint64_t type metadata accessor for NarrowMultidayEventsView()
{
  result = qword_1EE2B4998;
  if (!qword_1EE2B4998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47C8790()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47C8968(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E478305C();
      if (v2 <= 0x3F)
      {
        sub_1E47C8968(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E47C8968(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            sub_1E47C8968(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
            if (v5 <= 0x3F)
            {
              sub_1E48783DC();
              if (v6 <= 0x3F)
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

void sub_1E47C8968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47C89E8@<X0>(double *a1@<X8>)
{
  v338 = a1;
  v354 = type metadata accessor for ConflictEventTitleText(0);
  v353 = *(v354 - 8);
  v2 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v354);
  v329 = &v307 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = type metadata accessor for ConflictTimeText(0);
  v350 = *(v351 - 8);
  v4 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v351);
  v328 = &v307 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = type metadata accessor for NarrowReminderView();
  v357 = *(v358 - 8);
  v6 = *(v357 + 64);
  MEMORY[0x1EEE9AC00](v358);
  v310 = &v307 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = type metadata accessor for NarrowAllDayView();
  v355 = *(v356 - 8);
  v8 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v356);
  v309 = &v307 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *&v382 = &v307 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  *&v381 = &v307 - v15;
  v380 = sub_1E48783BC();
  v339 = *(v380 - 8);
  v16 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v380);
  v379 = &v307 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_1E4877F1C();
  v334 = *(v335 - 8);
  v18 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v333 = &v307 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E0, &qword_1E4881BD0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v314 = &v307 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v313 = (&v307 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v352 = (&v307 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E8, &unk_1E487E2D0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v318 = &v307 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v317 = &v307 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v370 = &v307 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4E8, &qword_1E487D730);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v325 = &v307 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v324 = &v307 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v372 = &v307 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B820, &unk_1E487E2E0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v322 = &v307 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v321 = (&v307 - v46);
  MEMORY[0x1EEE9AC00](v45);
  v371 = &v307 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4F0, &qword_1E487D738);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v308 = &v307 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v326 = &v307 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v332 = &v307 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v369 = &v307 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v374 = &v307 - v58;
  v364 = type metadata accessor for NarrowEventDetailsView(0);
  v359 = *(v364 - 8);
  v59 = v359[8];
  v60 = MEMORY[0x1EEE9AC00](v364);
  v327 = &v307 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v365 = &v307 - v62;
  v63 = type metadata accessor for NoEventsView();
  v64 = *(v63 - 8);
  v383 = (v63 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v368 = &v307 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for NarrowXMoreView();
  v68 = *(v67 - 8);
  v366 = v67 - 8;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v367 = &v307 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = sub_1E48782AC();
  v71 = *(v373 - 8);
  v72 = v71[8];
  MEMORY[0x1EEE9AC00](v373);
  v74 = &v307 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for NarrowTextHeaderView();
  v76 = (v75 - 8);
  v77 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v307 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for NarrowMultidayEventsView();
  v81 = *(v1 + *(v80 + 20));

  v376 = sub_1E479A9C8(v82);

  *&v83 = COERCE_DOUBLE(sub_1E487732C());
  v385 = *&v83;
  v84 = *(v83 - 8);
  v85 = *(v84 + 16);
  v388 = *&v85;
  *&v387 = v84 + 16;
  v389 = v1;
  v85(v79, v1, v83);
  v85(&v79[v76[7]], v1, v83);
  *&v79[v76[9]] = swift_getKeyPath();
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  v79[v76[8]] = 0;
  v86 = &v79[v76[10]];
  *v86 = 0x4D4D202C45454545;
  *(v86 + 1) = 0xEB0000000064204DLL;
  v87 = &v79[v76[11]];
  strcpy(v87, "EEEE, MMMM d");
  v87[13] = 0;
  *(v87 + 7) = -5120;
  v88 = &v79[v76[12]];
  *v88 = 1162167621;
  *(v88 + 1) = 0xE400000000000000;
  v89 = v76[13];
  sub_1E48782DC();
  v362 = *MEMORY[0x1E6980EA0];
  v90 = v71 + 13;
  v361 = v71[13];
  v91 = v373;
  v361(v74);
  sub_1E48782CC();

  v360 = v71[1];
  v363 = v71 + 1;
  v360(v74, v91);
  v92 = sub_1E48781FC();
  v348 = v92;

  v337 = v79;
  *&v79[v89] = v92;
  v375 = type metadata accessor for FakeEvents();

  v93 = sub_1E480D21C();
  v94 = v80;
  v386 = v80;
  v95 = *(v80 + 36);
  v96 = v389;
  v97 = v389 + v95;
  v98 = *v97;
  LOBYTE(v79) = *(v97 + 8);
  v384 = v79;
  v99 = v389 + *(v94 + 48);
  v100 = *v99;
  v101 = *(v99 + 8);
  LODWORD(v377) = v101;
  KeyPath = swift_getKeyPath();
  v103 = v367;
  *&v367[*(v366 + 40)] = KeyPath;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v103 = v93;
  v103[8] = 0;
  *(v103 + 2) = v98;
  v103[24] = v79;
  v378 = v100;
  *(v103 + 4) = v100;
  v103[40] = v101;
  (*&v388)(v368, v96, *&v385);
  sub_1E47CC10C(v98, v79);
  sub_1E47CC10C(v98, v79);

  sub_1E47CC10C(v98, v79);

  sub_1E48781BC();
  v104 = v362;
  v105 = v373;
  v106 = v361;
  (v361)(v74, v362, v373);
  sub_1E48782CC();

  v107 = v360;
  v360(v74, v105);
  sub_1E487827C();
  v366 = sub_1E487829C();

  sub_1E48781BC();
  v344 = v90;
  v106(v74, v104, v105);
  v108 = sub_1E48782CC();

  v345 = v74;
  v107(v74, v105);
  v109 = swift_getKeyPath();
  v110 = swift_getKeyPath();
  v111 = v383;
  v112 = v368;
  *(v368 + v383[12]) = v110;
  swift_storeEnumTagMultiPayload();
  *(v112 + v111[13]) = swift_getKeyPath();
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  *(v112 + v111[7]) = 1;
  *(v112 + v111[8]) = 1;
  *(v112 + v111[9]) = v366;
  *(v112 + v111[10]) = v108;
  v113 = v112 + v111[11];
  *v113 = v109;
  *(v113 + 8) = 0;

  v114 = v365;
  sub_1E48060F4(v365);
  v115 = v364;
  v116 = v389;
  (*&v388)(&v114[*(v364 + 20)], v389, *&v385);
  v117 = v386;
  v118 = v115[10];
  v343 = v386[11];
  sub_1E4773850(v116 + v343, &v114[v118], &qword_1ECF7B848, &unk_1E487A820);
  v119 = v115[12];
  v342 = v117[10];
  sub_1E4773850(v116 + v342, &v114[v119], &qword_1ECF7B850, &qword_1E487C800);
  *&v114[v115[8]] = swift_getKeyPath();
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
  *&v114[v115[9]] = swift_getKeyPath();
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v114[v115[6]] = 1;
  v114[v115[7]] = 1;
  v120 = &v114[v115[11]];
  *v120 = v98;
  v121 = v384;
  v120[8] = v384;
  v122 = &v114[v115[13]];
  *v122 = v378;
  v122[8] = v377;
  v123 = v359 + 7;
  v124 = v359[7];
  v124(v374, 1, 1, v115);
  v331 = v123;
  v330 = v124;
  v124(v369, 1, 1, v115);
  v320 = *(v355 + 56);
  v320(v371, 1, 1, v356);
  v323 = *(v357 + 56);
  v323(v372, 1, 1, v358);
  v125 = *(v353 + 56);
  v316 = v353 + 56;
  v315 = v125;
  v125(v370, 1, 1, v354);
  v126 = *(v350 + 56);
  v312 = v350 + 56;
  v311 = v126;
  v126(v352, 1, 1, v351);
  v391 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  inited = swift_initStackObject();
  v319 = xmmword_1E487A7E0;
  *(inited + 16) = xmmword_1E487A7E0;
  *(inited + 32) = v348;
  v128 = inited + 32;
  sub_1E47CC0AC(inited);
  swift_setDeallocating();
  sub_1E47CC118(v128);
  v129 = sub_1E47DE378();
  sub_1E47CC0AC(v129);

  v383 = v98;
  v130 = sub_1E4803A28(0, v98, v121);
  sub_1E47CC0AC(v130);

  v131 = swift_initStackObject();
  *(v131 + 16) = xmmword_1E487A7F0;
  *(v131 + 32) = v366;
  v336 = v108;
  *(v131 + 40) = v108;
  sub_1E47CC0AC(v131);
  swift_setDeallocating();
  swift_arrayDestroy();
  v132 = sub_1E47D3D34();
  sub_1E47CC0AC(v132);

  if ((v376 & 0x100000000) != 0)
  {
    v133 = v324;
    sub_1E48060FC(v324);
    v134 = v358;
    v135 = v389;
    (*&v388)(&v133[*(v358 + 20)], v389, *&v385);
    sub_1E4773850(v135 + v343, &v133[v134[8]], &qword_1ECF7B848, &unk_1E487A820);
    sub_1E4773850(v135 + v342, &v133[v134[10]], &qword_1ECF7B850, &qword_1E487C800);
    *&v133[v134[6]] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *&v133[v134[7]] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *&v133[v134[11]] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v136 = &v133[v134[9]];
    v137 = v383;
    *v136 = v383;
    v136[8] = v121;
    v138 = &v133[v134[12]];
    *v138 = v378;
    v138[8] = v377;
    v323(v133, 0, 1, v134);
    sub_1E47CC10C(v137, v121);

    v139 = v133;
    v140 = v372;
    sub_1E47CC250(v139, v372, &qword_1ECF7C4E8, &qword_1E487D730);
    v141 = v140;
    v142 = v325;
    sub_1E4773850(v141, v325, &qword_1ECF7C4E8, &qword_1E487D730);
    if ((*(v357 + 48))(v142, 1, v134) == 1)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v143 = sub_1E47C7F30();
    sub_1E47CC1F0(v142, type metadata accessor for NarrowReminderView);
    sub_1E47CC0AC(v143);
  }

  v144 = v376;
  if ((v376 & 1) == 0)
  {
    goto LABEL_14;
  }

  v145 = sub_1E480D21C();
  v146 = v356;
  v147 = v321;
  (*&v388)(v321 + *(v356 + 20), v389, *&v385);
  *(v147 + v146[8]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v147 + v146[9]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v147 + v146[10]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v147 + v146[12]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v147 = v145;
  *(v147 + v146[6]) = 0;
  *(v147 + v146[7]) = 0;
  v148 = v147 + v146[11];
  v149 = v383;
  *v148 = v383;
  v148[8] = v121;
  v150 = v147 + v146[13];
  *v150 = v378;
  v150[8] = v377;
  v320(v147, 0, 1, v146);
  sub_1E47CC10C(v149, v121);

  v151 = v147;
  v152 = v371;
  sub_1E47CC250(v151, v371, &qword_1ECF7B820, &unk_1E487E2E0);
  v153 = v322;
  sub_1E4773850(v152, v322, &qword_1ECF7B820, &unk_1E487E2E0);
  if ((*(v355 + 48))(v153, 1, v146) == 1)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v154 = swift_initStackObject();
  *(v154 + 16) = v319;
  v155 = v146[6];
  if (!*(v153 + v155))
  {
    v157 = v153 + v146[11];
    v158 = *v157;
    if (*(v157 + 8) == 1)
    {
      if ((v158 & 1) == 0)
      {
LABEL_10:
        sub_1E48782FC();
        v159 = v345;
        v160 = v373;
        (v361)(v345, v362, v373);
        v156 = sub_1E48782CC();

        v360(v159, v160);
        goto LABEL_13;
      }
    }

    else
    {

      sub_1E4878DDC();
      v161 = sub_1E48780FC();
      sub_1E4877AAC();

      v162 = v333;
      sub_1E4877F0C();
      swift_getAtKeyPath();
      sub_1E477A484(v158, 0);
      (*(v334 + 8))(v162, v335);
      if ((LOBYTE(v390) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1E48782EC();
    v163 = v345;
    v164 = v373;
    (v361)(v345, v362, v373);
    sub_1E48782CC();

    v360(v163, v164);
    v156 = sub_1E48781FC();

    goto LABEL_13;
  }

  v156 = *(v153 + v155);
LABEL_13:
  *(v154 + 32) = v156;

  sub_1E47CC1F0(v153, type metadata accessor for NarrowAllDayView);
  sub_1E47CC0AC(v154);
  swift_setDeallocating();
  sub_1E47CC118(v154 + 32);
LABEL_14:
  v165 = *&v144 & 0x10100;
  v166 = v383;
  if ((*&v144 & 0x10100) == 0)
  {
    goto LABEL_19;
  }

  v167 = v332;
  sub_1E48060F4(v332);
  v168 = v364;
  v169 = v389;
  (*&v388)(&v167[*(v364 + 20)], v389, *&v385);
  sub_1E4773850(v169 + v343, &v167[v168[10]], &qword_1ECF7B848, &unk_1E487A820);
  sub_1E4773850(v169 + v342, &v167[v168[12]], &qword_1ECF7B850, &qword_1E487C800);
  *&v167[v168[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v167[v168[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v167[v168[6]] = 0;
  v167[v168[7]] = 1;
  v170 = &v167[v168[11]];
  *v170 = v166;
  v171 = v384;
  v170[8] = v384;
  v172 = &v167[v168[13]];
  *v172 = v378;
  v172[8] = v377;
  v330(v167, 0, 1, v168);
  sub_1E47CC10C(v166, v171);

  v173 = v167;
  v174 = v374;
  sub_1E47CC250(v173, v374, &qword_1ECF7C4F0, &qword_1E487D738);
  v175 = v326;
  sub_1E4773850(v174, v326, &qword_1ECF7C4F0, &qword_1E487D738);
  v176 = v359[6];
  if (v176(v175, 1, v168) == 1)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v177 = sub_1E47DE378();
  sub_1E47CC1F0(v175, type metadata accessor for NarrowEventDetailsView);
  sub_1E47CC0AC(v177);

  v144 = v376;
  if (v165 != 65792)
  {
LABEL_19:
    if ((v144 & 0x1000000) != 0)
    {
      v187 = v384;
      sub_1E47CC10C(v166, v384);
      v188 = sub_1E4825320(2, 2, v166, v187);
      sub_1E47CC0AC(v188);

      v189 = type metadata accessor for Event();
      v190 = v317;
      (*(*(v189 - 8) + 56))(v317, 1, 1, v189);
      v191 = swift_getKeyPath();
      v192 = v354;
      *&v190[*(v354 + 20)] = v191;
      swift_storeEnumTagMultiPayload();
      *&v190[v192[7]] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v193 = &v190[v192[6]];
      *v193 = v166;
      v193[8] = v187;
      v194 = &v190[v192[8]];
      *v194 = v378;
      v194[8] = v377;
      v315(v190, 0, 1, v192);
      sub_1E47CC10C(v166, v187);
      sub_1E47CC10C(v166, v187);

      v195 = v190;
      v196 = v370;
      sub_1E47CC250(v195, v370, &qword_1ECF7C7E8, &unk_1E487E2D0);
      v197 = v196;
      v198 = v318;
      sub_1E4773850(v197, v318, &qword_1ECF7C7E8, &unk_1E487E2D0);
      if ((*(v353 + 48))(v198, 1, v192) == 1)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v199 = sub_1E4825604();
      sub_1E47CC1F0(v198, type metadata accessor for ConflictEventTitleText);
      sub_1E47CC0AC(v199);

      v200 = sub_1E480D21C();
      v201 = v351;
      v202 = v313;
      (*&v388)(v313 + *(v351 + 20), v389, *&v385);
      *(v202 + *(v201 + 24)) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v202 = v200;
      v203 = v202 + *(v201 + 28);
      *v203 = v166;
      v203[8] = v187;
      v311(v202, 0, 1, v201);
      v204 = v202;
      v205 = v352;
      sub_1E47CC250(v204, v352, &qword_1ECF7C7E0, &qword_1E4881BD0);
      v206 = v205;
      v207 = v314;
      sub_1E4773850(v206, v314, &qword_1ECF7C7E0, &qword_1E4881BD0);
      if ((*(v350 + 48))(v207, 1, v201) == 1)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v208 = sub_1E4825630();
      sub_1E47CC1F0(v207, type metadata accessor for ConflictTimeText);
      sub_1E47CC0AC(v208);

      v347 = 2;
      v346 = v166;
      LODWORD(v349) = v187;
    }

    else
    {
      v347 = 0;
      v346 = 0;
      LODWORD(v349) = 255;
    }

    v209 = 0;
    v378 = "w from model: %@";
    v211 = *&v391 + 56;
    v210 = *(*&v391 + 56);
    v385 = v391;
    v212 = 1 << *(*&v391 + 32);
    v213 = -1;
    if (v212 < 64)
    {
      v213 = ~(-1 << v212);
    }

    v214 = v213 & v210;
    v215 = (v212 + 63) >> 6;
    v377 = (v339 + 8);
    v216 = MEMORY[0x1E69E7CC8];
    v376 = *&v391 + 56;
    v375 = v215;
    while (v214)
    {
      v388 = v216;
      v217 = v209;
LABEL_35:
      v218 = *(*(*&v385 + 48) + ((v217 << 9) | (8 * __clz(__rbit64(v214)))));
      *&v387 = v386[14];
      swift_retain_n();
      v219 = sub_1E487842C();
      v221 = v220;
      v223 = v222;

      v224 = sub_1E487838C();
      (*(*(v224 - 8) + 56))(COERCE_DOUBLE(*&v381), 1, 1, v224);
      v225 = sub_1E487843C();
      (*(*(v225 - 8) + 56))(COERCE_DOUBLE(*&v382), 1, 1, v225);
      v226 = v379;
      sub_1E48783AC();
      sub_1E487839C();
      v228 = v227;
      sub_1E477A3C8(v219, v221, v223 & 1);

      (*v377)(v226, v380);
      v229 = v388;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v390 = v229;
      v231 = sub_1E481DCC4(v218);
      v233 = *(*&v229 + 16);
      v234 = (v232 & 1) == 0;
      v235 = __OFADD__(v233, v234);
      v236 = v233 + v234;
      if (v235)
      {
        goto LABEL_76;
      }

      v237 = v232;
      if (*(*&v229 + 24) >= v236)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v241 = v231;
          sub_1E4861D9C();
          v231 = v241;
        }
      }

      else
      {
        sub_1E4861524(v236, isUniquelyReferenced_nonNull_native);
        v231 = sub_1E481DCC4(v218);
        if ((v237 & 1) != (v238 & 1))
        {
          goto LABEL_84;
        }
      }

      v214 &= v214 - 1;
      v216 = v390;
      if (v237)
      {
        *(*(*&v390 + 56) + 8 * v231) = v228;
      }

      else
      {
        *(*&v390 + 8 * (v231 >> 6) + 64) |= 1 << v231;
        *(*(*&v216 + 48) + 8 * v231) = v218;
        *(*(*&v216 + 56) + 8 * v231) = v228;
        v239 = *(*&v216 + 16);
        v235 = __OFADD__(v239, 1);
        v240 = v239 + 1;
        if (v235)
        {
          goto LABEL_77;
        }

        *(*&v216 + 16) = v240;
      }

      v209 = v217;
      v211 = v376;
      v215 = v375;
    }

    while (1)
    {
      v217 = v209 + 1;
      if (__OFADD__(v209, 1))
      {
        break;
      }

      if (v217 >= v215)
      {

        sub_1E487201C(v348, *&v216);
        v243 = v242;
        v244 = 0.0;
        v245 = 0.0;
        if (!(*(v355 + 48))(v371, 1, v356))
        {
          v246 = v309;
          sub_1E47CC188(v371, v309, type metadata accessor for NarrowAllDayView);
          v245 = sub_1E477A3D8(*&v216);
          sub_1E47CC1F0(v246, type metadata accessor for NarrowAllDayView);
        }

        v247 = *&v216;
        v248 = sub_1E47DE878(*&v216);
        v249 = v359[6];
        v250 = v364;
        v251 = v249(v374, 1, v364);
        v252 = v354;
        v253 = v352;
        v254 = v367;
        v255 = v383;
        if (!v251)
        {
          v256 = v327;
          sub_1E47CC188(v374, v327, type metadata accessor for NarrowEventDetailsView);
          v244 = sub_1E47DE878(v247);
          sub_1E47CC1F0(v256, type metadata accessor for NarrowEventDetailsView);
        }

        v257 = 0.0;
        v258 = 0.0;
        if (!v249(v369, 1, v250))
        {
          v259 = v327;
          sub_1E47CC188(v369, v327, type metadata accessor for NarrowEventDetailsView);
          v258 = sub_1E47DE878(v247);
          sub_1E47CC1F0(v259, type metadata accessor for NarrowEventDetailsView);
        }

        if (!(*(v357 + 48))(v372, 1, v358))
        {
          v260 = v310;
          sub_1E47CC188(v372, v310, type metadata accessor for NarrowReminderView);
          v257 = sub_1E47C8088(v247);
          sub_1E47CC1F0(v260, type metadata accessor for NarrowReminderView);
        }

        *&v261 = sub_1E47D3E84(v247);
        v388 = v244;
        v387 = v245;
        v385 = v248;
        v382 = v257;
        v381 = v258;
        v380 = v261;
        if (v384)
        {
          if ((v255 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_56:
          v262 = v243;
          sub_1E48781BC();
        }

        else
        {

          sub_1E4878DDC();
          v263 = sub_1E48780FC();
          sub_1E4877AAC();

          v264 = v333;
          sub_1E4877F0C();
          swift_getAtKeyPath();
          sub_1E477A484(v255, 0);
          (*(v334 + 8))(v264, v335);
          if (LOBYTE(v390) == 1)
          {
            goto LABEL_56;
          }

LABEL_54:
          v262 = v243;
          sub_1E48782FC();
        }

        v265 = v345;
        v266 = v373;
        (v361)(v345, v362, v373);
        v267 = sub_1E48782CC();

        v360(v265, v266);
        sub_1E487201C(v267, v247);
        v269 = v268;

        sub_1E487201C(v366, v247);
        v271 = v270;
        sub_1E487201C(v336, v247);
        v273 = v272;
        v274 = 0;
        v275 = 0.0;
        if (v349 != 255)
        {
          v275 = sub_1E48257C4(v247, v347, v347, v346, v349 & 1);
        }

        v276 = v351;
        v277 = (*(v350 + 48))(v253, 1, v351);
        v278 = v383;
        if (!v277)
        {
          v279 = v328;
          sub_1E47CC188(v253, v328, type metadata accessor for ConflictTimeText);
          v280 = v279 + *(v276 + 28);
          v281 = *v280;
          if (*(v280 + 8) == 1)
          {
            if ((v281 & 1) == 0)
            {
              goto LABEL_62;
            }

LABEL_64:
            sub_1E48782BC();
          }

          else
          {

            sub_1E4878DDC();
            v282 = sub_1E48780FC();
            sub_1E4877AAC();

            v283 = v333;
            sub_1E4877F0C();
            swift_getAtKeyPath();
            sub_1E477A484(v281, 0);
            (*(v334 + 8))(v283, v335);
            if (LOBYTE(v390) == 1)
            {
              goto LABEL_64;
            }

LABEL_62:
            sub_1E48782FC();
          }

          v284 = v345;
          v285 = v373;
          (v361)(v345, v362, v373);
          v286 = sub_1E48782CC();

          v360(v284, v285);
          sub_1E487201C(v286, v247);
          v274 = v287;

          sub_1E47CC1F0(v328, type metadata accessor for ConflictTimeText);
          v278 = v383;
        }

        if ((*(v353 + 48))(v370, 1, v252))
        {
          sub_1E477A484(v278, v384);
          sub_1E47CC16C(v347, v347, v346, v349);
          v288 = 0;
LABEL_74:
          sub_1E47CC1F0(v365, type metadata accessor for NarrowEventDetailsView);
          sub_1E47CC1F0(v254, type metadata accessor for NarrowXMoreView);
          sub_1E47CC1F0(v368, type metadata accessor for NoEventsView);
          sub_1E47CC1F0(v337, type metadata accessor for NarrowTextHeaderView);

          v299 = v271 + v273 * 3.0;
          v300 = *(v389 + v386[13]);
          v301 = *(v389 + v386[6]);
          sub_1E47738B8(v253, &qword_1ECF7C7E0, &qword_1E4881BD0);
          sub_1E47738B8(v370, &qword_1ECF7C7E8, &unk_1E487E2D0);
          sub_1E47738B8(v372, &qword_1ECF7C4E8, &qword_1E487D730);
          sub_1E47738B8(v371, &qword_1ECF7B820, &unk_1E487E2E0);
          sub_1E47738B8(v369, &qword_1ECF7C4F0, &qword_1E487D738);
          result = sub_1E47738B8(v374, &qword_1ECF7C4F0, &qword_1E487D738);
          v303 = v338;
          v304 = v387;
          *v338 = v262;
          v303[1] = v304;
          v305 = v388;
          v303[2] = v385;
          v303[3] = v305;
          v306 = v382;
          v303[4] = v381;
          v303[5] = v306;
          *(v303 + 6) = v380;
          *(v303 + 7) = v269;
          v303[8] = v299;
          v303[9] = v275;
          *(v303 + 10) = v274;
          *(v303 + 11) = v288;
          *(v303 + 6) = xmmword_1E487E190;
          *(v303 + 14) = v300;
          *(v303 + 15) = v301;
          return result;
        }

        v289 = v329;
        sub_1E47CC188(v370, v329, type metadata accessor for ConflictEventTitleText);
        v290 = v289 + *(v252 + 24);
        v291 = *v290;
        if (*(v290 + 8) == 1)
        {
          if ((v291 & 1) == 0)
          {
            goto LABEL_70;
          }

LABEL_72:
          v292 = v254;
          sub_1E48782BC();
        }

        else
        {

          sub_1E4878DDC();
          v293 = sub_1E48780FC();
          sub_1E4877AAC();

          v294 = v333;
          sub_1E4877F0C();
          swift_getAtKeyPath();
          sub_1E477A484(v291, 0);
          (*(v334 + 8))(v294, v335);
          if (LOBYTE(v390) == 1)
          {
            goto LABEL_72;
          }

LABEL_70:
          v292 = v254;
          sub_1E48781EC();
        }

        v295 = v345;
        v296 = v373;
        (v361)(v345, v362, v373);
        v297 = sub_1E48782CC();

        v360(v295, v296);
        sub_1E487201C(v297, v247);
        v288 = v298;

        sub_1E477A484(v278, v384);
        sub_1E47CC16C(v347, v347, v346, v349);
        sub_1E47CC1F0(v329, type metadata accessor for ConflictEventTitleText);
        v254 = v292;
        goto LABEL_74;
      }

      v214 = *(v211 + 8 * v217);
      ++v209;
      if (v214)
      {
        v388 = v216;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v178 = v332;
  sub_1E48060F4(v332);
  v179 = v364;
  v180 = v389;
  (*&v388)(&v178[*(v364 + 20)], v389, *&v385);
  sub_1E4773850(v180 + v343, &v178[v179[10]], &qword_1ECF7B848, &unk_1E487A820);
  sub_1E4773850(v180 + v342, &v178[v179[12]], &qword_1ECF7B850, &qword_1E487C800);
  *&v178[v179[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v178[v179[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v178[v179[6]] = 0;
  v178[v179[7]] = 0;
  v181 = &v178[v179[11]];
  *v181 = v166;
  v182 = v384;
  v181[8] = v384;
  v183 = &v178[v179[13]];
  *v183 = v378;
  v183[8] = v377;
  v330(v178, 0, 1, v179);
  sub_1E47CC10C(v166, v182);

  v184 = v369;
  sub_1E47CC250(v178, v369, &qword_1ECF7C4F0, &qword_1E487D738);
  v185 = v308;
  sub_1E4773850(v184, v308, &qword_1ECF7C4F0, &qword_1E487D738);
  if (v176(v185, 1, v179) != 1)
  {
    v186 = sub_1E47DE378();
    sub_1E47CC1F0(v185, type metadata accessor for NarrowEventDetailsView);
    sub_1E47CC0AC(v186);

    goto LABEL_19;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_1E487912C();
  __break(1u);
  return result;
}

uint64_t sub_1E47CB978@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47C89E8(v4);
  *a1 = sub_1E4877FAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7B8, &qword_1E487E290);
  sub_1E47CBA6C(v4, a1 + *(v2 + 44));
}

uint64_t sub_1E47CBA6C@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7C0, &qword_1E487E298);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4877BEC();
  sub_1E47CBC28(a1, v10, v11);
  sub_1E4773850(v10, v8, &qword_1ECF7C7C0, &qword_1E487E298);
  sub_1E4773850(v8, a2, &qword_1ECF7C7C0, &qword_1E487E298);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7C8, &unk_1E487E2A0) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1E47738B8(v10, &qword_1ECF7C7C0, &qword_1E487E298);
  sub_1E47738B8(v8, &qword_1ECF7C7C0, &qword_1E487E298);
}

uint64_t sub_1E47CBC28@<X0>(void *a1@<X0>, unint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for NarrowMultidayEventsView();
  v9 = *(v3 + v8[5]);
  v10 = *(v3 + v8[8]);
  v11 = *(v3 + v8[7]);
  v12 = sub_1E47C85C4();
  v13 = sub_1E47B98A8(v3, v9, a1, v11, v10, (v12 & 1) == 0, a3);
  swift_beginAccess();
  v14 = *(v13 + 4);
  v29 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
LABEL_17:
    v15 = sub_1E4878F0C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    v27 = a1;
    v28 = a2;
    v16 = 0;
    a1 = (v14 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6919650](v16, v14);
        a2 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          a2 = v28;
          v19 = v29;
          a1 = v27;
          goto LABEL_15;
        }
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v17 = *(v14 + 8 * v16 + 32);

        a2 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_12;
        }
      }

      v18 = sub_1E47B2FC4();

      sub_1E4844EC4(v18);
      ++v16;
      if (a2 == v15)
      {
        goto LABEL_13;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_15:

  sub_1E4878DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E487A7E0;
  v21 = sub_1E47AFC68();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1E478B950();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_1E478E80C();
  v24 = sub_1E4878E4C();
  sub_1E4877AAC();

  *a2 = sub_1E4877FBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D0, &unk_1E487E2B0);
  sub_1E47AC108(v13, a1, v4, a2 + *(v25 + 44));

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7C0, &qword_1E487E298);
  *(a2 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_1E47CBEC8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E47CC188(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowMultidayEventsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E47CBFC8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1E47CC02C;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E47CBFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NarrowMultidayEventsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47CC02C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for NarrowMultidayEventsView() - 8) + 80);

  return sub_1E47CB978(a1);
}

uint64_t sub_1E47CC0AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;

      sub_1E48628B0(&v4, v3);

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1E47CC10C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E47CC16C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1E477A484(a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1E47CC188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47CC1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47CC250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E47CC2B8()
{
  result = qword_1EE2B1618;
  if (!qword_1EE2B1618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C7F0, &qword_1E487E418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1618);
  }

  return result;
}

uint64_t type metadata accessor for Event()
{
  result = qword_1EE2B48B0;
  if (!qword_1EE2B48B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47CC390()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EKLocationRoutingMode(319);
    if (v1 <= 0x3F)
    {
      sub_1E4780174(319, &qword_1EE2B0E20);
      if (v2 <= 0x3F)
      {
        sub_1E47CC50C(319, &qword_1EE2B4660, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          sub_1E47CC50C(319, qword_1EE2B1778, type metadata accessor for Location);
          if (v4 <= 0x3F)
          {
            sub_1E4780174(319, &unk_1EE2B41E0);
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

void sub_1E47CC50C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4878E5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Event.AppearanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Event.AppearanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E47CC6B4()
{
  result = qword_1ECF7C7F8;
  if (!qword_1ECF7C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C7F8);
  }

  return result;
}

uint64_t sub_1E47CC708()
{
  v1 = type metadata accessor for Event();
  if (*(v0 + *(v1 + 52)) == 1)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v2 = *(v0 + *(v1 + 56));
  if (v2 == 4)
  {
    if (qword_1EE2B4848 == -1)
    {
LABEL_9:
      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1E487A7E0;
      v5 = *v0;
      v4 = v0[1];
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1E478B950();
      *(v3 + 32) = v5;
      *(v3 + 40) = v4;

      v6 = sub_1E4878BAC();

      return v6;
    }

LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v6 = *v0;
  v8 = v0[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
  }

  else
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    return sub_1E48771EC();
  }

  return v6;
}

uint64_t sub_1E47CC9E8(uint64_t result)
{
  if (result > 3u)
  {
    if (result > 5u)
    {
      if (result == 6)
      {
        if (qword_1EE2B4848 == -1)
        {
          return sub_1E48771EC();
        }
      }

      else if (qword_1EE2B4848 == -1)
      {
        return sub_1E48771EC();
      }
    }

    else if (result == 4)
    {
      if (qword_1EE2B4848 == -1)
      {
        return sub_1E48771EC();
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
      return sub_1E48771EC();
    }

    goto LABEL_23;
  }

  if (result > 1u)
  {
    if (result == 2)
    {
      if (qword_1EE2B4848 == -1)
      {
        return sub_1E48771EC();
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
      return sub_1E48771EC();
    }

    goto LABEL_23;
  }

  if (!result)
  {
    return result;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_23:
    swift_once();
  }

  return sub_1E48771EC();
}

uint64_t sub_1E47CCD88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v155 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v135 = v129 - v5;
  v140 = sub_1E487719C();
  v138 = *(v140 - 1);
  v6 = *(v138 + 64);
  v7 = MEMORY[0x1EEE9AC00](v140);
  v139 = (v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v134 = v129 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C810, &qword_1E487E588);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v143 = (v129 - v14);
  v15 = sub_1E487732C();
  v148 = *(v15 - 8);
  v16 = v148[8];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v142 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v129 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v129 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v129 - v25;
  v27 = type metadata accessor for Event();
  v146 = *(v27 - 1);
  v28 = *(v146 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v29 + 60);
  v33 = type metadata accessor for Location();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v145 = v32;
  v133 = v33;
  v132 = v35;
  v131 = v34 + 56;
  v35(v31 + v32, 1, 1);
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1E48776BC();
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v38 = v26;
  v39 = v24;
  v40 = v15;
  sub_1E487768C();
  sub_1E47CED0C(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  v41 = sub_1E4878ADC();
  v149 = v27;
  if (v41)
  {
    v42 = v38;
    v43 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *v31 = sub_1E487766C();
    v31[1] = v44;
    v45 = v148[2];
    v46 = v31 + v27[5];
    v141 = v42;
    v142 = (v148 + 2);
    v130 = v45;
    v45(v46, v42, v40);
    v47 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_1E487760C();
    *(v31 + v27[7]) = v48;
    v49 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v31 + v27[8]) = sub_1E487764C();
    v50 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v51 = sub_1E48776FC();
    v136 = v40;
    v144 = v24;
    if (!v51)
    {
      v51 = sub_1E487865C();
    }

    *(v31 + v27[9]) = v51;
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v53 = v31 + v27[11];
    sub_1E48776DC();
    v54 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v31 + v27[12]) = sub_1E48776AC() & 1;
    v55 = type metadata accessor for Utils();
    v56 = sub_1E486C438(a1);
    v57 = (v31 + v27[16]);
    *v57 = v56;
    v57[1] = v58;
    v59 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v31 + v27[13]) = sub_1E487763C() & 1;
    v60 = a1[3];
    v61 = a1[4];
    v62 = __swift_project_boxed_opaque_existential_0(a1, v60);
    *(v31 + v27[14]) = sub_1E486A348(v62, v55, v60, v61);
    v63 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v31 + v27[17]) = sub_1E48776EC() & 1;
    v64 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v31 + v27[18]) = sub_1E487762C() & 1;
    v65 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v31 + v27[19]) = sub_1E48775FC() & 1;
    v66 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v68 = sub_1E4878E5C();
    v129[1] = v129;
    v69 = *(v68 - 8);
    v70 = *(v69 + 64);
    MEMORY[0x1EEE9AC00](v68);
    v72 = v129 - v71;
    sub_1E487769C();
    v73 = *(AssociatedTypeWitness - 8);
    if ((*(v73 + 48))(v72, 1, AssociatedTypeWitness) == 1)
    {
      (*(v69 + 8))(v72, v68);
      v74 = 0;
      v75 = 0;
    }

    else
    {
      v153 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(&v151);
      (*(v73 + 32))();
      v74 = sub_1E48775CC();
      v75 = v102;
      __swift_destroy_boxed_opaque_existential_1(&v151);
    }

    v103 = v149;
    v104 = (v31 + v149[10]);
    *v104 = v74;
    v104[1] = v75;
    v105 = v144;
    v106 = v136;
    v130(v31 + v103[6], v144, v136);
    v150 = 0;
    sub_1E4877A9C();
    sub_1E47A1524(a1, &v151);
    v107 = v143;
    sub_1E4877A8C();
    sub_1E47738B8(&v151, &qword_1ECF7C818, &qword_1E487E590);
    v108 = v150;
    v109 = v137;
    sub_1E4773850(v107, v137, &qword_1ECF7C810, &qword_1E487E588);
    v110 = v138;
    v111 = v140;
    if ((*(v138 + 48))(v109, 1, v140) == 1)
    {
      sub_1E47738B8(v107, &qword_1ECF7C810, &qword_1E487E588);
      v112 = v148[1];
      v112(v105, v106);
      v112(v141, v106);
      sub_1E47738B8(v109, &qword_1ECF7C810, &qword_1E487E588);
    }

    else
    {
      v115 = v134;
      v116 = v109;
      v117 = *(v110 + 32);
      v117(v134, v116, v111);
      (*(v110 + 16))(v139, v115, v111);
      if (v108)
      {
        v151 = 0;
        v152 = 0;
        v118 = v108;
        sub_1E4878BCC();

        (*(v110 + 8))(v115, v111);
        sub_1E47738B8(v143, &qword_1ECF7C810, &qword_1E487E588);
        v119 = v148[1];
        v120 = v136;
        v119(v144, v136);
        v119(v141, v120);
        v121 = v152;
        if (v152)
        {
          v122 = v151;
        }

        else
        {
          v122 = 0;
        }
      }

      else
      {
        (*(v110 + 8))(v115, v111);
        sub_1E47738B8(v143, &qword_1ECF7C810, &qword_1E487E588);
        v123 = v148[1];
        v124 = v136;
        v123(v144, v136);
        v123(v141, v124);
        v122 = 0;
        v121 = 0;
      }

      v125 = v135;
      v117(v135, v139, v111);
      v126 = (v125 + *(v133 + 20));
      *v126 = v122;
      v126[1] = v121;
      v132(v125, 0, 1);
      sub_1E47A14B4(v125, v31 + v145);
    }

    v127 = v147;
    sub_1E47707EC(v31, v147);
    (*(v146 + 56))(v127, 0, 1, v149);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = sub_1E47CED54(v31, type metadata accessor for Event);
  }

  else
  {
    v143 = v31;
    v76 = v148;
    if (qword_1ECF7B660 != -1)
    {
      swift_once();
    }

    v77 = sub_1E4877ADC();
    __swift_project_value_buffer(v77, qword_1ECF7EA80);
    v78 = v76[2];
    v78(v21, v39, v40);
    v79 = v142;
    v78(v142, v38, v40);
    sub_1E47A1524(a1, &v151);
    v80 = sub_1E4877ABC();
    v81 = sub_1E4878DCC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v141 = v38;
      v83 = v82;
      v140 = swift_slowAlloc();
      v150 = v140;
      *v83 = 136446722;
      sub_1E47CED0C(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
      v139 = v80;
      v84 = sub_1E48790CC();
      v144 = v39;
      v86 = v85;
      v138 = v76[1];
      (v138)(v21, v40);
      v87 = sub_1E47A0DEC(v84, v86, &v150);
      LODWORD(v148) = v81;
      v88 = v147;

      *(v83 + 4) = v87;
      *(v83 + 12) = 2082;
      v89 = v142;
      v90 = sub_1E48790CC();
      v92 = v91;
      v93 = v138;
      (v138)(v89, v40);
      v94 = sub_1E47A0DEC(v90, v92, &v150);

      *(v83 + 14) = v94;
      *(v83 + 22) = 2080;
      __swift_project_boxed_opaque_existential_0(&v151, v153);
      v95 = sub_1E487765C();
      v97 = v96;
      __swift_destroy_boxed_opaque_existential_1(&v151);
      v98 = sub_1E47A0DEC(v95, v97, &v150);

      *(v83 + 24) = v98;
      v99 = v139;
      _os_log_impl(&dword_1E475C000, v139, v148, "Could not create event because event end date (%{public}s is before it's start date (%{public}s, event_id = %s", v83, 0x20u);
      v100 = v140;
      swift_arrayDestroy();
      MEMORY[0x1E6919FE0](v100, -1, -1);
      MEMORY[0x1E6919FE0](v83, -1, -1);

      v93(v144, v40);
      v93(v141, v40);
      v101 = v149;
    }

    else
    {

      v113 = v76[1];
      v113(v79, v40);
      v113(v21, v40);
      v113(v39, v40);
      v113(v38, v40);
      __swift_destroy_boxed_opaque_existential_1(&v151);
      v101 = v149;
      v88 = v147;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1E47738B8(v143 + v145, &qword_1ECF7C048, &qword_1E487C5F0);
    result = (*(v146 + 56))(v88, 1, 1, v101);
  }

  v128 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E47CDCB4()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = v15 - v3;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  v5 = type metadata accessor for Event();
  sub_1E4773850(v1 + *(v5 + 44), v4, &unk_1ECF7B688, &qword_1E487C160);
  v6 = sub_1E487725C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1E47738B8(v4, &unk_1ECF7B688, &qword_1E487C160);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = sub_1E487723C();
    v9 = v11;
    (*(v7 + 8))(v4, v6);
    v8 = v10;
  }

  MEMORY[0x1E69192D0](v8, v9);

  MEMORY[0x1E69192D0](45, 0xE100000000000000);
  if (*(v1 + *(v5 + 52)))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v1 + *(v5 + 52)))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v12, v13);

  return v15[0];
}

uint64_t sub_1E47CDE80()
{
  v0 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v0, qword_1ECF7EA80);
  v1 = __swift_project_value_buffer(v0, qword_1ECF7EA80);
  if (qword_1EE2B16E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2BAD00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E47CDF48()
{
  v1 = v0;
  sub_1E4878F9C();
  MEMORY[0x1E69192D0](0xD000000000000012, 0x80000001E48A7C00);
  v2 = type metadata accessor for Event();
  v3 = v2[5];
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2B1870;
  v5 = sub_1E48772BC();
  v6 = [v4 stringFromDate_];

  v7 = sub_1E4878BDC();
  v9 = v8;

  MEMORY[0x1E69192D0](v7, v9);

  MEMORY[0x1E69192D0](0x746144646E65205DLL, 0xEC0000005B203A65);
  v10 = v1 + v2[6];
  v11 = sub_1E48772BC();
  v12 = [v4 stringFromDate_];

  v13 = sub_1E4878BDC();
  v15 = v14;

  MEMORY[0x1E69192D0](v13, v15);

  MEMORY[0x1E69192D0](0x6C6576617274205DLL, 0xEF5B203A656D6954);
  v16 = *(v1 + v2[7]);
  sub_1E4878D4C();
  MEMORY[0x1E69192D0](0xD000000000000016, 0x80000001E48A7C20);
  v31 = *(v1 + v2[8]);
  type metadata accessor for EKLocationRoutingMode(0);
  sub_1E487902C();
  MEMORY[0x1E69192D0](0xD000000000000012, 0x80000001E48A7C40);
  v17 = *(v1 + v2[9]);
  v18 = sub_1E487860C();
  MEMORY[0x1E69192D0](v18);

  MEMORY[0x1E69192D0](0x69746E656469205DLL, 0xEF5B203A72656966);
  v19 = sub_1E47CDCB4();
  MEMORY[0x1E69192D0](v19);

  MEMORY[0x1E69192D0](0x7961446C6C61205DLL, 0xEB000000005B203ALL);
  if (*(v1 + v2[12]))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + v2[12]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v20, v21);

  MEMORY[0x1E69192D0](0x736F706F7270205DLL, 0xED00005B203A6465);
  if (*(v1 + v2[13]))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v2[13]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v22, v23);

  MEMORY[0x1E69192D0](0xD000000000000014, 0x80000001E48A7C60);
  v32 = *(v1 + v2[14]);
  sub_1E487902C();
  MEMORY[0x1E69192D0](0xD000000000000010, 0x80000001E48A7C80);
  if (*(v1 + v2[17]))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v2[17]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v24, v25);

  MEMORY[0x1E69192D0](0xD000000000000012, 0x80000001E48A7CA0);
  if (*(v1 + v2[18]))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v1 + v2[18]))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v26, v27);

  MEMORY[0x1E69192D0](0x746964457369205DLL, 0xEF5B203A656C6261);
  if (*(v1 + v2[19]))
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (*(v1 + v2[19]))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v28, v29);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1E47CE414@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E47CDCB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Location();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C800, &qword_1E487E578);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  v14 = sub_1E487725C();
  v69 = *(v14 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C808, &qword_1E487E580);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - v24;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E48790EC() & 1) == 0)
  {
    goto LABEL_48;
  }

  v65 = v13;
  v26 = type metadata accessor for Event();
  v27 = v26[5];
  if ((sub_1E48772EC() & 1) == 0)
  {
    goto LABEL_48;
  }

  v28 = v26[6];
  if ((sub_1E48772EC() & 1) == 0)
  {
    goto LABEL_48;
  }

  if (*(a1 + v26[7]) != *(a2 + v26[7]))
  {
    goto LABEL_48;
  }

  if (*(a1 + v26[8]) != *(a2 + v26[8]))
  {
    goto LABEL_48;
  }

  v29 = v26[9];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if ((sub_1E487862C() & 1) == 0)
  {
    goto LABEL_48;
  }

  v32 = v26[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1E48790EC() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v36)
  {
    goto LABEL_48;
  }

  v64 = v26[11];
  v37 = *(v22 + 48);
  sub_1E4773850(a1 + v64, v25, &unk_1ECF7B688, &qword_1E487C160);
  v38 = a2 + v64;
  v64 = v37;
  sub_1E4773850(v38, &v25[v37], &unk_1ECF7B688, &qword_1E487C160);
  v63 = *(v69 + 48);
  if (v63(v25, 1, v14) == 1)
  {
    if (v63(&v25[v64], 1, v14) == 1)
    {
      sub_1E47738B8(v25, &unk_1ECF7B688, &qword_1E487C160);
      goto LABEL_24;
    }

LABEL_21:
    v39 = &qword_1ECF7C808;
    v40 = &qword_1E487E580;
    v41 = v25;
LABEL_22:
    sub_1E47738B8(v41, v39, v40);
    goto LABEL_48;
  }

  sub_1E4773850(v25, v21, &unk_1ECF7B688, &qword_1E487C160);
  if (v63(&v25[v64], 1, v14) == 1)
  {
    (*(v69 + 8))(v21, v14);
    goto LABEL_21;
  }

  v42 = v69;
  (*(v69 + 32))(v17, &v25[v64], v14);
  sub_1E47CED0C(&qword_1EE2B4668, MEMORY[0x1E6968FB0]);
  LODWORD(v64) = sub_1E4878AFC();
  v43 = *(v42 + 8);
  v43(v17, v14);
  v43(v21, v14);
  sub_1E47738B8(v25, &unk_1ECF7B688, &qword_1E487C160);
  if ((v64 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if (*(a1 + v26[12]) != *(a2 + v26[12]) || *(a1 + v26[13]) != *(a2 + v26[13]) || *(a1 + v26[14]) != *(a2 + v26[14]))
  {
    goto LABEL_48;
  }

  v44 = v26[15];
  v45 = *(v10 + 48);
  v46 = v65;
  sub_1E4773850(a1 + v44, v65, &qword_1ECF7C048, &qword_1E487C5F0);
  sub_1E4773850(a2 + v44, v46 + v45, &qword_1ECF7C048, &qword_1E487C5F0);
  v47 = *(v68 + 48);
  if (v47(v46, 1, v4) != 1)
  {
    v53 = v67;
    sub_1E4773850(v46, v67, &qword_1ECF7C048, &qword_1E487C5F0);
    if (v47(v46 + v45, 1, v4) == 1)
    {
      sub_1E47CED54(v53, type metadata accessor for Location);
      goto LABEL_37;
    }

    v54 = v66;
    sub_1E47CECA8(v46 + v45, v66);
    if (sub_1E487715C())
    {
      v55 = *(v4 + 20);
      v56 = (v53 + v55);
      v57 = *(v53 + v55 + 8);
      v58 = (v54 + v55);
      v59 = v58[1];
      if (v57)
      {
        if (v59 && (*v56 == *v58 && v57 == v59 || (sub_1E48790EC() & 1) != 0))
        {
          goto LABEL_44;
        }
      }

      else if (!v59)
      {
LABEL_44:
        sub_1E47CED54(v54, type metadata accessor for Location);
        sub_1E47CED54(v53, type metadata accessor for Location);
        v46 = v65;
        goto LABEL_29;
      }
    }

    sub_1E47CED54(v54, type metadata accessor for Location);
    sub_1E47CED54(v53, type metadata accessor for Location);
    v39 = &qword_1ECF7C048;
    v40 = &qword_1E487C5F0;
    v41 = v65;
    goto LABEL_22;
  }

  if (v47(v46 + v45, 1, v4) != 1)
  {
LABEL_37:
    v39 = &qword_1ECF7C800;
    v40 = &qword_1E487E578;
    v41 = v46;
    goto LABEL_22;
  }

LABEL_29:
  sub_1E47738B8(v46, &qword_1ECF7C048, &qword_1E487C5F0);
  v48 = v26[16];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_1E48790EC() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v52)
  {
    goto LABEL_48;
  }

  if (*(a1 + v26[17]) == *(a2 + v26[17]) && *(a1 + v26[18]) == *(a2 + v26[18]))
  {
    v60 = *(a1 + v26[19]) ^ *(a2 + v26[19]) ^ 1;
    return v60 & 1;
  }

LABEL_48:
  v60 = 0;
  return v60 & 1;
}

uint64_t sub_1E47CECA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47CED0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47CED54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SpatialDayView()
{
  result = qword_1EE2B3C38;
  if (!qword_1EE2B3C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47CEE28()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DayEvents();
    if (v1 <= 0x3F)
    {
      sub_1E47CF060(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E4788A6C(319, &qword_1EE2B16B0, MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E47CF060(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            sub_1E47CF060(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
            if (v5 <= 0x3F)
            {
              sub_1E47CF060(319, &qword_1ECF7C828, type metadata accessor for CGRect, MEMORY[0x1E6981788]);
              if (v6 <= 0x3F)
              {
                sub_1E4788A6C(319, &unk_1ECF7C830, MEMORY[0x1E6981788]);
                if (v7 <= 0x3F)
                {
                  sub_1E48783DC();
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

void sub_1E47CF060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47CF0E0@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for SpatialDayView();
  sub_1E4773850(v1 + *(v12 + 36), v11, &qword_1ECF7B7F8, &qword_1E487C130);
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

double sub_1E47CF2E8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialDayView() + 40));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC();

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_1E47CF444@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for SpatialDayView();
  sub_1E4773850(v1 + *(v12 + 44), v11, &qword_1ECF7C840, &qword_1E487ADF0);
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

uint64_t sub_1E47CF64C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialDayView() + 48));
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

uint64_t sub_1E47CF79C(double a1, double a2, double a3, double a4)
{
  v9 = sub_1E487751C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487753C();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v48 - v20;
  v22 = sub_1E487732C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v56 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = &v48 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v58 = &v48 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v48 - v31;
  v50 = type metadata accessor for SpatialDayView();
  v33 = v4 + v50[5];
  v51 = *(v23 + 16);
  v51(v32, v33, v22);
  v54 = v4;
  sub_1E47CF0E0(v17);
  (*(v10 + 104))(v13, *MEMORY[0x1E6969A48], v9);
  v57 = v32;
  sub_1E48774BC();
  (*(v10 + 8))(v13, v9);
  v52 = *(v59 + 8);
  v53 = v59 + 8;
  v52(v17, v60);
  result = (*(v23 + 48))(v21, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v58;
    (*(v23 + 32))(v58, v21, v22);
    v36 = v55;
    v37 = v51;
    v51(v55, v57, v22);
    v38 = v56;
    v37(v56, v35, v22);
    v39 = *(v54 + v50[7]);
    v49 = *(v54 + v50[6]);
    v50 = v39;
    v40 = sub_1E47CF2E8();
    sub_1E47CF0E0(v17);
    v41 = type metadata accessor for SpatialLayoutDelegate(0);
    v42 = objc_allocWithZone(v41);
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_topPadding] = 0;
    v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_originIsUpperLeft] = 1;
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_hoursInDay] = 0x4038000000000000;
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_secondsInDay] = 0x40F5180000000000;
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_secondsInMinute] = 0x404E000000000000;
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_secondsInHour] = 0x40AC200000000000;
    v43 = &v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect];
    *v43 = a1;
    v43[1] = a2;
    v43[2] = a3;
    v43[3] = a4;
    v37(&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startDate], v36, v22);
    v37(&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endDate], v38, v22);
    v44 = v50;
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow] = v49;
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow] = v44;
    *&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_scale] = v40;
    v45 = v60;
    (*(v59 + 16))(&v42[OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_calendar], v17, v60);
    v61.receiver = v42;
    v61.super_class = v41;
    v46 = objc_msgSendSuper2(&v61, sel_init);
    v52(v17, v45);
    v47 = *(v23 + 8);
    v47(v38, v22);
    v47(v36, v22);
    v47(v58, v22);
    v47(v57, v22);
    return v46;
  }

  return result;
}

double sub_1E47CFD84()
{
  v1 = type metadata accessor for SpatialDayView();
  v2 = (v0 + *(v1 + 56));
  v3 = *v2;
  v4 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
  sub_1E487880C();
  v5 = (v0 + *(v1 + 52));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C890, &qword_1E487E6E0);
  sub_1E487880C();
  sub_1E487880C();
  CGRectGetWidth(*v12);
  sub_1E487880C();
  sub_1E487880C();
  CGRectGetHeight(*v12);
  return *v12;
}

double sub_1E47CFEF4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialDayView() + 48));
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

  v10 = *(v7 + 48);

  return v10 + v10 + 2.0;
}

uint64_t sub_1E47D0060@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>, double a3@<D0>)
{
  v7 = sub_1E487751C();
  v112 = *(v7 - 8);
  v113 = v7;
  v8 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v89 - v16;
  v117 = sub_1E487732C();
  v18 = *(v117 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v117);
  v108 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v109 = &v89 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v110 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v115 = &v89 - v26;
  v116 = sub_1E487753C();
  v114 = *(v116 - 8);
  v27 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E48770FC();
  v103 = *(v30 - 8);
  v104 = v30;
  v31 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v111 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v33 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v118.origin.x = sub_1E47CFD84();
  x = v118.origin.x;
  y = v118.origin.y;
  width = v118.size.width;
  height = v118.size.height;
  if (CGRectGetWidth(v118) <= 0.0 || (v119.origin.x = x, v119.origin.y = y, v119.size.width = width, v119.size.height = height, CGRectGetHeight(v119) <= 0.0))
  {

    *a2 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v91 = v33;
  v92 = a2;
  v100 = v3;
  sub_1E47CF0E0(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v38 = v112;
  v39 = *(v112 + 72);
  v40 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1E487BC70;
  v42 = v41 + v40;
  v43 = *MEMORY[0x1E6969A50];
  v102 = v18;
  v97 = a1;
  v44 = v17;
  v46 = v38 + 104;
  v45 = *(v38 + 104);
  v47 = v113;
  v45(v42, v43, v113);
  v45(v42 + v39, *MEMORY[0x1E6969A68], v47);
  v45(v42 + 2 * v39, *MEMORY[0x1E6969A78], v47);
  v94 = *MEMORY[0x1E6969A48];
  v96 = v46;
  v95 = v45;
  (v45)(v42 + 3 * v39);
  v48 = v44;
  v49 = v97;
  sub_1E486B81C(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = type metadata accessor for SpatialDayView();
  v93 = v49 + v50[5];
  sub_1E487747C();

  v51 = v114 + 8;
  v52 = *(v114 + 8);
  v53 = v116;
  v52(v29, v116);
  v54 = *(v49 + v50[6]);
  sub_1E48770BC();
  sub_1E47CF0E0(v29);
  sub_1E48774AC();
  v101 = v52;
  v52(v29, v53);
  v55 = *(v102 + 48);
  v56 = v117;
  v114 = v102 + 48;
  v99 = v55;
  result = v55(v48, 1, v117);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v98 = *(v102 + 32);
  v98(v115, v48, v56);
  v58 = *(v49 + v50[7]);
  sub_1E48770BC();
  sub_1E47CF0E0(v29);
  v59 = v107;
  sub_1E48774AC();
  v60 = v117;
  v101(v29, v116);
  result = v99(v59, 1, v60);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v61 = v110;
  v98(v110, v59, v60);
  v62 = sub_1E47CFD84();
  v66 = sub_1E47CF79C(v62, v63, v64, v65);
  v67 = sub_1E47CFEF4() + a3;
  v68 = type metadata accessor for DayEvents();
  v69 = v93;
  v70 = *(v93 + *(v68 + 20));
  MEMORY[0x1EEE9AC00](v68);
  v90 = v66;
  *(&v89 - 6) = v66;
  *(&v89 - 5) = v67;
  *(&v89 - 4) = v115;
  *(&v89 - 3) = v61;
  *(&v89 - 2) = v49;
  v71 = v100;
  v107 = sub_1E4856734(sub_1E47D3910, (&v89 - 8), v72);
  v100 = v71;
  (*(v102 + 16))(v109, v69, v117);
  sub_1E47CF0E0(v29);
  v73 = v105;
  v74 = v113;
  v95(v105, v94, v113);
  v75 = v106;
  sub_1E48774BC();
  v76 = v117;
  (*(v112 + 8))(v73, v74);
  v101(v29, v116);
  result = v99(v75, 1, v76);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v114 = v51;
  v98(v108, v75, v76);
  if (v107 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8A0, &qword_1E487E750);
    sub_1E487904C();
  }

  else
  {

    sub_1E48790FC();
  }

  v77 = v90;
  sub_1E47CF0E0(v29);
  v78 = objc_allocWithZone(MEMORY[0x1E6993480]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8A0, &qword_1E487E750);
  v79 = sub_1E4878C9C();

  v80 = v109;
  v81 = sub_1E48772BC();
  v82 = v108;
  v83 = sub_1E48772BC();
  v84 = sub_1E487748C();
  v85 = [v78 initWithOccurrences:v79 startOfDay:v81 endOfDay:v83 geometryDelegate:v77 screenUtilsDelegate:v77 calendar:v84];

  v101(v29, v116);
  [v85 applyLayoutToOccurrences];

  v86 = *(v102 + 8);
  v87 = v82;
  v88 = v117;
  v86(v87, v117);
  v86(v80, v88);
  (*(v103 + 8))(v111, v104);
  *v92 = v107;
  v86(v110, v88);
  v86(v115, v88);
}

uint64_t sub_1E47D0B28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, objc_class *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v40 = a6;
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v38 = a2;
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = type metadata accessor for Event();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v39 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47D393C(a1, v19, type metadata accessor for Event);
  v20 = v10[2];
  v34 = v15;
  v20(v15, v35, v9);
  v20(v41, v36, v9);
  v37 = sub_1E47CF64C();
  v36 = type metadata accessor for SpatialEventViewModel(0);
  v21 = objc_allocWithZone(v36);
  v22 = &v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  *v22 = 0u;
  v22[1] = 0u;
  *&v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight] = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight] = 0;
  v23 = &v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame];
  *v23 = 0u;
  v23[1] = 0u;
  v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_hideTravelTime] = 0;
  v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked] = 0;
  sub_1E47D393C(v19, &v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event], type metadata accessor for Event);
  v24 = v38;
  *&v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate] = v38;
  *&v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_lineHeight] = a7;
  v20(&v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate], v15, v9);
  v25 = v41;
  v20(&v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate], v41, v9);
  v43 = 0;
  v44 = 0xE000000000000000;
  v26 = v24;
  sub_1E4878F9C();

  v43 = 0xD000000000000012;
  v44 = 0x80000001E48A7D10;
  v27 = sub_1E47CDCB4();
  MEMORY[0x1E69192D0](v27);

  v28 = v44;
  v29 = &v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_id];
  *v29 = v43;
  v29[1] = v28;
  *&v21[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewMetrics] = v37;
  v42.receiver = v21;
  v42.super_class = v36;
  v30 = objc_msgSendSuper2(&v42, sel_init);
  v31 = v10[1];
  v31(v25, v9);
  v31(v34, v9);
  sub_1E47D39A4(v19, type metadata accessor for Event);

  *v40 = v30;
  return result;
}

uint64_t sub_1E47D0F40()
{
  v1 = v0;
  v2 = sub_1E48770FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47CF0E0(v11);
  v12 = type metadata accessor for SpatialDayView();
  v13 = *(v12 + 20);
  v14 = sub_1E48774CC();
  v15 = *(v8 + 8);
  result = v15(v11, v7);
  if (v14)
  {
    v46 = v12;
    v47 = v3;
    v48 = v2;
    v17 = sub_1E47CFD84();
    v49 = sub_1E47CF79C(v17, v18, v19, v20);
    sub_1E47CF0E0(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
    v51 = v7;
    v21 = sub_1E487751C();
    v22 = *(v21 - 8);
    v23 = v22;
    v52 = v6;
    v24 = *(v22 + 72);
    v25 = *(v22 + 80);
    v50 = v15;
    v26 = (v25 + 32) & ~v25;
    v27 = 2 * v24;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1E487AC40;
    v29 = v28 + v26;
    v30 = *(v23 + 104);
    v30(v29, *MEMORY[0x1E6969A58], v21);
    v31 = v29 + v24;
    v32 = v52;
    v30(v31, *MEMORY[0x1E6969A88], v21);
    v30(v29 + v27, *MEMORY[0x1E6969A98], v21);
    sub_1E486B81C(v28);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1E487747C();

    v50(v11, v51);
    result = sub_1E48770AC();
    if ((v33 & 1) == 0)
    {
      v34 = result;
      result = sub_1E48770CC();
      if (v35)
      {
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v36 = result;
      result = sub_1E48770DC();
      v37 = v49;
      if (v38)
      {
LABEL_11:
        __break(1u);
        return result;
      }

      v39 = *(v49 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
      v40 = *(v49 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
      v41 = __OFSUB__(v39, v40);
      v42 = v39 - v40;
      if (!v41)
      {
        v43 = *(v49 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect + 24) / v42;
        v44 = (v34 * 3600.0 + v36 * 60.0 + result) / 86400.0 * (v43 * 24.0) - v43 * *(v1 + *(v46 + 24));
        sub_1E47CF2E8();

        return (*(v47 + 8))(v32, v48);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

double sub_1E47D1384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_1E48783BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for SpatialDayView() + 60);
  if (qword_1EE2B3748 != -1)
  {
    swift_once();
  }

  v14 = sub_1E487842C();
  v16 = v15;
  v18 = v17;
  v19 = sub_1E487838C();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = sub_1E487843C();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  sub_1E48783AC();
  sub_1E487839C();
  v22 = v21;
  sub_1E477A3C8(v14, v16, v18 & 1);

  (*(v9 + 8))(v12, v8);
  v23 = sub_1E47CF2E8();
  return round(v22 * v23) / v23;
}

uint64_t sub_1E47D1664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v66 = a1;
  v78 = a3;
  v70 = sub_1E4877CCC();
  v69 = *(v70 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x1EEE9AC00](v70);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C848, &qword_1E487E600);
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v64 - v14;
  v15 = type metadata accessor for SpatialDayView();
  v71 = *(v15 - 1);
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C850, &qword_1E487E608);
  v18 = *(*(v72 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v72);
  v74 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - v21;
  sub_1E4878D2C();
  v73 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = v15[5];
  v24 = *(a2 + v15[6]);
  v25 = *(a2 + v15[7]);
  v26 = type metadata accessor for SpatialGridView(0);
  v27 = v26[6];
  v28 = sub_1E487732C();
  (*(*(v28 - 8) + 16))(&v22[v27], a2 + v23, v28);
  v29 = *(a2 + v15[8]);
  *&v22[v26[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  *&v22[v26[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v22[v26[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *v22 = v24;
  *(v22 + 1) = v25;
  v22[v26[7]] = v29;
  sub_1E47D393C(a2, &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpatialDayView);
  v30 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v31 = swift_allocObject();
  sub_1E47D2BE4(v17, v31 + v30);
  v32 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C860, &qword_1E487E6A0) + 36)];
  *v32 = sub_1E47D30B4;
  v32[1] = v31;
  sub_1E47D393C(a2, v17, type metadata accessor for SpatialDayView);
  v33 = swift_allocObject();
  v34 = sub_1E47D2BE4(v17, v33 + v30);
  v35 = &v22[*(v72 + 36)];
  *v35 = sub_1E47D33B4;
  v35[1] = v33;
  v36 = MEMORY[0x1E6919990](v34);
  sub_1E47D0060(a2, &v82, a4);
  objc_autoreleasePoolPop(v36);
  v83 = v82;
  swift_getKeyPath();
  sub_1E47D393C(a2, v17, type metadata accessor for SpatialDayView);
  v37 = swift_allocObject();
  sub_1E47D2BE4(v17, v37 + v30);
  *(v37 + ((v30 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C868, &qword_1E487E6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C870, &qword_1E487E6D0);
  sub_1E4773680(&qword_1EE2B0DF8, &qword_1ECF7C868, &qword_1E487E6C8);
  sub_1E47D376C();
  sub_1E487885C();
  sub_1E47D0F40();
  if (v38 < 0.0)
  {
    goto LABEL_5;
  }

  v39 = v67;
  sub_1E47CF444(v67);
  v40 = v68;
  sub_1E4877CAC();
  sub_1E47D3858(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v41 = v70;
  v42 = sub_1E4878EAC();
  v43 = *(v69 + 8);
  v43(v40, v41);
  v43(v39, v41);
  if (v42)
  {
LABEL_5:
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v44 = 0.0;
    v45 = 0;
    LODWORD(v66) = 1;
  }

  else
  {
    sub_1E4877BEC();
    sub_1E487889C();
    sub_1E4877BCC();
    v72 = v83;
    v46 = v84;
    v71 = v85;
    v47 = v86;
    v70 = v87;
    v69 = v88;
    sub_1E4877BEC();
    v44 = v48 * 0.5 + 0.0;
    sub_1E47D0F40();
    v45 = v49;
    LODWORD(v66) = 0;
    v80 = v47;
    v67 = v46;
    v68 = v47;
    v81 = 0;
  }

  v50 = v74;
  v65 = v22;
  sub_1E4773850(v22, v74, &unk_1ECF7C850, &qword_1E487E608);
  v51 = v75;
  v52 = v76;
  v53 = *(v76 + 16);
  v54 = v79;
  v55 = v77;
  v53(v75, v79, v77);
  v56 = v78;
  sub_1E4773850(v50, v78, &unk_1ECF7C850, &qword_1E487E608);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C878, &qword_1E487E6D8);
  v53((v56 + *(v57 + 48)), v51, v55);
  v58 = v56 + *(v57 + 64);
  v59 = v67;
  *v58 = v72;
  *(v58 + 8) = v59;
  v60 = v68;
  *(v58 + 16) = v71;
  *(v58 + 24) = v60;
  v61 = v69;
  *(v58 + 32) = v70;
  *(v58 + 40) = v61;
  *(v58 + 48) = v44;
  *(v58 + 56) = v45;
  *(v58 + 64) = v66;
  v62 = *(v52 + 8);
  v62(v54, v55);
  sub_1E47738B8(v65, &unk_1ECF7C850, &qword_1E487E608);
  v62(v51, v55);
  sub_1E47738B8(v50, &unk_1ECF7C850, &qword_1E487E608);
}

uint64_t sub_1E47D1FA0(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = a1[1];
  v10 = v3;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v6[2] = a2;
  v8 = v9;
  v7 = v10;
  sub_1E4822780(sub_1E47D3A24, v6);
}

uint64_t sub_1E47D20A8(uint64_t a1)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47CF2E8();
  v2 = (a1 + *(type metadata accessor for SpatialDayView() + 52));
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C890, &qword_1E487E6E0);
  sub_1E487881C();
}

uint64_t sub_1E47D21DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v6[2] = a2;
  v6[3] = v3;
  sub_1E4822780(sub_1E47D3A04, v6);
}

uint64_t sub_1E47D22E0(uint64_t a1)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47CF2E8();
  v2 = (a1 + *(type metadata accessor for SpatialDayView() + 56));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
  sub_1E487881C();
}

uint64_t sub_1E47D23E8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v54 = a3;
  v7 = sub_1E48782AC();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SpatialEventView();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C898, &qword_1E487E6E8);
  v15 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v17 = &v47 - v16;
  v18 = type metadata accessor for SpatialReminderView();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C870, &qword_1E487E6D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v53 = &v47 - v24;
  v25 = *a1;
  sub_1E4878D2C();
  v52 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = &v25[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event];
  LODWORD(v26) = v26[*(type metadata accessor for Event() + 56)] & 0xFE;
  v27 = type metadata accessor for SpatialDayView();
  v28 = *(a2 + *(v27 + 24));
  v29 = *(a2 + *(v27 + 28));
  KeyPath = swift_getKeyPath();
  if (v26 == 6)
  {
    *&v21[v18[8]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v31 = swift_getKeyPath();
    *&v21[v18[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v21[v18[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v32 = swift_getKeyPath();
    *v21 = v25;
    *(v21 + 1) = v28;
    *(v21 + 2) = v29;
    *(v21 + 3) = a4;
    v33 = &v21[v18[9]];
    *v33 = v31;
    v33[8] = 0;
    v34 = &v21[v18[12]];
    *v34 = v32;
    v34[8] = 0;
    sub_1E47D393C(v21, v17, type metadata accessor for SpatialReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E47D3858(qword_1EE2B2C08, type metadata accessor for SpatialReminderView);
    sub_1E47D3858(&qword_1EE2B3740, type metadata accessor for SpatialEventView);
    v35 = v25;
    v36 = v53;
    sub_1E487803C();
    v37 = type metadata accessor for SpatialReminderView;
    v38 = v21;
  }

  else
  {
    *&v14[v11[9]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v48 = swift_getKeyPath();
    *&v14[v11[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v14[v11[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v39 = swift_getKeyPath();
    *v14 = v25;
    *(v14 + 1) = v28;
    *(v14 + 2) = v29;
    *(v14 + 3) = a4;
    v40 = v25;
    sub_1E48782DC();
    v41 = v49;
    v42 = v50;
    (*(v49 + 104))(v10, *MEMORY[0x1E6980EA0], v50);
    v43 = sub_1E48782CC();

    (*(v41 + 8))(v10, v42);
    *(v14 + 4) = v43;
    v44 = &v14[v11[10]];
    *v44 = v48;
    v44[8] = 0;
    v45 = &v14[v11[13]];
    *v45 = v39;
    v45[8] = 0;
    sub_1E47D393C(v14, v17, type metadata accessor for SpatialEventView);
    swift_storeEnumTagMultiPayload();
    sub_1E47D3858(qword_1EE2B2C08, type metadata accessor for SpatialReminderView);
    sub_1E47D3858(&qword_1EE2B3740, type metadata accessor for SpatialEventView);
    v36 = v53;
    sub_1E487803C();
    v37 = type metadata accessor for SpatialEventView;
    v38 = v14;
  }

  sub_1E47D39A4(v38, v37);
  sub_1E47D38A0(v36, v54);
}

uint64_t sub_1E47D2AA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = sub_1E47D1384();
  sub_1E47D393C(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpatialDayView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  result = sub_1E47D2BE4(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  *a2 = sub_1E47D2C48;
  a2[1] = v8;
  a2[2] = 0xD00000000000001DLL;
  a2[3] = 0x80000001E48A7CC0;
  return result;
}

uint64_t sub_1E47D2BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialDayView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47D2C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SpatialDayView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E47D1664(a1, v2 + v6, a2, v7);
}

uint64_t sub_1E47D2CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E4877F6C();
  v20 = 0;
  sub_1E47D2E40(&v11);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v29[7] = v18;
  sub_1E4773850(&v21, &v10, &qword_1ECF7C8E8, &qword_1E487E7D0);
  result = sub_1E47738B8(v29, &qword_1ECF7C8E8, &qword_1E487E7D0);
  *&v19[71] = v25;
  *&v19[87] = v26;
  *&v19[103] = v27;
  *&v19[119] = v28;
  *&v19[7] = v21;
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  v4 = *&v19[64];
  *(a1 + 97) = *&v19[80];
  v5 = *&v19[112];
  *(a1 + 113) = *&v19[96];
  *(a1 + 129) = v5;
  v6 = *v19;
  *(a1 + 33) = *&v19[16];
  v7 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  *(a1 + 65) = v7;
  *(a1 + 81) = v4;
  v8 = v20;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  v9 = *&v19[127];
  *(a1 + 17) = v6;
  *(a1 + 144) = v9;
  strcpy((a1 + 152), "Now Indicator");
  *(a1 + 166) = -4864;
  return result;
}

uint64_t sub_1E47D2E40@<X0>(_OWORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1E487863C();
  sub_1E487889C();
  sub_1E4877BCC();
  *&v13[6] = v26;
  *&v13[22] = v27;
  *&v13[38] = v28;
  v3 = sub_1E487863C();
  sub_1E487889C();
  sub_1E4877BCC();
  *&v12[6] = v29;
  *&v12[22] = v30;
  *&v12[38] = v31;
  *v14 = v2;
  *&v14[8] = 256;
  *&v14[10] = *v13;
  *&v14[26] = *&v13[16];
  *&v14[42] = *&v13[32];
  *&v14[56] = *(&v28 + 1);
  *v15 = v3;
  v6 = *v14;
  v7 = *&v14[16];
  *&v15[8] = 256;
  *&v15[10] = *v12;
  *&v15[56] = *(&v31 + 1);
  *&v15[42] = *&v12[32];
  *&v15[26] = *&v12[16];
  v10 = *&v15[32];
  v11 = *&v15[48];
  v8 = *v15;
  v9 = *&v15[16];
  v4 = *&v14[48];
  a1[2] = *&v14[32];
  a1[3] = v4;
  *a1 = v6;
  a1[1] = v7;
  a1[6] = v10;
  a1[7] = v11;
  a1[4] = v8;
  a1[5] = v9;
  v16 = v3;
  v17 = 256;
  *&v20[14] = *&v12[46];
  *v20 = *&v12[32];
  v19 = *&v12[16];
  v18 = *v12;
  sub_1E4773850(v14, &v21, &qword_1ECF7C8F0, &qword_1E487E7D8);
  sub_1E4773850(v15, &v21, &qword_1ECF7C8F8, &qword_1E487E7E0);
  sub_1E47738B8(&v16, &qword_1ECF7C8F8, &qword_1E487E7E0);
  v21 = v2;
  v22 = 256;
  v23 = *v13;
  v24 = *&v13[16];
  *v25 = *&v13[32];
  *&v25[14] = *&v13[46];
  sub_1E47738B8(&v21, &qword_1ECF7C8F0, &qword_1E487E7D8);
}

uint64_t sub_1E47D30B4(__int128 *a1)
{
  v3 = *(type metadata accessor for SpatialDayView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E47D1FA0(a1, v4);
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for SpatialDayView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = v0 + v3 + v1[5];
  v7(v8, v6);
  v9 = type metadata accessor for DayEvents();
  v10 = *(v8 + *(v9 + 20));

  v11 = *(v8 + *(v9 + 24));

  v12 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_1E477A484(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1E4877CCC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = *(v5 + v1[12]);

  v19 = *(v5 + v1[13] + 32);

  v20 = *(v5 + v1[14] + 8);

  v21 = v1[15];
  v22 = sub_1E48783DC();
  (*(*(v22 - 8) + 8))(v5 + v21, v22);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E47D33B4(uint64_t *a1)
{
  v3 = *(type metadata accessor for SpatialDayView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E47D21DC(a1, v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for SpatialDayView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = v0 + v3 + v1[5];
  v7(v8, v6);
  v9 = type metadata accessor for DayEvents();
  v10 = *(v8 + *(v9 + 20));

  v11 = *(v8 + *(v9 + 24));

  v12 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_1E477A484(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1E4877CCC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = *(v5 + v1[12]);

  v19 = *(v5 + v1[13] + 32);

  v20 = *(v5 + v1[14] + 8);

  v21 = v1[15];
  v22 = sub_1E48783DC();
  (*(*(v22 - 8) + 8))(v5 + v21, v22);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E47D36C0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SpatialDayView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E47D23E8(a1, v2 + v6, a2, v7);
}

unint64_t sub_1E47D376C()
{
  result = qword_1EE2B1220;
  if (!qword_1EE2B1220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C870, &qword_1E487E6D0);
    sub_1E47D3858(qword_1EE2B2C08, type metadata accessor for SpatialReminderView);
    sub_1E47D3858(&qword_1EE2B3740, type metadata accessor for SpatialEventView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1220);
  }

  return result;
}

uint64_t sub_1E47D3858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47D38A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C870, &qword_1E487E6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47D393C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47D39A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47D3A24()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  return sub_1E47D20A8(v0[2]);
}

unint64_t sub_1E47D3A58()
{
  result = qword_1EE2B1578;
  if (!qword_1EE2B1578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF7C8C0, &qword_1E487E768);
    sub_1E4773680(&qword_1EE2B1608, &unk_1ECF7C8D0, &qword_1E487E770);
    sub_1E4773680(&qword_1EE2B10F8, &qword_1ECF7C8E0, qword_1E487E778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1578);
  }

  return result;
}

uint64_t type metadata accessor for NarrowXMoreView()
{
  result = qword_1EE2B3AB8;
  if (!qword_1EE2B3AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47D3BCC()
{
  sub_1E47BBFDC(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E478305C();
    if (v1 <= 0x3F)
    {
      sub_1E47BBFDC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E47BBFDC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E47D3D34()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E487A7E0;
  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA0], v0);
  v6 = sub_1E48782CC();

  (*(v1 + 8))(v4, v0);
  *(v5 + 32) = v6;
  return v5;
}

double sub_1E47D3E84(uint64_t a1)
{
  v3 = sub_1E48782AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1.0;
  if (*(v1 + 8) == 1)
  {
    v9 = *(sub_1E47D4130() + 112);

    v8 = fmax(v9, 1.0);
  }

  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E6980EA0], v3);
  v10 = sub_1E48782CC();

  (*(v4 + 8))(v7, v3);
  sub_1E487201C(v10, a1);
  v12 = v11;

  return v8 * v12;
}

uint64_t sub_1E47D3FE8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    v7 = *(v0 + 16);

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E47D4130()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

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

uint64_t sub_1E47D4270@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for NarrowXMoreView();
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

uint64_t sub_1E47D4478()
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
      sub_1E47D6B84(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
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
        sub_1E47D6C4C(v7, v18, type metadata accessor for Event);
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
        result = sub_1E47D6C4C(v18, v10 + v11 + v16 * v12, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E47D6BEC(v7, type metadata accessor for Event);
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

uint64_t sub_1E47D4714()
{
  v1 = *(*v0 + 16);
  v2 = *(sub_1E47D4478() + 16);

  v3 = *(sub_1E47D4478() + 16);

  v4 = v1 - v2;
  if (v1 == v2 && v3 != 0)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v6 = __OFADD__(v4, v3);
  v3 += v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v0[8])
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_13:
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

uint64_t sub_1E47D496C()
{
  v1 = *(*v0 + 16);
  v2 = *(sub_1E47D4478() + 16);

  v3 = *(sub_1E47D4478() + 16);

  v4 = v1 - v2;
  if (v1 != v2 || v3 == 0)
  {
    v6 = __OFADD__(v4, v3);
    v3 += v4;
    if (v6)
    {
      __break(1u);
    }

    else if (v0[8])
    {
      if (qword_1EE2B4848 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_11;
  }

  if (qword_1EE2B4848 != -1)
  {
    goto LABEL_13;
  }

LABEL_11:
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

uint64_t sub_1E47D4B60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C910, &qword_1E487E868);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  *v6 = sub_1E487810C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C918, &qword_1E487E870);
  sub_1E47D4C94(v1, &v6[*(v7 + 44)]);
  v8 = sub_1E487813C();
  if (sub_1E47D3FE8())
  {
    v9 = *(sub_1E47D4130() + 48);
  }

  sub_1E4877B0C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1E477372C(v6, a1, &qword_1ECF7C910, &qword_1E487E868);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C920, &qword_1E487E878);
  v19 = a1 + *(result + 36);
  *v19 = v8;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_1E47D4C94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C928, &qword_1E487E880);
  v60 = *(v61 - 8);
  v3 = *(v60 + 64);
  v4 = MEMORY[0x1EEE9AC00](v61);
  v58 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &KeyPath - v6;
  v7 = type metadata accessor for NarrowXMoreView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C930, &unk_1E487E888);
  v56 = *(v57 - 8);
  v10 = *(v56 + 64);
  v11 = MEMORY[0x1EEE9AC00](v57);
  v55 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &KeyPath - v13;
  sub_1E4878D2C();
  v54 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  inited = swift_initStackObject();
  v52 = xmmword_1E487A7F0;
  *(inited + 16) = xmmword_1E487A7F0;
  *(inited + 32) = sub_1E47D4714();
  *(inited + 40) = v15;
  *(inited + 48) = sub_1E47D496C();
  *(inited + 56) = v16;
  v64 = MEMORY[0x1E69E7CD0];
  v45 = a1;
  v17 = sub_1E477A548(inited);
  v51 = 0;
  swift_setDeallocating();
  swift_arrayDestroy();

  v64 = v17;
  KeyPath = swift_getKeyPath();
  v50 = type metadata accessor for NarrowXMoreView;
  sub_1E47D6B84(a1, &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowXMoreView);
  v18 = *(v8 + 80);
  v47 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v18 + 16) & ~v18;
  v20 = swift_allocObject();
  v49 = v9;
  v48 = type metadata accessor for NarrowXMoreView;
  sub_1E47D6C4C(&KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for NarrowXMoreView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B978, &qword_1E487ABA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C938, &qword_1E487E8B0);
  v46 = sub_1E4773680(&qword_1EE2B0DC0, &qword_1ECF7B978, &qword_1E487ABA8);
  sub_1E4773680(&qword_1EE2B0F40, &qword_1ECF7C938, &qword_1E487E8B0);
  v21 = v62;
  sub_1E487885C();
  v22 = swift_initStackObject();
  *(v22 + 16) = v52;
  v23 = v45;
  *(v22 + 32) = sub_1E47D4714();
  *(v22 + 40) = v24;
  v25 = v23;
  *(v22 + 48) = sub_1E47D496C();
  *(v22 + 56) = v26;
  v64 = MEMORY[0x1E69E7CD0];
  v27 = sub_1E477A548(v22);
  swift_setDeallocating();
  swift_arrayDestroy();

  v64 = v27;
  swift_getKeyPath();
  v28 = v47;
  sub_1E47D6B84(v25, v47, v50);
  v29 = swift_allocObject();
  sub_1E47D6C4C(v28, v29 + v19, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C940, &qword_1E487E8B8);
  sub_1E4773680(&qword_1EE2B0F38, &qword_1ECF7C940, &qword_1E487E8B8);
  v30 = v63;
  sub_1E487885C();
  v31 = v56;
  v32 = *(v56 + 16);
  v33 = v55;
  v34 = v57;
  v32(v55, v21, v57);
  v35 = v60;
  v53 = *(v60 + 16);
  v36 = v58;
  v37 = v30;
  v38 = v61;
  v53(v58, v37, v61);
  v39 = v59;
  v32(v59, v33, v34);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C948, &qword_1E487E8C0);
  v53(&v39[*(v40 + 48)], v36, v38);
  v41 = *(v35 + 8);
  v41(v63, v38);
  v42 = *(v31 + 8);
  v42(v62, v34);
  v41(v36, v38);
  v42(v33, v34);
}

uint64_t sub_1E47D53FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(sub_1E47D4130() + 72);

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C960, &qword_1E487E960);
  sub_1E47D5564(a2, v5, v6, a3 + *(v8 + 44));
  sub_1E4878F9C();

  strcpy(v12, "xmore circles ");
  HIBYTE(v12[1]) = -18;
  MEMORY[0x1E69192D0](v5, v6);

  v9 = v12[1];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C938, &qword_1E487E8B0);
  v11 = (a3 + *(result + 52));
  *v11 = v12[0];
  v11[1] = v9;
  return result;
}

uint64_t sub_1E47D5564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a2;
  v80 = a3;
  v85 = a1;
  v83 = a4;
  v4 = sub_1E4877B3C();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v8 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v10 = &v70 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C968, &qword_1E487E968);
  v11 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v70 - v12;
  v84 = sub_1E48782AC();
  v13 = *(v84 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for AllDayCirclesView(0);
  v17 = *(*(v75 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v75);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v70 - v21;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C970, &qword_1E487E970);
  v23 = *(v78 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v70 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C978, &qword_1E487E978);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v82 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v70 - v30;
  sub_1E4878D2C();
  v81 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = v85;
  if (sub_1E47D3FE8())
  {
    if (*(v31 + 8) == 1)
    {
      v32 = *v31;

      if (sub_1E47D3FE8())
      {
        sub_1E48782DC();
      }

      else
      {
        sub_1E48781BC();
      }

      v37 = v84;
      (*(v13 + 104))(v16, *MEMORY[0x1E6980EA0], v84);
      v38 = sub_1E48782CC();

      (*(v13 + 8))(v16, v37);
      KeyPath = swift_getKeyPath();
      v40 = swift_getKeyPath();
      v41 = v75;
      *&v20[*(v75 + 20)] = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *v20 = KeyPath;
      v20[8] = 0;
      *&v20[v41[6]] = v32;
      *&v20[v41[7]] = v38;
      v42 = &v20[v41[8]];
      sub_1E48783CC();
      sub_1E47D6C4C(v20, v22, type metadata accessor for AllDayCirclesView);
      sub_1E47D6B84(v22, v76, type metadata accessor for AllDayCirclesView);
      swift_storeEnumTagMultiPayload();
      sub_1E47D6B3C(qword_1EE2B35D0, type metadata accessor for AllDayCirclesView);
      sub_1E4773680(&qword_1EE2B1028, &qword_1ECF7B9A8, &unk_1E4881BA0);
      v36 = v74;
      sub_1E487803C();
      sub_1E47D6BEC(v22, type metadata accessor for AllDayCirclesView);
    }

    else
    {
      v33 = *(sub_1E47D4130() + 104);

      *v10 = sub_1E4877F6C();
      *(v10 + 1) = v33;
      v10[16] = 0;
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0) + 44);
      v34 = *v31;
      sub_1E47D4270(v7);
      v35 = sub_1E486B590(v34, 3, v7);
      (*(v71 + 8))(v7, v72);
      v87 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
      sub_1E487736C();
      type metadata accessor for ColorBarView(0);
      sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8);
      sub_1E47D6B3C(qword_1EE2B58D8, type metadata accessor for ColorBarView);
      sub_1E47D6B3C(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling);
      sub_1E487886C();

      sub_1E4773850(v10, v76, &qword_1ECF7B9A8, &unk_1E4881BA0);
      swift_storeEnumTagMultiPayload();
      sub_1E47D6B3C(qword_1EE2B35D0, type metadata accessor for AllDayCirclesView);
      sub_1E4773680(&qword_1EE2B1028, &qword_1ECF7B9A8, &unk_1E4881BA0);
      v36 = v74;
      sub_1E487803C();
      sub_1E47738B8(v10, &qword_1ECF7B9A8, &unk_1E4881BA0);
    }

    v43 = v86;
    sub_1E477372C(v36, v86, &qword_1ECF7C970, &qword_1E487E970);
    (*(v23 + 56))(v43, 0, 1, v78);
  }

  else
  {
    (*(v23 + 56))(v86, 1, 1, v78);
  }

  v87 = v79;
  v88 = v80;
  sub_1E477A374();

  v44 = sub_1E487848C();
  v46 = v45;
  v48 = v47;
  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  v49 = v84;
  (*(v13 + 104))(v16, *MEMORY[0x1E6980EA0], v84);
  sub_1E48782CC();

  (*(v13 + 8))(v16, v49);
  v50 = sub_1E487842C();
  v52 = v51;
  v54 = v53;

  sub_1E477A3C8(v44, v46, v48 & 1);

  sub_1E48786FC();
  v55 = sub_1E48783FC();
  v57 = v56;
  v59 = v58;
  v61 = v60;

  sub_1E477A3C8(v50, v52, v54 & 1);

  v62 = swift_getKeyPath();
  v63 = v86;
  v64 = v82;
  sub_1E4773850(v86, v82, &qword_1ECF7C978, &qword_1E487E978);
  v65 = v83;
  sub_1E4773850(v64, v83, &qword_1ECF7C978, &qword_1E487E978);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C980, &qword_1E487E980);
  v67 = v65 + *(v66 + 48);
  *v67 = v55;
  *(v67 + 8) = v57;
  *(v67 + 16) = v59 & 1;
  *(v67 + 24) = v61;
  *(v67 + 32) = v62;
  *(v67 + 40) = 1;
  *(v67 + 48) = 0;
  v68 = v65 + *(v66 + 64);
  *v68 = 0;
  *(v68 + 8) = 0;
  sub_1E478B8E0(v55, v57, v59 & 1);

  sub_1E47738B8(v63, &qword_1ECF7C978, &qword_1E487E978);
  sub_1E477A3C8(v55, v57, v59 & 1);

  sub_1E47738B8(v64, &qword_1ECF7C978, &qword_1E487E978);
}

uint64_t sub_1E47D608C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(sub_1E47D4130() + 72);

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C950, &qword_1E487E8C8);
  sub_1E47D61D4(a2, v5, v6, a3 + *(v8 + 44));
  MEMORY[0x1E69192D0](v5, v6);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C940, &qword_1E487E8B8);
  v10 = (a3 + *(result + 52));
  *v10 = 0x61622065726F6D78;
  v10[1] = 0xEB00000000207372;
  return result;
}

uint64_t sub_1E47D61D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v57 = a4;
  v5 = sub_1E48782AC();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4877B3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v58 = (&v51 - v18);
  sub_1E4878D2C();
  v55 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(sub_1E47D4130() + 104);

  v20 = sub_1E4877F6C();
  v21 = v58;
  *v58 = v20;
  v21[1] = v19;
  *(v21 + 16) = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0) + 44);
  v23 = *a1;
  sub_1E47D4270(v13);
  v24 = sub_1E486B590(v23, 3, v13);
  (*(v10 + 8))(v13, v9);
  v59 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E47D6B3C(qword_1EE2B58D8, type metadata accessor for ColorBarView);
  sub_1E47D6B3C(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling);
  sub_1E487886C();

  v59 = v51;
  v60 = v52;
  sub_1E477A374();

  v25 = sub_1E487848C();
  v27 = v26;
  v29 = v28;
  if (sub_1E47D3FE8())
  {
    sub_1E48782DC();
  }

  else
  {
    sub_1E48781BC();
  }

  v31 = v53;
  v30 = v54;
  (*(v53 + 104))(v8, *MEMORY[0x1E6980EA0], v54);
  sub_1E48782CC();

  (*(v31 + 8))(v8, v30);
  v32 = sub_1E487842C();
  v34 = v33;
  LOBYTE(v30) = v35;

  sub_1E477A3C8(v25, v27, v29 & 1);

  sub_1E48786FC();
  v36 = sub_1E48783FC();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_1E477A3C8(v32, v34, v30 & 1);

  KeyPath = swift_getKeyPath();
  v44 = v58;
  v45 = v56;
  sub_1E4773850(v58, v56, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v46 = v57;
  sub_1E4773850(v45, v57, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C958, &qword_1E487E900);
  v48 = v46 + *(v47 + 48);
  *v48 = v36;
  *(v48 + 8) = v38;
  *(v48 + 16) = v40 & 1;
  *(v48 + 24) = v42;
  *(v48 + 32) = KeyPath;
  *(v48 + 40) = 1;
  *(v48 + 48) = 0;
  v49 = v46 + *(v47 + 64);
  *v49 = 0;
  *(v49 + 8) = 0;
  sub_1E478B8E0(v36, v38, v40 & 1);

  sub_1E47738B8(v44, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E477A3C8(v36, v38, v40 & 1);

  sub_1E47738B8(v45, &qword_1ECF7B9A8, &unk_1E4881BA0);
}

uint64_t sub_1E47D6824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47D6B84(a1, a2, type metadata accessor for ColorBarView.Styling);
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

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for NarrowXMoreView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  sub_1E477A484(*(v5 + 16), *(v5 + 24));
  v7 = *(v0 + v3 + 32);

  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E4877B3C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E47D6AA8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NarrowXMoreView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E47D6B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47D6B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47D6BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47D6C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47D6CB4()
{
  result = qword_1EE2B1410;
  if (!qword_1EE2B1410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C920, &qword_1E487E878);
    sub_1E47D6D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1410);
  }

  return result;
}

unint64_t sub_1E47D6D40()
{
  result = qword_1EE2B1590;
  if (!qword_1EE2B1590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C910, &qword_1E487E868);
    sub_1E4773680(&qword_1EE2B1648, &qword_1ECF7C988, &qword_1E487E9B8);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1590);
  }

  return result;
}

uint64_t type metadata accessor for WideModernEventDetailsView()
{
  result = qword_1ECF7C990;
  if (!qword_1ECF7C990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E47D6E88@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WideModernEventDetailsView();
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

uint64_t sub_1E47D7090@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WideModernEventDetailsView();
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

uint64_t sub_1E47D7298@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WideModernEventDetailsView();
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

uint64_t sub_1E47D74A0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideModernEventDetailsView() + 36));
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

uint64_t sub_1E47D75F0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideModernEventDetailsView() + 36));
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

uint64_t sub_1E47D7754()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideModernEventDetailsView() + 36));
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

uint64_t sub_1E47D78B8()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  sub_1E47D7298(&v14 - v7);
  v9 = sub_1E476F0D0(v0, v8);
  (*(v2 + 16))(v6, v8, v1);
  v10 = (*(v2 + 88))(v6, v1);
  if (v10 != *MEMORY[0x1E697DBC0] && v10 != *MEMORY[0x1E697DBB0])
  {
    (*(v2 + 8))(v6, v1);
  }

  CUIKOccurrenceLeadingIconAlphaScale();
  v11 = [v9 cuik_colorWithAlphaScaled_];

  v12 = sub_1E48785FC();
  (*(v2 + 8))(v8, v1);
  return v12;
}

void sub_1E47D7A78(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = sub_1E487720C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = v73 - v10;
  v11 = sub_1E487757C();
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E487753C();
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v74 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v73 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v73 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v73 - v27;
  v29 = type metadata accessor for CellDisplayContext(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E487732C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for WideModernEventDetailsView();
  sub_1E47DDBEC(v2 + *(v38 + 20), v32, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v80;
    v40 = type metadata accessor for Event();
    v41 = *(v40 + 24);
    v73[1] = *(v40 + 20);
    v42 = sub_1E48772EC();
    v43 = (v81 + 8);
    v44 = (v77 + 8);
    if (v42)
    {
      v45 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      sub_1E47D6E88(v24);
      v46 = sub_1E487748C();
      v47 = *v43;
      (*v43)(v24, v39);
      [v45 setCalendar_];

      sub_1E47D6E88(v24);
      sub_1E487750C();
      v47(v24, v39);
      v48 = sub_1E487756C();
      (*v44)(v14, v78);
      [v45 setTimeZone_];

      sub_1E47D6E88(v22);
      v49 = v75;
      sub_1E48774EC();
      v47(v22, v39);
      v50 = sub_1E487744C();
      v51 = *(v50 - 8);
      v52 = 0;
      if ((*(v51 + 48))(v49, 1, v50) != 1)
      {
        v52 = sub_1E48773DC();
        (*(v51 + 8))(v49, v50);
      }

      [v45 setLocale_];

      v53 = sub_1E4878B9C();
      [v45 setLocalizedDateFormatFromTemplate_];

      v54 = sub_1E48772BC();
      v55 = [v45 stringFromDate_];

      sub_1E4878BDC();
      sub_1E48771FC();
      sub_1E48771AC();
      v83 = sub_1E47D75F0();
      sub_1E47C4180();
      sub_1E48771BC();
    }

    else
    {
      v81 = v41;
      v59 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
      sub_1E47D6E88(v24);
      v60 = sub_1E487748C();
      v61 = *v43;
      v62 = v39;
      (*v43)(v24, v39);
      [v59 setCalendar_];

      sub_1E47D6E88(v24);
      sub_1E487750C();
      v61(v24, v39);
      v63 = sub_1E487756C();
      (*v44)(v14, v78);
      [v59 setTimeZone_];

      v64 = v74;
      sub_1E47D6E88(v74);
      v65 = v76;
      sub_1E48774EC();
      v61(v64, v62);
      v66 = sub_1E487744C();
      v67 = *(v66 - 8);
      v68 = 0;
      if ((*(v67 + 48))(v65, 1, v66) != 1)
      {
        v68 = sub_1E48773DC();
        (*(v67 + 8))(v65, v66);
      }

      [v59 setLocale_];

      v69 = sub_1E4878B9C();
      [v59 setDateTemplate_];

      v70 = sub_1E48772BC();
      v71 = sub_1E48772BC();
      v72 = [v59 stringFromDate:v70 toDate:v71];

      sub_1E4878BDC();
      sub_1E48771FC();
      sub_1E48771AC();
      v83 = sub_1E47D75F0();
      sub_1E47C4180();
      sub_1E48771BC();
    }
  }

  else
  {
    (*(v34 + 32))(v37, v32, v33);
    type metadata accessor for Utils();
    v56 = type metadata accessor for Event();
    v57 = *(v56 + 20);
    (*(v34 + 16))(v28, v2 + *(v56 + 24), v33);
    (*(v34 + 56))(v28, 0, 1, v33);
    sub_1E47D6E88(v24);
    v58 = sub_1E47D75F0();
    sub_1E485CFF8(v2 + v57, v28, v37, v58, v82);

    (*(v81 + 8))(v24, v80);
    sub_1E47738B8(v28, &unk_1ECF7C880, &qword_1E4882710);
    (*(v34 + 8))(v37, v33);
  }
}

uint64_t sub_1E47D843C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v60 - v6;
  v7 = sub_1E487757C();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1E487753C();
  v11 = *(v67 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - v17;
  v19 = type metadata accessor for CellDisplayContext(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E487732C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WideModernEventDetailsView();
  sub_1E47DDBEC(v1 + *(v28 + 20), v22, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
    v30 = v1;
    sub_1E47D6E88(v18);
    v31 = sub_1E487748C();
    v32 = *(v11 + 8);
    v33 = v67;
    v32(v18, v67);
    [v29 setCalendar_];

    sub_1E47D6E88(v18);
    sub_1E487750C();
    v32(v18, v33);
    v34 = sub_1E487756C();
    (*(v68 + 8))(v10, v69);
    [v29 setTimeZone_];

    v35 = v63;
    sub_1E47D6E88(v63);
    v36 = v65;
    sub_1E48774EC();
    v32(v35, v33);
    v37 = sub_1E487744C();
    v38 = *(v37 - 8);
    v39 = 0;
    if ((*(v38 + 48))(v36, 1, v37) != 1)
    {
      v39 = sub_1E48773DC();
      (*(v38 + 8))(v36, v37);
    }

    [v29 setLocale_];

    [v29 setTimeStyle_];
    [v29 setDateStyle_];
    v40 = type metadata accessor for Event();
    v41 = v30 + *(v40 + 20);
    v42 = sub_1E48772BC();
    v43 = v30 + *(v40 + 24);
    v44 = sub_1E48772BC();
    v45 = [v29 stringFromDate:v42 toDate:v44];
  }

  else
  {
    v61 = v27;
    v62 = v24;
    (*(v24 + 32))(v27, v22, v23);
    v29 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E47D6E88(v18);
    v46 = sub_1E487748C();
    v47 = *(v11 + 8);
    v48 = v67;
    v47(v18, v67);
    [v29 setCalendar_];

    sub_1E47D6E88(v18);
    sub_1E487750C();
    v47(v18, v48);
    v49 = sub_1E487756C();
    (*(v68 + 8))(v10, v69);
    [v29 setTimeZone_];

    v50 = v64;
    sub_1E47D6E88(v64);
    v51 = v66;
    sub_1E48774EC();
    v47(v50, v48);
    v52 = sub_1E487744C();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 48))(v51, 1, v52);
    v55 = 0;
    v57 = v61;
    v56 = v62;
    if (v54 != 1)
    {
      v55 = sub_1E48773DC();
      (*(v53 + 8))(v51, v52);
    }

    [v29 setLocale_];

    [v29 setTimeStyle_];
    [v29 setDateStyle_];
    v44 = sub_1E48772BC();
    (*(v56 + 8))(v57, v23);
    v45 = [v29 stringFromDate_];
  }

  v58 = sub_1E4878BDC();
  return v58;
}

uint64_t sub_1E47D8BB4()
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
  v21 = *(type metadata accessor for WideModernEventDetailsView() + 20);
  v34 = v0;
  sub_1E47DDBEC(v0 + v21, v8, type metadata accessor for CellDisplayContext);
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
  sub_1E47D6E88(v33);
  v31 = sub_1E486D148(v29 + v28, v18, v20, v30);
  (*(v2 + 8))(v30, v1);
  sub_1E47738B8(v18, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E47738B8(v20, &unk_1ECF7C880, &qword_1E4882710);
  return v31;
}

uint64_t sub_1E47D8F20@<X0>(uint64_t a1@<X8>)
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
  sub_1E47D7090(&v39 - v18);
  sub_1E4877CAC();
  sub_1E47DDFF0(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
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
  v26 = type metadata accessor for WideModernEventDetailsView();
  sub_1E47DDBEC(v20 + *(v26 + 20), v11, type metadata accessor for CellDisplayContext);
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

uint64_t sub_1E47D93E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA78, &qword_1E487EBF0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = sub_1E4877B3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA80, &qword_1E487EBF8);
  v15 = *(*(v38 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v38);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  sub_1E4878D2C();
  v39 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v41 = sub_1E487874C();
  sub_1E487823C();
  sub_1E48784EC();

  sub_1E48788CC();
  v22 = v21;
  v24 = v23;
  v25 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA88, &qword_1E487EC00) + 36)];
  *v25 = 0x3FF921FB54442D18;
  *(v25 + 1) = v22;
  *(v25 + 2) = v24;
  sub_1E47D7298(v14);
  v26 = sub_1E4770A7C(a1, v14);
  (*(v11 + 8))(v14, v10);
  KeyPath = swift_getKeyPath();
  v28 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA90, &qword_1E487EC38) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  v29 = *(sub_1E47D74A0() + 64);

  sub_1E487889C();
  sub_1E4877BCC();
  v30 = &v20[*(v38 + 36)];
  v31 = v42;
  *v30 = v41;
  *(v30 + 1) = v31;
  *(v30 + 2) = v43;
  *v9 = sub_1E4877F6C();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA98, &qword_1E487EC40);
  sub_1E47D9858(a1, &v9[*(v32 + 44)]);
  sub_1E4773850(v20, v18, &qword_1ECF7CA80, &qword_1E487EBF8);
  sub_1E4773850(v9, v7, &qword_1ECF7CA78, &qword_1E487EBF0);
  v33 = v40;
  sub_1E4773850(v18, v40, &qword_1ECF7CA80, &qword_1E487EBF8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAA0, &qword_1E487EC48);
  sub_1E4773850(v7, v33 + *(v34 + 48), &qword_1ECF7CA78, &qword_1E487EBF0);
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1E47738B8(v9, &qword_1ECF7CA78, &qword_1E487EBF0);
  sub_1E47738B8(v20, &qword_1ECF7CA80, &qword_1E487EBF8);
  sub_1E47738B8(v7, &qword_1ECF7CA78, &qword_1E487EBF0);
  sub_1E47738B8(v18, &qword_1ECF7CA80, &qword_1E487EBF8);
}

uint64_t sub_1E47D9858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1E4877B3C();
  v49 = *(v3 - 8);
  v4 = *(v49 + 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAA8, &qword_1E487EC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v45 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAB0, &qword_1E487EC58);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  sub_1E4878D2C();
  v50 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for Event();
  if (*(a1 + *(v19 + 28)) <= 0.0)
  {
    (*(v8 + 56))(v18, 1, 1, v7);
  }

  else
  {
    v20 = *(a1 + *(v19 + 32));
    v46 = v3;
    v47 = v7;
    v21 = sub_1E487874C();
    v22 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v24 = *MEMORY[0x1E69816D0];
    v25 = sub_1E487877C();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    *v11 = v21;
    sub_1E47D7298(v6);
    sub_1E476F0D0(a1, v6);
    v26 = sub_1E48785FC();
    (*(v49 + 1))(v6, v46);
    KeyPath = swift_getKeyPath();
    v28 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAC0, &qword_1E487EC98) + 36));
    *v28 = KeyPath;
    v28[1] = v26;
    v29 = sub_1E47D75F0();
    v30 = swift_getKeyPath();
    v31 = v47;
    v32 = (v11 + *(v47 + 36));
    *v32 = v30;
    v32[1] = v29;
    sub_1E477372C(v11, v18, &qword_1ECF7CAA8, &qword_1E487EC50);
    (*(v8 + 56))(v18, 0, 1, v31);
  }

  v33 = v18;
  v48 = v18;
  sub_1E47D9D8C(v52);
  v34 = v52[0];
  v35 = v52[1];
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v39 = v56;
  v40 = v57;
  sub_1E4773850(v33, v16, &qword_1ECF7CAB0, &qword_1E487EC58);
  v41 = v16;
  v49 = v16;
  v42 = v51;
  sub_1E4773850(v41, v51, &qword_1ECF7CAB0, &qword_1E487EC58);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAB8, &qword_1E487EC60) + 48);
  *v43 = v34;
  *(v43 + 8) = v35;
  *(v43 + 16) = v36;
  *(v43 + 24) = v37;
  *(v43 + 32) = v38;
  *(v43 + 40) = v39;
  *(v43 + 48) = v40;
  sub_1E478B8E0(v34, v35, v36);

  sub_1E47738B8(v48, &qword_1ECF7CAB0, &qword_1E487EC58);
  sub_1E477A3C8(v34, v35, v36);

  sub_1E47738B8(v49, &qword_1ECF7CAB0, &qword_1E487EC58);
}

uint64_t sub_1E47D9D8C@<X0>(uint64_t a1@<X8>)
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
  v13 = *(v1 + *(v6 + 56));
  v14 = sub_1E48783EC();
  v16 = v15;
  LOBYTE(v6) = v17;
  sub_1E477A3C8(v8, v10, v12 & 1);

  sub_1E47D75F0();
  v18 = sub_1E487842C();
  v20 = v19;
  v22 = v21;
  v32[1] = v23;

  sub_1E477A3C8(v14, v16, v6 & 1);

  v24 = v33;
  sub_1E47D7298(v33);
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

uint64_t sub_1E47D9FD8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for CellDisplayContext(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v53 - v8;
  v10 = type metadata accessor for EventBackgroundView();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9F0, &qword_1E487EA70);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9E0, &qword_1E487EA68);
  v19 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v21 = &v53 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9D0, &qword_1E487EA60);
  v22 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v53 - v23;
  *v18 = sub_1E4877FAC();
  *(v18 + 1) = 0x4024000000000000;
  v18[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA08, &qword_1E487EA80);
  sub_1E47DA5A0(v1, &v18[*(v24 + 44)]);
  v25 = *(sub_1E47D74A0() + 48);

  v26 = sub_1E487814C();
  sub_1E4877B0C();
  v27 = &v18[*(v15 + 44)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_1E47DDBEC(v1, v9, type metadata accessor for Event);
  v32 = type metadata accessor for Event();
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  v33 = type metadata accessor for WideModernEventDetailsView();
  sub_1E47DDBEC(v1 + *(v33 + 20), v5, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v35 = sub_1E487732C();
    (*(*(v35 - 8) + 8))(v5, v35);
  }

  else
  {
    sub_1E47C4264(v5, type metadata accessor for CellDisplayContext);
  }

  v36 = EnumCaseMultiPayload != 2;
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
  v38 = swift_getKeyPath();
  sub_1E477372C(v9, v13, &qword_1ECF7B950, &unk_1E487AE90);
  *&v13[v10[5]] = 3;
  v13[v10[6]] = v36;
  v39 = &v13[v10[7]];
  *v39 = KeyPath;
  v39[8] = 0;
  v40 = &v13[v10[11]];
  *v40 = v38;
  v40[8] = 0;
  v41 = sub_1E487889C();
  v43 = v42;
  v44 = &v21[*(v54 + 36)];
  sub_1E47C411C(v13, v44);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v45 = v41;
  v45[1] = v43;
  sub_1E477372C(v18, v21, &qword_1ECF7C9F0, &qword_1E487EA70);
  v46 = v56;
  sub_1E477372C(v21, v56, &qword_1ECF7C9E0, &qword_1E487EA68);
  v58 = sub_1E47CC9E8(*(v1 + *(v32 + 56)));
  v59 = v47;
  sub_1E477A374();
  v48 = sub_1E487848C();
  v50 = v49;
  LOBYTE(v44) = v51;
  sub_1E47DD9E8();
  sub_1E487857C();
  sub_1E477A3C8(v48, v50, v44 & 1);

  return sub_1E47738B8(v46, &qword_1ECF7C9D0, &qword_1E487EA60);
}

uint64_t sub_1E47DA5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA10, &qword_1E487EB88);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v90 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v100 = (&v85 - v7);
  v8 = sub_1E4877B3C();
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorBarView(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v98 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA18, &qword_1E487EB90);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v101 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v85 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA20, &qword_1E487EB98);
  v91 = *(v23 - 8);
  v92 = v23;
  v24 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v85 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA28, &qword_1E487EBA0);
  v26 = *(*(v87 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v87);
  v88 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v85 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA30, &qword_1E487EBA8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v85 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA38, &qword_1E487EBB0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v97 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v103 = &v85 - v42;
  v43 = sub_1E4878D2C();
  v96 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v44 = *(a1 + *(type metadata accessor for Event() + 28));
  v102 = a1;
  if (v44 <= 0.0)
  {
    (*(v91 + 56))(v103, 1, 1, v92);
  }

  else
  {
    v45 = *(sub_1E47D74A0() + 72);

    *v37 = sub_1E4877F6C();
    *(v37 + 1) = v45;
    v37[16] = 0;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA60, &qword_1E487EBD8);
    sub_1E47D93E4(a1, &v37[*(v46 + 44)]);
    sub_1E487883C();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA68, &qword_1E487EBE0);
    v86 = v22;
    v48 = *(v47 + 36);
    v49 = *MEMORY[0x1E6981DC8];
    v50 = sub_1E48788BC();
    (*(*(v50 - 8) + 104))(&v30[v48], v49, v50);
    v51 = sub_1E487813C();
    v52 = *(sub_1E47D74A0() + 48);

    sub_1E4877B0C();
    v53 = &v30[*(v87 + 36)];
    *v53 = v51;
    *(v53 + 1) = v54;
    *(v53 + 2) = v55;
    *(v53 + 3) = v56;
    *(v53 + 4) = v57;
    v53[40] = 0;
    v58 = v35;
    v85 = v43;
    sub_1E4773850(v37, v35, &qword_1ECF7CA30, &qword_1E487EBA8);
    v87 = v11;
    v59 = v88;
    sub_1E4773850(v30, v88, &qword_1ECF7CA28, &qword_1E487EBA0);
    v60 = v35;
    v61 = v89;
    sub_1E4773850(v60, v89, &qword_1ECF7CA30, &qword_1E487EBA8);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA70, &qword_1E487EBE8);
    sub_1E4773850(v59, v61 + *(v62 + 48), &qword_1ECF7CA28, &qword_1E487EBA0);
    sub_1E47738B8(v30, &qword_1ECF7CA28, &qword_1E487EBA0);
    sub_1E47738B8(v37, &qword_1ECF7CA30, &qword_1E487EBA8);
    v22 = v86;
    v11 = v87;
    sub_1E47738B8(v59, &qword_1ECF7CA28, &qword_1E487EBA0);
    sub_1E47738B8(v58, &qword_1ECF7CA30, &qword_1E487EBA8);
    v63 = v103;
    sub_1E477372C(v61, v103, &qword_1ECF7CA20, &qword_1E487EB98);
    (*(v91 + 56))(v63, 0, 1, v92);
  }

  v64 = *(sub_1E47D74A0() + 72);

  *v22 = sub_1E4877F6C();
  *(v22 + 1) = v64;
  v22[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v65 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA40, &qword_1E487EBB8) + 44)];
  v66 = v93;
  v67 = v102;
  sub_1E47D7298(v93);
  v68 = sub_1E4770A7C(v67, v66);
  (*(v94 + 8))(v66, v95);
  v69 = &v16[*(type metadata accessor for ColorBarView.Styling(0) + 40)];
  sub_1E487735C();
  v16[48] = 1;
  *v16 = v68;
  *(v16 + 1) = 0;
  v16[16] = 1;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 3) = 3;
  *&v16[*(v11 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v71 = &v16[*(v11 + 24)];
  *v71 = KeyPath;
  v71[8] = 0;
  v72 = sub_1E4877FBC();
  v73 = v100;
  *v100 = v72;
  *(v73 + 8) = 0;
  *(v73 + 16) = 0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA48, &qword_1E487EBC0);
  sub_1E47DAF90(v67, v73 + *(v74 + 44));
  v75 = v98;
  sub_1E47DDBEC(v16, v98, type metadata accessor for ColorBarView);
  v76 = v22;
  v77 = v90;
  sub_1E4773850(v73, v90, &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47DDBEC(v75, v65, type metadata accessor for ColorBarView);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA50, &qword_1E487EBC8);
  sub_1E4773850(v77, v65 + *(v78 + 48), &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47738B8(v73, &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47C4264(v16, type metadata accessor for ColorBarView);
  sub_1E47738B8(v77, &qword_1ECF7CA10, &qword_1E487EB88);
  sub_1E47C4264(v75, type metadata accessor for ColorBarView);

  v79 = v103;
  v80 = v97;
  sub_1E4773850(v103, v97, &qword_1ECF7CA38, &qword_1E487EBB0);
  v81 = v101;
  sub_1E4773850(v76, v101, &qword_1ECF7CA18, &qword_1E487EB90);
  v82 = v99;
  sub_1E4773850(v80, v99, &qword_1ECF7CA38, &qword_1E487EBB0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CA58, &qword_1E487EBD0);
  sub_1E4773850(v81, v82 + *(v83 + 48), &qword_1ECF7CA18, &qword_1E487EB90);
  sub_1E47738B8(v76, &qword_1ECF7CA18, &qword_1E487EB90);
  sub_1E47738B8(v79, &qword_1ECF7CA38, &qword_1E487EBB0);
  sub_1E47738B8(v81, &qword_1ECF7CA18, &qword_1E487EB90);
  sub_1E47738B8(v80, &qword_1ECF7CA38, &qword_1E487EBB0);
}

uint64_t sub_1E47DAF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAC8, &qword_1E487ED00);
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = (&v81 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAD0, &qword_1E487ED08);
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAD8, &unk_1E487ED10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v98 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v81 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C650, &qword_1E487DCA8);
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v15 = &v81 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAE0, &qword_1E487ED20);
  v16 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAE8, &qword_1E487ED28);
  v92 = *(v18 - 8);
  v93 = v18;
  v19 = *(v92 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v97 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v81 - v22;
  v23 = sub_1E4877B3C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for LocationView();
  v29 = *(*(v28 - 1) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAF0, &qword_1E487ED30);
  v88 = *(v32 - 8);
  v89 = v32;
  v33 = *(v88 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v96 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v101 = &v81 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAF8, &qword_1E487ED38);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v95 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v100 = (&v81 - v41);
  sub_1E4878D2C();
  v87 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = sub_1E4877F4C();
  v43 = v100;
  *v100 = v42;
  v43[1] = 0;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB00, &unk_1E487ED40);
  sub_1E47DBA88(a1, v43 + *(v44 + 44));
  sub_1E47DDBEC(a1, &v31[v28[5]], type metadata accessor for Event);
  v45 = sub_1E47D75F0();
  sub_1E47D7298(v27);
  sub_1E476F0D0(a1, v27);
  v46 = sub_1E48785FC();
  (*(v24 + 8))(v27, v23);
  LOBYTE(v43) = *(sub_1E47D74A0() + 146);

  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v47 = v28[11];
  *&v31[v47] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v31[v28[6]] = v45;
  v31[v28[7]] = 0;
  *&v31[v28[8]] = v46;
  v31[v28[9]] = 1;
  v31[v28[10]] = v43;
  sub_1E47DDFF0(qword_1EE2B3E90, type metadata accessor for LocationView);
  sub_1E48784AC();
  sub_1E47C4264(v31, type metadata accessor for LocationView);
  v48 = *(sub_1E47D74A0() + 96);

  v49 = v15;
  *v15 = sub_1E4877F6C();
  *(v15 + 1) = v48;
  v15[16] = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C658, &qword_1E487DCB0);
  sub_1E47DC8C0(a1, &v15[*(v50 + 44)]);
  v103 = sub_1E47D8BB4();
  v104 = v51;
  sub_1E477A374();
  v52 = sub_1E487848C();
  v54 = v53;
  LOBYTE(v45) = v55;
  sub_1E4773680(&qword_1EE2B0FB8, &qword_1ECF7C650, &qword_1E487DCA8);
  v56 = v85;
  sub_1E487856C();
  sub_1E477A3C8(v52, v54, v45 & 1);

  sub_1E47738B8(v49, &qword_1ECF7C650, &qword_1E487DCA8);
  sub_1E47DDC54();
  sub_1E48784AC();
  sub_1E47738B8(v56, &qword_1ECF7CAE0, &qword_1E487ED20);
  LODWORD(v52) = *(sub_1E47D74A0() + 145);

  v57 = 1;
  v59 = v90;
  v58 = v91;
  if (v52 == 1)
  {
    v60 = *(sub_1E47D74A0() + 96);

    v61 = sub_1E4877F6C();
    v62 = v82;
    *v82 = v61;
    *(v62 + 8) = v60;
    *(v62 + 16) = 0;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB18, &qword_1E487ED58);
    sub_1E47DCEE0(a1, v62 + *(v63 + 44));
    sub_1E4773680(&qword_1ECF7CB20, &qword_1ECF7CAC8, &qword_1E487ED00);
    v64 = v81;
    sub_1E48784AC();
    sub_1E47738B8(v62, &qword_1ECF7CAC8, &qword_1E487ED00);
    (*(v59 + 32))(v99, v64, v58);
    v57 = 0;
  }

  v65 = v99;
  (*(v59 + 56))(v99, v57, 1, v58);
  v66 = v95;
  sub_1E4773850(v100, v95, &qword_1ECF7CAF8, &qword_1E487ED38);
  v67 = v88;
  v68 = v89;
  v91 = *(v88 + 16);
  v69 = v96;
  v91(v96, v101, v89);
  v71 = v92;
  v70 = v93;
  v72 = *(v92 + 16);
  v72(v97, v102, v93);
  sub_1E4773850(v65, v98, &qword_1ECF7CAD8, &unk_1E487ED10);
  v73 = v94;
  sub_1E4773850(v66, v94, &qword_1ECF7CAF8, &qword_1E487ED38);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB10, &qword_1E487ED50);
  v91(v73 + v74[12], v69, v68);
  v75 = v97;
  v72((v73 + v74[16]), v97, v70);
  v76 = v73 + v74[20];
  v77 = v98;
  sub_1E4773850(v98, v76, &qword_1ECF7CAD8, &unk_1E487ED10);
  sub_1E47738B8(v99, &qword_1ECF7CAD8, &unk_1E487ED10);
  v78 = *(v71 + 8);
  v78(v102, v70);
  v79 = *(v67 + 8);
  v79(v101, v68);
  sub_1E47738B8(v100, &qword_1ECF7CAF8, &qword_1E487ED38);
  sub_1E47738B8(v77, &qword_1ECF7CAD8, &unk_1E487ED10);
  v78(v75, v70);
  v79(v96, v68);
  sub_1E47738B8(v95, &qword_1ECF7CAF8, &qword_1E487ED38);
}

uint64_t sub_1E47DBA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB30, &qword_1E487ED70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v149 = &v144 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB38, &unk_1E487ED78);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v153 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v163 = &v144 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v164 = &v144 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v144 - v15;
  v158 = sub_1E4877B3C();
  v165 = *(v158 - 8);
  v17 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v151 = *(v152 - 8);
  v19 = *(v151 + 64);
  v20 = MEMORY[0x1EEE9AC00](v152);
  v161 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v144 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F0, &qword_1E487D078);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v155 = (&v144 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F8, &qword_1E487DDC0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v160 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v144 - v31;
  sub_1E4878D2C();
  v148 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v146 = type metadata accessor for Event();
  v33 = *(a1 + *(v146 + 56));
  v34 = MEMORY[0x1E69816D0];
  v147 = v23;
  v162 = v16;
  v156 = v3;
  v150 = v4;
  v159 = v32;
  if (v33 == 1)
  {
    v35 = sub_1E487874C();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
    v37 = v155;
    v38 = (v155 + *(v36 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v40 = *v34;
    v41 = sub_1E487877C();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = swift_getKeyPath();
    *v37 = v35;
    v42 = sub_1E47D7754();
    KeyPath = swift_getKeyPath();
    v44 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v44 = KeyPath;
    v44[1] = v42;
    v45 = sub_1E487864C();
    v46 = swift_getKeyPath();
    v47 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v47 = v46;
    v47[1] = v45;
    LOBYTE(v45) = sub_1E487818C();
    sub_1E4877B0C();
    v48 = v37 + *(v23 + 36);
    *v48 = v45;
    *(v48 + 1) = v49;
    *(v48 + 2) = v50;
    *(v48 + 3) = v51;
    *(v48 + 4) = v52;
    v48[40] = 0;
    sub_1E477372C(v37, v32, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v24 + 56))(v32, 0, 1, v23);
  }

  else
  {
    (*(v24 + 56))(v32, 1, 1, v23);
  }

  v167 = sub_1E47CC708();
  v168 = v53;
  sub_1E477A374();
  v54 = sub_1E487848C();
  v56 = v55;
  v58 = v57;
  v59 = sub_1E48783EC();
  v61 = v60;
  v63 = v62;
  sub_1E477A3C8(v54, v56, v58 & 1);

  sub_1E47D7754();
  v64 = sub_1E487842C();
  v66 = v65;
  v68 = v67;

  sub_1E477A3C8(v59, v61, v63 & 1);

  v69 = v157;
  sub_1E47D7298(v157);
  sub_1E476EA20(a1, v69);
  v70 = *(v165 + 8);
  v165 += 8;
  v145 = v70;
  v70(v69, v158);
  v71 = sub_1E48783FC();
  v73 = v72;
  LOBYTE(v69) = v74;
  v76 = v75;

  sub_1E477A3C8(v64, v66, v68 & 1);

  v77 = swift_getKeyPath();
  v167 = v71;
  v168 = v73;
  LOBYTE(v69) = v69 & 1;
  v169 = v69;
  v170 = v76;
  v171 = v77;
  v78 = 1;
  v172 = 1;
  v173 = 0;
  LOBYTE(v76) = *(sub_1E47D74A0() + 120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v71, v73, v69);

  v79 = v146;
  v80 = v162;
  v81 = v156;
  v82 = v150;
  v83 = a1;
  if (*(a1 + *(v146 + 68)) == 1)
  {
    v84 = sub_1E487874C();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
    v86 = v155;
    v87 = (v155 + *(v85 + 36));
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v89 = v82;
    v90 = *MEMORY[0x1E69816D0];
    v91 = sub_1E487877C();
    (*(*(v91 - 8) + 104))(v87 + v88, v90, v91);
    *v87 = swift_getKeyPath();
    *v86 = v84;
    v92 = sub_1E47D75F0();
    v93 = swift_getKeyPath();
    v94 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v94 = v93;
    v94[1] = v92;
    v95 = v157;
    sub_1E47D7298(v157);
    sub_1E476F0D0(v83, v95);
    v96 = sub_1E48785FC();
    v145(v95, v158);
    v97 = swift_getKeyPath();
    v98 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v98 = v97;
    v98[1] = v96;
    LOBYTE(v96) = sub_1E487818C();
    sub_1E4877B0C();
    v99 = v86 + *(v147 + 36);
    *v99 = v96;
    *(v99 + 1) = v100;
    *(v99 + 2) = v101;
    *(v99 + 3) = v102;
    *(v99 + 4) = v103;
    v99[40] = 0;
    sub_1E47DDD3C();
    v104 = v149;
    sub_1E48784AC();
    v82 = v89;
    sub_1E47738B8(v86, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v89 + 32))(v80, v104, v81);
    v78 = 0;
  }

  v105 = *(v82 + 56);
  v105(v80, v78, 1, v81);
  v106 = 1;
  if (*(v83 + *(v79 + 72)) == 1)
  {
    v107 = sub_1E487874C();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
    v109 = v82;
    v110 = v83;
    v111 = v155;
    v112 = (v155 + *(v108 + 36));
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v114 = *MEMORY[0x1E69816D0];
    v115 = sub_1E487877C();
    (*(*(v115 - 8) + 104))(v112 + v113, v114, v115);
    *v112 = swift_getKeyPath();
    *v111 = v107;
    v116 = sub_1E47D75F0();
    v117 = swift_getKeyPath();
    v118 = (v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v118 = v117;
    v118[1] = v116;
    v119 = v157;
    sub_1E47D7298(v157);
    sub_1E476F0D0(v110, v119);
    v120 = sub_1E48785FC();
    v145(v119, v158);
    v121 = swift_getKeyPath();
    v122 = (v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v122 = v121;
    v122[1] = v120;
    LOBYTE(v120) = sub_1E487818C();
    sub_1E4877B0C();
    v123 = v111 + *(v147 + 36);
    *v123 = v120;
    *(v123 + 1) = v124;
    *(v123 + 2) = v125;
    *(v123 + 3) = v126;
    *(v123 + 4) = v127;
    v123[40] = 0;
    sub_1E47DDD3C();
    v128 = v149;
    sub_1E48784AC();
    v129 = v111;
    v81 = v156;
    sub_1E47738B8(v129, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v109 + 32))(v164, v128, v81);
    v106 = 0;
  }

  v130 = v164;
  v105(v164, v106, 1, v81);
  v131 = v160;
  sub_1E4773850(v159, v160, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v132 = v151;
  v133 = *(v151 + 16);
  v134 = v161;
  v135 = v152;
  v133(v161, v166, v152);
  sub_1E4773850(v80, v163, &qword_1ECF7CB38, &unk_1E487ED78);
  v136 = v130;
  v137 = v153;
  sub_1E4773850(v136, v153, &qword_1ECF7CB38, &unk_1E487ED78);
  v138 = v154;
  sub_1E4773850(v131, v154, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB40, &unk_1E487ED88);
  v133((v138 + v139[12]), v134, v135);
  v140 = v138 + v139[16];
  *v140 = 0;
  *(v140 + 8) = 1;
  v141 = v163;
  sub_1E4773850(v163, v138 + v139[20], &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E4773850(v137, v138 + v139[24], &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E47738B8(v164, &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E47738B8(v162, &qword_1ECF7CB38, &unk_1E487ED78);
  v142 = *(v132 + 8);
  v142(v166, v135);
  sub_1E47738B8(v159, &qword_1ECF7C3F8, &qword_1E487DDC0);
  sub_1E47738B8(v137, &qword_1ECF7CB38, &unk_1E487ED78);
  sub_1E47738B8(v141, &qword_1ECF7CB38, &unk_1E487ED78);
  v142(v161, v135);
  sub_1E47738B8(v160, &qword_1ECF7C3F8, &qword_1E487DDC0);
}

uint64_t sub_1E47DC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_1E4877B3C();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487719C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v64 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v64 - v19;
  sub_1E4878D2C();
  v69 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = *(sub_1E47D74A0() + 146);

  v65 = v20;
  if (v21 == 1)
  {
    v22 = sub_1E487876C();
    v23 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v25 = *MEMORY[0x1E69816D0];
    v26 = sub_1E487877C();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    *v14 = v22;
    v27 = sub_1E47D75F0();
    KeyPath = swift_getKeyPath();
    v29 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v29 = KeyPath;
    v29[1] = v27;
    v30 = sub_1E47D78B8();
    v31 = swift_getKeyPath();
    v32 = (v14 + *(v10 + 36));
    *v32 = v31;
    v32[1] = v30;
    sub_1E477372C(v14, v20, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v11 + 56))(v20, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v20, 1, 1, v10);
  }

  sub_1E47D7A78(v9);
  v33 = sub_1E487847C();
  v35 = v34;
  v37 = v36;
  v38 = *(a1 + *(type metadata accessor for Event() + 56)) - 3;
  v39 = sub_1E48783EC();
  v41 = v40;
  v43 = v42;
  sub_1E477A3C8(v33, v35, v37 & 1);

  sub_1E47D75F0();
  v44 = sub_1E487842C();
  v46 = v45;
  v48 = v47;
  v64[1] = v49;

  sub_1E477A3C8(v39, v41, v43 & 1);

  v50 = v66;
  sub_1E47D7298(v66);
  sub_1E476F0D0(a1, v50);
  sub_1E48785FC();
  (*(v67 + 8))(v50, v68);
  v51 = sub_1E48783FC();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_1E477A3C8(v44, v46, v48 & 1);

  v58 = swift_getKeyPath();
  v59 = v65;
  v60 = v70;
  sub_1E4773850(v65, v70, &qword_1ECF7B9D0, &qword_1E487AC00);
  v61 = v71;
  sub_1E4773850(v60, v71, &qword_1ECF7B9D0, &qword_1E487AC00);
  v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C668, &qword_1E487DD00) + 48);
  *v62 = v51;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55 & 1;
  *(v62 + 24) = v57;
  *(v62 + 32) = v58;
  *(v62 + 40) = 1;
  *(v62 + 48) = 0;
  sub_1E478B8E0(v51, v53, v55 & 1);

  sub_1E47738B8(v59, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E477A3C8(v51, v53, v55 & 1);

  sub_1E47738B8(v60, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47DCEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1E4877B3C();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - v10;
  sub_1E4878D2C();
  v58 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_1E487876C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  v14 = v11;
  v15 = &v11[*(v13 + 36)];
  v16 = v14;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v18 = *MEMORY[0x1E69816D0];
  v19 = sub_1E487877C();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  *v15 = swift_getKeyPath();
  *v16 = v12;
  v20 = sub_1E47D75F0();
  KeyPath = swift_getKeyPath();
  v22 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
  v54 = v16;
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = sub_1E47D78B8();
  v24 = swift_getKeyPath();
  v25 = (v16 + *(v6 + 36));
  *v25 = v24;
  v25[1] = v23;
  v61 = sub_1E47D843C();
  v62 = v26;
  sub_1E477A374();
  v27 = sub_1E487848C();
  v29 = v28;
  LOBYTE(v17) = v30;
  v31 = *(a1 + *(type metadata accessor for Event() + 56)) - 3;
  v32 = sub_1E48783EC();
  v34 = v33;
  v36 = v35;
  sub_1E477A3C8(v27, v29, v17 & 1);

  sub_1E47D75F0();
  v37 = sub_1E487842C();
  v39 = v38;
  LOBYTE(v17) = v40;

  sub_1E477A3C8(v32, v34, v36 & 1);

  v41 = v55;
  sub_1E47D7298(v55);
  sub_1E476F0D0(a1, v41);
  sub_1E48785FC();
  (*(v56 + 8))(v41, v57);
  v42 = sub_1E48783FC();
  v44 = v43;
  LOBYTE(v41) = v45;
  v47 = v46;

  sub_1E477A3C8(v37, v39, v17 & 1);

  v48 = swift_getKeyPath();
  v49 = v54;
  v50 = v59;
  sub_1E4773850(v54, v59, &qword_1ECF7B920, &unk_1E487DCF0);
  v51 = v60;
  sub_1E4773850(v50, v60, &qword_1ECF7B920, &unk_1E487DCF0);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB28, &unk_1E487ED60) + 48);
  *v52 = v42;
  *(v52 + 8) = v44;
  *(v52 + 16) = v41 & 1;
  *(v52 + 24) = v47;
  *(v52 + 32) = v48;
  *(v52 + 40) = 1;
  *(v52 + 48) = 0;
  sub_1E478B8E0(v42, v44, v41 & 1);

  sub_1E47738B8(v49, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E477A3C8(v42, v44, v41 & 1);

  sub_1E47738B8(v50, &qword_1ECF7B920, &unk_1E487DCF0);
}

uint64_t sub_1E47DD3E8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9A0, &qword_1E487EA40);
  v2 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v27 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9A8, &qword_1E487EA48);
  v5 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C9B0, &unk_1E487EA50);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = sub_1E487725C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  sub_1E47D8F20(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E47738B8(v15, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E47D9FD8(v4);
    sub_1E4773850(v4, v7, &qword_1ECF7C9A0, &qword_1E487EA40);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C9B8, &qword_1ECF7C9B0, &unk_1E487EA50);
    sub_1E47DD92C();
    sub_1E487803C();
    return sub_1E47738B8(v4, &qword_1ECF7C9A0, &qword_1E487EA40);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    v25 = (*(v17 + 16))(v21, v23, v16);
    MEMORY[0x1EEE9AC00](v25);
    *(&v27 - 2) = v1;
    sub_1E47DD92C();
    sub_1E487831C();
    v26 = v27;
    (*(v27 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C9B8, &qword_1ECF7C9B0, &unk_1E487EA50);
    sub_1E487803C();
    (*(v26 + 8))(v11, v8);
    return (*(v17 + 8))(v23, v16);
  }
}

uint64_t sub_1E47DD878@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47D9FD8(a1);
}

unint64_t sub_1E47DD92C()
{
  result = qword_1ECF7C9C0;
  if (!qword_1ECF7C9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9A0, &qword_1E487EA40);
    sub_1E47DD9E8();
    sub_1E47DDFF0(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9C0);
  }

  return result;
}

unint64_t sub_1E47DD9E8()
{
  result = qword_1ECF7C9C8;
  if (!qword_1ECF7C9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9D0, &qword_1E487EA60);
    sub_1E47DDA74();
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9C8);
  }

  return result;
}

unint64_t sub_1E47DDA74()
{
  result = qword_1ECF7C9D8;
  if (!qword_1ECF7C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9E0, &qword_1E487EA68);
    sub_1E47DDB2C();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9D8);
  }

  return result;
}

unint64_t sub_1E47DDB2C()
{
  result = qword_1ECF7C9E8;
  if (!qword_1ECF7C9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C9F0, &qword_1E487EA70);
    sub_1E4773680(&qword_1ECF7C9F8, &qword_1ECF7CA00, &qword_1E487EA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C9E8);
  }

  return result;
}

uint64_t sub_1E47DDBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47DDC54()
{
  result = qword_1ECF7CB08;
  if (!qword_1ECF7CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CAE0, &qword_1E487ED20);
    sub_1E4773680(&qword_1EE2B0FB8, &qword_1ECF7C650, &qword_1E487DCA8);
    sub_1E47DDFF0(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB08);
  }

  return result;
}

unint64_t sub_1E47DDD3C()
{
  result = qword_1ECF7CB48;
  if (!qword_1ECF7CB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C3F0, &qword_1E487D078);
    sub_1E47DDDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB48);
  }

  return result;
}

unint64_t sub_1E47DDDC8()
{
  result = qword_1ECF7CB50;
  if (!qword_1ECF7CB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B920, &unk_1E487DCF0);
    sub_1E47DDE80();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB50);
  }

  return result;
}

unint64_t sub_1E47DDE80()
{
  result = qword_1ECF7CB58;
  if (!qword_1ECF7CB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B918, &unk_1E487AA60);
    sub_1E47DDF38();
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB58);
  }

  return result;
}

unint64_t sub_1E47DDF38()
{
  result = qword_1ECF7CB60;
  if (!qword_1ECF7CB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B910, &unk_1E487E050);
    sub_1E4773680(&qword_1ECF7CB68, &qword_1ECF7B928, &qword_1E487AA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB60);
  }

  return result;
}

uint64_t sub_1E47DDFF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E47DE038()
{
  result = qword_1ECF7CB70;
  if (!qword_1ECF7CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CB78, &qword_1E487ED98);
    sub_1E4773680(&qword_1ECF7C9B8, &qword_1ECF7C9B0, &unk_1E487EA50);
    sub_1E47DD92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CB70);
  }

  return result;
}

unint64_t sub_1E47DE0F0()
{
  result = qword_1EE2B0D28;
  if (!qword_1EE2B0D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B0D28);
  }

  return result;
}

void sub_1E47DE188()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    sub_1E487732C();
    if (v1 <= 0x3F)
    {
      sub_1E47E3674(319, &qword_1EE2B1690, MEMORY[0x1E6985840]);
      if (v2 <= 0x3F)
      {
        sub_1E47E3674(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v3 <= 0x3F)
        {
          sub_1E47E3674(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v4 <= 0x3F)
          {
            sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
            if (v5 <= 0x3F)
            {
              sub_1E47E3674(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
              if (v6 <= 0x3F)
              {
                sub_1E47E3674(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
                if (v7 <= 0x3F)
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

uint64_t sub_1E47DE378()
{
  v1 = sub_1E48782AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487893C();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = sub_1E4877B3C();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Event();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v37 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47E33A4(v0, v37, type metadata accessor for Event);
  v38 = v16;
  sub_1E47DF124(v16);
  v20 = sub_1E47DF32C();
  v41 = v12;
  sub_1E47DF484(v12);
  v21 = (v2 + 104);
  v22 = (v2 + 8);
  if (v20)
  {
    sub_1E48782EC();
    v23 = *MEMORY[0x1E6980EA0];
    v24 = *v21;
    (*v21)(v5, v23, v1);
    sub_1E48782CC();

    v25 = *v22;
    (*v22)(v5, v1);
    v36 = sub_1E48781FC();

    sub_1E48782BC();
  }

  else
  {
    sub_1E48781BC();
    v23 = *MEMORY[0x1E6980EA0];
    v24 = *v21;
    (*v21)(v5, v23, v1);
    sub_1E48782CC();

    v25 = *v22;
    (*v22)(v5, v1);
    sub_1E487827C();
    v36 = sub_1E487829C();

    sub_1E48781BC();
  }

  v24(v5, v23, v1);
  v26 = sub_1E48782CC();

  v25(v5, v1);
  sub_1E487892C();
  v27 = v41;
  v28 = sub_1E48788FC();
  v29 = v43;
  v30 = *(v42 + 8);
  v30(v10, v43);
  v31 = v37;
  if (v28)
  {
    v32 = v38;
    sub_1E4770A7C(v37, v38);
    sub_1E476EA20(v31, v32);
    sub_1E476F0D0(v31, v32);
    sub_1E48785FC();
  }

  else
  {
    sub_1E487891C();
    v33 = sub_1E48788FC();
    v30(v10, v29);
    sub_1E48786EC();
    sub_1E48786EC();
    if (v33)
    {
      sub_1E48786EC();
    }

    else
    {
      sub_1E48786FC();
    }

    v32 = v38;
  }

  v30(v27, v29);
  (*(v39 + 8))(v32, v40);
  sub_1E47E340C(v31, type metadata accessor for Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1E487A7F0;
  *(v34 + 32) = v36;
  *(v34 + 40) = v26;

  return v34;
}

double sub_1E47DE878(uint64_t a1)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v54 - v4;
  v5 = sub_1E48782AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487893C();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v17 = sub_1E4877B3C();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Event();
  v21 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47E33A4(v1, v56, type metadata accessor for Event);
  v63 = v20;
  sub_1E47DF124(v20);
  v23 = sub_1E47DF32C();
  v64 = v16;
  sub_1E47DF484(v16);
  v24 = (v6 + 104);
  v25 = (v6 + 8);
  if (v23)
  {
    sub_1E48782EC();
    v26 = *MEMORY[0x1E6980EA0];
    v27 = *v24;
    (*v24)(v9, v26, v5);
    sub_1E48782CC();

    v28 = *v25;
    (*v25)(v9, v5);
    v65 = sub_1E48781FC();

    sub_1E48782BC();
    v27(v9, v26, v5);
  }

  else
  {
    sub_1E48781BC();
    v30 = *MEMORY[0x1E6980EA0];
    v31 = *v24;
    (*v24)(v9, v30, v5);
    sub_1E48782CC();

    v28 = *v25;
    (*v25)(v9, v5);
    sub_1E487827C();
    v65 = sub_1E487829C();

    sub_1E48781BC();
    v31(v9, v30, v5);
  }

  v29 = sub_1E48782CC();

  v28(v9, v5);
  sub_1E487892C();
  v32 = v64;
  v33 = sub_1E48788FC();
  v34 = v60;
  v35 = *(v59 + 8);
  v35(v14, v60);
  v36 = v62;
  v37 = v63;
  if (v33)
  {
    v38 = v56;
    v59 = sub_1E4770A7C(v56, v63);
    v55 = sub_1E476EA20(v38, v37);
    sub_1E476F0D0(v38, v37);
    sub_1E48785FC();
  }

  else
  {
    sub_1E487891C();
    v39 = sub_1E48788FC();
    v35(v14, v34);
    v59 = sub_1E48786EC();
    v55 = sub_1E48786EC();
    if (v39)
    {
      sub_1E48786EC();
    }

    else
    {
      sub_1E48786FC();
    }

    v37 = v63;
    v32 = v64;
    v38 = v56;
  }

  v35(v32, v34);
  (*(v57 + 8))(v37, v58);
  sub_1E47E340C(v38, type metadata accessor for Event);
  v40 = type metadata accessor for NarrowEventDetailsView(0);
  v41 = 0.0;
  if ((*(v1 + *(v40 + 24)) & 1) == 0 && *(v1 + *(v61 + 28)) > 0.0)
  {
    sub_1E487201C(v29, v36);
    v41 = v42 + 0.0 + -1.0;
  }

  sub_1E487201C(v65, v36);
  v44 = v41 + v43;
  sub_1E487201C(v29, v36);
  v46 = v44 + v45 + -1.0;
  if ((*(v1 + *(v40 + 28)) & 1) == 0)
  {
    v47 = v54;
    sub_1E4773850(v1 + *(v61 + 60), v54, &qword_1ECF7C048, &qword_1E487C5F0);
    v48 = type metadata accessor for Location();
    v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
    sub_1E47738B8(v47, &qword_1ECF7C048, &qword_1E487C5F0);
    if (v49 != 1)
    {
      sub_1E487201C(v29, v36);
      v46 = v46 + v50 + -1.0;
    }
  }

  v51 = sub_1E47DF68C();

  v52 = *(v51 + 48);

  return v46 + v52;
}

uint64_t sub_1E47DEF1C@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for NarrowEventDetailsView(0);
  sub_1E4773850(v1 + *(v12 + 36), v11, &qword_1ECF7C840, &qword_1E487ADF0);
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

uint64_t sub_1E47DF124@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for NarrowEventDetailsView(0);
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
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

uint64_t sub_1E47DF32C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NarrowEventDetailsView(0) + 44);
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

uint64_t sub_1E47DF484@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for NarrowEventDetailsView(0);
  sub_1E4773850(v1 + *(v12 + 48), v11, &qword_1ECF7B7E8, &qword_1E487A700);
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

uint64_t sub_1E47DF68C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NarrowEventDetailsView(0) + 52));
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

uint64_t sub_1E47DF7DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBC8, &qword_1E487EED0);
  v3 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v64 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB98, &qword_1E487EE98);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBB8, &qword_1E487EEB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBB0, &qword_1E487EEB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBA8, &qword_1E487EEA8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBA0, &qword_1E487EEA0);
  v19 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v64 - v20;
  *v10 = sub_1E4877F6C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBD0, &qword_1E487EED8);
  sub_1E47DFE84(v2, &v10[*(v21 + 44)]);
  v65 = type metadata accessor for Event();
  v73 = sub_1E47CC9E8(*(v2 + *(v65 + 56)));
  v74 = v22;
  sub_1E477A374();
  v23 = sub_1E487848C();
  v25 = v24;
  v27 = v26;
  sub_1E47E23A0();
  sub_1E487857C();
  sub_1E477A3C8(v23, v25, v27 & 1);

  sub_1E47738B8(v10, &qword_1ECF7CBB8, &qword_1E487EEB8);
  v28 = sub_1E487813C();
  if (sub_1E47DF32C())
  {
    v29 = *(sub_1E47DF68C() + 48);
  }

  sub_1E4877B0C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1E477372C(v14, v18, &qword_1ECF7CBB0, &qword_1E487EEB0);
  v38 = &v18[*(v15 + 36)];
  *v38 = v28;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_1E487819C();
  v40 = *(sub_1E47DF68C() + 48);

  sub_1E4877B0C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v68;
  sub_1E477372C(v18, v68, &qword_1ECF7CBA8, &qword_1E487EEA8);
  v50 = v49 + *(v67 + 36);
  *v50 = v39;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  if (sub_1E47DF32C())
  {
    v51 = v66;
    v52 = &v66[*(v70 + 36)];
    sub_1E47E33A4(v2, v52, type metadata accessor for Event);
    (*(*(v65 - 8) + 56))(v52, 0, 1);
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
    *(v52 + v55[6]) = 0;
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
    sub_1E4773850(v49, v51, &qword_1ECF7CBA0, &qword_1E487EEA0);
    sub_1E4773850(v51, v71, &qword_1ECF7CB98, &qword_1E487EE98);
    swift_storeEnumTagMultiPayload();
    sub_1E47E21A4();
    sub_1E47E225C();
    sub_1E487803C();
    sub_1E47738B8(v51, &qword_1ECF7CB98, &qword_1E487EE98);
  }

  else
  {
    sub_1E4773850(v49, v71, &qword_1ECF7CBA0, &qword_1E487EEA0);
    swift_storeEnumTagMultiPayload();
    sub_1E47E21A4();
    sub_1E47E225C();
    sub_1E487803C();
  }

  return sub_1E47738B8(v49, &qword_1ECF7CBA0, &qword_1E487EEA0);
}

uint64_t sub_1E47DFE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBD8, &qword_1E487EFE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v58[-v7];
  v8 = sub_1E48782AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1E487893C();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v58[-v18];
  v66 = sub_1E4877B3C();
  v61 = *(v66 - 8);
  v20 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v22 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for Event();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v58[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E4878D2C();
  v69 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v64 = v26;
  sub_1E47E33A4(a1, v26, type metadata accessor for Event);
  v63 = v22;
  sub_1E47DF124(v22);
  v27 = sub_1E47DF32C();
  v65 = v19;
  v70 = a1;
  sub_1E47DF484(v19);
  v28 = (v9 + 104);
  v29 = (v9 + 8);
  v59 = v27;
  if (v27)
  {
    sub_1E48782EC();
    v30 = *MEMORY[0x1E6980EA0];
    v31 = *v28;
    (*v28)(v12, v30, v8);
    sub_1E48782CC();

    v32 = *v29;
    (*v29)(v12, v8);
    v62 = sub_1E48781FC();

    sub_1E48782BC();
    v31(v12, v30, v8);
    v60 = sub_1E48782CC();

    v32(v12, v8);
  }

  else
  {
    sub_1E48781BC();
    v33 = *MEMORY[0x1E6980EA0];
    v34 = *v28;
    (*v28)(v12, v33, v8);
    sub_1E48782CC();

    v35 = *v29;
    (*v29)(v12, v8);
    sub_1E487827C();
    v62 = sub_1E487829C();

    sub_1E48781BC();
    v34(v12, v33, v8);
    v60 = sub_1E48782CC();

    v35(v12, v8);
  }

  sub_1E487892C();
  v36 = v65;
  v37 = sub_1E48788FC();
  v38 = v68;
  v39 = *(v67 + 8);
  v39(v17, v68);
  v40 = (v61 + 8);
  if (v37)
  {
    v42 = v63;
    v41 = v64;
    v43 = sub_1E4770A7C(v64, v63);
    v44 = sub_1E476EA20(v41, v42);
    sub_1E476F0D0(v41, v42);
    v67 = sub_1E48785FC();
    v39(v36, v38);
    (*v40)(v42, v66);
    sub_1E47E340C(v41, type metadata accessor for Event);
    v45 = 0.6;
    if (v59)
    {
      v45 = 1.0;
    }
  }

  else
  {
    sub_1E487891C();
    v46 = sub_1E48788FC();
    v39(v17, v38);
    v43 = sub_1E48786EC();
    v44 = sub_1E48786EC();
    if (v46)
    {
      v47 = sub_1E48786EC();
    }

    else
    {
      v47 = sub_1E48786FC();
    }

    v67 = v47;
    v39(v36, v38);
    (*v40)(v63, v66);
    sub_1E47E340C(v64, type metadata accessor for Event);
    v45 = 1.0;
  }

  v68 = v43;
  v74[0] = v43;
  v74[1] = v62;
  v74[2] = v44;
  v74[3] = v60;
  v74[4] = v67;
  *&v74[5] = v45;
  v48 = v70;
  v49 = *(sub_1E47DF68C() + 72);

  v50 = sub_1E4877F6C();
  v51 = v71;
  *v71 = v50;
  *(v51 + 8) = v49;
  *(v51 + 16) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBE0, &qword_1E487EFE8);
  sub_1E47E05EC(v74, v48, v51 + *(v52 + 44));
  v53 = v72;
  sub_1E4773850(v51, v72, &qword_1ECF7CBD8, &qword_1E487EFE0);
  v54 = v73;
  sub_1E4773850(v53, v73, &qword_1ECF7CBD8, &qword_1E487EFE0);
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBE8, &qword_1E487EFF0) + 48);

  v56 = v54 + v55;
  *v56 = 0;
  *(v56 + 8) = 0;
  sub_1E47738B8(v51, &qword_1ECF7CBD8, &qword_1E487EFE0);
  sub_1E47738B8(v53, &qword_1ECF7CBD8, &qword_1E487EFE0);
}

uint64_t sub_1E47E05EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBF0, &qword_1E487EFF8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBF8, &qword_1E487F000);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = *a1;
  v18 = *(type metadata accessor for ColorBarView.Styling(0) + 40);
  sub_1E47E30EC(&v38, v37);
  sub_1E487735C();
  v19 = v38;
  v17[48] = 1;
  *v17 = v19;
  *(v17 + 1) = 0;
  v17[16] = 1;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  *(v17 + 3) = 3;
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for ColorBarView(0);
  *&v17[*(v21 + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  v23 = &v17[*(v21 + 24)];
  *v23 = v22;
  v23[8] = 0;
  LOBYTE(v21) = sub_1E487819C();
  v24 = v35;
  v25 = *(sub_1E47DF68C() + 48);

  sub_1E4877B0C();
  v26 = &v17[*(v11 + 36)];
  *v26 = v21;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  *v10 = sub_1E4877FBC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC00, &qword_1E487F008);
  sub_1E47E0974(v24, a1, &v10[*(v31 + 44)]);
  sub_1E4773850(v17, v15, &qword_1ECF7CBF8, &qword_1E487F000);
  sub_1E4773850(v10, v8, &qword_1ECF7CBF0, &qword_1E487EFF8);
  v32 = v36;
  sub_1E4773850(v15, v36, &qword_1ECF7CBF8, &qword_1E487F000);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC08, &qword_1E487F010);
  sub_1E4773850(v8, v32 + *(v33 + 48), &qword_1ECF7CBF0, &qword_1E487EFF8);
  sub_1E47738B8(v10, &qword_1ECF7CBF0, &qword_1E487EFF8);
  sub_1E47738B8(v17, &qword_1ECF7CBF8, &qword_1E487F000);
  sub_1E47738B8(v8, &qword_1ECF7CBF0, &qword_1E487EFF8);
  sub_1E47738B8(v15, &qword_1ECF7CBF8, &qword_1E487F000);
}

uint64_t sub_1E47E0974@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a1;
  v156 = a3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC10, &qword_1E487F018);
  v4 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v135 - v5;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC18, &qword_1E487F020);
  v147 = *(v148 - 8);
  v6 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v139 = &v135 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC20, &qword_1E487F028);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v155 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v135 - v12;
  v143 = type metadata accessor for Event();
  v13 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v145 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for NarrowEventTitleText();
  v15 = *(*(v146 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v146);
  v154 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v135 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v135 - v21;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C750, &qword_1E487DFE0);
  v22 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v24 = &v135 - v23;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C758, &qword_1E487DFE8);
  v25 = *(v158 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v149 = &v135 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C760, &qword_1E487DFF0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v153 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v161 = &v135 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v152 = &v135 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v135 - v36;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC28, &unk_1E4880470);
  v38 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v40 = &v135 - v39;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC30, &qword_1E487F030);
  v41 = *(v144 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v135 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC38, &qword_1E487F038);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v159 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v135 - v48;
  sub_1E4878D2C();
  v151 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v160 = type metadata accessor for NarrowEventDetailsView(0);
  v50 = v164;
  v51 = *(v164 + *(v160 + 6));
  v157 = a2;
  v163 = v49;
  v142 = v25;
  if ((v51 & 1) != 0 || *(v164 + *(v143 + 28)) <= 0.0)
  {
    (*(v41 + 56))(v49, 1, 1, v144);
  }

  else
  {
    sub_1E47E33A4(v164, v40, type metadata accessor for Event);
    v52 = a2[3];
    v172 = v157[4];
    v53 = v172;
    v173 = v52;
    KeyPath = swift_getKeyPath();
    v55 = type metadata accessor for NarrowEventTravelTimeText(0);
    *&v40[v55[8]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v40[v55[5]] = v52;
    *&v40[v55[6]] = v53;
    a2 = v157;
    v56 = v55[7];
    v50 = v164;
    v57 = &v40[v56];
    *v57 = 1;
    v57[8] = 0;
    sub_1E47E3168(&v173, &v171);
    sub_1E47E30EC(&v172, &v171);
    LOBYTE(KeyPath) = sub_1E487816C();
    sub_1E4877B0C();
    v58 = &v40[*(v137 + 36)];
    *v58 = KeyPath;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    *(v58 + 3) = v61;
    *(v58 + 4) = v62;
    v58[40] = 0;
    sub_1E47E348C();
    v63 = v136;
    sub_1E48784AC();
    sub_1E47738B8(v40, &qword_1ECF7CC28, &unk_1E4880470);
    v64 = v163;
    v65 = v63;
    v25 = v142;
    v66 = v144;
    (*(v41 + 32))(v163, v65, v144);
    (*(v41 + 56))(v64, 0, 1, v66);
  }

  v67 = sub_1E47DF32C();
  v138 = v24;
  if (v67)
  {
    v68 = 1;
    v69 = v158;
    v70 = v160;
  }

  else
  {
    sub_1E47E33A4(v50, v24, type metadata accessor for Event);
    v70 = v160;
    v71 = *(v160 + 5);
    v72 = type metadata accessor for NarrowEventTimeText(0);
    v73 = v72[5];
    v74 = sub_1E487732C();
    (*(*(v74 - 8) + 16))(&v24[v73], v50 + v71, v74);
    v75 = a2[1];
    v170 = a2[2];
    v76 = v170;
    v171 = v75;
    *&v24[v72[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v24[v72[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    a2 = v157;
    swift_storeEnumTagMultiPayload();
    *&v24[v72[6]] = v75;
    *&v24[v72[7]] = v76;
    sub_1E47E3168(&v171, &v169);
    sub_1E47E30EC(&v170, &v169);
    LOBYTE(v72) = sub_1E487816C();
    sub_1E4877B0C();
    v77 = &v24[*(v150 + 36)];
    *v77 = v72;
    *(v77 + 1) = v78;
    *(v77 + 2) = v79;
    *(v77 + 3) = v80;
    *(v77 + 4) = v81;
    v77[40] = 0;
    sub_1E47E31C4();
    v82 = v149;
    sub_1E48784AC();
    sub_1E47738B8(v24, &qword_1ECF7C750, &qword_1E487DFE0);
    v69 = v158;
    (*(v25 + 32))(v37, v82, v158);
    v68 = 0;
  }

  v83 = *(v25 + 56);
  v160 = v37;
  v144 = v25 + 56;
  v143 = v83;
  v83(v37, v68, 1, v69);
  v84 = v145;
  sub_1E47E33A4(v50, v145, type metadata accessor for Event);
  v85 = sub_1E47DF32C();
  v86 = 3;
  if (v85)
  {
    v86 = 1;
  }

  v87 = a2[v86];

  v88 = a2[2];
  v89 = swift_getKeyPath();
  v90 = v146;
  *&v20[*(v146 + 32)] = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  sub_1E47E3280(v84, v20, type metadata accessor for Event);
  *&v20[v90[5]] = v87;
  v92 = v164;
  v91 = v165;
  v93 = &v20[v90[6]];
  *v93 = 1;
  v93[8] = 0;
  *&v20[v90[7]] = v88;
  sub_1E47E3280(v20, v91, type metadata accessor for NarrowEventTitleText);
  if (*(v92 + *(v70 + 28)))
  {
    (*(v147 + 56))(v162, 1, 1, v148);
  }

  else
  {
    v94 = type metadata accessor for LocationView();
    v95 = v140;
    sub_1E47E33A4(v92, &v140[v94[5]], type metadata accessor for Event);
    v96 = a2[4];
    v169 = a2[3];
    v97 = a2[5];

    sub_1E47E3168(&v169, &v168);
    v92 = v164;
    v98 = sub_1E48786DC();
    *v95 = swift_getKeyPath();
    *(v95 + 8) = 0;
    v99 = v94[11];
    *(v95 + v99) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v95 + v94[6]) = v169;
    *(v95 + v94[7]) = 0;
    *(v95 + v94[8]) = v98;
    *(v95 + v94[9]) = 1;
    *(v95 + v94[10]) = 0;
    LOBYTE(v98) = sub_1E487815C();
    sub_1E4877B0C();
    v100 = v95 + *(v141 + 36);
    *v100 = v98;
    *(v100 + 8) = v101;
    *(v100 + 16) = v102;
    *(v100 + 24) = v103;
    *(v100 + 32) = v104;
    *(v100 + 40) = 0;
    sub_1E47E32E8();
    v105 = v139;
    sub_1E48784AC();
    sub_1E47738B8(v95, &qword_1ECF7CC10, &qword_1E487F018);
    v106 = v147;
    v107 = v162;
    v108 = v148;
    (*(v147 + 32))(v162, v105, v148);
    (*(v106 + 56))(v107, 0, 1, v108);
  }

  if (sub_1E47DF32C())
  {
    v109 = v138;
    sub_1E47E33A4(v92, v138, type metadata accessor for Event);
    v110 = *(v70 + 20);
    v111 = type metadata accessor for NarrowEventTimeText(0);
    v112 = v111[5];
    v113 = sub_1E487732C();
    (*(*(v113 - 8) + 16))(v109 + v112, v92 + v110, v113);
    v114 = v157[3];
    v167 = v157[4];
    v115 = v167;
    v168 = v114;
    *(v109 + v111[8]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *(v109 + v111[9]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v109 + v111[6]) = v114;
    *(v109 + v111[7]) = v115;
    sub_1E47E3168(&v168, v166);
    sub_1E47E30EC(&v167, v166);
    LOBYTE(v111) = sub_1E487815C();
    sub_1E4877B0C();
    v116 = v109 + *(v150 + 36);
    *v116 = v111;
    *(v116 + 8) = v117;
    *(v116 + 16) = v118;
    *(v116 + 24) = v119;
    *(v116 + 32) = v120;
    *(v116 + 40) = 0;
    sub_1E47E31C4();
    v121 = v149;
    sub_1E48784AC();
    sub_1E47738B8(v109, &qword_1ECF7C750, &qword_1E487DFE0);
    v122 = v152;
    v123 = v121;
    v124 = v158;
    (*(v142 + 32))(v152, v123, v158);
    v125 = 0;
  }

  else
  {
    v125 = 1;
    v122 = v152;
    v124 = v158;
  }

  (v143)(v122, v125, 1, v124);
  v126 = v159;
  sub_1E4773850(v163, v159, &qword_1ECF7CC38, &qword_1E487F038);
  v127 = v161;
  sub_1E4773850(v160, v161, &qword_1ECF7C760, &qword_1E487DFF0);
  v128 = v154;
  sub_1E47E33A4(v165, v154, type metadata accessor for NarrowEventTitleText);
  v129 = v162;
  v130 = v155;
  sub_1E4773850(v162, v155, &qword_1ECF7CC20, &qword_1E487F028);
  v131 = v153;
  sub_1E4773850(v122, v153, &qword_1ECF7C760, &qword_1E487DFF0);
  v132 = v156;
  sub_1E4773850(v126, v156, &qword_1ECF7CC38, &qword_1E487F038);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC40, &qword_1E487F078);
  sub_1E4773850(v127, v132 + v133[12], &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47E33A4(v128, v132 + v133[16], type metadata accessor for NarrowEventTitleText);
  sub_1E4773850(v130, v132 + v133[20], &qword_1ECF7CC20, &qword_1E487F028);
  sub_1E4773850(v131, v132 + v133[24], &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v122, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v129, &qword_1ECF7CC20, &qword_1E487F028);
  sub_1E47E340C(v165, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v160, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v163, &qword_1ECF7CC38, &qword_1E487F038);
  sub_1E47738B8(v131, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v130, &qword_1ECF7CC20, &qword_1E487F028);
  sub_1E47E340C(v128, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v161, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v159, &qword_1ECF7CC38, &qword_1E487F038);
}

uint64_t sub_1E47E1A3C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB80, &qword_1E487EE78);
  v2 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v41 = &v38 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB88, &qword_1E487EE80);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CB90, &unk_1E487EE88);
  v40 = *(v45 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v38 - v7;
  v8 = sub_1E4877CCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v38 - v18;
  v42 = sub_1E487725C();
  v20 = *(v42 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v42);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v38 = &v38 - v25;
  v26 = v1;
  sub_1E47DEF1C(v15);
  sub_1E4877CAC();
  sub_1E47E2458(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v27 = sub_1E4878EAC();
  v28 = *(v9 + 8);
  v28(v13, v8);
  v28(v15, v8);
  if (v27)
  {
    (*(v20 + 56))(v19, 1, 1, v42);
LABEL_4:
    sub_1E47738B8(v19, &unk_1ECF7B688, &qword_1E487C160);
    v31 = v41;
    sub_1E47DF7DC(v41);
    sub_1E4773850(v31, v44, &qword_1ECF7CB80, &qword_1E487EE78);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1070, &qword_1ECF7CB90, &unk_1E487EE88);
    sub_1E47E2118();
    sub_1E487803C();
    return sub_1E47738B8(v31, &qword_1ECF7CB80, &qword_1E487EE78);
  }

  v29 = type metadata accessor for Event();
  sub_1E4773850(&v26[*(v29 + 44)], v19, &unk_1ECF7B688, &qword_1E487C160);
  v30 = v42;
  if ((*(v20 + 48))(v19, 1, v42) == 1)
  {
    goto LABEL_4;
  }

  v33 = v38;
  (*(v20 + 32))(v38, v19, v30);
  v34 = (*(v20 + 16))(v24, v33, v30);
  MEMORY[0x1EEE9AC00](v34);
  *(&v38 - 2) = v26;
  sub_1E47E2118();
  v35 = v39;
  sub_1E487831C();
  v36 = v40;
  v37 = v45;
  (*(v40 + 16))(v44, v35, v45);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B1070, &qword_1ECF7CB90, &unk_1E487EE88);
  sub_1E487803C();
  (*(v36 + 8))(v35, v37);
  return (*(v20 + 8))(v33, v30);
}

uint64_t sub_1E47E2064@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47DF7DC(a1);
}

unint64_t sub_1E47E2118()
{
  result = qword_1EE2B11C0;
  if (!qword_1EE2B11C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CB80, &qword_1E487EE78);
    sub_1E47E21A4();
    sub_1E47E225C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11C0);
  }

  return result;
}

unint64_t sub_1E47E21A4()
{
  result = qword_1EE2B1298;
  if (!qword_1EE2B1298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CB98, &qword_1E487EE98);
    sub_1E47E225C();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1298);
  }

  return result;
}

unint64_t sub_1E47E225C()
{
  result = qword_1EE2B12A8;
  if (!qword_1EE2B12A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CBA0, &qword_1E487EEA0);
    sub_1E47E22E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12A8);
  }

  return result;
}

unint64_t sub_1E47E22E8()
{
  result = qword_1EE2B12D0;
  if (!qword_1EE2B12D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CBA8, &qword_1E487EEA8);
    sub_1E47E38D4(&qword_1EE2B1358, &qword_1ECF7CBB0, &qword_1E487EEB0, sub_1E47E23A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12D0);
  }

  return result;
}

unint64_t sub_1E47E23A0()
{
  result = qword_1EE2B1470;
  if (!qword_1EE2B1470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CBB8, &qword_1E487EEB8);
    sub_1E4773680(&qword_1EE2B0F68, &qword_1ECF7CBC0, &unk_1E487EEC0);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1470);
  }

  return result;
}

uint64_t sub_1E47E2458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47E24A8@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for NarrowEventTimeText(0);
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7B7F8, &qword_1E487C130);
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

uint64_t sub_1E47E26B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_1E487753C();
  v4 = *(v3 - 8);
  v82 = v3;
  v83 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v66 - v12);
  v14 = sub_1E487719C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  v18 = type metadata accessor for Event();
  v20 = v18[5];
  v19 = v18[6];
  v78 = v19;
  v79 = v20;
  v21 = sub_1E487732C();
  v22 = *(v21 - 8);
  v76 = *(v22 + 16);
  v77 = v22 + 16;
  v23 = v2 + v19;
  v24 = v21;
  v72 = v21;
  v76(v13, v23);
  v25 = *(v22 + 56);
  v73 = v22 + 56;
  v74 = v25;
  v25(v13, 0, 1, v24);
  v26 = type metadata accessor for NarrowEventTimeText(0);
  v27 = v26[5];
  v70 = v27;
  v71 = v7;
  sub_1E47E24A8(v7);
  v69 = *(v2 + v26[6]);
  v66 = v13;
  sub_1E485CFF8(v2 + v20, v13, v2 + v27, v69, v17);
  v28 = *(v83 + 8);
  v83 += 8;
  v75 = v28;
  v28(v7, v82);
  sub_1E47738B8(v13, &unk_1ECF7C880, &qword_1E4882710);
  v29 = sub_1E487847C();
  v31 = v30;
  v33 = v32;
  v34 = *(v2 + v18[14]) - 3;
  v35 = sub_1E48783EC();
  v37 = v36;
  LOBYTE(v7) = v38;
  sub_1E477A3C8(v29, v31, v33 & 1);

  v39 = *(v2 + v26[7]);
  v40 = sub_1E48783FC();
  v42 = v41;
  LOBYTE(v31) = v43;
  sub_1E477A3C8(v35, v37, v7 & 1);

  v44 = sub_1E487842C();
  v68 = v44;
  v46 = v45;
  v67 = v45;
  LOBYTE(v37) = v47;
  v49 = v48;
  v69 = v48;
  sub_1E477A3C8(v40, v42, v31 & 1);

  KeyPath = swift_getKeyPath();
  v86 = v44;
  v87 = v46;
  LOBYTE(v40) = v37 & 1;
  v88 = v37 & 1;
  v89 = v49;
  v90 = KeyPath;
  v91 = 1;
  v92 = 0;
  v51 = v66;
  v52 = v72;
  v53 = v76;
  (v76)(v66, v2 + v78, v72);
  v54 = v74;
  v74(v51, 0, 1, v52);
  v55 = v80;
  v53(v80, v2 + v70, v52);
  v56 = v55;
  v54(v55, 0, 1, v52);
  v57 = v71;
  sub_1E47E24A8(v71);
  v58 = sub_1E486D148(v2 + v79, v51, v55, v57);
  v60 = v59;
  v75(v57, v82);
  sub_1E47738B8(v56, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E47738B8(v51, &unk_1ECF7C880, &qword_1E4882710);
  v84 = v58;
  v85 = v60;
  sub_1E477A374();
  v61 = sub_1E487848C();
  v63 = v62;
  LOBYTE(v56) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487856C();
  sub_1E477A3C8(v61, v63, v56 & 1);

  sub_1E477A3C8(v68, v67, v40);
}

uint64_t sub_1E47E2C84@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v60 = sub_1E487846C();
  v58 = *(v60 - 8);
  v2 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v59 = *(v61 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138);
  v9 = *(v8 - 8);
  v57 = v8 - 8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140);
  v13 = *(v12 - 8);
  v56 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148);
  v17 = *(v16 - 8);
  v55 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v52 = &v51 - v19;
  v20 = type metadata accessor for Event();
  v21 = *(v20 + 28);
  v51 = v1;
  v63 = sub_1E486DF20(*(v1 + v21));
  v64 = v22;
  sub_1E477A374();
  v23 = sub_1E487848C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v63 = v23;
  v64 = v25;
  v27 &= 1u;
  v65 = v27;
  v66 = v29;
  v67 = KeyPath;
  v68 = 0;
  v31 = *(v1 + *(v20 + 56)) - 3;
  sub_1E487845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
  sub_1E4780E40();
  sub_1E487853C();
  (*(v58 + 8))(v4, v60);
  sub_1E477A3C8(v23, v25, v27);

  v32 = type metadata accessor for NarrowEventTravelTimeText(0);
  v33 = v51;
  v34 = *(v51 + v32[5]);
  v35 = swift_getKeyPath();
  v36 = v54;
  (*(v59 + 32))(v54, v7, v61);
  v37 = &v36[*(v57 + 44)];
  *v37 = v35;
  v37[1] = v34;
  v38 = *(v33 + v32[6]);
  v39 = v33;
  v40 = swift_getKeyPath();
  v41 = v36;
  v42 = v53;
  sub_1E477372C(v41, v53, &qword_1ECF7BB38, &qword_1E487B138);
  v43 = (v42 + *(v56 + 44));
  *v43 = v40;
  v43[1] = v38;
  v44 = (v39 + v32[7]);
  v45 = *v44;
  LOBYTE(v39) = *(v44 + 8);
  v46 = swift_getKeyPath();
  v47 = v42;
  v48 = v52;
  sub_1E477372C(v47, v52, &qword_1ECF7BB40, &qword_1E487B140);
  v49 = v48 + *(v55 + 44);
  *v49 = v46;
  *(v49 + 8) = v45;
  *(v49 + 16) = v39;
  sub_1E477372C(v48, v62, &qword_1ECF7BB48, &qword_1E487B148);
}

unint64_t sub_1E47E31C4()
{
  result = qword_1EE2B15C0;
  if (!qword_1EE2B15C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C750, &qword_1E487DFE0);
    sub_1E47E2458(qword_1EE2B2C48, type metadata accessor for NarrowEventTimeText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15C0);
  }

  return result;
}

uint64_t sub_1E47E3280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47E32E8()
{
  result = qword_1EE2B15D8;
  if (!qword_1EE2B15D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC10, &qword_1E487F018);
    sub_1E47E2458(qword_1EE2B3E90, type metadata accessor for LocationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15D8);
  }

  return result;
}

uint64_t sub_1E47E33A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47E340C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E47E348C()
{
  result = qword_1ECF7CC48;
  if (!qword_1ECF7CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC28, &unk_1E4880470);
    sub_1E47E2458(&qword_1ECF7CC50, type metadata accessor for NarrowEventTravelTimeText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CC48);
  }

  return result;
}

void sub_1E47E3570()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    sub_1E487732C();
    if (v1 <= 0x3F)
    {
      sub_1E47E3674(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v2 <= 0x3F)
      {
        sub_1E47E3674(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E47E3674(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1E47E36F0()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    sub_1E4799C20(319, &qword_1EE2B0DA0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E47E3674(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E47E37E4()
{
  result = qword_1EE2B11A0;
  if (!qword_1EE2B11A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC58, &qword_1E487F0C0);
    sub_1E4773680(&qword_1EE2B1070, &qword_1ECF7CB90, &unk_1E487EE88);
    sub_1E47E2118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11A0);
  }

  return result;
}

uint64_t sub_1E47E38D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E47E2458(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for LocationView()
{
  result = qword_1EE2B3E80;
  if (!qword_1EE2B3E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47E39FC()
{
  sub_1E47E3AFC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Event();
    if (v1 <= 0x3F)
    {
      sub_1E47E3AFC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E47E3AFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1E47E3B64()
{
  result = qword_1ECF7CC60;
  if (!qword_1ECF7CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CC60);
  }

  return result;
}

uint64_t sub_1E47E3BB8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

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

uint64_t sub_1E47E3D14@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for LocationView();
  sub_1E4773850(v1 + *(v12 + 44), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
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

uint64_t sub_1E47E3F1C(uint64_t a1)
{
  v3 = sub_1E487711C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (a1 + *(type metadata accessor for Location() + 20));
  if (v5[1] && (v6 = *v5, (*(v1 + *(type metadata accessor for LocationView() + 40)) & 1) == 0))
  {

    sub_1E487874C();
    v10 = sub_1E487849C();
    v12 = v11;
    v14 = v13;
    v15 = sub_1E487841C();
    v17 = v16;
    v19 = v18;
    sub_1E477A3C8(v10, v12, v14 & 1);

    sub_1E478B8E0(v15, v17, v19 & 1);

    v7 = sub_1E487841C();
    v21 = v20;
    v8 = v22;
    sub_1E477A3C8(v15, v17, v19 & 1);

    v23 = v15;
    v9 = v21;
    sub_1E477A3C8(v23, v17, v19 & 1);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  sub_1E487710C();
  sub_1E47E5658();
  sub_1E4878C5C();
  sub_1E477A374();
  v24 = sub_1E487848C();
  v26 = v25;
  v28 = v27;
  v30 = sub_1E487841C();
  sub_1E477A3C8(v24, v26, v28 & 1);

  sub_1E477A3C8(v7, v9, v8 & 1);

  return v30;
}

uint64_t sub_1E47E41BC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC68, &qword_1E487F320);
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Location();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + *(type metadata accessor for LocationView() + 20);
  v16 = type metadata accessor for Event();
  sub_1E4773850(v15 + *(v16 + 60), v9, &qword_1ECF7C048, &qword_1E487C5F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1E47738B8(v9, &qword_1ECF7C048, &qword_1E487C5F0);
    return (*(v2 + 56))(v22, 1, 1, v21);
  }

  else
  {
    sub_1E47CECA8(v9, v14);
    v18 = *(sub_1E47E3BB8() + 96);

    *v5 = sub_1E4877F6C();
    *(v5 + 1) = v18;
    v5[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC70, &qword_1E487F328);
    sub_1E47E4470(v1, v14, &v5[*(v19 + 44)]);
    v20 = v22;
    sub_1E477372C(v5, v22, &qword_1ECF7CC68, &qword_1E487F320);
    (*(v2 + 56))(v20, 0, 1, v21);
    return sub_1E47E55A8(v14);
  }
}

uint64_t sub_1E47E4470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v175 = a3;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC78, &qword_1E487F330);
  v5 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v140 - v6;
  v162 = sub_1E487846C();
  v161 = *(v162 - 8);
  v7 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v165 = *(v9 - 8);
  v166 = v9;
  v10 = *(v165 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v154 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v153 = &v140 - v13;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138);
  v14 = *(*(v163 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v163);
  v152 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v140 - v17;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140);
  v18 = *(*(v164 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v164);
  v151 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v149 = &v140 - v21;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148);
  v22 = *(*(v171 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v171);
  v147 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v157 = &v140 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v148 = &v140 - v27;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB50, &qword_1E487B150);
  v156 = *(v169 - 8);
  v28 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v155 = &v140 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC80, &qword_1E487F338);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v172 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v140 - v34;
  v146 = sub_1E4877B3C();
  v145 = *(v146 - 8);
  v35 = *(v145 + 64);
  v36 = MEMORY[0x1EEE9AC00](v146);
  v143 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v140 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v140 - v42);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  v44 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v158 = &v140 - v45;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v46 = *(v159 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x1EEE9AC00](v159);
  v50 = &v140 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v144 = &v140 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v168 = &v140 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v176 = &v140 - v56;
  sub_1E4878D2C();
  v167 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = type metadata accessor for LocationView();
  if (*(a1 + v57[10]) == 1)
  {
    v58 = *(type metadata accessor for Location() + 20);
    v141 = a2;
    v59 = (a2 + v58);
    v60 = a1;
    if (v59[1])
    {
      v61 = *v59;
      v62 = v59[1];
    }

    v63 = sub_1E487876C();
    v64 = (v43 + *(v40 + 36));
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v66 = *MEMORY[0x1E69816D0];
    v67 = sub_1E487877C();
    (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
    *v64 = swift_getKeyPath();
    *v43 = v63;
    a1 = v60;
    v68 = *(v60 + v57[6]);
    KeyPath = swift_getKeyPath();
    v70 = v43;
    v71 = v158;
    sub_1E477372C(v70, v158, &qword_1ECF7B910, &unk_1E487E050);
    v72 = (v71 + *(v142 + 36));
    *v72 = KeyPath;
    v72[1] = v68;
    v73 = v57[5];

    sub_1E47E3D14(v39);
    v74 = sub_1E476F0D0(v60 + v73, v39);
    v75 = v145;
    v76 = v143;
    v77 = v146;
    (*(v145 + 16))(v143, v39, v146);
    v78 = (*(v75 + 88))(v76, v77);
    if (v78 == *MEMORY[0x1E697DBC0])
    {
      a2 = v141;
    }

    else
    {
      a2 = v141;
      if (v78 != *MEMORY[0x1E697DBB0])
      {
        (*(v75 + 8))(v76, v77);
      }
    }

    CUIKOccurrenceLeadingIconAlphaScale();
    v79 = [v74 cuik_colorWithAlphaScaled_];

    v80 = sub_1E48785FC();
    (*(v75 + 8))(v39, v77);
    v81 = swift_getKeyPath();
    sub_1E477372C(v158, v50, &qword_1ECF7B918, &unk_1E487AA60);
    v82 = v159;
    v83 = &v50[*(v159 + 36)];
    *v83 = v81;
    v83[1] = v80;
    v84 = v144;
    sub_1E477372C(v50, v144, &qword_1ECF7B920, &unk_1E487DCF0);
    v85 = v84;
    v86 = v176;
    sub_1E477372C(v85, v176, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v46 + 56))(v86, 0, 1, v82);
  }

  else
  {
    (*(v46 + 56))(v176, 1, 1, v159);
  }

  v87 = a1;
  v88 = *(a1 + v57[9]);
  v89 = sub_1E47E3F1C(a2);
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v159 = swift_getKeyPath();
  v177 = v89;
  v178 = v91;
  LODWORD(v158) = v93 & 1;
  v179 = v93 & 1;
  v180 = v95;
  v181 = v159;
  v182 = 0;
  v96 = v87 + v57[5];
  v97 = *(v96 + *(type metadata accessor for Event() + 56)) - 3;
  v98 = v160;
  sub_1E487845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
  sub_1E4780E40();
  v99 = v57;
  if (v88 == 1)
  {
    v100 = v153;
    sub_1E487853C();
    (*(v161 + 8))(v98, v162);
    sub_1E477A3C8(v89, v91, v158);

    v101 = *(v87 + v99[6]);
    v102 = swift_getKeyPath();
    v103 = v150;
    (*(v165 + 32))(v150, v100, v166);
    v104 = (v103 + *(v163 + 36));
    *v104 = v102;
    v104[1] = v101;
    v105 = *(v87 + v99[8]);
    v106 = swift_getKeyPath();
    v107 = v149;
    sub_1E477372C(v103, v149, &qword_1ECF7BB38, &qword_1E487B138);
    v108 = (v107 + *(v164 + 36));
    *v108 = v106;
    v108[1] = v105;
    LOBYTE(v106) = *(v87 + v99[7]);
    v109 = swift_getKeyPath();
    v110 = v148;
    sub_1E477372C(v107, v148, &qword_1ECF7BB40, &qword_1E487B140);
    v111 = v171;
    v112 = v110 + *(v171 + 36);
    *v112 = v109;
    *(v112 + 8) = (v106 & 1) == 0;
    *(v112 + 16) = v106;
    v113 = sub_1E4780EF8();

    v114 = v155;
    sub_1E487855C();
    sub_1E47738B8(v110, &qword_1ECF7BB48, &qword_1E487B148);
    v115 = v156;
    v116 = v169;
    (*(v156 + 16))(v174, v114, v169);
    swift_storeEnumTagMultiPayload();
    v177 = v111;
    v178 = v113;
    swift_getOpaqueTypeConformance2();
    v117 = v170;
    sub_1E487803C();
    (*(v115 + 8))(v114, v116);
  }

  else
  {
    v118 = v154;
    sub_1E487853C();
    (*(v161 + 8))(v98, v162);
    sub_1E477A3C8(v89, v91, v158);

    v119 = *(v87 + v99[6]);
    v120 = swift_getKeyPath();
    v121 = v152;
    (*(v165 + 32))(v152, v118, v166);
    v122 = (v121 + *(v163 + 36));
    *v122 = v120;
    v122[1] = v119;
    v123 = *(v87 + v99[8]);
    v124 = swift_getKeyPath();
    v125 = v151;
    sub_1E477372C(v121, v151, &qword_1ECF7BB38, &qword_1E487B138);
    v126 = (v125 + *(v164 + 36));
    *v126 = v124;
    v126[1] = v123;
    LOBYTE(v124) = *(v87 + v99[7]);
    v127 = swift_getKeyPath();
    v128 = v125;
    v129 = v147;
    sub_1E477372C(v128, v147, &qword_1ECF7BB40, &qword_1E487B140);
    v130 = v171;
    v131 = v129 + *(v171 + 36);
    *v131 = v127;
    *(v131 + 8) = (v124 & 1) == 0;
    *(v131 + 16) = v124;
    v132 = v157;
    sub_1E477372C(v129, v157, &qword_1ECF7BB48, &qword_1E487B148);
    sub_1E4773850(v132, v174, &qword_1ECF7BB48, &qword_1E487B148);
    swift_storeEnumTagMultiPayload();
    v133 = sub_1E4780EF8();

    v177 = v130;
    v178 = v133;
    swift_getOpaqueTypeConformance2();
    v117 = v170;
    sub_1E487803C();
    sub_1E47738B8(v132, &qword_1ECF7BB48, &qword_1E487B148);
  }

  v134 = v176;
  v135 = v168;
  sub_1E4773850(v176, v168, &qword_1ECF7B9D0, &qword_1E487AC00);
  v136 = v172;
  sub_1E4773850(v117, v172, &qword_1ECF7CC80, &qword_1E487F338);
  v137 = v175;
  sub_1E4773850(v135, v175, &qword_1ECF7B9D0, &qword_1E487AC00);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC88, &qword_1E487F400);
  sub_1E4773850(v136, v137 + *(v138 + 48), &qword_1ECF7CC80, &qword_1E487F338);
  sub_1E47738B8(v117, &qword_1ECF7CC80, &qword_1E487F338);
  sub_1E47738B8(v134, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E47738B8(v136, &qword_1ECF7CC80, &qword_1E487F338);
  sub_1E47738B8(v135, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47E55A8(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47E5604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877E2C();
  *a1 = result;
  return result;
}

unint64_t sub_1E47E5658()
{
  result = qword_1EE2B4690;
  if (!qword_1EE2B4690)
  {
    sub_1E487711C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4690);
  }

  return result;
}

unint64_t sub_1E47E56B0()
{
  result = qword_1EE2B0FC8;
  if (!qword_1EE2B0FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CC90, &qword_1E487F438);
    sub_1E4773680(&qword_1EE2B0FD0, &qword_1ECF7CC68, &qword_1E487F320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0FC8);
  }

  return result;
}

void *sub_1E47E5784(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v79 = a3;
  v77 = a2;
  v73 = sub_1E487751C();
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v55 - v9;
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v55 - v15;
  v16 = type metadata accessor for CalendarDateTimelineEntry(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v74 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v56 = v11;
  v23 = *(v11 + 16);
  v23(&v55 - v21, a1, v10);
  v24 = &v22[*(v16 + 20)];
  v64 = v23;
  v65 = v11 + 16;
  v23(v24, a1, v10);
  v66 = v16;
  v25 = *(v16 + 24);
  v26 = sub_1E487753C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v62 = v27 + 56;
  v63 = v28;
  v28(&v22[v25], 1, 1, v26);
  v29 = sub_1E4860CCC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1E4860CCC(v30 > 1, v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v61 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v60 = *(v17 + 72);
  sub_1E47E5E8C(v22, v29 + v61 + v60 * v31);
  v32 = v78;
  sub_1E487745C();
  if (v29[2] < v77)
  {
    v33 = *MEMORY[0x1E6969A48];
    v71 = *(v4 + 104);
    v72 = v4 + 104;
    v70 = (v4 + 8);
    v68 = (v56 + 8);
    v69 = (v56 + 48);
    v58 = (v56 + 32);
    v57 = xmmword_1E487A7F0;
    v34 = v67;
    v59 = v33;
    do
    {
      v44 = v76;
      v45 = v73;
      v71(v76, v33, v73);
      sub_1E48774BC();
      (*v70)(v44, v45);
      if ((*v69)(v34, 1, v10) == 1)
      {
        sub_1E47E5EF0(v34);
        sub_1E4878DCC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
        v35 = swift_allocObject();
        *(v35 + 16) = v57;
        sub_1E47E5F58(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
        v36 = sub_1E48790CC();
        v38 = v37;
        v39 = MEMORY[0x1E69E6158];
        *(v35 + 56) = MEMORY[0x1E69E6158];
        v40 = sub_1E478B950();
        *(v35 + 64) = v40;
        *(v35 + 32) = v36;
        *(v35 + 40) = v38;
        sub_1E47E5F58(&qword_1ECF7CC98, MEMORY[0x1E6969AE8]);
        v41 = sub_1E48790CC();
        *(v35 + 96) = v39;
        *(v35 + 104) = v40;
        *(v35 + 72) = v41;
        *(v35 + 80) = v42;
        sub_1E478E80C();
        v43 = sub_1E4878E4C();
        sub_1E4877AAC();
        v34 = v67;
      }

      else
      {
        v46 = *v68;
        (*v68)(v32, v10);
        v47 = v75;
        (*v58)(v75, v34, v10);
        v48 = v26;
        v49 = v64;
        v64(v32, v47, v10);
        v50 = v74;
        v49(v74, v32, v10);
        v51 = v66;
        v49(v50 + *(v66 + 20), v32, v10);
        v26 = v48;
        v63(v50 + *(v51 + 24), 1, 1, v48);
        v53 = v29[2];
        v52 = v29[3];
        if (v53 >= v52 >> 1)
        {
          v29 = sub_1E4860CCC(v52 > 1, v53 + 1, 1, v29);
        }

        v46(v75, v10);
        v29[2] = v53 + 1;
        sub_1E47E5E8C(v74, v29 + v61 + v53 * v60);
        v33 = v59;
      }

      v32 = v78;
    }

    while (v29[2] < v77);
  }

  (*(v56 + 8))(v32, v10);
  return v29;
}